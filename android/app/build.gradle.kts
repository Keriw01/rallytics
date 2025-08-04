import java.io.FileInputStream
import java.util.Properties
import java.io.File
import com.google.gson.Gson

plugins {
    id("com.android.application")
    // START: FlutterFire Configuration
    id("com.google.gms.google-services")
    id("com.google.firebase.crashlytics")
    // END: FlutterFire Configuration
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

fun getApiKeys(flavor: String, projectDir: File): Map<String, Any> {
    val projectRoot = projectDir.parentFile.parentFile 
    val keysFile = File(projectRoot, "api-keys.${flavor}.json")
    if (keysFile.exists()) {
        return Gson().fromJson(keysFile.reader(), Map::class.java) as Map<String, Any>
    }
    return emptyMap()
}

val keystorePropertiesFile = rootProject.file("key.properties")
val keystoreProperties = Properties()

if (keystorePropertiesFile.exists()) {
    keystoreProperties.load(FileInputStream(keystorePropertiesFile))
}

android {
    namespace = "com.example.rallytics"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "27.0.12077973"

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_21
        targetCompatibility = JavaVersion.VERSION_21
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_21.toString()
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.example.rallytics"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = 23
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    signingConfigs {
        if (keystorePropertiesFile.exists()) {
            create("release") {
                keyAlias = keystoreProperties["keyAlias"] as String?
                keyPassword = keystoreProperties["keyPassword"] as String?
                storeFile = file(keystoreProperties["storeFile"] as String?)
                storePassword = keystoreProperties["storePassword"] as String?
            }
        }
    }

    buildTypes {
        release {
            if (keystorePropertiesFile.exists()) {
                signingConfig = signingConfigs.getByName("release")
            }
        }
        debug {
        }
    }

    flavorDimensions += "default"

    productFlavors {
        create("dev") {
            dimension = "default"
            applicationIdSuffix = ".dev"
            versionNameSuffix = "-dev"
            resValue(
                type = "string",
                name = "app_name",
                value = "Rallytics DEV")
            val devKeys = getApiKeys("dev", project.projectDir)
            manifestPlaceholders.apply {
                put("facebookAppId", devKeys["facebook_app_id"] ?: "")
                put("facebookClientToken", devKeys["facebook_client_token"] ?: "")
            }
        }

        create("prod") {
            dimension = "default"
            resValue(
                type = "string",
                name = "app_name",
                value = "Rallytics")
            applicationIdSuffix = ""
            val prodKeys = getApiKeys("prod", project.projectDir)
            manifestPlaceholders.apply {
                put("facebookAppId", prodKeys["facebook_app_id"] ?: "")
                put("facebookClientToken", prodKeys["facebook_client_token"] ?: "")
            }
        }
    }
}

flutter {
    source = "../.."
}

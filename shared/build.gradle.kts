plugins {
    alias(libs.plugins.kotlinMultiplatform)
    alias(libs.plugins.androidLibrary)
    alias(libs.plugins.kmmbridge)
    `maven-publish`
}

rootProject.group = "com.eirikvaa.lib"

addGithubPackagesRepository()

kmmbridge {
    mavenPublishArtifacts()
    spm()
}

kotlin {
    androidTarget {
        compilations.all {
            kotlinOptions {
                jvmTarget = "1.8"
            }
        }
    }
    
    listOf(
        iosX64(),
        iosArm64(),
        iosSimulatorArm64()
    ).forEach {
        it.binaries.framework {
            baseName = "shared"
            isStatic = true
        }
    }

    sourceSets {
        commonMain.dependencies {
            //put your multiplatform dependencies here
        }
        commonTest.dependencies {
            implementation(libs.kotlin.test)
        }
    }
}

android {
    namespace = "com.eirikvaa.logyourself"
    compileSdk = 34
    defaultConfig {
        minSdk = 24
    }
}
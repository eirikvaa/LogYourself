package com.eirikvaa.logyourself

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform
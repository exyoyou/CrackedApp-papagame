.class public Lcom/j256/ormlite/logger/LoggerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOG_TYPE_SYSTEM_PROPERTY:Ljava/lang/String; = "com.j256.simplelogger.backend"

.field private static logBackendFactory:Lcom/j256/ormlite/logger/LogBackendFactory;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static findLogBackendFactory()Lcom/j256/ormlite/logger/LogBackendFactory;
    .locals 5

    .line 1
    const-string v0, "com.j256.simplelogger.backend"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-static {v0}, Lcom/j256/ormlite/logger/LogBackendType;->valueOf(Ljava/lang/String;)Lcom/j256/ormlite/logger/LogBackendType;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object v0

    .line 14
    :catch_0
    new-instance v1, Lcom/j256/ormlite/logger/LocalLogBackend;

    .line 15
    .line 16
    const-class v2, Lcom/j256/ormlite/logger/LoggerFactory;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v1, v2}, Lcom/j256/ormlite/logger/LocalLogBackend;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v2, Lcom/j256/ormlite/logger/Level;->WARNING:Lcom/j256/ormlite/logger/Level;

    .line 26
    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v4, "Could not find valid log-type from system property \'com.j256.simplelogger.backend\', value \'"

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, "\'"

    .line 41
    .line 42
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v1, v2, v0}, Lcom/j256/ormlite/logger/LogBackend;->log(Lcom/j256/ormlite/logger/Level;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-static {}, Lcom/j256/ormlite/logger/LogBackendType;->values()[Lcom/j256/ormlite/logger/LogBackendType;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    array-length v1, v0

    .line 57
    const/4 v2, 0x0

    .line 58
    :goto_0
    if-ge v2, v1, :cond_2

    .line 59
    .line 60
    aget-object v3, v0, v2

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/j256/ormlite/logger/LogBackendType;->isAvailable()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_1

    .line 67
    .line 68
    return-object v3

    .line 69
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    sget-object v0, Lcom/j256/ormlite/logger/LogBackendType;->LOCAL:Lcom/j256/ormlite/logger/LogBackendType;

    .line 73
    .line 74
    return-object v0
.end method

.method public static getLogBackendFactory()Lcom/j256/ormlite/logger/LogBackendFactory;
    .locals 1

    .line 1
    sget-object v0, Lcom/j256/ormlite/logger/LoggerFactory;->logBackendFactory:Lcom/j256/ormlite/logger/LogBackendFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/j256/ormlite/logger/Logger;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/String;)Lcom/j256/ormlite/logger/Logger;

    move-result-object p0

    return-object p0
.end method

.method public static getLogger(Ljava/lang/String;)Lcom/j256/ormlite/logger/Logger;
    .locals 2

    .line 2
    sget-object v0, Lcom/j256/ormlite/logger/LoggerFactory;->logBackendFactory:Lcom/j256/ormlite/logger/LogBackendFactory;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/j256/ormlite/logger/LoggerFactory;->findLogBackendFactory()Lcom/j256/ormlite/logger/LogBackendFactory;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/logger/LoggerFactory;->logBackendFactory:Lcom/j256/ormlite/logger/LogBackendFactory;

    .line 4
    :cond_0
    new-instance v0, Lcom/j256/ormlite/logger/Logger;

    sget-object v1, Lcom/j256/ormlite/logger/LoggerFactory;->logBackendFactory:Lcom/j256/ormlite/logger/LogBackendFactory;

    invoke-interface {v1, p0}, Lcom/j256/ormlite/logger/LogBackendFactory;->createLogBackend(Ljava/lang/String;)Lcom/j256/ormlite/logger/LogBackend;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/j256/ormlite/logger/Logger;-><init>(Lcom/j256/ormlite/logger/LogBackend;)V

    return-object v0
.end method

.method public static getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x2e

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/lit8 v1, v1, -0x1

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static setLogBackendFactory(Lcom/j256/ormlite/logger/LogBackendFactory;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/j256/ormlite/logger/LoggerFactory;->logBackendFactory:Lcom/j256/ormlite/logger/LogBackendFactory;

    .line 2
    .line 3
    return-void
.end method

.method public static setLogBackendType(Lcom/j256/ormlite/logger/LogBackendType;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/j256/ormlite/logger/LogBackendType;->isAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sput-object p0, Lcom/j256/ormlite/logger/LoggerFactory;->logBackendFactory:Lcom/j256/ormlite/logger/LogBackendFactory;

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "Logging backend type "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p0, " is not available on the classpath"

    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

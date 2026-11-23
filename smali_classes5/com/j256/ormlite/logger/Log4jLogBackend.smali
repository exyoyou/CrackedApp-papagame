.class public Lcom/j256/ormlite/logger/Log4jLogBackend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/j256/ormlite/logger/LogBackend;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/logger/Log4jLogBackend$Log4jLogBackendFactory;
    }
.end annotation


# instance fields
.field private final logger:Lorg/apache/log4j/Logger;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/j256/ormlite/logger/Log4jLogBackend;->logger:Lorg/apache/log4j/Logger;

    .line 9
    .line 10
    return-void
.end method

.method private levelToLog4jLevel(Lcom/j256/ormlite/logger/Level;)Lorg/apache/log4j/Level;
    .locals 1

    .line 1
    sget-object v0, Lcom/j256/ormlite/logger/Log4jLogBackend$1;->$SwitchMap$com$j256$ormlite$logger$Level:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_4

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p1, v0, :cond_3

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p1, v0, :cond_2

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x5

    .line 22
    if-eq p1, v0, :cond_0

    .line 23
    .line 24
    sget-object p1, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_0
    sget-object p1, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_1
    sget-object p1, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_2
    sget-object p1, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_3
    sget-object p1, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    .line 37
    .line 38
    return-object p1

    .line 39
    :cond_4
    sget-object p1, Lorg/apache/log4j/Level;->TRACE:Lorg/apache/log4j/Level;

    .line 40
    .line 41
    return-object p1
.end method


# virtual methods
.method public isLevelEnabled(Lcom/j256/ormlite/logger/Level;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/logger/Log4jLogBackend;->logger:Lorg/apache/log4j/Logger;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/j256/ormlite/logger/Log4jLogBackend;->levelToLog4jLevel(Lcom/j256/ormlite/logger/Level;)Lorg/apache/log4j/Level;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public log(Lcom/j256/ormlite/logger/Level;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/logger/Log4jLogBackend;->logger:Lorg/apache/log4j/Logger;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/logger/Log4jLogBackend;->levelToLog4jLevel(Lcom/j256/ormlite/logger/Level;)Lorg/apache/log4j/Level;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/Logger;->log(Lorg/apache/log4j/Priority;Ljava/lang/Object;)V

    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/j256/ormlite/logger/Log4jLogBackend;->logger:Lorg/apache/log4j/Logger;

    invoke-direct {p0, p1}, Lcom/j256/ormlite/logger/Log4jLogBackend;->levelToLog4jLevel(Lcom/j256/ormlite/logger/Level;)Lorg/apache/log4j/Level;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/log4j/Logger;->log(Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

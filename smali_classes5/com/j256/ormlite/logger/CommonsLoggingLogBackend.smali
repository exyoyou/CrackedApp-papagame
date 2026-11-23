.class public Lcom/j256/ormlite/logger/CommonsLoggingLogBackend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/j256/ormlite/logger/LogBackend;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/logger/CommonsLoggingLogBackend$CommonsLoggingLogBackendFactory;
    }
.end annotation


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLogBackend;->log:Lorg/apache/commons/logging/Log;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public isLevelEnabled(Lcom/j256/ormlite/logger/Level;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/j256/ormlite/logger/CommonsLoggingLogBackend$1;->$SwitchMap$com$j256$ormlite$logger$Level:[I

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
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLogBackend;->log:Lorg/apache/commons/logging/Log;

    .line 25
    .line 26
    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLogBackend;->log:Lorg/apache/commons/logging/Log;

    .line 32
    .line 33
    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isFatalEnabled()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLogBackend;->log:Lorg/apache/commons/logging/Log;

    .line 39
    .line 40
    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    return p1

    .line 45
    :cond_2
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLogBackend;->log:Lorg/apache/commons/logging/Log;

    .line 46
    .line 47
    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    return p1

    .line 52
    :cond_3
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLogBackend;->log:Lorg/apache/commons/logging/Log;

    .line 53
    .line 54
    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    return p1

    .line 59
    :cond_4
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLogBackend;->log:Lorg/apache/commons/logging/Log;

    .line 60
    .line 61
    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    return p1
.end method

.method public log(Lcom/j256/ormlite/logger/Level;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/j256/ormlite/logger/CommonsLoggingLogBackend$1;->$SwitchMap$com$j256$ormlite$logger$Level:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLogBackend;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLogBackend;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->fatal(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLogBackend;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLogBackend;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLogBackend;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_4
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLogBackend;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 8
    sget-object v0, Lcom/j256/ormlite/logger/CommonsLoggingLogBackend$1;->$SwitchMap$com$j256$ormlite$logger$Level:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 9
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLogBackend;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, p2, p3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLogBackend;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, p2, p3}, Lorg/apache/commons/logging/Log;->fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLogBackend;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, p2, p3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLogBackend;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, p2, p3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLogBackend;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, p2, p3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/j256/ormlite/logger/CommonsLoggingLogBackend;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, p2, p3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

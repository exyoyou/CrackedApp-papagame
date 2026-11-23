.class public Lorg/hmwebrtc/Logging;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/Logging$Severity;,
        Lorg/hmwebrtc/Logging$TraceLevel;
    }
.end annotation


# static fields
.field private static volatile enableLogOutput:Z

.field private static final fallbackLogger:Ljava/util/logging/Logger;

.field private static loggable:Lorg/hmwebrtc/Loggable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static loggableSeverity:Lorg/hmwebrtc/Logging$Severity;

.field private static volatile nativeLoggingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/hmwebrtc/Logging;->createFallbackLogger()Ljava/util/logging/Logger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lorg/hmwebrtc/Logging;->fallbackLogger:Ljava/util/logging/Logger;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static createFallbackLogger()Ljava/util/logging/Logger;
    .locals 2

    .line 1
    const-string v0, "org.hmwebrtc.Logging"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/hmwebrtc/Logging$Severity;->LS_INFO:Lorg/hmwebrtc/Logging$Severity;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lorg/hmwebrtc/Logging;->log(Lorg/hmwebrtc/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static deleteInjectedLoggable()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lorg/hmwebrtc/Logging;->loggable:Lorg/hmwebrtc/Loggable;

    .line 3
    .line 4
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/hmwebrtc/Logging$Severity;->LS_ERROR:Lorg/hmwebrtc/Logging$Severity;

    invoke-static {v0, p0, p1}, Lorg/hmwebrtc/Logging;->log(Lorg/hmwebrtc/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    sget-object v0, Lorg/hmwebrtc/Logging$Severity;->LS_ERROR:Lorg/hmwebrtc/Logging$Severity;

    invoke-static {v0, p0, p1}, Lorg/hmwebrtc/Logging;->log(Lorg/hmwebrtc/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lorg/hmwebrtc/Logging;->log(Lorg/hmwebrtc/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p2}, Lorg/hmwebrtc/Logging;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lorg/hmwebrtc/Logging;->log(Lorg/hmwebrtc/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static enableLogThreads()V
    .locals 0

    .line 1
    invoke-static {}, Lorg/hmwebrtc/Logging;->nativeEnableLogThreads()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static enableLogTimeStamps()V
    .locals 0

    .line 1
    invoke-static {}, Lorg/hmwebrtc/Logging;->nativeEnableLogTimeStamps()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static declared-synchronized enableLogToDebugOutput(Lorg/hmwebrtc/Logging$Severity;)V
    .locals 2

    .line 1
    const-class v0, Lorg/hmwebrtc/Logging;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lorg/hmwebrtc/Logging;->loggable:Lorg/hmwebrtc/Loggable;

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    sget-boolean v1, Lorg/hmwebrtc/Logging;->enableLogOutput:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-static {p0}, Lorg/hmwebrtc/Logging;->nativeEnableLogToDebugOutput(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 p0, 0x1

    .line 20
    sput-boolean p0, Lorg/hmwebrtc/Logging;->nativeLoggingEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v1, "Logging to native debug output not supported while Loggable is injected. Delete the Loggable before calling this method."

    .line 27
    .line 28
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0

    .line 34
    throw p0
.end method

.method public static enableTracing(Ljava/lang/String;Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lorg/hmwebrtc/Logging$TraceLevel;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, ""

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/io/PrintWriter;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/hmwebrtc/Logging$Severity;->LS_VERBOSE:Lorg/hmwebrtc/Logging$Severity;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lorg/hmwebrtc/Logging;->log(Lorg/hmwebrtc/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static injectLoggable(Lorg/hmwebrtc/Loggable;Lorg/hmwebrtc/Logging$Severity;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sput-object p0, Lorg/hmwebrtc/Logging;->loggable:Lorg/hmwebrtc/Loggable;

    .line 4
    .line 5
    sput-object p1, Lorg/hmwebrtc/Logging;->loggableSeverity:Lorg/hmwebrtc/Logging$Severity;

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public static log(Lorg/hmwebrtc/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    if-eqz p2, :cond_6

    .line 4
    .line 5
    sget-object v0, Lorg/hmwebrtc/Logging;->loggable:Lorg/hmwebrtc/Loggable;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sget-object v1, Lorg/hmwebrtc/Logging;->loggableSeverity:Lorg/hmwebrtc/Logging$Severity;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ge v0, v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    sget-object v0, Lorg/hmwebrtc/Logging;->loggable:Lorg/hmwebrtc/Loggable;

    .line 23
    .line 24
    invoke-interface {v0, p2, p0, p1}, Lorg/hmwebrtc/Loggable;->onLogMessage(Ljava/lang/String;Lorg/hmwebrtc/Logging$Severity;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    sget-boolean v0, Lorg/hmwebrtc/Logging;->enableLogOutput:Z

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    sget-object v0, Lorg/hmwebrtc/Logging$1;->$SwitchMap$org$hmwebrtc$Logging$Severity:[I

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    aget p0, v0, p0

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    if-eq p0, v0, :cond_5

    .line 43
    .line 44
    const/4 v0, 0x2

    .line 45
    if-eq p0, v0, :cond_4

    .line 46
    .line 47
    const/4 v0, 0x3

    .line 48
    if-eq p0, v0, :cond_3

    .line 49
    .line 50
    const/4 v0, 0x4

    .line 51
    if-eq p0, v0, :cond_3

    .line 52
    .line 53
    sget-object p0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    sget-object p0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    sget-object p0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_5
    sget-object p0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 63
    .line 64
    :goto_0
    sget-object v0, Lorg/hmwebrtc/Logging;->fallbackLogger:Ljava/util/logging/Logger;

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p1, ": "

    .line 75
    .line 76
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v0, p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 91
    .line 92
    const-string p1, "Logging tag or message may not be null."

    .line 93
    .line 94
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p0
.end method

.method private static native nativeEnableLogThreads()V
.end method

.method private static native nativeEnableLogTimeStamps()V
.end method

.method private static native nativeEnableLogToDebugOutput(I)V
.end method

.method private static native nativeLog(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static setEnableLogOutput(Z)Z
    .locals 1

    .line 1
    sget-boolean v0, Lorg/hmwebrtc/Logging;->nativeLoggingEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    sput-boolean p0, Lorg/hmwebrtc/Logging;->enableLogOutput:Z

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/hmwebrtc/Logging$Severity;->LS_VERBOSE:Lorg/hmwebrtc/Logging$Severity;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lorg/hmwebrtc/Logging;->log(Lorg/hmwebrtc/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/hmwebrtc/Logging$Severity;->LS_WARNING:Lorg/hmwebrtc/Logging$Severity;

    invoke-static {v0, p0, p1}, Lorg/hmwebrtc/Logging;->log(Lorg/hmwebrtc/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    sget-object v0, Lorg/hmwebrtc/Logging$Severity;->LS_WARNING:Lorg/hmwebrtc/Logging$Severity;

    invoke-static {v0, p0, p1}, Lorg/hmwebrtc/Logging;->log(Lorg/hmwebrtc/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lorg/hmwebrtc/Logging;->log(Lorg/hmwebrtc/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p2}, Lorg/hmwebrtc/Logging;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lorg/hmwebrtc/Logging;->log(Lorg/hmwebrtc/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

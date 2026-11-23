.class public Lcom/papa91/arc/ext/Log;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/ext/Log$LogWrapper;
    }
.end annotation


# static fields
.field public static final BAD_IMPLEMENTATION:Ljava/lang/String; = "Bad implementation"

.field private static final DISABLE_LOG:Z = true

.field private static final FLUSH_LOG_EVERY_MS:J = 0x1388L

.field static LOG_FILE:Ljava/lang/String; = "/last_run.log"

.field public static final TAG:Ljava/lang/String; = "WF-LOG"

.field static volatile closed:Z

.field static final flushTask:Ljava/lang/Runnable;

.field private static lastFlush:J

.field public static lastSearchLog:Ljava/lang/String;

.field static lastSearchLogCurrent:Ljava/lang/StringBuilder;

.field static volatile writer:Ljava/io/BufferedWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa91/arc/ext/Log$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa91/arc/ext/Log$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/papa91/arc/ext/Log;->flushTask:Ljava/lang/Runnable;

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    sput-wide v0, Lcom/papa91/arc/ext/Log;->lastFlush:J

    .line 11
    .line 12
    const-string v0, "- none -"

    .line 13
    .line 14
    sput-object v0, Lcom/papa91/arc/ext/Log;->lastSearchLog:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/papa91/arc/ext/Log;->lastSearchLogCurrent:Ljava/lang/StringBuilder;

    .line 18
    .line 19
    sput-object v0, Lcom/papa91/arc/ext/Log;->writer:Ljava/io/BufferedWriter;

    .line 20
    .line 21
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

.method public static badImplementation(Ljava/lang/Throwable;)I
    .locals 1

    .line 1
    const-string v0, "Bad implementation"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/papa91/arc/ext/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static close()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/arc/ext/Log$2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa91/arc/ext/Log$2;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->runOnLogThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static crash()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/arc/ext/Log$3;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa91/arc/ext/Log$3;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->runOnLogThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .locals 1

    const-string v0, "WF-LOG"

    .line 1
    invoke-static {v0, p0}, Lcom/papa91/arc/ext/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/papa91/arc/ext/Log$LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Lcom/papa91/arc/ext/Log$LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    const-string v0, "WF-LOG"

    .line 2
    invoke-static {v0, p0, p1}, Lcom/papa91/arc/ext/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 1

    const-string v0, "WF-LOG"

    .line 1
    invoke-static {v0, p0}, Lcom/papa91/arc/ext/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/papa91/arc/ext/Log$LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Lcom/papa91/arc/ext/Log$LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    const-string v0, "WF-LOG"

    .line 2
    invoke-static {v0, p0, p1}, Lcom/papa91/arc/ext/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static flush(Z)Z
    .locals 8

    .line 1
    sget-object v0, Lcom/papa91/arc/ext/Log;->writer:Ljava/io/BufferedWriter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    sget-wide v4, Lcom/papa91/arc/ext/Log;->lastFlush:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 12
    .line 13
    sub-long v4, v2, v4

    .line 14
    .line 15
    const-wide/16 v6, 0x1388

    .line 16
    .line 17
    cmp-long v0, v4, v6

    .line 18
    .line 19
    if-gtz v0, :cond_1

    .line 20
    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    :try_start_1
    sget-object p0, Lcom/papa91/arc/ext/Log;->writer:Ljava/io/BufferedWriter;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    .line 28
    .line 29
    :catch_0
    :try_start_2
    sput-wide v2, Lcom/papa91/arc/ext/Log;->lastFlush:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :catch_1
    move-exception p0

    .line 34
    const-string v0, "WF-LOG"

    .line 35
    .line 36
    const-string v2, "Log write: I/O"

    .line 37
    .line 38
    invoke-static {v0, v2, p0}, Lcom/papa91/arc/ext/Log$LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    return v1
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    move-object v1, p0

    .line 7
    :goto_0
    if-eqz v1, :cond_2

    .line 8
    .line 9
    instance-of v2, v1, Ljava/net/UnknownHostException;

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    goto :goto_0

    .line 19
    :cond_2
    new-instance v1, Ljava/io/StringWriter;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v2, Ljava/io/PrintWriter;

    .line 25
    .line 26
    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_3

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v4, "Exception on printStackTrace: "

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_3

    .line 59
    :catch_0
    const-string v3, "OutOfMemoryError 1\n"

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_1
    if-eqz p0, :cond_3

    .line 65
    .line 66
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v3, "\n"

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :catch_1
    const-string v3, "OutOfMemoryError 2\n"

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    :goto_3
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    if-nez p0, :cond_4

    .line 97
    .line 98
    return-object v0

    .line 99
    :cond_4
    return-object p0
.end method

.method public static here()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x3

    .line 10
    aget-object v1, v1, v2

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "here: "

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v3, " : "

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/papa91/arc/ext/Log;->d(Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public static i(Ljava/lang/String;)I
    .locals 1

    const-string v0, "WF-LOG"

    .line 1
    invoke-static {v0, p0}, Lcom/papa91/arc/ext/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/papa91/arc/ext/Log$LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Lcom/papa91/arc/ext/Log$LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    const-string v0, "WF-LOG"

    .line 2
    invoke-static {v0, p0, p1}, Lcom/papa91/arc/ext/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static iFull(Ljava/lang/String;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v0, :cond_1

    .line 8
    .line 9
    add-int/lit16 v3, v2, 0x3eb

    .line 10
    .line 11
    if-ge v3, v0, :cond_0

    .line 12
    .line 13
    move v4, v3

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    move v4, v0

    .line 16
    :goto_1
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2}, Lcom/papa91/arc/ext/Log;->i(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move v2, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    return v1
.end method

.method static reopen()V
    .locals 0

    return-void
.end method

.method public static runLogOnProcessErrStream(Ljava/lang/Process;Ljava/io/InputStream;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/papa91/arc/ext/Log$4;

    .line 4
    .line 5
    const-string v1, "runLogOnProcessErrStream"

    .line 6
    .line 7
    invoke-direct {v0, v1, p1, p0}, Lcom/papa91/arc/ext/Log$4;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/Process;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public static declared-synchronized s(Ljava/lang/String;)V
    .locals 0

    .line 1
    const-class p0, Lcom/papa91/arc/ext/Log;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    monitor-exit p0

    .line 5
    return-void
.end method

.method public static v(Ljava/lang/String;)I
    .locals 1

    const-string v0, "WF-LOG"

    .line 1
    invoke-static {v0, p0}, Lcom/papa91/arc/ext/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/papa91/arc/ext/Log$LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Lcom/papa91/arc/ext/Log$LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    const-string v0, "WF-LOG"

    .line 2
    invoke-static {v0, p0, p1}, Lcom/papa91/arc/ext/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;)I
    .locals 1

    const-string v0, "WF-LOG"

    .line 1
    invoke-static {v0, p0}, Lcom/papa91/arc/ext/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/papa91/arc/ext/Log$LogWrapper;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Lcom/papa91/arc/ext/Log$LogWrapper;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    const-string v0, "WF-LOG"

    .line 2
    invoke-static {v0, p0, p1}, Lcom/papa91/arc/ext/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static wt(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/papa91/arc/ext/Log$LogWrapper;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

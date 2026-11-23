.class public Lcom/kwad/sdk/api/loader/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static aHX:Lcom/kwad/sdk/api/loader/f;


# instance fields
.field private DEBUG:Z

.field private aHY:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private aHZ:I

.field private final aIa:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aIb:J

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kwad/sdk/api/loader/f;->DEBUG:Z

    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/kwad/sdk/api/loader/f;->aIa:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/kwad/sdk/api/loader/f;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    return-void
.end method

.method public static bn(Landroid/content/Context;)Lcom/kwad/sdk/api/loader/f;
    .locals 2

    .line 1
    sget-object v0, Lcom/kwad/sdk/api/loader/f;->aHX:Lcom/kwad/sdk/api/loader/f;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/kwad/sdk/api/loader/f;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/kwad/sdk/api/loader/f;->aHX:Lcom/kwad/sdk/api/loader/f;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/kwad/sdk/api/loader/f;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/kwad/sdk/api/loader/f;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/kwad/sdk/api/loader/f;->aHX:Lcom/kwad/sdk/api/loader/f;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    sget-object p0, Lcom/kwad/sdk/api/loader/f;->aHX:Lcom/kwad/sdk/api/loader/f;

    .line 25
    .line 26
    return-object p0
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/api/loader/f;->aIa:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final do(I)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/kwad/sdk/api/loader/f;->aIb:J

    .line 6
    .line 7
    iput p1, p0, Lcom/kwad/sdk/api/loader/f;->aHZ:I

    .line 8
    .line 9
    return-void
.end method

.method public final setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 1
    if-eq p1, p0, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/kwad/sdk/api/loader/f;->aHY:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/kwad/sdk/api/loader/f;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "AutoRevertHandler uncaughtException, mStartCheckTime:"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-wide v1, p0, Lcom/kwad/sdk/api/loader/f;->aIb:J

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ",mMaxDuration:"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lcom/kwad/sdk/api/loader/f;->aHZ:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ",mIsCancel:"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/kwad/sdk/api/loader/f;->aIa:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/api/loader/f;->aIa:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    iget-wide v0, p0, Lcom/kwad/sdk/api/loader/f;->aIb:J

    .line 50
    .line 51
    const-wide/16 v2, 0x0

    .line 52
    .line 53
    cmp-long v4, v0, v2

    .line 54
    .line 55
    if-lez v4, :cond_2

    .line 56
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide v0

    .line 61
    iget-wide v2, p0, Lcom/kwad/sdk/api/loader/f;->aIb:J

    .line 62
    .line 63
    sub-long/2addr v0, v2

    .line 64
    iget v2, p0, Lcom/kwad/sdk/api/loader/f;->aHZ:I

    .line 65
    .line 66
    int-to-long v2, v2

    .line 67
    cmp-long v4, v0, v2

    .line 68
    .line 69
    if-gtz v4, :cond_2

    .line 70
    .line 71
    const-string v0, "filterStack"

    .line 72
    .line 73
    const/4 v1, 0x1

    .line 74
    new-array v2, v1, [Ljava/lang/Object;

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    aput-object p2, v2, v3

    .line 78
    .line 79
    invoke-static {v0, v2}, Lcom/kwad/sdk/api/c;->g(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Ljava/lang/Boolean;

    .line 84
    .line 85
    if-eqz v0, :cond_1

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    const/4 v0, 0x1

    .line 93
    :goto_0
    iget-object v2, p0, Lcom/kwad/sdk/api/loader/f;->mContext:Landroid/content/Context;

    .line 94
    .line 95
    if-eqz v2, :cond_2

    .line 96
    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    sget-object v0, Lcom/kwad/sdk/api/loader/i;->aIf:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {v2, v0, v1}, Lcom/kwad/sdk/api/loader/b;->a(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    .line 104
    :cond_2
    iget-object v0, p0, Lcom/kwad/sdk/api/loader/f;->aHY:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 105
    .line 106
    if-eqz v0, :cond_3

    .line 107
    .line 108
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :catchall_0
    move-exception v0

    .line 113
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/kwad/sdk/api/loader/f;->aHY:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 117
    .line 118
    if-eqz v0, :cond_3

    .line 119
    .line 120
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    return-void

    .line 124
    :catchall_1
    move-exception v0

    .line 125
    iget-object v1, p0, Lcom/kwad/sdk/api/loader/f;->aHY:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 126
    .line 127
    if-eqz v1, :cond_4

    .line 128
    .line 129
    iget-object v1, p0, Lcom/kwad/sdk/api/loader/f;->aHY:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 130
    .line 131
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    :cond_4
    throw v0
.end method

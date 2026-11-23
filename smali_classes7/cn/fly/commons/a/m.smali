.class public Lcn/fly/commons/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static a:Lcn/fly/commons/a/m;


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/fly/commons/a/m;

    .line 2
    .line 3
    invoke-direct {v0}, Lcn/fly/commons/a/m;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcn/fly/commons/a/m;->a:Lcn/fly/commons/a/m;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "M-"

    .line 5
    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "M-H-"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "004?gdidilig"

    .line 23
    .line 24
    invoke-static {v1}, Lcn/fly/commons/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    invoke-static {v0, p0}, Lcn/fly/tools/FlyHandlerThread;->newHandler(Ljava/lang/String;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcn/fly/commons/a/m;->b:Landroid/os/Handler;

    .line 42
    .line 43
    return-void
.end method

.method private a(Lcn/fly/commons/a/c;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/fly/commons/a/c;",
            ">(TT;)I"
        }
    .end annotation

    .line 21
    invoke-virtual {p1}, Lcn/fly/commons/a/c;->l()I

    move-result p1

    if-lez p1, :cond_0

    add-int/lit16 p1, p1, 0x2710

    goto :goto_0

    :cond_0
    add-int/lit16 p1, p1, -0x2710

    :goto_0
    return p1
.end method

.method public static a()Lcn/fly/commons/a/m;
    .locals 1

    .line 1
    sget-object v0, Lcn/fly/commons/a/m;->a:Lcn/fly/commons/a/m;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x64

    .line 25
    invoke-static {p0, v0}, Lcn/fly/commons/r;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/os/Message;J)V
    .locals 3

    .line 22
    invoke-direct {p0}, Lcn/fly/commons/a/m;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 23
    iget-object v0, p0, Lcn/fly/commons/a/m;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 24
    :cond_1
    iget-object p2, p0, Lcn/fly/commons/a/m;->b:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method private a(IJLjava/lang/Runnable;)Z
    .locals 2

    .line 18
    invoke-direct {p0}, Lcn/fly/commons/a/m;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 19
    :cond_0
    iget-object v0, p0, Lcn/fly/commons/a/m;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 20
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/fly/commons/a/m;->b(IJLjava/lang/Runnable;)Z

    return v1
.end method

.method private b(IJLjava/lang/Runnable;)Z
    .locals 1

    .line 3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4
    iput p1, v0, Landroid/os/Message;->what:I

    .line 5
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    invoke-direct {p0, v0, p2, p3}, Lcn/fly/commons/a/m;->a(Landroid/os/Message;J)V

    const/4 p1, 0x1

    return p1
.end method

.method private e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/fly/commons/a/m;->b:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method


# virtual methods
.method public a(JILcn/fly/commons/d$b;)V
    .locals 2

    .line 13
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3ea

    .line 14
    iput v1, v0, Landroid/os/Message;->what:I

    .line 15
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 16
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 p3, 0x3e8

    mul-long p1, p1, p3

    .line 17
    invoke-direct {p0, v0, p1, p2}, Lcn/fly/commons/a/m;->a(Landroid/os/Message;J)V

    return-void
.end method

.method public a(JLcn/fly/commons/a/c;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/fly/commons/a/c;",
            ">(JTT;I)V"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcn/fly/commons/a/m;->a(JLcn/fly/commons/a/c;IZ)V

    return-void
.end method

.method public a(JLcn/fly/commons/a/c;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/fly/commons/a/c;",
            ">(JTT;IZ)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcn/fly/commons/a/m;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p3}, Lcn/fly/commons/a/m;->a(Lcn/fly/commons/a/c;)I

    move-result v0

    const/4 v1, 0x1

    if-ne p4, v1, :cond_1

    .line 5
    iget-object p4, p0, Lcn/fly/commons/a/m;->b:Landroid/os/Handler;

    invoke-virtual {p4, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p4, v1, :cond_2

    .line 6
    iget-object p4, p0, Lcn/fly/commons/a/m;->b:Landroid/os/Handler;

    invoke-virtual {p4, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p4

    if-eqz p4, :cond_2

    return-void

    .line 7
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p4

    .line 8
    iput v0, p4, Landroid/os/Message;->what:I

    .line 9
    iput-object p3, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p5, :cond_3

    const/4 p3, -0x1

    .line 10
    iput p3, p4, Landroid/os/Message;->arg2:I

    :cond_3
    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    .line 11
    invoke-direct {p0, p4, p1, p2}, Lcn/fly/commons/a/m;->a(Landroid/os/Message;J)V

    return-void
.end method

.method public a(JLjava/lang/Runnable;)Z
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    const/16 v0, 0x3eb

    .line 12
    invoke-direct {p0, v0, p1, p2, p3}, Lcn/fly/commons/a/m;->a(IJLjava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public b()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/fly/commons/a/m;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public b(JLjava/lang/Runnable;)Z
    .locals 1

    const/16 v0, 0x3ed

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Lcn/fly/commons/a/m;->b(IJLjava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public c()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/fly/commons/a/m;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(JLjava/lang/Runnable;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcn/fly/commons/a/m;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/fly/commons/a/m;->b:Landroid/os/Handler;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0, v1, p1, p2, p3}, Lcn/fly/commons/a/m;->b(IJLjava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/fly/commons/a/m;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcn/fly/commons/a/m;->b:Landroid/os/Handler;

    .line 8
    .line 9
    const/16 v1, 0x3ea

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 3
    .line 4
    const/4 v2, -0x1

    .line 5
    if-eq v1, v2, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcn/fly/commons/c;->e()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 18
    .line 19
    .line 20
    const-wide/32 v2, 0xea60

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v1, v2, v3}, Lcn/fly/commons/a/m;->a(Landroid/os/Message;J)V

    .line 24
    .line 25
    .line 26
    return v0

    .line 27
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 28
    .line 29
    const/16 v2, 0x3eb

    .line 30
    .line 31
    if-eq v1, v2, :cond_7

    .line 32
    .line 33
    const/16 v2, 0x3ec

    .line 34
    .line 35
    if-eq v1, v2, :cond_7

    .line 36
    .line 37
    const/16 v2, 0x3ee

    .line 38
    .line 39
    if-ne v1, v2, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/16 v2, 0x3ea

    .line 43
    .line 44
    if-ne v1, v2, :cond_3

    .line 45
    .line 46
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Lcn/fly/commons/d$b;

    .line 49
    .line 50
    if-eqz v1, :cond_8

    .line 51
    .line 52
    iget-boolean v3, v1, Lcn/fly/commons/d$b;->a:Z

    .line 53
    .line 54
    if-nez v3, :cond_2

    .line 55
    .line 56
    const/4 v3, 0x1

    .line 57
    iput-boolean v3, v1, Lcn/fly/commons/d$b;->a:Z

    .line 58
    .line 59
    :cond_2
    sget-object v3, Lcn/fly/commons/ac;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 60
    .line 61
    invoke-virtual {v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 65
    .line 66
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    iput v2, v3, Landroid/os/Message;->what:I

    .line 71
    .line 72
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 73
    .line 74
    iput p1, v3, Landroid/os/Message;->arg1:I

    .line 75
    .line 76
    mul-int/lit16 p1, p1, 0x3e8

    .line 77
    .line 78
    int-to-long v1, p1

    .line 79
    invoke-direct {p0, v3, v1, v2}, Lcn/fly/commons/a/m;->a(Landroid/os/Message;J)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    const/16 v2, 0x3ed

    .line 84
    .line 85
    if-eq v1, v2, :cond_6

    .line 86
    .line 87
    const/16 v2, 0x3ef

    .line 88
    .line 89
    if-ne v1, v2, :cond_4

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    const/16 v2, 0x2710

    .line 93
    .line 94
    if-ge v1, v2, :cond_5

    .line 95
    .line 96
    const/16 v2, -0x2710

    .line 97
    .line 98
    if-ge v1, v2, :cond_8

    .line 99
    .line 100
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast p1, Lcn/fly/commons/a/c;

    .line 103
    .line 104
    if-eqz p1, :cond_8

    .line 105
    .line 106
    invoke-virtual {p1}, Lcn/fly/commons/a/c;->j()Z

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_6
    :goto_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast p1, Ljava/lang/Runnable;

    .line 113
    .line 114
    if-eqz p1, :cond_8

    .line 115
    .line 116
    sget-object v1, Lcn/fly/commons/ac;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 117
    .line 118
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_7
    :goto_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast p1, Ljava/lang/Runnable;

    .line 125
    .line 126
    if-eqz p1, :cond_8

    .line 127
    .line 128
    sget-object v1, Lcn/fly/commons/ac;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 129
    .line 130
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :catchall_0
    move-exception p1

    .line 135
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v1, p1}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 140
    .line 141
    .line 142
    :cond_8
    :goto_2
    return v0
.end method

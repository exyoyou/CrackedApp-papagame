.class Lcom/github/snowdream/android/app/downloader/b$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/snowdream/android/app/downloader/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/snowdream/android/app/downloader/b;


# direct methods
.method constructor <init>(Lcom/github/snowdream/android/app/downloader/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/b$a;->a:Lcom/github/snowdream/android/app/downloader/b;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/b$a;->a:Lcom/github/snowdream/android/app/downloader/b;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/github/snowdream/android/app/downloader/b;->a(Lcom/github/snowdream/android/app/downloader/b;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/b$a;->a:Lcom/github/snowdream/android/app/downloader/b;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/github/snowdream/android/app/downloader/b;->a:Lcom/github/snowdream/android/app/downloader/b$b;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/github/snowdream/android/app/downloader/b$a;->a:Lcom/github/snowdream/android/app/downloader/b;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/github/snowdream/android/app/downloader/b;->a:Lcom/github/snowdream/android/app/downloader/b$b;

    .line 28
    .line 29
    iget v3, p1, Landroid/os/Message;->what:I

    .line 30
    .line 31
    const/4 v4, 0x2

    .line 32
    if-ne v3, v4, :cond_1

    .line 33
    .line 34
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {v2, p1}, Lcom/github/snowdream/android/app/downloader/b$b;->onStart(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v5, 0x4

    .line 45
    if-ne v3, v5, :cond_2

    .line 46
    .line 47
    invoke-interface {v2, v1}, Lcom/github/snowdream/android/app/downloader/b$b;->onError(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/github/snowdream/android/app/downloader/b$a;->a:Lcom/github/snowdream/android/app/downloader/b;

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/b;->l(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/4 v5, 0x3

    .line 57
    if-ne v3, v5, :cond_3

    .line 58
    .line 59
    invoke-interface {v2, v1}, Lcom/github/snowdream/android/app/downloader/b$b;->onStop(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/github/snowdream/android/app/downloader/b$a;->a:Lcom/github/snowdream/android/app/downloader/b;

    .line 63
    .line 64
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/b;->l(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    const/4 v5, 0x1

    .line 69
    if-ne v3, v5, :cond_4

    .line 70
    .line 71
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-interface {v2, p1}, Lcom/github/snowdream/android/app/downloader/b$b;->onFinish(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/github/snowdream/android/app/downloader/b$a;->a:Lcom/github/snowdream/android/app/downloader/b;

    .line 81
    .line 82
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/b;->l(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    const/4 v1, 0x7

    .line 87
    if-ne v3, v1, :cond_5

    .line 88
    .line 89
    const-string v1, "url"

    .line 90
    .line 91
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 98
    .line 99
    .line 100
    move-result-wide v3

    .line 101
    invoke-interface {v2, v1, v3, v4}, Lcom/github/snowdream/android/app/downloader/b$b;->updateSize(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_5
    const/4 v1, 0x5

    .line 106
    if-ne v3, v1, :cond_6

    .line 107
    .line 108
    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const-string v1, ";"

    .line 115
    .line 116
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    const/4 v1, 0x0

    .line 121
    aget-object v1, p1, v1

    .line 122
    .line 123
    aget-object v3, p1, v4

    .line 124
    .line 125
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    aget-object p1, p1, v5

    .line 130
    .line 131
    invoke-interface {v2, v1, v3, p1}, Lcom/github/snowdream/android/app/downloader/b$b;->onProgress(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :catch_0
    move-exception p1

    .line 136
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 137
    .line 138
    .line 139
    :cond_6
    :goto_0
    monitor-exit v0

    .line 140
    return-void

    .line 141
    :catchall_0
    move-exception p1

    .line 142
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    throw p1
.end method

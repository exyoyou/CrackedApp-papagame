.class public Lcom/byazt/wh/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x494,
        0xfe
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wh/a;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/os/IBinder;

.field public final synthetic tt:Lcom/byazt/wh/a;


# direct methods
.method public constructor <init>(Lcom/byazt/wh/a;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wh/a$2;->tt:Lcom/byazt/wh/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/wh/a$2;->c:Landroid/os/IBinder;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/byazt/wh/a$2;->tt:Lcom/byazt/wh/a;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/byazt/wh/a;->tt(Lcom/byazt/wh/a;)Lcom/byazt/wh/tt;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/byazt/wh/a$2;->tt:Lcom/byazt/wh/a;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/byazt/wh/a;->ve(Lcom/byazt/wh/a;)Lcom/byazt/wh/ve;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/byazt/wh/a$2;->tt:Lcom/byazt/wh/a;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/byazt/wh/a;->ve(Lcom/byazt/wh/a;)Lcom/byazt/wh/ve;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/byazt/wh/a$2;->tt:Lcom/byazt/wh/a;

    .line 26
    .line 27
    invoke-static {v2}, Lcom/byazt/wh/a;->tt(Lcom/byazt/wh/a;)Lcom/byazt/wh/tt;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v1, v2}, Lcom/byazt/wh/ve;->c(Lcom/byazt/wh/tt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    .line 33
    .line 34
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/byazt/wh/a$2;->tt:Lcom/byazt/wh/a;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/byazt/wh/a;->uj(Lcom/byazt/wh/a;)Ljava/util/concurrent/CountDownLatch;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    :try_start_2
    iget-object v1, p0, Lcom/byazt/wh/a$2;->c:Landroid/os/IBinder;

    .line 44
    .line 45
    new-instance v2, Lcom/byazt/wh/a$2$1;

    .line 46
    .line 47
    invoke-direct {v2, p0}, Lcom/byazt/wh/a$2$1;-><init>(Lcom/byazt/wh/a$2;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto :goto_2

    .line 56
    :catchall_1
    move-exception v1

    .line 57
    :try_start_3
    const-string v2, "SqlDownloadCacheAidlWra"

    .line 58
    .line 59
    const-string v3, "onServiceConnected fail"

    .line 60
    .line 61
    invoke-static {v2, v3, v1}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/byazt/wh/a$2;->tt:Lcom/byazt/wh/a;

    .line 65
    .line 66
    invoke-static {v1}, Lcom/byazt/wh/a;->c(Lcom/byazt/wh/a;)Lcom/byazt/zz/ve$c$c;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    iget-object v1, p0, Lcom/byazt/wh/a$2;->tt:Lcom/byazt/wh/a;

    .line 73
    .line 74
    invoke-static {v1}, Lcom/byazt/wh/a;->c(Lcom/byazt/wh/a;)Lcom/byazt/zz/ve$c$c;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-interface {v1}, Lcom/byazt/zz/ve$c$c;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 79
    .line 80
    .line 81
    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/byazt/wh/a$2;->tt:Lcom/byazt/wh/a;

    .line 82
    .line 83
    invoke-static {v1}, Lcom/byazt/wh/a;->uj(Lcom/byazt/wh/a;)Ljava/util/concurrent/CountDownLatch;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 88
    .line 89
    .line 90
    :try_start_5
    iget-object v1, p0, Lcom/byazt/wh/a$2;->c:Landroid/os/IBinder;

    .line 91
    .line 92
    new-instance v2, Lcom/byazt/wh/a$2$1;

    .line 93
    .line 94
    invoke-direct {v2, p0}, Lcom/byazt/wh/a$2$1;-><init>(Lcom/byazt/wh/a$2;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catchall_2
    :goto_1
    :try_start_6
    monitor-exit p0

    .line 99
    return-void

    .line 100
    :catchall_3
    move-exception v1

    .line 101
    iget-object v2, p0, Lcom/byazt/wh/a$2;->tt:Lcom/byazt/wh/a;

    .line 102
    .line 103
    invoke-static {v2}, Lcom/byazt/wh/a;->uj(Lcom/byazt/wh/a;)Ljava/util/concurrent/CountDownLatch;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 108
    .line 109
    .line 110
    :try_start_7
    iget-object v2, p0, Lcom/byazt/wh/a$2;->c:Landroid/os/IBinder;

    .line 111
    .line 112
    new-instance v3, Lcom/byazt/wh/a$2$1;

    .line 113
    .line 114
    invoke-direct {v3, p0}, Lcom/byazt/wh/a$2$1;-><init>(Lcom/byazt/wh/a$2;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {v2, v3, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 118
    .line 119
    .line 120
    :catchall_4
    :try_start_8
    throw v1

    .line 121
    :goto_2
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 122
    throw v0
.end method

.class Lcom/join/mgps/mod/activity/ModLoadingActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/mod/activity/ModLoadingActivity;->calculateSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/mod/activity/ModLoadingActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$e;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$e;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 3
    .line 4
    invoke-static {v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->l(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Z

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    :try_start_1
    sget-object v0, Lcom/join/mgps/va/overmind/k;->a:Lcom/join/mgps/va/overmind/k;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$e;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/join/mgps/va/overmind/k;->X(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/join/mgps/va/overmind/m;->b(Ljava/lang/String;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iget-object v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$e;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 25
    .line 26
    invoke-static {v2}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->v(Lcom/join/mgps/mod/activity/ModLoadingActivity;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    cmp-long v5, v0, v3

    .line 31
    .line 32
    if-ltz v5, :cond_0

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const/4 v3, 0x0

    .line 37
    :goto_1
    invoke-static {v2, v3}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->m(Lcom/join/mgps/mod/activity/ModLoadingActivity;Z)Z

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$e;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 41
    .line 42
    invoke-static {v2}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->v(Lcom/join/mgps/mod/activity/ModLoadingActivity;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    const-wide/16 v4, 0x0

    .line 47
    .line 48
    cmp-long v6, v2, v4

    .line 49
    .line 50
    if-nez v6, :cond_1

    .line 51
    .line 52
    const/16 v0, 0x64

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$e;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 56
    .line 57
    invoke-static {v2}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->v(Lcom/join/mgps/mod/activity/ModLoadingActivity;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    div-long/2addr v0, v2

    .line 62
    const-wide/16 v2, 0x64

    .line 63
    .line 64
    mul-long v0, v0, v2

    .line 65
    .line 66
    long-to-int v0, v0

    .line 67
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 68
    .line 69
    .line 70
    const-wide/16 v1, 0x3e8

    .line 71
    .line 72
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$e;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 76
    .line 77
    new-instance v2, Lcom/join/mgps/mod/activity/ModLoadingActivity$e$a;

    .line 78
    .line 79
    invoke-direct {v2, p0, v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity$e$a;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity$e;I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$e;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->B:Ljava/util/List;

    .line 94
    .line 95
    const-string v1, "copyExtFile"

    .line 96
    .line 97
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    new-instance v1, Landroid/content/Intent;

    .line 105
    .line 106
    const-string v2, "com.join.android.app.mgsim.wufun.soCopyFinish"

    .line 107
    .line 108
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    .line 113
    .line 114
    monitor-exit p0

    .line 115
    return-void

    .line 116
    :catchall_0
    move-exception v0

    .line 117
    monitor-exit p0

    .line 118
    throw v0
.end method

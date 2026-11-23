.class Lcom/join/mgps/mod/activity/ModLoadingActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/mod/activity/ModLoadingActivity;->y()V
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
    iput-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$g;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

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
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$g;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

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
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$g;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/join/mgps/va/overmind/k;->V(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Lcom/papa91/arc/util/FileUtils;->fileSize(Ljava/lang/String;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    iget-object v3, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$g;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 25
    .line 26
    iget-object v3, v3, Lcom/join/mgps/mod/activity/ModLoadingActivity;->h:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Lcom/join/mgps/va/overmind/k;->V(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/papa91/arc/util/FileUtils;->fileSize(Ljava/lang/String;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$g;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 37
    .line 38
    add-long/2addr v1, v3

    .line 39
    invoke-static {v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->v(Lcom/join/mgps/mod/activity/ModLoadingActivity;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    cmp-long v5, v1, v3

    .line 44
    .line 45
    if-ltz v5, :cond_0

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    const/4 v3, 0x0

    .line 50
    :goto_1
    invoke-static {v0, v3}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->m(Lcom/join/mgps/mod/activity/ModLoadingActivity;Z)Z

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$g;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->v(Lcom/join/mgps/mod/activity/ModLoadingActivity;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    const-wide/16 v5, 0x0

    .line 60
    .line 61
    cmp-long v0, v3, v5

    .line 62
    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    const/16 v0, 0x64

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$g;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->v(Lcom/join/mgps/mod/activity/ModLoadingActivity;)J

    .line 71
    .line 72
    .line 73
    move-result-wide v3

    .line 74
    div-long/2addr v1, v3

    .line 75
    const-wide/16 v3, 0x64

    .line 76
    .line 77
    mul-long v1, v1, v3

    .line 78
    .line 79
    long-to-int v0, v1

    .line 80
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 81
    .line 82
    .line 83
    const-wide/16 v1, 0x3e8

    .line 84
    .line 85
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$g;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 89
    .line 90
    new-instance v2, Lcom/join/mgps/mod/activity/ModLoadingActivity$g$a;

    .line 91
    .line 92
    invoke-direct {v2, p0, v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity$g$a;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity$g;I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$g;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 105
    .line 106
    iget-object v0, v0, Lcom/join/mgps/mod/activity/ModLoadingActivity;->B:Ljava/util/List;

    .line 107
    .line 108
    const-string v1, "copyExtFile"

    .line 109
    .line 110
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    new-instance v1, Landroid/content/Intent;

    .line 118
    .line 119
    const-string v2, "com.join.android.app.mgsim.wufun.soCopyFinish"

    .line 120
    .line 121
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    .line 126
    .line 127
    monitor-exit p0

    .line 128
    return-void

    .line 129
    :catchall_0
    move-exception v0

    .line 130
    monitor-exit p0

    .line 131
    throw v0
.end method

.class Lcom/join/mgps/va/service/OMPluginService$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/va/service/OMPluginService;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/va/service/OMPluginService;


# direct methods
.method constructor <init>(Lcom/join/mgps/va/service/OMPluginService;)V
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
    iput-object p1, p0, Lcom/join/mgps/va/service/OMPluginService$4;->b:Lcom/join/mgps/va/service/OMPluginService;

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
    iget-object v0, p0, Lcom/join/mgps/va/service/OMPluginService$4;->b:Lcom/join/mgps/va/service/OMPluginService;

    .line 3
    .line 4
    invoke-static {v0}, Lcom/join/mgps/va/service/OMPluginService;->l(Lcom/join/mgps/va/service/OMPluginService;)Z

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
    iget-object v1, p0, Lcom/join/mgps/va/service/OMPluginService$4;->b:Lcom/join/mgps/va/service/OMPluginService;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/join/mgps/va/service/OMPluginService;->e:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/join/mgps/va/service/OMPluginService$4;->b:Lcom/join/mgps/va/service/OMPluginService;

    .line 25
    .line 26
    invoke-static {v2}, Lcom/join/mgps/va/service/OMPluginService;->i(Lcom/join/mgps/va/service/OMPluginService;)J

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
    invoke-static {v2, v3}, Lcom/join/mgps/va/service/OMPluginService;->m(Lcom/join/mgps/va/service/OMPluginService;Z)Z

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/join/mgps/va/service/OMPluginService$4;->b:Lcom/join/mgps/va/service/OMPluginService;

    .line 41
    .line 42
    invoke-static {v2}, Lcom/join/mgps/va/service/OMPluginService;->i(Lcom/join/mgps/va/service/OMPluginService;)J

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
    iget-object v2, p0, Lcom/join/mgps/va/service/OMPluginService$4;->b:Lcom/join/mgps/va/service/OMPluginService;

    .line 56
    .line 57
    invoke-static {v2}, Lcom/join/mgps/va/service/OMPluginService;->i(Lcom/join/mgps/va/service/OMPluginService;)J

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
    new-instance v1, Landroid/os/Bundle;

    .line 76
    .line 77
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v2, "_progress"

    .line 81
    .line 82
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/join/mgps/va/service/OMPluginService$4;->b:Lcom/join/mgps/va/service/OMPluginService;

    .line 86
    .line 87
    const/16 v2, 0x8

    .line 88
    .line 89
    invoke-static {v0, v2, v1}, Lcom/join/mgps/va/service/OMPluginService;->e(Lcom/join/mgps/va/service/OMPluginService;ILandroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/va/service/OMPluginService$4;->b:Lcom/join/mgps/va/service/OMPluginService;

    .line 99
    .line 100
    iget-object v0, v0, Lcom/join/mgps/va/service/OMPluginService;->o:Ljava/util/List;

    .line 101
    .line 102
    const-string v1, "copyExtFile"

    .line 103
    .line 104
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    new-instance v1, Landroid/content/Intent;

    .line 112
    .line 113
    const-string v2, "com.join.android.app.mgsim.wufun.soCopyFinish"

    .line 114
    .line 115
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    .line 120
    .line 121
    monitor-exit p0

    .line 122
    return-void

    .line 123
    :catchall_0
    move-exception v0

    .line 124
    monitor-exit p0

    .line 125
    throw v0
.end method

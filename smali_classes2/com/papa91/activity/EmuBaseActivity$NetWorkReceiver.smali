.class public Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/activity/EmuBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetWorkReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuBaseActivity;


# direct methods
.method public constructor <init>(Lcom/papa91/activity/EmuBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 2
    .line 3
    const-string p2, "connectivity"

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    :try_start_0
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/papa91/activity/EmuBaseActivity;->HttpPost_Memer()V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->access$700()Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    new-instance p1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->access$700()Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Ljava/util/Timer;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v1, Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver$1;

    .line 49
    .line 50
    invoke-direct {v1, p0, p1, v0}, Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver$1;-><init>(Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver;Ljava/util/ArrayList;Ljava/util/Timer;)V

    .line 51
    .line 52
    .line 53
    const-wide/16 v2, 0x0

    .line 54
    .line 55
    const-wide/16 v4, 0xc8

    .line 56
    .line 57
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    :cond_0
    :goto_0
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->canShowRewardMenu()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->isRewardConfigInited()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_1

    .line 76
    .line 77
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$NetWorkReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/papa91/activity/EmuBaseActivity;->getRewardConfig()V

    .line 80
    .line 81
    .line 82
    :cond_1
    return-void
.end method

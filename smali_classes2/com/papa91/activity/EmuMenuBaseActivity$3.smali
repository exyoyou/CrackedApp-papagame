.class Lcom/papa91/activity/EmuMenuBaseActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/activity/EmuMenuBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuMenuBaseActivity;


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity$3;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    :try_start_0
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->getGameTime()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity$3;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/papa91/activity/EmuMenuBaseActivity;->access$100(Lcom/papa91/activity/EmuMenuBaseActivity;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    sub-int v1, v0, v1

    .line 12
    .line 13
    if-lez v1, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/papa91/activity/EmuMenuBaseActivity$3;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    .line 16
    .line 17
    invoke-static {v2, v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->access$102(Lcom/papa91/activity/EmuMenuBaseActivity;I)I

    .line 18
    .line 19
    .line 20
    new-instance v0, Landroid/content/Intent;

    .line 21
    .line 22
    const-string v2, "com.join.android.app.mgsim.wufun.broadcast.emu.gamePlayTimes"

    .line 23
    .line 24
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v2, "gameId"

    .line 28
    .line 29
    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    const-string v2, "liveTime"

    .line 35
    .line 36
    int-to-long v3, v1

    .line 37
    const-wide/16 v5, 0x3e8

    .line 38
    .line 39
    div-long/2addr v3, v5

    .line 40
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity$3;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$3;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    .line 54
    .line 55
    iget-object v1, v0, Lcom/papa91/activity/EmuBaseActivity;->handler:Landroid/os/Handler;

    .line 56
    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    new-instance v1, Landroid/os/Handler;

    .line 60
    .line 61
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v1, v0, Lcom/papa91/activity/EmuBaseActivity;->handler:Landroid/os/Handler;

    .line 65
    .line 66
    :cond_1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$3;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/papa91/activity/EmuBaseActivity;->handler:Landroid/os/Handler;

    .line 69
    .line 70
    const-wide/32 v1, 0xea60

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    .line 75
    .line 76
    return-void
.end method

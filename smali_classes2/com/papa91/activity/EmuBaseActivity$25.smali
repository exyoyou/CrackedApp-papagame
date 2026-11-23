.class Lcom/papa91/activity/EmuBaseActivity$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/view/RewardBananaDialog$OnRewardBananaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->showRewardDialog1(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onDoubleReward(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.tools.AdBroadcast"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "action"

    .line 9
    .line 10
    const/4 v2, 0x5

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    const-string v1, "orientation"

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    const-string v1, "uniqueId"

    .line 21
    .line 22
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    const-string v1, "gameId"

    .line 26
    .line 27
    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    const-string p5, "amount"

    .line 31
    .line 32
    invoke-virtual {v0, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    const-string p5, "times"

    .line 36
    .line 37
    invoke-virtual {v0, p5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const-string p5, "type"

    .line 41
    .line 42
    invoke-virtual {v0, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    const-string p5, "uid"

    .line 46
    .line 47
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, p5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 53
    .line 54
    .line 55
    const-string p5, "FCDouble"

    .line 56
    .line 57
    invoke-static {p5, p1, p2, p3, p4}, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaEvent(Ljava/lang/String;Ljava/lang/String;III)Z

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public onReceiveReward(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.reward.receive"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "orientation"

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    const-string v1, "uniqueId"

    .line 15
    .line 16
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    const-string v1, "gameId"

    .line 20
    .line 21
    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    const-string p5, "amount"

    .line 25
    .line 26
    invoke-virtual {v0, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    const-string p5, "times"

    .line 30
    .line 31
    invoke-virtual {v0, p5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    const-string p5, "type"

    .line 35
    .line 36
    invoke-virtual {v0, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    const-string p5, "uid"

    .line 40
    .line 41
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, p5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 47
    .line 48
    .line 49
    const-string p5, "FCReceiveBanner"

    .line 50
    .line 51
    invoke-static {p5, p1, p2, p3, p4}, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaEvent(Ljava/lang/String;Ljava/lang/String;III)Z

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public onRewardInfo(Ljava/lang/String;IIII)V
    .locals 0

    .line 1
    sput-object p1, Lcom/papa91/activity/EmuBaseActivity;->unique_id:Ljava/lang/String;

    .line 2
    .line 3
    sput p2, Lcom/papa91/activity/EmuBaseActivity;->reward_amount:I

    .line 4
    .line 5
    sput p3, Lcom/papa91/activity/EmuBaseActivity;->reward_times:I

    .line 6
    .line 7
    sput p4, Lcom/papa91/activity/EmuBaseActivity;->reward_left_count:I

    .line 8
    .line 9
    sput p5, Lcom/papa91/activity/EmuBaseActivity;->total_reward_amount:I

    .line 10
    .line 11
    return-void
.end method

.class Lcom/papa91/activity/EmuBaseActivity$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->showRewardMenu()V
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
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->canShowRewardMenu()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->isRewardConfigInited()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->left_play_reward_count:I

    .line 20
    .line 21
    sget v1, Lcom/papa91/activity/EmuBaseActivity;->received_times:I

    .line 22
    .line 23
    sub-int/2addr v0, v1

    .line 24
    const/4 v1, 0x1

    .line 25
    if-ge v0, v1, :cond_2

    .line 26
    .line 27
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    .line 28
    .line 29
    const/16 v1, 0x8

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    :cond_3
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->rewardConfig:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_4

    .line 56
    .line 57
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    .line 58
    .line 59
    sget v1, Lcom/papa91/activity/EmuBaseActivity;->reward_left_count:I

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/papa91/view/DragProgressView;->setSignalMax(I)V

    .line 62
    .line 63
    .line 64
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    .line 65
    .line 66
    sget v1, Lcom/papa91/activity/EmuBaseActivity;->init_first_box_time:I

    .line 67
    .line 68
    sget v2, Lcom/papa91/activity/EmuBaseActivity;->min_time_interval:I

    .line 69
    .line 70
    sget v3, Lcom/papa91/activity/EmuBaseActivity;->max_time_interval:I

    .line 71
    .line 72
    invoke-virtual {v0, v1, v2, v3}, Lcom/papa91/view/DragProgressView;->setInterval(III)V

    .line 73
    .line 74
    .line 75
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/papa91/view/DragProgressView;->isRunning()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_4

    .line 82
    .line 83
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/papa91/view/DragProgressView;->start()V

    .line 86
    .line 87
    .line 88
    :cond_4
    return-void
.end method

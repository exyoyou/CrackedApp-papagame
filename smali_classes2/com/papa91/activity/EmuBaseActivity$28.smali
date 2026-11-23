.class Lcom/papa91/activity/EmuBaseActivity$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->setContentView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuBaseActivity;


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$28;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x2

    .line 3
    const-string v1, "FCAchieveBanner"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-static {v1, v2, p1, p1, v0}, Lcom/papa91/activity/EmuBaseActivity;->rewardBananaEvent(Ljava/lang/String;Ljava/lang/String;III)Z

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->isRewardConfigInited()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->isNetworkConnected()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    const-string p1, "\u8bf7\u8054\u7f51\u540e\u91cd\u8bd5"

    .line 23
    .line 24
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->showToast(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    const-string p1, "\u6b63\u5728\u83b7\u53d6\u5956\u52b1\u4fe1\u606f\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    .line 29
    .line 30
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->showToast(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$28;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/papa91/activity/EmuBaseActivity;->getRewardConfig()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity$28;->reward()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method reward()V
    .locals 3

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->rewardConfig:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/papa91/view/DragProgressView;->getSignal()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-lez v0, :cond_1

    .line 21
    .line 22
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->rewardConfig:Ljava/lang/String;

    .line 23
    .line 24
    sget v1, Lcom/papa91/activity/EmuBaseActivity;->generatedTimes:I

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-static {v0, v1, v2}, Lcom/papa91/activity/EmuBaseActivity;->showRewardDialog(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->reward_left_count:I

    .line 32
    .line 33
    if-lez v0, :cond_2

    .line 34
    .line 35
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->showRewardTipDialog()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const-string v0, "\u4eca\u65e5\u5956\u52b1\u5df2\u5168\u90e8\u9886\u53d6\uff0c\u8bf7\u660e\u5929\u518d\u6765"

    .line 40
    .line 41
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->showToast(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_3
    :goto_0
    return-void
.end method

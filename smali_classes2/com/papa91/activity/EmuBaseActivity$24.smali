.class Lcom/papa91/activity/EmuBaseActivity$24;
.super Lcom/papa91/view/RewardBananaDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->showRewardDialog1(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/view/RewardBananaDialog;-><init>(Landroid/content/Context;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public giveUpReceive(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/papa91/view/RewardBananaDialog;->giveUpReceive(I)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/papa91/view/DragProgressView;->getSignal()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/papa91/view/DragProgressView;->setSignal(I)V

    .line 13
    .line 14
    .line 15
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/papa91/view/DragProgressView;->resume()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

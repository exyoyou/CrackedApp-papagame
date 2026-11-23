.class Lcom/join/mgps/activity/RewardAdDialogActivity$c;
.super Lcom/join/mgps/ad/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/RewardAdDialogActivity;->initCallBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/RewardAdDialogActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/RewardAdDialogActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity$c;->a:Lcom/join/mgps/activity/RewardAdDialogActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/ad/t;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onWfADClose()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/t;->onWfADClose()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity$c;->a:Lcom/join/mgps/activity/RewardAdDialogActivity;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity$c;->a:Lcom/join/mgps/activity/RewardAdDialogActivity;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/activity/RewardAdDialogActivity;->access$800(Lcom/join/mgps/activity/RewardAdDialogActivity;)Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v0, v0, Le6/b;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity$c;->a:Lcom/join/mgps/activity/RewardAdDialogActivity;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/join/mgps/activity/RewardAdDialogActivity;->access$900(Lcom/join/mgps/activity/RewardAdDialogActivity;)Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Le6/b;

    .line 26
    .line 27
    invoke-interface {v0}, Le6/b;->onAdClose()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public onWfADLoad(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showAd"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/ad/t;->onWfADLoad(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity$c;->a:Lcom/join/mgps/activity/RewardAdDialogActivity;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p1, v0}, Lcom/join/mgps/activity/RewardAdDialogActivity;->access$702(Lcom/join/mgps/activity/RewardAdDialogActivity;Z)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onWfError(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "err",
            "msg"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/ad/t;->onWfError(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity$c;->a:Lcom/join/mgps/activity/RewardAdDialogActivity;

    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    invoke-static {p1, p2}, Lcom/join/mgps/activity/RewardAdDialogActivity;->access$702(Lcom/join/mgps/activity/RewardAdDialogActivity;Z)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onWfVideoCached()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/t;->onWfVideoCached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity$c;->a:Lcom/join/mgps/activity/RewardAdDialogActivity;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Lcom/join/mgps/activity/RewardAdDialogActivity;->access$702(Lcom/join/mgps/activity/RewardAdDialogActivity;Z)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onWfVideoComplete()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/t;->onWfVideoComplete()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/papa91/wrapper/UserPrefs;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity$c;->a:Lcom/join/mgps/activity/RewardAdDialogActivity;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/papa91/wrapper/UserPrefs;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/papa91/wrapper/UserPrefs;->getAdGamesHasSeeCount()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/papa91/wrapper/UserPrefs;->setAdGamesHasSeeCount(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity$c;->a:Lcom/join/mgps/activity/RewardAdDialogActivity;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/join/mgps/activity/RewardAdDialogActivity;->access$1000(Lcom/join/mgps/activity/RewardAdDialogActivity;)Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    instance-of v0, v0, Le6/b;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity$c;->a:Lcom/join/mgps/activity/RewardAdDialogActivity;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/join/mgps/activity/RewardAdDialogActivity;->access$1100(Lcom/join/mgps/activity/RewardAdDialogActivity;)Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Le6/b;

    .line 37
    .line 38
    invoke-interface {v0}, Le6/b;->onAdShow()V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity$c;->a:Lcom/join/mgps/activity/RewardAdDialogActivity;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/join/mgps/activity/RewardAdDialogActivity;->access$1200(Lcom/join/mgps/activity/RewardAdDialogActivity;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

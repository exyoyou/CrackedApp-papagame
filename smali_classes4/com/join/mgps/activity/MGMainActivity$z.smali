.class Lcom/join/mgps/activity/MGMainActivity$z;
.super Lcom/join/mgps/ad/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity;->initGDTDownLoadSpeedAd(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic r:Z

.field final synthetic s:Lcom/join/mgps/activity/MGMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            "this$0",
            "ctx",
            "appId",
            "posId",
            "val$needShow"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$z;->s:Lcom/join/mgps/activity/MGMainActivity;

    .line 2
    .line 3
    iput-boolean p5, p0, Lcom/join/mgps/activity/MGMainActivity$z;->r:Z

    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4}, Lcom/join/mgps/ad/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onWfADClose(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/ad/d;->onWfADClose(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/16 v2, 0xb

    .line 25
    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity$z;->s:Lcom/join/mgps/activity/MGMainActivity;

    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->w4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$z;->s:Lcom/join/mgps/activity/MGMainActivity;

    .line 34
    .line 35
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainActivity;->gdtDownLoadSpeedAd:Lcom/join/mgps/ad/h;

    .line 36
    .line 37
    const/16 v1, 0x15

    .line 38
    .line 39
    invoke-static {v0, v1, p1}, Lcom/join/mgps/ad/d;->j(Landroid/content/Context;ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$z;->s:Lcom/join/mgps/activity/MGMainActivity;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/join/mgps/activity/MGMainActivity;->delayChangeAdshow()V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$z;->s:Lcom/join/mgps/activity/MGMainActivity;

    .line 48
    .line 49
    iget-object v0, p1, Lcom/join/mgps/activity/MGMainActivity;->gdtDownLoadSpeedAd:Lcom/join/mgps/ad/h;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/MGMainActivity;->delayLoadRewardAd(Lcom/join/mgps/ad/d;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public onWfADShow()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/d;->onWfADShow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$z;->s:Lcom/join/mgps/activity/MGMainActivity;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/activity/MGMainActivity;->sendVideoAdWatchLog(II)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onWfInitSuccess()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/d;->onWfInitSuccess()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/join/mgps/activity/MGMainActivity$z;->r:Z

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/ad/h;->d(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

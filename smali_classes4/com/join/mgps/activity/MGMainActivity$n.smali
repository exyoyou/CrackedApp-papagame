.class Lcom/join/mgps/activity/MGMainActivity$n;
.super Lcom/join/mgps/ad/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity;->initREAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic t:Z

.field final synthetic u:Lcom/join/mgps/activity/MGMainActivity;


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
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$n;->u:Lcom/join/mgps/activity/MGMainActivity;

    .line 2
    .line 3
    iput-boolean p5, p0, Lcom/join/mgps/activity/MGMainActivity$n;->t:Z

    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4}, Lcom/join/mgps/ad/s;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onWfADClose(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameId",
            "howTimes",
            "times"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/ad/d;->onWfADClose(Ljava/lang/String;II)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/papa91/wrapper/UserPrefs;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity$n;->u:Lcom/join/mgps/activity/MGMainActivity;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Lcom/papa91/wrapper/UserPrefs;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity$n;->u:Lcom/join/mgps/activity/MGMainActivity;

    .line 21
    .line 22
    invoke-static {v2}, Lcom/join/mgps/activity/MGMainActivity;->access$1800(Lcom/join/mgps/activity/MGMainActivity;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, ""

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    add-int/lit8 p2, p2, 0x1

    .line 43
    .line 44
    add-int/lit8 p3, p3, 0x1

    .line 45
    .line 46
    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/papa91/wrapper/UserPrefs;->setFbaAdGamesConfig(Ljava/lang/String;Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public onWfADLoad(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showAd"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$n;->u:Lcom/join/mgps/activity/MGMainActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainActivity;->reAdVideo:Lcom/join/mgps/ad/s;

    .line 4
    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/join/mgps/ad/d;->h(Landroid/content/Context;I)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/join/mgps/ad/d;->onWfADLoad(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onWfADShow()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/d;->onWfADShow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$n;->u:Lcom/join/mgps/activity/MGMainActivity;

    .line 5
    .line 6
    const/4 v1, 0x1

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
    iget-boolean v0, p0, Lcom/join/mgps/activity/MGMainActivity$n;->t:Z

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/ad/s;->d(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onWfVideoCached()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/d;->onWfVideoCached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$n;->u:Lcom/join/mgps/activity/MGMainActivity;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainActivity;->reAdVideo:Lcom/join/mgps/ad/s;

    .line 7
    .line 8
    const/16 v1, 0x9

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/join/mgps/ad/d;->h(Landroid/content/Context;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

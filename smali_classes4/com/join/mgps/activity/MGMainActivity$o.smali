.class Lcom/join/mgps/activity/MGMainActivity$o;
.super Lcom/join/mgps/ad/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity;->initGoldTTAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic u:Z

.field final synthetic v:Lcom/join/mgps/activity/MGMainActivity;


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
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$o;->v:Lcom/join/mgps/activity/MGMainActivity;

    .line 2
    .line 3
    iput-boolean p5, p0, Lcom/join/mgps/activity/MGMainActivity$o;->u:Z

    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4}, Lcom/join/mgps/ad/a0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onWfADClose(Ljava/lang/String;IILjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameId",
            "howTimes",
            "times",
            "extras"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/join/mgps/ad/d;->onWfADClose(Ljava/lang/String;IILjava/util/Map;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/papa91/wrapper/UserPrefs;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity$o;->v:Lcom/join/mgps/activity/MGMainActivity;

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
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity$o;->v:Lcom/join/mgps/activity/MGMainActivity;

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
    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/papa91/wrapper/UserPrefs;->setGoldFingerAdGamesConfig(Ljava/lang/String;Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$o;->v:Lcom/join/mgps/activity/MGMainActivity;

    .line 50
    .line 51
    iget-object p2, p1, Lcom/join/mgps/activity/MGMainActivity;->ttGoldAdVideo:Lcom/join/mgps/ad/a0;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const/16 p2, 0x3ef

    .line 58
    .line 59
    invoke-static {p1, p2, p4}, Lcom/join/mgps/ad/d;->i(Landroid/content/Context;ILjava/util/Map;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public onWfInitSuccess()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/d;->onWfInitSuccess()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/join/mgps/activity/MGMainActivity$o;->u:Z

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/ad/a0;->d(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

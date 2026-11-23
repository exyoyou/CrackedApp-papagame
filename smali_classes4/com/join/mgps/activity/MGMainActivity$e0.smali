.class Lcom/join/mgps/activity/MGMainActivity$e0;
.super Lcom/join/mgps/ad/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity;->initGrMPspAd(Z)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$e0;->v:Lcom/join/mgps/activity/MGMainActivity;

    .line 2
    .line 3
    iput-boolean p5, p0, Lcom/join/mgps/activity/MGMainActivity$e0;->u:Z

    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4}, Lcom/join/mgps/ad/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onWfADClose()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/d;->onWfADClose()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$e0;->v:Lcom/join/mgps/activity/MGMainActivity;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/join/mgps/activity/MGMainActivity;->groPspAd:Lcom/join/mgps/ad/l;

    .line 7
    .line 8
    const/16 v1, 0x12

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/join/mgps/ad/d;->h(Landroid/content/Context;I)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$e0;->v:Lcom/join/mgps/activity/MGMainActivity;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    const/4 v2, 0x7

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/activity/MGMainActivity;->sendVideoAdWatchLog(II)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/papa/sim/statistic/Event;->Stopad_GromoreSdk_VideoShow:Lcom/papa/sim/statistic/Event;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/join/mgps/ad/d;->f:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/ad/d;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onWfInitSuccess()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/d;->onWfInitSuccess()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/join/mgps/activity/MGMainActivity$e0;->u:Z

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/ad/l;->d(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public x()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/l;->x()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/papa/sim/statistic/Event;->Stopad_GromoreSdk_Videoloading:Lcom/papa/sim/statistic/Event;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/join/mgps/ad/d;->f:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/ad/d;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

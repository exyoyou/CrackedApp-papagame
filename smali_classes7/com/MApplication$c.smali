.class Lcom/MApplication$c;
.super Lcom/join/mgps/ad/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/MApplication;->x(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic r:Lcom/MApplication;


# direct methods
.method constructor <init>(Lcom/MApplication;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "ctx",
            "appId",
            "posId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/MApplication$c;->r:Lcom/MApplication;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4}, Lcom/join/mgps/ad/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onWfADClick()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/d;->onWfADClick()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/papa/sim/statistic/Event;->Emu_PatchAd_Click:Lcom/papa/sim/statistic/Event;

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

.method public onWfADClose(Ljava/lang/String;II)V
    .locals 0
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
    sget-object p2, Lcom/papa/sim/statistic/Event;->Emu_PatchAd_Close:Lcom/papa/sim/statistic/Event;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/ad/d;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onWfADLoad(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showAd"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/ad/d;->onWfADLoad(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onWfADShow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/d;->onWfADShow()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/papa/sim/statistic/Event;->Emu_PatchAd_Pop:Lcom/papa/sim/statistic/Event;

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

.method public onWfInitSuccess()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/d;->onWfInitSuccess()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/ad/h;->d(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onWfVideoCached()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/d;->onWfVideoCached()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

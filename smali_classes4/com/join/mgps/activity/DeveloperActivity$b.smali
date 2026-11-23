.class Lcom/join/mgps/activity/DeveloperActivity$b;
.super Lcom/join/mgps/ad/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/DeveloperActivity;->initInteractTTAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic u:Lcom/join/mgps/activity/DeveloperActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/DeveloperActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/DeveloperActivity$b;->u:Lcom/join/mgps/activity/DeveloperActivity;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4}, Lcom/join/mgps/ad/y;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onWfADClick()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/d;->onWfADClick()V

    .line 2
    .line 3
    .line 4
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
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/d;->onWfADShow()V

    .line 2
    .line 3
    .line 4
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
    invoke-virtual {p0, v0}, Lcom/join/mgps/ad/y;->d(Z)V

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

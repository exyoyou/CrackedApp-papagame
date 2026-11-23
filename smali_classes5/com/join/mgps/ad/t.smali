.class public Lcom/join/mgps/ad/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/ad/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onWfADClick()V
    .locals 0

    return-void
.end method

.method public onWfADClose()V
    .locals 0

    .line 1
    return-void
.end method

.method public onWfADClose(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 2
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

    .line 3
    return-void
.end method

.method public onWfADClose(Ljava/lang/String;IILjava/util/Map;)V
    .locals 0
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

    .line 4
    return-void
.end method

.method public onWfADExpose()V
    .locals 0

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

    return-void
.end method

.method public onWfADShow()V
    .locals 0

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

    return-void
.end method

.method public onWfInitSuccess()V
    .locals 0

    return-void
.end method

.method public onWfReward(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onWfVideoCached()V
    .locals 0

    return-void
.end method

.method public onWfVideoComplete()V
    .locals 0

    return-void
.end method

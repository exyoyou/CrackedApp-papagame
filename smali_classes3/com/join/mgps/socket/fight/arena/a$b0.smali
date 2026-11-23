.class public Lcom/join/mgps/socket/fight/arena/a$b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/socket/fight/arena/a$y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/socket/fight/arena/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b0"
.end annotation


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
.method public onChallengeGoldSet(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    return-void
.end method

.method public onDialogDismiss(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialogType"
        }
    .end annotation

    return-void
.end method

.method public onDisable()V
    .locals 0

    return-void
.end method

.method public onErrorHint(IILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "operation",
            "errorType",
            "value"
        }
    .end annotation

    return-void
.end method

.method public onGetKickOutRoomPositionInfo(Lcom/papa91/battle/protocol/RoomPosition;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "roomPosition",
            "position"
        }
    .end annotation

    return-void
.end method

.method public onLeaveRoom()V
    .locals 0

    return-void
.end method

.method public onNetArchiveSelected(Lcom/join/mgps/dto/ArchiveBean;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "archiveBean",
            "path"
        }
    .end annotation

    return-void
.end method

.method public onReport(Lcom/papa91/battle/protocol/RoomPosition;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roomPosition"
        }
    .end annotation

    return-void
.end method

.method public onSeatSet(Lapp/mgsim/arena/RoomSeatState;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "position"
        }
    .end annotation

    return-void
.end method

.method public onShare(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shareType",
            "shareContent"
        }
    .end annotation

    return-void
.end method

.method public onShareTypeChoice(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shareType"
        }
    .end annotation

    return-void
.end method

.method public onSvrPlayMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    return-void
.end method

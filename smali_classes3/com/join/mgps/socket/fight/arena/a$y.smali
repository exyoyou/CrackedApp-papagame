.class public interface abstract Lcom/join/mgps/socket/fight/arena/a$y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/socket/fight/arena/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "y"
.end annotation


# static fields
.field public static final A1:I = 0x64

.field public static final B1:I = 0x65

.field public static final y1:I = 0x1

.field public static final z1:I = 0x2


# virtual methods
.method public abstract onChallengeGoldSet(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract onDialogDismiss(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialogType"
        }
    .end annotation
.end method

.method public abstract onDisable()V
.end method

.method public abstract onErrorHint(IILjava/lang/Object;)V
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
.end method

.method public abstract onGetKickOutRoomPositionInfo(Lcom/papa91/battle/protocol/RoomPosition;I)V
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
.end method

.method public abstract onLeaveRoom()V
.end method

.method public abstract onNetArchiveSelected(Lcom/join/mgps/dto/ArchiveBean;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "archiveBean",
            "gamePath"
        }
    .end annotation
.end method

.method public abstract onReport(Lcom/papa91/battle/protocol/RoomPosition;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roomPosition"
        }
    .end annotation
.end method

.method public abstract onSeatSet(Lapp/mgsim/arena/RoomSeatState;I)V
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
.end method

.method public abstract onShare(ILjava/lang/String;)V
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
.end method

.method public abstract onShareTypeChoice(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shareType"
        }
    .end annotation
.end method

.method public abstract onSvrPlayMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

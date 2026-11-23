.class public interface abstract Lcom/wufan/friend/chat/protocol/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getAccountId()I
.end method

.method public abstract getGameId()J
.end method

.method public abstract getLobbyRoomId()J
.end method

.method public abstract getLocalBattleGameIds(I)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getLocalBattleGameIdsCount()I
.end method

.method public abstract getLocalBattleGameIdsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getState()Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;
.end method

.method public abstract getStateValue()I
.end method

.method public abstract getType()Lcom/wufan/friend/chat/protocol/PlayType;
.end method

.method public abstract getTypeValue()I
.end method

.method public abstract getVersus()Z
.end method

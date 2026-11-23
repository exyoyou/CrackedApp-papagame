.class public interface abstract Lcom/wufan/friend/chat/protocol/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getLocalBattleGameInfo(I)Lcom/wufan/friend/chat/protocol/LocalBattleGameInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getLocalBattleGameInfoCount()I
.end method

.method public abstract getLocalBattleGameInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wufan/friend/chat/protocol/LocalBattleGameInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocalBattleGameInfoOrBuilder(I)Lcom/wufan/friend/chat/protocol/x;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getLocalBattleGameInfoOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/wufan/friend/chat/protocol/x;",
            ">;"
        }
    .end annotation
.end method

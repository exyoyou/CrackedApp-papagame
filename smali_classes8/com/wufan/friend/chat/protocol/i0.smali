.class public interface abstract Lcom/wufan/friend/chat/protocol/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getRecommendPlayer(I)Lcom/wufan/friend/chat/protocol/RecommendPlayer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getRecommendPlayerCount()I
.end method

.method public abstract getRecommendPlayerList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wufan/friend/chat/protocol/RecommendPlayer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRecommendPlayerOrBuilder(I)Lcom/wufan/friend/chat/protocol/j0;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getRecommendPlayerOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/wufan/friend/chat/protocol/j0;",
            ">;"
        }
    .end annotation
.end method

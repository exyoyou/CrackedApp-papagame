.class public interface abstract Lcom/wufan/friend/chat/protocol/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getGameId()J
.end method

.method public abstract getGameSeries()Ljava/lang/String;
.end method

.method public abstract getGameSeriesBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getLocalDownloadGameIds(I)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getLocalDownloadGameIdsCount()I
.end method

.method public abstract getLocalDownloadGameIdsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocationPageType()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$FriendLocationPageType;
.end method

.method public abstract getLocationPageTypeValue()I
.end method

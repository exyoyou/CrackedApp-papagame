.class public interface abstract Lcom/wufan/friend/chat/protocol/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getFriendCount()I
.end method

.method public abstract getOfflineFriends(I)Lcom/wufan/friend/chat/protocol/Friend;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getOfflineFriendsCount()I
.end method

.method public abstract getOfflineFriendsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wufan/friend/chat/protocol/Friend;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOfflineFriendsOrBuilder(I)Lcom/wufan/friend/chat/protocol/o;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getOfflineFriendsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/wufan/friend/chat/protocol/o;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOnlineFriends(I)Lcom/wufan/friend/chat/protocol/Friend;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getOnlineFriendsCount()I
.end method

.method public abstract getOnlineFriendsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wufan/friend/chat/protocol/Friend;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOnlineFriendsOrBuilder(I)Lcom/wufan/friend/chat/protocol/o;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getOnlineFriendsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/wufan/friend/chat/protocol/o;",
            ">;"
        }
    .end annotation
.end method

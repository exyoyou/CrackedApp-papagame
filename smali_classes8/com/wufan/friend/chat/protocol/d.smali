.class public interface abstract Lcom/wufan/friend/chat/protocol/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getFriendCount()I
.end method

.method public abstract getFriends(I)Lcom/wufan/friend/chat/protocol/Friend;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getFriendsCount()I
.end method

.method public abstract getFriendsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wufan/friend/chat/protocol/Friend;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFriendsOrBuilder(I)Lcom/wufan/friend/chat/protocol/o;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getFriendsOrBuilderList()Ljava/util/List;
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

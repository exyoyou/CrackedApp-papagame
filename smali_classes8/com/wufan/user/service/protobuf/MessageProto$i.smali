.class public interface abstract Lcom/wufan/user/service/protobuf/MessageProto$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/user/service/protobuf/MessageProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "i"
.end annotation


# virtual methods
.method public abstract getBroadcastUsers(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getBroadcastUsersCount()I
.end method

.method public abstract getBroadcastUsersList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getError()Ljava/lang/String;
.end method

.method public abstract getErrorBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getErrorCode()I
.end method

.method public abstract getLogicErrorCode()Lcom/wufan/user/service/protobuf/MessageProto$Response$LogicErrorCode;
.end method

.method public abstract getLogicErrorCodeValue()I
.end method

.method public abstract getMessageInfo(I)Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getMessageInfoCount()I
.end method

.method public abstract getMessageInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMessageInfoOrBuilder(I)Lcom/wufan/user/service/protobuf/MessageProto$c;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getMessageInfoOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/wufan/user/service/protobuf/MessageProto$c;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOnlinePeopleCount()I
.end method

.method public abstract getPong()Lcom/wufan/user/service/protobuf/MessageProto$Pong;
.end method

.method public abstract getPongOrBuilder()Lcom/wufan/user/service/protobuf/MessageProto$f;
.end method

.method public abstract getQueueInfo()Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;
.end method

.method public abstract getQueueInfoOrBuilder()Lcom/wufan/user/service/protobuf/MessageProto$h;
.end method

.method public abstract getRequestId()J
.end method

.method public abstract getStatusCode()Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;
.end method

.method public abstract getStatusCodeValue()I
.end method

.method public abstract getType()Lcom/wufan/user/service/protobuf/MessageProto$Response$ProtoType;
.end method

.method public abstract getTypeValue()I
.end method

.method public abstract hasPong()Z
.end method

.method public abstract hasQueueInfo()Z
.end method

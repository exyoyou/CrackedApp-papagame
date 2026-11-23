.class public interface abstract Lcom/wufan/user/service/protobuf/MessageProto$d;
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
    name = "d"
.end annotation


# virtual methods
.method public abstract getAccount()Lcom/wufan/user/service/protobuf/MessageProto$Account;
.end method

.method public abstract getAccountOrBuilder()Lcom/wufan/user/service/protobuf/MessageProto$b;
.end method

.method public abstract getAppVersion()Ljava/lang/String;
.end method

.method public abstract getAppVersionBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getParams()Lcom/wufan/user/service/protobuf/MessageProto$Params;
.end method

.method public abstract getParamsOrBuilder()Lcom/wufan/user/service/protobuf/MessageProto$e;
.end method

.method public abstract getPushParams(I)Lcom/wufan/user/service/protobuf/MessageProto$PushParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getPushParamsCount()I
.end method

.method public abstract getPushParamsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wufan/user/service/protobuf/MessageProto$PushParams;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPushParamsOrBuilder(I)Lcom/wufan/user/service/protobuf/MessageProto$g;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getPushParamsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/wufan/user/service/protobuf/MessageProto$g;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestId()J
.end method

.method public abstract getType()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;
.end method

.method public abstract getTypeValue()I
.end method

.method public abstract getVersion()I
.end method

.method public abstract hasAccount()Z
.end method

.method public abstract hasParams()Z
.end method

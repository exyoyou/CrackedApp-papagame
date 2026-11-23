.class public interface abstract Lcom/wufan/user/service/protobuf/UserRegStatusRequest$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/user/service/protobuf/UserRegStatusRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract getAppVersion()Ljava/lang/String;
.end method

.method public abstract getAppVersionBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getLoginId()Ljava/lang/String;
.end method

.method public abstract getLoginIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getLoginType()Lcom/wufan/user/service/protobuf/enumeration/LoginType;
.end method

.method public abstract getLoginTypeValue()I
.end method

.method public abstract getSign()Ljava/lang/String;
.end method

.method public abstract getSignBytes()Lcom/google/protobuf/ByteString;
.end method

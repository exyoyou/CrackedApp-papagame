.class public interface abstract Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract getSecretKey()Ljava/lang/String;
.end method

.method public abstract getSecretKeyBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSvipLevel()I
.end method

.method public abstract getUid()I
.end method

.method public abstract getVipExpTime()J
.end method

.method public abstract getVipLevel()I
.end method

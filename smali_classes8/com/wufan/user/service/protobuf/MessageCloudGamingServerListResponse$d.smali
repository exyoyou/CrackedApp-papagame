.class public interface abstract Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation


# virtual methods
.method public abstract getGameId()J
.end method

.method public abstract getListInfo(I)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getListInfoCount()I
.end method

.method public abstract getListInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$LineList;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getListInfoOrBuilder(I)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$b;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getListInfoOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getPackageNameBytes()Lcom/google/protobuf/ByteString;
.end method

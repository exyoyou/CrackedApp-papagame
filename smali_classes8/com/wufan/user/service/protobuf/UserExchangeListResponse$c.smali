.class public interface abstract Lcom/wufan/user/service/protobuf/UserExchangeListResponse$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/user/service/protobuf/UserExchangeListResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract getData(I)Lcom/wufan/user/service/protobuf/UserExchangeListResponse$ExchangeList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getDataCount()I
.end method

.method public abstract getDataList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wufan/user/service/protobuf/UserExchangeListResponse$ExchangeList;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDataOrBuilder(I)Lcom/wufan/user/service/protobuf/UserExchangeListResponse$b;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getDataOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/wufan/user/service/protobuf/UserExchangeListResponse$b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getError()I
.end method

.method public abstract getErrorMsg()Ljava/lang/String;
.end method

.method public abstract getErrorMsgBytes()Lcom/google/protobuf/ByteString;
.end method

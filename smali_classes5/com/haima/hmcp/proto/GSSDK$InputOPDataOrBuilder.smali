.class public interface abstract Lcom/haima/hmcp/proto/GSSDK$InputOPDataOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/proto/GSSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InputOPDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getHandleComboKey()Z
.end method

.method public abstract getOpList(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;
.end method

.method public abstract getOpListCount()I
.end method

.method public abstract getOpListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOpListOrBuilder(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPDataOrBuilder;
.end method

.method public abstract getOpListOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/haima/hmcp/proto/GSSDK$OneInputOPDataOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOpTick()I
.end method

.method public abstract hasHandleComboKey()Z
.end method

.method public abstract hasOpTick()Z
.end method

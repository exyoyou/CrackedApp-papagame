.class public interface abstract Lcom/haima/hmcp/proto/GSSDK$GameCursor$GameCursorFrameDataOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/proto/GSSDK$GameCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GameCursorFrameDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getCursorFrames(I)Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;
.end method

.method public abstract getCursorFramesCount()I
.end method

.method public abstract getCursorFramesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrame;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCursorFramesOrBuilder(I)Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrameOrBuilder;
.end method

.method public abstract getCursorFramesOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrameOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFrameRate()I
.end method

.method public abstract hasFrameRate()Z
.end method

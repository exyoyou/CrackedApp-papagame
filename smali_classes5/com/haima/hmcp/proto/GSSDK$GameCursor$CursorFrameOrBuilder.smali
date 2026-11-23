.class public interface abstract Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorFrameOrBuilder;
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
    name = "CursorFrameOrBuilder"
.end annotation


# virtual methods
.method public abstract getCursorHotSpot()Lcom/haima/hmcp/proto/GSSDK$CoordinatePos;
.end method

.method public abstract getCursorHotSpotOrBuilder()Lcom/haima/hmcp/proto/GSSDK$CoordinatePosOrBuilder;
.end method

.method public abstract getFrameData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getStepFrame()I
.end method

.method public abstract hasCursorHotSpot()Z
.end method

.method public abstract hasFrameData()Z
.end method

.method public abstract hasStepFrame()Z
.end method

.class public Lorg/hmwebrtc/VideoFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/RefCounted;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/VideoFrame$TextureBuffer;,
        Lorg/hmwebrtc/VideoFrame$I420Buffer;,
        Lorg/hmwebrtc/VideoFrame$Buffer;
    }
.end annotation


# static fields
.field private static frameInfoMatchByPts:Z

.field private static haimaFrameBufferSize:I


# instance fields
.field private final buffer:Lorg/hmwebrtc/VideoFrame$Buffer;

.field private inputTimestampMs:J

.field private mCaptureId:I

.field private mTrackId:I

.field private renderLossCount:J

.field private renderLossRate:I

.field private final rotation:I

.field private final timestampNs:J


# direct methods
.method public constructor <init>(Lorg/hmwebrtc/VideoFrame$Buffer;IJ)V
    .locals 9

    const/4 v5, -0x1

    const/4 v6, -0x1

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    .line 1
    invoke-direct/range {v0 .. v8}, Lorg/hmwebrtc/VideoFrame;-><init>(Lorg/hmwebrtc/VideoFrame$Buffer;IJIIJ)V

    return-void
.end method

.method public constructor <init>(Lorg/hmwebrtc/VideoFrame$Buffer;IJIIJ)V
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 3
    rem-int/lit8 v0, p2, 0x5a

    if-nez v0, :cond_0

    .line 4
    iput-object p1, p0, Lorg/hmwebrtc/VideoFrame;->buffer:Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 5
    iput p2, p0, Lorg/hmwebrtc/VideoFrame;->rotation:I

    .line 6
    iput-wide p3, p0, Lorg/hmwebrtc/VideoFrame;->timestampNs:J

    .line 7
    iput p6, p0, Lorg/hmwebrtc/VideoFrame;->mCaptureId:I

    .line 8
    iput p5, p0, Lorg/hmwebrtc/VideoFrame;->mTrackId:I

    .line 9
    iput-wide p7, p0, Lorg/hmwebrtc/VideoFrame;->inputTimestampMs:J

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rotation must be a multiple of 90"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "buffer not allowed to be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getFrameInfoMatchByPts()Z
    .locals 1

    .line 1
    sget-boolean v0, Lorg/hmwebrtc/VideoFrame;->frameInfoMatchByPts:Z

    .line 2
    .line 3
    return v0
.end method

.method public static setFrameInfoMatchByPts(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lorg/hmwebrtc/VideoFrame;->frameInfoMatchByPts:Z

    .line 2
    .line 3
    return-void
.end method

.method public static setHaimaFrameBufferSize(I)V
    .locals 0

    .line 1
    sput p0, Lorg/hmwebrtc/VideoFrame;->haimaFrameBufferSize:I

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/VideoFrame;->buffer:Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCaptureId()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/hmwebrtc/VideoFrame;->mCaptureId:I

    .line 2
    .line 3
    return v0
.end method

.method public getHaimaFrameBufferSize()I
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    sget v0, Lorg/hmwebrtc/VideoFrame;->haimaFrameBufferSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getInputTimestampMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/VideoFrame;->inputTimestampMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRenderLossCount()J
    .locals 2
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/VideoFrame;->renderLossCount:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRenderLossRate()I
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget v0, p0, Lorg/hmwebrtc/VideoFrame;->renderLossRate:I

    .line 2
    .line 3
    return v0
.end method

.method public getRotatedHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/hmwebrtc/VideoFrame;->rotation:I

    .line 2
    .line 3
    rem-int/lit16 v0, v0, 0xb4

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/hmwebrtc/VideoFrame;->buffer:Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 8
    .line 9
    invoke-interface {v0}, Lorg/hmwebrtc/VideoFrame$Buffer;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/VideoFrame;->buffer:Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 15
    .line 16
    invoke-interface {v0}, Lorg/hmwebrtc/VideoFrame$Buffer;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public getRotatedWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/hmwebrtc/VideoFrame;->rotation:I

    .line 2
    .line 3
    rem-int/lit16 v0, v0, 0xb4

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/hmwebrtc/VideoFrame;->buffer:Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 8
    .line 9
    invoke-interface {v0}, Lorg/hmwebrtc/VideoFrame$Buffer;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/VideoFrame;->buffer:Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 15
    .line 16
    invoke-interface {v0}, Lorg/hmwebrtc/VideoFrame$Buffer;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public getRotation()I
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget v0, p0, Lorg/hmwebrtc/VideoFrame;->rotation:I

    .line 2
    .line 3
    return v0
.end method

.method public getTimestampNs()J
    .locals 2
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/VideoFrame;->timestampNs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTrackId()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/hmwebrtc/VideoFrame;->mTrackId:I

    .line 2
    .line 3
    return v0
.end method

.method public release()V
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/VideoFrame;->buffer:Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/hmwebrtc/VideoFrame$Buffer;->release()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public retain()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/VideoFrame;->buffer:Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/hmwebrtc/VideoFrame$Buffer;->retain()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRenderLossInfo(IJ)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/hmwebrtc/VideoFrame;->renderLossRate:I

    .line 2
    .line 3
    iput-wide p2, p0, Lorg/hmwebrtc/VideoFrame;->renderLossCount:J

    .line 4
    .line 5
    return-void
.end method

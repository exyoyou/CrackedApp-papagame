.class public final synthetic Lorg/hmwebrtc/b1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lorg/hmwebrtc/VideoProcessor;Lorg/hmwebrtc/VideoFrame;Lorg/hmwebrtc/VideoProcessor$FrameAdaptationParameters;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lorg/hmwebrtc/b1;->b(Lorg/hmwebrtc/VideoFrame;Lorg/hmwebrtc/VideoProcessor$FrameAdaptationParameters;)Lorg/hmwebrtc/VideoFrame;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p0, p1}, Lorg/hmwebrtc/CapturerObserver;->onFrameCaptured(Lorg/hmwebrtc/VideoFrame;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->release()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public static b(Lorg/hmwebrtc/VideoFrame;Lorg/hmwebrtc/VideoProcessor$FrameAdaptationParameters;)Lorg/hmwebrtc/VideoFrame;
    .locals 17
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget-boolean v1, v0, Lorg/hmwebrtc/VideoProcessor$FrameAdaptationParameters;->drop:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, v0, Lorg/hmwebrtc/VideoProcessor$FrameAdaptationParameters;->cropX:I

    .line 14
    .line 15
    iget v3, v0, Lorg/hmwebrtc/VideoProcessor$FrameAdaptationParameters;->cropY:I

    .line 16
    .line 17
    iget v4, v0, Lorg/hmwebrtc/VideoProcessor$FrameAdaptationParameters;->cropWidth:I

    .line 18
    .line 19
    iget v5, v0, Lorg/hmwebrtc/VideoProcessor$FrameAdaptationParameters;->cropHeight:I

    .line 20
    .line 21
    iget v6, v0, Lorg/hmwebrtc/VideoProcessor$FrameAdaptationParameters;->scaleWidth:I

    .line 22
    .line 23
    iget v7, v0, Lorg/hmwebrtc/VideoProcessor$FrameAdaptationParameters;->scaleHeight:I

    .line 24
    .line 25
    invoke-interface/range {v1 .. v7}, Lorg/hmwebrtc/VideoFrame$Buffer;->cropAndScale(IIIIII)Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    new-instance v1, Lorg/hmwebrtc/VideoFrame;

    .line 30
    .line 31
    invoke-virtual/range {p0 .. p0}, Lorg/hmwebrtc/VideoFrame;->getRotation()I

    .line 32
    .line 33
    .line 34
    move-result v10

    .line 35
    iget-wide v11, v0, Lorg/hmwebrtc/VideoProcessor$FrameAdaptationParameters;->timestampNs:J

    .line 36
    .line 37
    invoke-virtual/range {p0 .. p0}, Lorg/hmwebrtc/VideoFrame;->getTrackId()I

    .line 38
    .line 39
    .line 40
    move-result v13

    .line 41
    invoke-virtual/range {p0 .. p0}, Lorg/hmwebrtc/VideoFrame;->getCaptureId()I

    .line 42
    .line 43
    .line 44
    move-result v14

    .line 45
    invoke-virtual/range {p0 .. p0}, Lorg/hmwebrtc/VideoFrame;->getInputTimestampMs()J

    .line 46
    .line 47
    .line 48
    move-result-wide v15

    .line 49
    move-object v8, v1

    .line 50
    invoke-direct/range {v8 .. v16}, Lorg/hmwebrtc/VideoFrame;-><init>(Lorg/hmwebrtc/VideoFrame$Buffer;IJIIJ)V

    .line 51
    .line 52
    .line 53
    return-object v1
.end method

.class public Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;
.super Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;
.source "SourceFile"


# static fields
.field private static final BPP:F = 0.25f

.field private static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final TAG:Ljava/lang/String; = "MediaVideoEncoder"


# instance fields
.field private final bitrate:I

.field private encodeRenderHandler:Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;

.field private final fileHeight:I

.field private final fileWidth:I

.field private final frameRate:I

.field private surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder$MediaEncoderListener;IIZZFFIIZLorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;)V
    .locals 9

    move-object v0, p0

    move v1, p3

    move v2, p4

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;-><init>(Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder$MediaEncoderListener;)V

    .line 2
    iput v1, v0, Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;->fileWidth:I

    .line 3
    iput v2, v0, Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;->fileHeight:I

    move/from16 v3, p9

    .line 4
    iput v3, v0, Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;->frameRate:I

    move/from16 v3, p10

    .line 5
    iput v3, v0, Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;->bitrate:I

    const-string v3, "MediaVideoEncoder"

    cmpl-float v4, p7, p8

    if-lez v4, :cond_0

    div-float v4, p7, p8

    goto :goto_0

    :cond_0
    div-float v4, p8, p7

    :goto_0
    int-to-float v5, v1

    int-to-float v6, v2

    move-object v1, v3

    move v2, p6

    move v3, p5

    move/from16 v7, p11

    move-object/from16 v8, p12

    .line 6
    invoke-static/range {v1 .. v8}, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->createHandler(Ljava/lang/String;ZZFFFZLorg/webrtc/haima/camerarecorder/egl/filter/GlFilter;)Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;

    move-result-object v1

    iput-object v1, v0, Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;->encodeRenderHandler:Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;

    return-void
.end method

.method private static isRecognizedViewoFormat(I)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "isRecognizedViewoFormat:colorFormat="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const v0, 0x7f000789

    .line 15
    .line 16
    .line 17
    if-ne p0, v0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method private static selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I
    .locals 5

    .line 1
    const/4 v0, 0x5

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/16 v2, 0xa

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 12
    .line 13
    .line 14
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    iget-object v3, v1, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    .line 25
    .line 26
    array-length v4, v3

    .line 27
    if-ge v2, v4, :cond_1

    .line 28
    .line 29
    aget v3, v3, v2

    .line 30
    .line 31
    invoke-static {v3}, Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;->isRecognizedViewoFormat(I)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    move v0, v3

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v2, "couldn\'t find a good color format for "

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p0, " / "

    .line 62
    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    :cond_2
    return v0

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 76
    .line 77
    .line 78
    throw p0
.end method

.method private static selectVideoCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/media/MediaCodecList;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v1, :cond_3

    .line 15
    .line 16
    aget-object v4, v0, v3

    .line 17
    .line 18
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-nez v5, :cond_0

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_0
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    const/4 v6, 0x0

    .line 30
    :goto_1
    array-length v7, v5

    .line 31
    if-ge v6, v7, :cond_2

    .line 32
    .line 33
    aget-object v7, v5, v6

    .line 34
    .line 35
    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-eqz v7, :cond_1

    .line 40
    .line 41
    new-instance v7, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v8, "codec:"

    .line 47
    .line 48
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v8, ",MIME="

    .line 59
    .line 60
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    aget-object v8, v5, v6

    .line 64
    .line 65
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-static {v4, p0}, Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-lez v7, :cond_1

    .line 73
    .line 74
    return-object v4

    .line 75
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    const/4 p0, 0x0

    .line 82
    return-object p0
.end method


# virtual methods
.method public frameAvailableSoon(I[F[FF)V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->frameAvailableSoon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;->encodeRenderHandler:Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->draw(I[F[FF)V

    :cond_0
    return-void
.end method

.method public frameAvailableSoon()Z
    .locals 2

    .line 3
    invoke-super {p0}, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->frameAvailableSoon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;->encodeRenderHandler:Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;

    invoke-virtual {v1}, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->prepareDraw()V

    :cond_0
    return v0
.end method

.method protected prepare()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->trackIndex:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->isEOS:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->muxerStarted:Z

    .line 8
    .line 9
    const-string v0, "video/avc"

    .line 10
    .line 11
    invoke-static {v0}, Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;->selectVideoCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v3, "selected codec: "

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget v1, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;->fileWidth:I

    .line 36
    .line 37
    iget v2, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;->fileHeight:I

    .line 38
    .line 39
    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "color-format"

    .line 44
    .line 45
    const v3, 0x7f000789

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    const-string v2, "bitrate"

    .line 52
    .line 53
    iget v3, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;->bitrate:I

    .line 54
    .line 55
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    const-string v2, "frame-rate"

    .line 59
    .line 60
    iget v3, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;->frameRate:I

    .line 61
    .line 62
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    const-string v2, "i-frame-interval"

    .line 66
    .line 67
    const/4 v3, 0x5

    .line 68
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v3, "format: "

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 89
    .line 90
    const/4 v2, 0x1

    .line 91
    const/4 v3, 0x0

    .line 92
    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;->surface:Landroid/view/Surface;

    .line 102
    .line 103
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->listener:Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder$MediaEncoderListener;

    .line 109
    .line 110
    if-eqz v0, :cond_1

    .line 111
    .line 112
    :try_start_0
    invoke-interface {v0, p0}, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder$MediaEncoderListener;->onPrepared(Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    :catch_0
    :cond_1
    return-void
.end method

.method protected release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;->surface:Landroid/view/Surface;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;->surface:Landroid/view/Surface;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;->encodeRenderHandler:Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->release()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;->encodeRenderHandler:Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;

    .line 19
    .line 20
    :cond_1
    invoke-super {p0}, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->release()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setEglContext(Landroid/opengl/EGLContext;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;->encodeRenderHandler:Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaVideoEncoder;->surface:Landroid/view/Surface;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, v1}, Lorg/webrtc/haima/camerarecorder/capture/EncodeRenderHandler;->setEglContext(Landroid/opengl/EGLContext;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected signalEndOfInputStream()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->isEOS:Z

    .line 8
    .line 9
    return-void
.end method

.class Lorg/hmwebrtc/AndroidVideoDecoder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Output;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hmwebrtc/AndroidVideoDecoder;->createSwapBuffer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hmwebrtc/AndroidVideoDecoder;


# direct methods
.method constructor <init>(Lorg/hmwebrtc/AndroidVideoDecoder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecoder$3;->this$0:Lorg/hmwebrtc/AndroidVideoDecoder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public dropFrame(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "dropFrame: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "AndroidVideoDecoder"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder$3;->this$0:Lorg/hmwebrtc/AndroidVideoDecoder;

    .line 24
    .line 25
    invoke-static {v0}, Lorg/hmwebrtc/AndroidVideoDecoder;->access$600(Lorg/hmwebrtc/AndroidVideoDecoder;)Lorg/hmwebrtc/MediaCodecWrapper;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-interface {v0, p1, v1}, Lorg/hmwebrtc/MediaCodecWrapper;->releaseOutputBuffer(IZ)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public renderFrame(IIIIJLjava/lang/Integer;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecoder$3;->this$0:Lorg/hmwebrtc/AndroidVideoDecoder;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/hmwebrtc/AndroidVideoDecoder;->access$300(Lorg/hmwebrtc/AndroidVideoDecoder;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder$3;->this$0:Lorg/hmwebrtc/AndroidVideoDecoder;

    .line 9
    .line 10
    invoke-static {v1}, Lorg/hmwebrtc/AndroidVideoDecoder;->access$400(Lorg/hmwebrtc/AndroidVideoDecoder;)Lorg/hmwebrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    sget-object p1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;->FRAME_STORE:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-object p1

    .line 20
    :cond_0
    iget-object v1, p0, Lorg/hmwebrtc/AndroidVideoDecoder$3;->this$0:Lorg/hmwebrtc/AndroidVideoDecoder;

    .line 21
    .line 22
    invoke-static {v1}, Lorg/hmwebrtc/AndroidVideoDecoder;->access$500(Lorg/hmwebrtc/AndroidVideoDecoder;)Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, p2, p3}, Lorg/hmwebrtc/SurfaceTextureHelper;->setTextureSize(II)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lorg/hmwebrtc/AndroidVideoDecoder$3;->this$0:Lorg/hmwebrtc/AndroidVideoDecoder;

    .line 30
    .line 31
    invoke-static {p2}, Lorg/hmwebrtc/AndroidVideoDecoder;->access$500(Lorg/hmwebrtc/AndroidVideoDecoder;)Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p2, p4}, Lorg/hmwebrtc/SurfaceTextureHelper;->setFrameRotation(I)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Lorg/hmwebrtc/AndroidVideoDecoder$3;->this$0:Lorg/hmwebrtc/AndroidVideoDecoder;

    .line 39
    .line 40
    new-instance p3, Lorg/hmwebrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    .line 41
    .line 42
    invoke-direct {p3, p5, p6, p7}, Lorg/hmwebrtc/AndroidVideoDecoder$DecodedTextureMetadata;-><init>(JLjava/lang/Integer;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p2, p3}, Lorg/hmwebrtc/AndroidVideoDecoder;->access$402(Lorg/hmwebrtc/AndroidVideoDecoder;Lorg/hmwebrtc/AndroidVideoDecoder$DecodedTextureMetadata;)Lorg/hmwebrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    .line 46
    .line 47
    .line 48
    iget-object p2, p0, Lorg/hmwebrtc/AndroidVideoDecoder$3;->this$0:Lorg/hmwebrtc/AndroidVideoDecoder;

    .line 49
    .line 50
    invoke-static {p2}, Lorg/hmwebrtc/AndroidVideoDecoder;->access$600(Lorg/hmwebrtc/AndroidVideoDecoder;)Lorg/hmwebrtc/MediaCodecWrapper;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    const/4 p3, 0x1

    .line 55
    invoke-interface {p2, p1, p3}, Lorg/hmwebrtc/MediaCodecWrapper;->releaseOutputBuffer(IZ)V

    .line 56
    .line 57
    .line 58
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    sget-object p1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;->FRAME_RENDER:Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$RenderResult;

    .line 60
    .line 61
    return-object p1

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    throw p1
.end method

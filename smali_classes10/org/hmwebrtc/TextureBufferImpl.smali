.class public Lorg/hmwebrtc/TextureBufferImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/VideoFrame$TextureBuffer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;
    }
.end annotation


# instance fields
.field private final height:I

.field private final id:I

.field private final refCountDelegate:Lorg/hmwebrtc/RefCountDelegate;

.field private final refCountMonitor:Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;

.field private final toI420Handler:Landroid/os/Handler;

.field private final transformMatrix:Landroid/graphics/Matrix;

.field private final type:Lorg/hmwebrtc/VideoFrame$TextureBuffer$Type;

.field private final unscaledHeight:I

.field private final unscaledWidth:I

.field private final width:I

.field private final yuvConverter:Lorg/hmwebrtc/YuvConverter;


# direct methods
.method private constructor <init>(IIIILorg/hmwebrtc/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lorg/hmwebrtc/YuvConverter;Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lorg/hmwebrtc/TextureBufferImpl;->unscaledWidth:I

    .line 5
    iput p2, p0, Lorg/hmwebrtc/TextureBufferImpl;->unscaledHeight:I

    .line 6
    iput p3, p0, Lorg/hmwebrtc/TextureBufferImpl;->width:I

    .line 7
    iput p4, p0, Lorg/hmwebrtc/TextureBufferImpl;->height:I

    .line 8
    iput-object p5, p0, Lorg/hmwebrtc/TextureBufferImpl;->type:Lorg/hmwebrtc/VideoFrame$TextureBuffer$Type;

    .line 9
    iput p6, p0, Lorg/hmwebrtc/TextureBufferImpl;->id:I

    .line 10
    iput-object p7, p0, Lorg/hmwebrtc/TextureBufferImpl;->transformMatrix:Landroid/graphics/Matrix;

    .line 11
    iput-object p8, p0, Lorg/hmwebrtc/TextureBufferImpl;->toI420Handler:Landroid/os/Handler;

    .line 12
    iput-object p9, p0, Lorg/hmwebrtc/TextureBufferImpl;->yuvConverter:Lorg/hmwebrtc/YuvConverter;

    .line 13
    new-instance p1, Lorg/hmwebrtc/RefCountDelegate;

    new-instance p2, Lorg/hmwebrtc/o0;

    invoke-direct {p2, p0, p10}, Lorg/hmwebrtc/o0;-><init>(Lorg/hmwebrtc/TextureBufferImpl;Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;)V

    invoke-direct {p1, p2}, Lorg/hmwebrtc/RefCountDelegate;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lorg/hmwebrtc/TextureBufferImpl;->refCountDelegate:Lorg/hmwebrtc/RefCountDelegate;

    .line 14
    iput-object p10, p0, Lorg/hmwebrtc/TextureBufferImpl;->refCountMonitor:Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;

    return-void
.end method

.method public constructor <init>(IILorg/hmwebrtc/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lorg/hmwebrtc/YuvConverter;Ljava/lang/Runnable;)V
    .locals 11
    .param p8    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v10, Lorg/hmwebrtc/TextureBufferImpl$1;

    move-object/from16 v0, p8

    invoke-direct {v10, v0}, Lorg/hmwebrtc/TextureBufferImpl$1;-><init>(Ljava/lang/Runnable;)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lorg/hmwebrtc/TextureBufferImpl;-><init>(IIIILorg/hmwebrtc/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lorg/hmwebrtc/YuvConverter;Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;)V

    return-void
.end method

.method constructor <init>(IILorg/hmwebrtc/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lorg/hmwebrtc/YuvConverter;Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;)V
    .locals 11

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 2
    invoke-direct/range {v0 .. v10}, Lorg/hmwebrtc/TextureBufferImpl;-><init>(IIIILorg/hmwebrtc/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lorg/hmwebrtc/YuvConverter;Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;)V

    return-void
.end method

.method public static synthetic a(Lorg/hmwebrtc/TextureBufferImpl;Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/TextureBufferImpl;->lambda$new$0(Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;)V

    return-void
.end method

.method static synthetic access$000(Lorg/hmwebrtc/TextureBufferImpl;)Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/TextureBufferImpl;->refCountMonitor:Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;

    .line 2
    .line 3
    return-object p0
.end method

.method private applyTransformMatrix(Landroid/graphics/Matrix;IIII)Lorg/hmwebrtc/TextureBufferImpl;
    .locals 13

    move-object v0, p0

    .line 2
    new-instance v8, Landroid/graphics/Matrix;

    iget-object v1, v0, Lorg/hmwebrtc/TextureBufferImpl;->transformMatrix:Landroid/graphics/Matrix;

    invoke-direct {v8, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object v1, p1

    .line 3
    invoke-virtual {v8, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 4
    invoke-virtual {p0}, Lorg/hmwebrtc/TextureBufferImpl;->retain()V

    .line 5
    new-instance v12, Lorg/hmwebrtc/TextureBufferImpl;

    iget-object v6, v0, Lorg/hmwebrtc/TextureBufferImpl;->type:Lorg/hmwebrtc/VideoFrame$TextureBuffer$Type;

    iget v7, v0, Lorg/hmwebrtc/TextureBufferImpl;->id:I

    iget-object v9, v0, Lorg/hmwebrtc/TextureBufferImpl;->toI420Handler:Landroid/os/Handler;

    iget-object v10, v0, Lorg/hmwebrtc/TextureBufferImpl;->yuvConverter:Lorg/hmwebrtc/YuvConverter;

    new-instance v11, Lorg/hmwebrtc/TextureBufferImpl$2;

    invoke-direct {v11, p0}, Lorg/hmwebrtc/TextureBufferImpl$2;-><init>(Lorg/hmwebrtc/TextureBufferImpl;)V

    move-object v1, v12

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v1 .. v11}, Lorg/hmwebrtc/TextureBufferImpl;-><init>(IIIILorg/hmwebrtc/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lorg/hmwebrtc/YuvConverter;Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;)V

    return-object v12
.end method

.method public static synthetic b(Lorg/hmwebrtc/TextureBufferImpl;)Lorg/hmwebrtc/VideoFrame$I420Buffer;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/TextureBufferImpl;->lambda$toI420$1()Lorg/hmwebrtc/VideoFrame$I420Buffer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;->onDestroy(Lorg/hmwebrtc/TextureBufferImpl;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$toI420$1()Lorg/hmwebrtc/VideoFrame$I420Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/TextureBufferImpl;->yuvConverter:Lorg/hmwebrtc/YuvConverter;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/hmwebrtc/YuvConverter;->convert(Lorg/hmwebrtc/VideoFrame$TextureBuffer;)Lorg/hmwebrtc/VideoFrame$I420Buffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method


# virtual methods
.method public applyTransformMatrix(Landroid/graphics/Matrix;II)Lorg/hmwebrtc/TextureBufferImpl;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lorg/hmwebrtc/TextureBufferImpl;->applyTransformMatrix(Landroid/graphics/Matrix;IIII)Lorg/hmwebrtc/TextureBufferImpl;

    move-result-object p1

    return-object p1
.end method

.method public cropAndScale(IIIIII)Lorg/hmwebrtc/VideoFrame$Buffer;
    .locals 6

    .line 1
    new-instance v1, Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lorg/hmwebrtc/TextureBufferImpl;->height:I

    .line 7
    .line 8
    add-int/2addr p2, p4

    .line 9
    sub-int p2, v0, p2

    .line 10
    .line 11
    int-to-float p1, p1

    .line 12
    iget v2, p0, Lorg/hmwebrtc/TextureBufferImpl;->width:I

    .line 13
    .line 14
    int-to-float v2, v2

    .line 15
    div-float/2addr p1, v2

    .line 16
    int-to-float p2, p2

    .line 17
    int-to-float v0, v0

    .line 18
    div-float/2addr p2, v0

    .line 19
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 20
    .line 21
    .line 22
    int-to-float p1, p3

    .line 23
    iget p2, p0, Lorg/hmwebrtc/TextureBufferImpl;->width:I

    .line 24
    .line 25
    int-to-float p2, p2

    .line 26
    div-float/2addr p1, p2

    .line 27
    int-to-float p2, p4

    .line 28
    iget v0, p0, Lorg/hmwebrtc/TextureBufferImpl;->height:I

    .line 29
    .line 30
    int-to-float v0, v0

    .line 31
    div-float/2addr p2, v0

    .line 32
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 33
    .line 34
    .line 35
    iget p1, p0, Lorg/hmwebrtc/TextureBufferImpl;->unscaledWidth:I

    .line 36
    .line 37
    mul-int p1, p1, p3

    .line 38
    .line 39
    int-to-float p1, p1

    .line 40
    iget p2, p0, Lorg/hmwebrtc/TextureBufferImpl;->width:I

    .line 41
    .line 42
    int-to-float p2, p2

    .line 43
    div-float/2addr p1, p2

    .line 44
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iget p1, p0, Lorg/hmwebrtc/TextureBufferImpl;->unscaledHeight:I

    .line 49
    .line 50
    mul-int p1, p1, p4

    .line 51
    .line 52
    int-to-float p1, p1

    .line 53
    iget p2, p0, Lorg/hmwebrtc/TextureBufferImpl;->height:I

    .line 54
    .line 55
    int-to-float p2, p2

    .line 56
    div-float/2addr p1, p2

    .line 57
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    move-object v0, p0

    .line 62
    move v4, p5

    .line 63
    move v5, p6

    .line 64
    invoke-direct/range {v0 .. v5}, Lorg/hmwebrtc/TextureBufferImpl;->applyTransformMatrix(Landroid/graphics/Matrix;IIII)Lorg/hmwebrtc/TextureBufferImpl;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1
.end method

.method public synthetic getBufferType()I
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/hmwebrtc/z0;->a(Lorg/hmwebrtc/VideoFrame$Buffer;)I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/hmwebrtc/TextureBufferImpl;->height:I

    .line 2
    .line 3
    return v0
.end method

.method public getTextureId()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/hmwebrtc/TextureBufferImpl;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public getToI420Handler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/TextureBufferImpl;->toI420Handler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTransformMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/TextureBufferImpl;->transformMatrix:Landroid/graphics/Matrix;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()Lorg/hmwebrtc/VideoFrame$TextureBuffer$Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/TextureBufferImpl;->type:Lorg/hmwebrtc/VideoFrame$TextureBuffer$Type;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUnscaledHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/hmwebrtc/TextureBufferImpl;->unscaledHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getUnscaledWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/hmwebrtc/TextureBufferImpl;->unscaledWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/hmwebrtc/TextureBufferImpl;->width:I

    .line 2
    .line 3
    return v0
.end method

.method public getYuvConverter()Lorg/hmwebrtc/YuvConverter;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/TextureBufferImpl;->yuvConverter:Lorg/hmwebrtc/YuvConverter;

    .line 2
    .line 3
    return-object v0
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/TextureBufferImpl;->refCountMonitor:Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;->onRelease(Lorg/hmwebrtc/TextureBufferImpl;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/hmwebrtc/TextureBufferImpl;->refCountDelegate:Lorg/hmwebrtc/RefCountDelegate;

    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/hmwebrtc/RefCountDelegate;->release()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public retain()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/TextureBufferImpl;->refCountMonitor:Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;->onRetain(Lorg/hmwebrtc/TextureBufferImpl;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/hmwebrtc/TextureBufferImpl;->refCountDelegate:Lorg/hmwebrtc/RefCountDelegate;

    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/hmwebrtc/RefCountDelegate;->retain()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public toI420()Lorg/hmwebrtc/VideoFrame$I420Buffer;
    .locals 2

    .line 1
    iget v0, p0, Lorg/hmwebrtc/TextureBufferImpl;->id:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lorg/hmwebrtc/TextureBufferImpl;->toI420Handler:Landroid/os/Handler;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lorg/hmwebrtc/TextureBufferImpl;->yuvConverter:Lorg/hmwebrtc/YuvConverter;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v1, Lorg/hmwebrtc/n0;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lorg/hmwebrtc/n0;-><init>(Lorg/hmwebrtc/TextureBufferImpl;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lorg/hmwebrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lorg/hmwebrtc/VideoFrame$I420Buffer;

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 28
    return-object v0
.end method

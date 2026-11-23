.class public Ltv/haima/ijk/media/player/egl/TextureBufferImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;
    }
.end annotation


# instance fields
.field private createdTime:J

.field private final height:I

.field private final id:I

.field private final refCountDelegate:Ltv/haima/ijk/media/player/egl/RefCountDelegate;

.field private final refCountMonitor:Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;

.field private final transformMatrix:Landroid/graphics/Matrix;

.field private final type:Ltv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer$Type;

.field private final unscaledHeight:I

.field private final unscaledWidth:I

.field private final width:I


# direct methods
.method private constructor <init>(IIIILtv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->unscaledWidth:I

    .line 5
    iput p2, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->unscaledHeight:I

    .line 6
    iput p3, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->width:I

    .line 7
    iput p4, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->height:I

    .line 8
    iput-object p5, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->type:Ltv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer$Type;

    .line 9
    iput p6, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->id:I

    .line 10
    iput-object p7, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->transformMatrix:Landroid/graphics/Matrix;

    .line 11
    new-instance p1, Ltv/haima/ijk/media/player/egl/RefCountDelegate;

    new-instance p2, Ltv/haima/ijk/media/player/egl/p;

    invoke-direct {p2, p0, p8}, Ltv/haima/ijk/media/player/egl/p;-><init>(Ltv/haima/ijk/media/player/egl/TextureBufferImpl;Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;)V

    invoke-direct {p1, p2}, Ltv/haima/ijk/media/player/egl/RefCountDelegate;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->refCountDelegate:Ltv/haima/ijk/media/player/egl/RefCountDelegate;

    .line 12
    iput-object p8, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->refCountMonitor:Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;

    const-wide/16 p1, 0x0

    .line 13
    iput-wide p1, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->createdTime:J

    return-void
.end method

.method public constructor <init>(IILtv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Ljava/lang/Runnable;)V
    .locals 9
    .param p6    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v8, Ltv/haima/ijk/media/player/egl/TextureBufferImpl$1;

    invoke-direct {v8, p6}, Ltv/haima/ijk/media/player/egl/TextureBufferImpl$1;-><init>(Ljava/lang/Runnable;)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;-><init>(IIIILtv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;)V

    return-void
.end method

.method constructor <init>(IILtv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;)V
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 2
    invoke-direct/range {v0 .. v8}, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;-><init>(IIIILtv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;)V

    return-void
.end method

.method public static synthetic a(Ltv/haima/ijk/media/player/egl/TextureBufferImpl;Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->lambda$new$0(Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;)V

    return-void
.end method

.method static synthetic access$000(Ltv/haima/ijk/media/player/egl/TextureBufferImpl;)Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->refCountMonitor:Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;

    .line 2
    .line 3
    return-object p0
.end method

.method private applyTransformMatrix(Landroid/graphics/Matrix;IIII)Ltv/haima/ijk/media/player/egl/TextureBufferImpl;
    .locals 9

    .line 2
    new-instance v7, Landroid/graphics/Matrix;

    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->transformMatrix:Landroid/graphics/Matrix;

    invoke-direct {v7, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 3
    invoke-virtual {v7, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 4
    invoke-virtual {p0}, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->retain()V

    .line 5
    new-instance p1, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;

    iget-object v5, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->type:Ltv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer$Type;

    iget v6, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->id:I

    new-instance v8, Ltv/haima/ijk/media/player/egl/TextureBufferImpl$2;

    invoke-direct {v8, p0}, Ltv/haima/ijk/media/player/egl/TextureBufferImpl$2;-><init>(Ltv/haima/ijk/media/player/egl/TextureBufferImpl;)V

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v8}, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;-><init>(IIIILtv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;)V

    return-object p1
.end method

.method private synthetic lambda$new$0(Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;->onDestroy(Ltv/haima/ijk/media/player/egl/TextureBufferImpl;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public applyTransformMatrix(Landroid/graphics/Matrix;II)Ltv/haima/ijk/media/player/egl/TextureBufferImpl;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->applyTransformMatrix(Landroid/graphics/Matrix;IIII)Ltv/haima/ijk/media/player/egl/TextureBufferImpl;

    move-result-object p1

    return-object p1
.end method

.method public cropAndScale(IIIIII)Ltv/haima/ijk/media/player/egl/VideoFrame$Buffer;
    .locals 6

    .line 1
    new-instance v1, Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->height:I

    .line 7
    .line 8
    add-int/2addr p2, p4

    .line 9
    sub-int p2, v0, p2

    .line 10
    .line 11
    int-to-float p1, p1

    .line 12
    iget v2, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->width:I

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
    iget p2, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->width:I

    .line 24
    .line 25
    int-to-float p2, p2

    .line 26
    div-float/2addr p1, p2

    .line 27
    int-to-float p2, p4

    .line 28
    iget v0, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->height:I

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
    iget p1, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->unscaledWidth:I

    .line 36
    .line 37
    mul-int p1, p1, p3

    .line 38
    .line 39
    int-to-float p1, p1

    .line 40
    iget p2, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->width:I

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
    iget p1, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->unscaledHeight:I

    .line 49
    .line 50
    mul-int p1, p1, p4

    .line 51
    .line 52
    int-to-float p1, p1

    .line 53
    iget p2, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->height:I

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
    invoke-direct/range {v0 .. v5}, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->applyTransformMatrix(Landroid/graphics/Matrix;IIII)Ltv/haima/ijk/media/player/egl/TextureBufferImpl;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1
.end method

.method public getDelayMs()I
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->createdTime:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    long-to-int v1, v0

    .line 9
    return v1
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->height:I

    .line 2
    .line 3
    return v0
.end method

.method public getTextureId()I
    .locals 1

    .line 1
    iget v0, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public getToI420Handler()Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransformMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->transformMatrix:Landroid/graphics/Matrix;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()Ltv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer$Type;
    .locals 1

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->type:Ltv/haima/ijk/media/player/egl/VideoFrame$TextureBuffer$Type;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUnscaledHeight()I
    .locals 1

    .line 1
    iget v0, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->unscaledHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getUnscaledWidth()I
    .locals 1

    .line 1
    iget v0, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->unscaledWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->width:I

    .line 2
    .line 3
    return v0
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->refCountMonitor:Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;->onRelease(Ltv/haima/ijk/media/player/egl/TextureBufferImpl;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->refCountDelegate:Ltv/haima/ijk/media/player/egl/RefCountDelegate;

    .line 7
    .line 8
    invoke-virtual {v0}, Ltv/haima/ijk/media/player/egl/RefCountDelegate;->release()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public retain()V
    .locals 1

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->refCountMonitor:Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ltv/haima/ijk/media/player/egl/TextureBufferImpl$RefCountMonitor;->onRetain(Ltv/haima/ijk/media/player/egl/TextureBufferImpl;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->refCountDelegate:Ltv/haima/ijk/media/player/egl/RefCountDelegate;

    .line 7
    .line 8
    invoke-virtual {v0}, Ltv/haima/ijk/media/player/egl/RefCountDelegate;->retain()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setCreatedTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ltv/haima/ijk/media/player/egl/TextureBufferImpl;->createdTime:J

    .line 2
    .line 3
    return-void
.end method

.method public toI420()Ltv/haima/ijk/media/player/egl/VideoFrame$I420Buffer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

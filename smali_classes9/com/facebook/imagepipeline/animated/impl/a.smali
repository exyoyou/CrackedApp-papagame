.class public Lcom/facebook/imagepipeline/animated/impl/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/base/a;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private final a:Le4/a;

.field private final b:Lcom/facebook/imagepipeline/animated/base/f;

.field private final c:Lcom/facebook/imagepipeline/animated/base/d;

.field private final d:Landroid/graphics/Rect;

.field private final e:[I

.field private final f:[I

.field private final g:I

.field private final h:[Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

.field private final i:Landroid/graphics/Rect;

.field private final j:Landroid/graphics/Rect;

.field private final k:Z

.field private l:Landroid/graphics/Bitmap;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le4/a;Lcom/facebook/imagepipeline/animated/base/f;Landroid/graphics/Rect;Z)V
    .locals 2
    .param p3    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "animatedDrawableUtil",
            "animatedImageResult",
            "bounds",
            "downscaleFrameToDrawableDimensions"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->i:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->j:Landroid/graphics/Rect;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/a;->a:Le4/a;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/a;->b:Lcom/facebook/imagepipeline/animated/base/f;

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/animated/base/f;->f()Lcom/facebook/imagepipeline/animated/base/d;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/a;->c:Lcom/facebook/imagepipeline/animated/base/d;

    .line 27
    .line 28
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/d;->j()[I

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->e:[I

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Le4/a;->a([I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Le4/a;->e([I)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iput v1, p0, Lcom/facebook/imagepipeline/animated/impl/a;->g:I

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Le4/a;->c([I)[I

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/a;->f:[I

    .line 48
    .line 49
    invoke-static {p2, p3}, Lcom/facebook/imagepipeline/animated/impl/a;->s(Lcom/facebook/imagepipeline/animated/base/d;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/a;->d:Landroid/graphics/Rect;

    .line 54
    .line 55
    iput-boolean p4, p0, Lcom/facebook/imagepipeline/animated/impl/a;->k:Z

    .line 56
    .line 57
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/d;->c()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    new-array p1, p1, [Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    .line 62
    .line 63
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/a;->h:[Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    :goto_0
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/a;->c:Lcom/facebook/imagepipeline/animated/base/d;

    .line 67
    .line 68
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/d;->c()I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-ge p1, p2, :cond_0

    .line 73
    .line 74
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/a;->h:[Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    .line 75
    .line 76
    iget-object p3, p0, Lcom/facebook/imagepipeline/animated/impl/a;->c:Lcom/facebook/imagepipeline/animated/base/d;

    .line 77
    .line 78
    invoke-interface {p3, p1}, Lcom/facebook/imagepipeline/animated/base/d;->e(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    aput-object p3, p2, p1

    .line 83
    .line 84
    add-int/lit8 p1, p1, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method

.method private declared-synchronized r()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->l:Landroid/graphics/Bitmap;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->l:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    :cond_0
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    monitor-exit p0

    .line 16
    throw v0
.end method

.method private static s(Lcom/facebook/imagepipeline/animated/base/d;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p1    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "image",
            "targetBounds"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    new-instance p1, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-interface {p0}, Lcom/facebook/imagepipeline/animated/base/d;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-interface {p0}, Lcom/facebook/imagepipeline/animated/base/d;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-direct {p1, v0, v0, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 15
    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-interface {p0}, Lcom/facebook/imagepipeline/animated/base/d;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-interface {p0}, Lcom/facebook/imagepipeline/animated/base/d;->getHeight()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    invoke-direct {v1, v0, v0, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 45
    .line 46
    .line 47
    return-object v1
.end method

.method private declared-synchronized t(II)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->l:Landroid/graphics/Bitmap;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lt v0, p1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->l:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ge v0, p2, :cond_1

    .line 19
    .line 20
    :cond_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/a;->r()V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->l:Landroid/graphics/Bitmap;

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 28
    .line 29
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/a;->l:Landroid/graphics/Bitmap;

    .line 34
    .line 35
    :cond_2
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/a;->l:Landroid/graphics/Bitmap;

    .line 36
    .line 37
    const/4 p2, 0x0

    .line 38
    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/a;->l:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    monitor-exit p0

    .line 44
    return-object p1

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    monitor-exit p0

    .line 47
    throw p1
.end method

.method private u(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/e;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canvas",
            "frame"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/e;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/e;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/e;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    int-to-float v2, v2

    .line 34
    int-to-float v0, v0

    .line 35
    div-float/2addr v2, v0

    .line 36
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/e;->getHeight()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    int-to-float v0, v0

    .line 41
    int-to-float v1, v1

    .line 42
    div-float/2addr v0, v1

    .line 43
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/e;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    int-to-float v1, v1

    .line 52
    div-float/2addr v1, v0

    .line 53
    float-to-int v1, v1

    .line 54
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/e;->getHeight()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    int-to-float v2, v2

    .line 59
    div-float/2addr v2, v0

    .line 60
    float-to-int v2, v2

    .line 61
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/e;->getXOffset()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    int-to-float v3, v3

    .line 66
    div-float/2addr v3, v0

    .line 67
    float-to-int v3, v3

    .line 68
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/e;->getYOffset()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    int-to-float v4, v4

    .line 73
    div-float/2addr v4, v0

    .line 74
    float-to-int v0, v4

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/e;->getWidth()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/e;->getHeight()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/e;->getXOffset()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/e;->getYOffset()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    :goto_0
    monitor-enter p0

    .line 93
    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/facebook/imagepipeline/animated/impl/a;->t(II)Landroid/graphics/Bitmap;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    iput-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/a;->l:Landroid/graphics/Bitmap;

    .line 98
    .line 99
    invoke-interface {p2, v1, v2, v4}, Lcom/facebook/imagepipeline/animated/base/e;->a(IILandroid/graphics/Bitmap;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 103
    .line 104
    .line 105
    int-to-float p2, v3

    .line 106
    int-to-float v0, v0

    .line 107
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 108
    .line 109
    .line 110
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/a;->l:Landroid/graphics/Bitmap;

    .line 111
    .line 112
    const/4 v0, 0x0

    .line 113
    const/4 v1, 0x0

    .line 114
    invoke-virtual {p1, p2, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 118
    .line 119
    .line 120
    monitor-exit p0

    .line 121
    return-void

    .line 122
    :catchall_0
    move-exception p1

    .line 123
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    throw p1
.end method

.method private v(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/e;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canvas",
            "frame"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->d:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-double v0, v0

    .line 8
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/a;->c:Lcom/facebook/imagepipeline/animated/base/d;

    .line 9
    .line 10
    invoke-interface {v2}, Lcom/facebook/imagepipeline/animated/base/d;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    int-to-double v2, v2

    .line 15
    div-double/2addr v0, v2

    .line 16
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/a;->d:Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    int-to-double v2, v2

    .line 23
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/a;->c:Lcom/facebook/imagepipeline/animated/base/d;

    .line 24
    .line 25
    invoke-interface {v4}, Lcom/facebook/imagepipeline/animated/base/d;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    int-to-double v4, v4

    .line 30
    div-double/2addr v2, v4

    .line 31
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/e;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    int-to-double v4, v4

    .line 36
    mul-double v4, v4, v0

    .line 37
    .line 38
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    long-to-int v5, v4

    .line 43
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/e;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    int-to-double v6, v4

    .line 48
    mul-double v6, v6, v2

    .line 49
    .line 50
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    .line 51
    .line 52
    .line 53
    move-result-wide v6

    .line 54
    long-to-int v4, v6

    .line 55
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/e;->getXOffset()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    int-to-double v6, v6

    .line 60
    mul-double v6, v6, v0

    .line 61
    .line 62
    double-to-int v0, v6

    .line 63
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/e;->getYOffset()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    int-to-double v6, v1

    .line 68
    mul-double v6, v6, v2

    .line 69
    .line 70
    double-to-int v1, v6

    .line 71
    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/a;->d:Landroid/graphics/Rect;

    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/a;->d:Landroid/graphics/Rect;

    .line 79
    .line 80
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    invoke-direct {p0, v2, v3}, Lcom/facebook/imagepipeline/animated/impl/a;->t(II)Landroid/graphics/Bitmap;

    .line 85
    .line 86
    .line 87
    iget-object v6, p0, Lcom/facebook/imagepipeline/animated/impl/a;->l:Landroid/graphics/Bitmap;

    .line 88
    .line 89
    if-eqz v6, :cond_0

    .line 90
    .line 91
    invoke-interface {p2, v5, v4, v6}, Lcom/facebook/imagepipeline/animated/base/e;->a(IILandroid/graphics/Bitmap;)V

    .line 92
    .line 93
    .line 94
    :cond_0
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/a;->i:Landroid/graphics/Rect;

    .line 95
    .line 96
    const/4 v4, 0x0

    .line 97
    invoke-virtual {p2, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 98
    .line 99
    .line 100
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/a;->j:Landroid/graphics/Rect;

    .line 101
    .line 102
    add-int/2addr v2, v0

    .line 103
    add-int/2addr v3, v1

    .line 104
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 105
    .line 106
    .line 107
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/a;->l:Landroid/graphics/Bitmap;

    .line 108
    .line 109
    if-eqz p2, :cond_1

    .line 110
    .line 111
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->i:Landroid/graphics/Rect;

    .line 112
    .line 113
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/a;->j:Landroid/graphics/Rect;

    .line 114
    .line 115
    const/4 v2, 0x0

    .line 116
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 117
    .line 118
    .line 119
    :cond_1
    monitor-exit p0

    .line 120
    return-void

    .line 121
    :catchall_0
    move-exception p1

    .line 122
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    throw p1
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/a;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    monitor-exit p0

    .line 9
    throw v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->c:Lcom/facebook/imagepipeline/animated/base/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->c:Lcom/facebook/imagepipeline/animated/base/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->c()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public e(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameNumber"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->h:[Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    return-object p1
.end method

.method public f(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestampMs"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->a:Le4/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/a;->f:[I

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Le4/a;->b([II)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public g(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameNumber"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->f:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    invoke-static {p1, v0}, Lcom/facebook/common/internal/i;->g(II)I

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->f:[I

    .line 8
    .line 9
    aget p1, v0, p1

    .line 10
    .line 11
    return p1
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->c:Lcom/facebook/imagepipeline/animated/base/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->c:Lcom/facebook/imagepipeline/animated/base/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public h(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameNumber"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->e:[I

    .line 2
    .line 3
    aget p1, v0, p1

    .line 4
    .line 5
    return p1
.end method

.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->d:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->b:Lcom/facebook/imagepipeline/animated/base/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/f;->e()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public k()Lcom/facebook/imagepipeline/animated/base/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->b:Lcom/facebook/imagepipeline/animated/base/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public l(ILandroid/graphics/Canvas;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "frameNumber",
            "canvas"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->c:Lcom/facebook/imagepipeline/animated/base/d;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/d;->h(I)Lcom/facebook/imagepipeline/animated/base/e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :try_start_0
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/e;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_2

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/e;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-gtz v0, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->c:Lcom/facebook/imagepipeline/animated/base/d;

    .line 21
    .line 22
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->f()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-direct {p0, p2, p1}, Lcom/facebook/imagepipeline/animated/impl/a;->v(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/e;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/facebook/imagepipeline/animated/impl/a;->u(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/e;->dispose()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    :goto_1
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/e;->dispose()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p2

    .line 44
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/e;->dispose()V

    .line 45
    .line 46
    .line 47
    throw p2
.end method

.method public m(Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/a;
    .locals 4
    .param p1    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounds"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->c:Lcom/facebook/imagepipeline/animated/base/d;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/animated/impl/a;->s(Lcom/facebook/imagepipeline/animated/base/d;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/a;->d:Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/a;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/a;->a:Le4/a;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/a;->b:Lcom/facebook/imagepipeline/animated/base/f;

    .line 21
    .line 22
    iget-boolean v3, p0, Lcom/facebook/imagepipeline/animated/impl/a;->k:Z

    .line 23
    .line 24
    invoke-direct {v0, v1, v2, p1, v3}, Lcom/facebook/imagepipeline/animated/impl/a;-><init>(Le4/a;Lcom/facebook/imagepipeline/animated/base/f;Landroid/graphics/Rect;Z)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public n(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->b:Lcom/facebook/imagepipeline/animated/base/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/animated/base/f;->h(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public o(I)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameNumber"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->b:Lcom/facebook/imagepipeline/animated/base/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/animated/base/f;->d(I)Lcom/facebook/common/references/CloseableReference;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public declared-synchronized p()I
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->l:Landroid/graphics/Bitmap;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/a;->a:Le4/a;

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Le4/a;->d(Landroid/graphics/Bitmap;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    add-int/2addr v1, v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->c:Lcom/facebook/imagepipeline/animated/base/d;

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->a()I

    .line 17
    .line 18
    .line 19
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    add-int/2addr v1, v0

    .line 21
    monitor-exit p0

    .line 22
    return v1

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    monitor-exit p0

    .line 25
    throw v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/a;->d:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

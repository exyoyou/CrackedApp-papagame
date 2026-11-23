.class public Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/fresco/animation/backend/a;
.implements Lcom/facebook/fresco/animation/backend/c$b;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameType;,
        Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$a;
    }
.end annotation


# static fields
.field public static final o:I = -0x1

.field public static final p:I = 0x0

.field public static final q:I = 0x1

.field public static final r:I = 0x2

.field public static final s:I = 0x3

.field private static final t:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lcom/facebook/imagepipeline/bitmaps/f;

.field private final d:Lu3/a;

.field private final e:Lcom/facebook/fresco/animation/backend/d;

.field private final f:Lu3/b;

.field private final g:Lcom/facebook/fresco/animation/bitmap/preparation/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final h:Lcom/facebook/fresco/animation/bitmap/preparation/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Rect;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private k:I

.field private l:I

.field private m:Landroid/graphics/Bitmap$Config;

.field private n:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;

    .line 2
    .line 3
    sput-object v0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->t:Ljava/lang/Class;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/bitmaps/f;Lu3/a;Lcom/facebook/fresco/animation/backend/d;Lu3/b;Lcom/facebook/fresco/animation/bitmap/preparation/a;Lcom/facebook/fresco/animation/bitmap/preparation/b;)V
    .locals 1
    .param p5    # Lcom/facebook/fresco/animation/bitmap/preparation/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/fresco/animation/bitmap/preparation/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "platformBitmapFactory",
            "bitmapFrameCache",
            "animationInformation",
            "bitmapFrameRenderer",
            "bitmapFramePreparationStrategy",
            "bitmapFramePreparer"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->m:Landroid/graphics/Bitmap$Config;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->c:Lcom/facebook/imagepipeline/bitmaps/f;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->d:Lu3/a;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->e:Lcom/facebook/fresco/animation/backend/d;

    .line 13
    .line 14
    iput-object p4, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->f:Lu3/b;

    .line 15
    .line 16
    iput-object p5, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->g:Lcom/facebook/fresco/animation/bitmap/preparation/a;

    .line 17
    .line 18
    iput-object p6, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->h:Lcom/facebook/fresco/animation/bitmap/preparation/b;

    .line 19
    .line 20
    new-instance p1, Landroid/graphics/Paint;

    .line 21
    .line 22
    const/4 p2, 0x6

    .line 23
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->i:Landroid/graphics/Paint;

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->q()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private l(ILcom/facebook/common/references/CloseableReference;Landroid/graphics/Canvas;I)Z
    .locals 4
    .param p2    # Lcom/facebook/common/references/CloseableReference;
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
            "frameNumber",
            "bitmapReference",
            "canvas",
            "frameType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Canvas;",
            "I)Z"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/facebook/common/references/CloseableReference;->p(Lcom/facebook/common/references/CloseableReference;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->j:Landroid/graphics/Rect;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->j()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/graphics/Bitmap;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->i:Landroid/graphics/Paint;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {p3, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->j()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/graphics/Bitmap;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->j:Landroid/graphics/Rect;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->i:Landroid/graphics/Paint;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {p3, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    const/4 p3, 0x3

    .line 41
    if-eq p4, p3, :cond_2

    .line 42
    .line 43
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->d:Lu3/a;

    .line 44
    .line 45
    invoke-interface {p3, p1, p2, p4}, Lu3/a;->b(ILcom/facebook/common/references/CloseableReference;I)V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->n:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$a;

    .line 49
    .line 50
    if-eqz p2, :cond_3

    .line 51
    .line 52
    invoke-interface {p2, p0, p1, p4}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$a;->a(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;II)V

    .line 53
    .line 54
    .line 55
    :cond_3
    const/4 p1, 0x1

    .line 56
    return p1
.end method

.method private m(Landroid/graphics/Canvas;II)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "frameNumber",
            "frameType"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, -0x1

    .line 5
    if-eqz p3, :cond_5

    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    if-eq p3, v1, :cond_3

    .line 9
    .line 10
    const/4 v5, 0x3

    .line 11
    if-eq p3, v4, :cond_1

    .line 12
    .line 13
    if-eq p3, v5, :cond_0

    .line 14
    .line 15
    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 16
    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    :try_start_0
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->d:Lu3/a;

    .line 20
    .line 21
    invoke-interface {p3, p2}, Lu3/a;->c(I)Lcom/facebook/common/references/CloseableReference;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-direct {p0, p2, v2, p1, v5}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->l(ILcom/facebook/common/references/CloseableReference;Landroid/graphics/Canvas;I)Z

    .line 26
    .line 27
    .line 28
    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    const/4 v1, -0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    :try_start_1
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->c:Lcom/facebook/imagepipeline/bitmaps/f;

    .line 32
    .line 33
    iget v6, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->k:I

    .line 34
    .line 35
    iget v7, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->l:I

    .line 36
    .line 37
    iget-object v8, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->m:Landroid/graphics/Bitmap$Config;

    .line 38
    .line 39
    invoke-virtual {p3, v6, v7, v8}, Lcom/facebook/imagepipeline/bitmaps/f;->e(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;

    .line 40
    .line 41
    .line 42
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :try_start_2
    invoke-direct {p0, p2, v2}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->n(ILcom/facebook/common/references/CloseableReference;)Z

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    if-eqz p3, :cond_2

    .line 48
    .line 49
    invoke-direct {p0, p2, v2, p1, v4}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->l(ILcom/facebook/common/references/CloseableReference;Landroid/graphics/Canvas;I)Z

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    if-eqz p3, :cond_2

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    :cond_2
    move p3, v0

    .line 57
    const/4 v1, 0x3

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p1

    .line 60
    sget-object p2, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->t:Ljava/lang/Class;

    .line 61
    .line 62
    const-string p3, "Failed to create frame bitmap"

    .line 63
    .line 64
    invoke-static {p2, p3, p1}, Li3/a;->l0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .line 66
    .line 67
    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 68
    .line 69
    .line 70
    return v0

    .line 71
    :cond_3
    :try_start_3
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->d:Lu3/a;

    .line 72
    .line 73
    iget v5, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->k:I

    .line 74
    .line 75
    iget v6, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->l:I

    .line 76
    .line 77
    invoke-interface {p3, p2, v5, v6}, Lu3/a;->h(III)Lcom/facebook/common/references/CloseableReference;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-direct {p0, p2, v2}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->n(ILcom/facebook/common/references/CloseableReference;)Z

    .line 82
    .line 83
    .line 84
    move-result p3

    .line 85
    if-eqz p3, :cond_4

    .line 86
    .line 87
    invoke-direct {p0, p2, v2, p1, v1}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->l(ILcom/facebook/common/references/CloseableReference;Landroid/graphics/Canvas;I)Z

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    if-eqz p3, :cond_4

    .line 92
    .line 93
    const/4 v0, 0x1

    .line 94
    :cond_4
    move p3, v0

    .line 95
    const/4 v1, 0x2

    .line 96
    goto :goto_0

    .line 97
    :cond_5
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->d:Lu3/a;

    .line 98
    .line 99
    invoke-interface {p3, p2}, Lu3/a;->f(I)Lcom/facebook/common/references/CloseableReference;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-direct {p0, p2, v2, p1, v0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->l(ILcom/facebook/common/references/CloseableReference;Landroid/graphics/Canvas;I)Z

    .line 104
    .line 105
    .line 106
    move-result p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    :goto_0
    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 108
    .line 109
    .line 110
    if-nez p3, :cond_7

    .line 111
    .line 112
    if-ne v1, v3, :cond_6

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_6
    invoke-direct {p0, p1, p2, v1}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->m(Landroid/graphics/Canvas;II)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    return p1

    .line 120
    :cond_7
    :goto_1
    return p3

    .line 121
    :catchall_0
    move-exception p1

    .line 122
    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 123
    .line 124
    .line 125
    throw p1
.end method

.method private n(ILcom/facebook/common/references/CloseableReference;)Z
    .locals 2
    .param p2    # Lcom/facebook/common/references/CloseableReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "frameNumber",
            "targetBitmap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/facebook/common/references/CloseableReference;->p(Lcom/facebook/common/references/CloseableReference;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->f:Lu3/b;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->j()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/graphics/Bitmap;

    .line 16
    .line 17
    invoke-interface {v0, p1, v1}, Lu3/b;->a(ILandroid/graphics/Bitmap;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    invoke-static {p2}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return p1
.end method

.method private q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->f:Lu3/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lu3/b;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->k:I

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->j:Landroid/graphics/Rect;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 v0, -0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :goto_0
    iput v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->k:I

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->f:Lu3/b;

    .line 25
    .line 26
    invoke-interface {v0}, Lu3/b;->e()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->l:I

    .line 31
    .line 32
    if-ne v0, v1, :cond_3

    .line 33
    .line 34
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->j:Landroid/graphics/Rect;

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    :goto_1
    iput v1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->l:I

    .line 44
    .line 45
    :cond_3
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->d:Lu3/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lu3/a;->a()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->e:Lcom/facebook/fresco/animation/backend/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/d;->b()I

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
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->e:Lcom/facebook/fresco/animation/backend/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/d;->c()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->d:Lu3/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lu3/a;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public f(Landroid/graphics/Rect;)V
    .locals 1
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
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->j:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->f:Lu3/b;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lu3/b;->f(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->q()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public g(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorFilter"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->i:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 4
    .line 5
    .line 6
    return-void
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
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->e:Lcom/facebook/fresco/animation/backend/d;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/d;->h(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public i(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->i:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "canvas",
            "frameNumber"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->n:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1, p0, p3}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$a;->c(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p2, p3, p1}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->m(Landroid/graphics/Canvas;II)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->n:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$a;

    .line 16
    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    invoke-interface {p2, p0, p3}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$a;->b(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->g:Lcom/facebook/fresco/animation/bitmap/preparation/a;

    .line 23
    .line 24
    if-eqz p2, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->h:Lcom/facebook/fresco/animation/bitmap/preparation/b;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->d:Lu3/a;

    .line 31
    .line 32
    invoke-interface {p2, v0, v1, p0, p3}, Lcom/facebook/fresco/animation/bitmap/preparation/a;->a(Lcom/facebook/fresco/animation/bitmap/preparation/b;Lu3/a;Lcom/facebook/fresco/animation/backend/a;I)V

    .line 33
    .line 34
    .line 35
    :cond_2
    return p1
.end method

.method public k()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->clear()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public o(Landroid/graphics/Bitmap$Config;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapConfig"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->m:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    return-void
.end method

.method public p(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$a;)V
    .locals 0
    .param p1    # Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->n:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$a;

    .line 2
    .line 3
    return-void
.end method

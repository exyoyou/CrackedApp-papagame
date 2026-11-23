.class public Lcom/facebook/imagepipeline/bitmaps/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm3/a;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/bitmaps/b;

.field private final b:Lcom/facebook/imagepipeline/memory/v;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/i0;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "poolFactory"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/i0;->d()Lcom/facebook/imagepipeline/memory/v;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/facebook/imagepipeline/bitmaps/d;->b:Lcom/facebook/imagepipeline/memory/v;

    .line 9
    .line 10
    new-instance v0, Lcom/facebook/imagepipeline/bitmaps/b;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/i0;->h()Lcom/facebook/common/memory/g;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/bitmaps/b;-><init>(Lcom/facebook/common/memory/g;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/facebook/imagepipeline/bitmaps/d;->a:Lcom/facebook/imagepipeline/bitmaps/b;

    .line 20
    .line 21
    return-void
.end method

.method private static b(ILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sampleSize",
            "bitmapConfig"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 8
    .line 9
    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 10
    .line 11
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 12
    .line 13
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 14
    .line 15
    iput p0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 16
    .line 17
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method public a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "bitmapConfig"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/bitmaps/d;->a:Lcom/facebook/imagepipeline/bitmaps/b;

    .line 2
    .line 3
    int-to-short p1, p1

    .line 4
    int-to-short p2, p2

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/bitmaps/b;->a(SS)Lcom/facebook/common/references/CloseableReference;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 p2, 0x0

    .line 10
    :try_start_0
    new-instance v0, Lcom/facebook/imagepipeline/image/e;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/image/e;-><init>(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    .line 14
    .line 15
    :try_start_1
    sget-object v1, Lcom/facebook/imageformat/b;->a:Lcom/facebook/imageformat/c;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/image/e;->g0(Lcom/facebook/imageformat/c;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/e;->v()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-static {v1, p3}, Lcom/facebook/imagepipeline/bitmaps/d;->b(ILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->j()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/facebook/common/memory/PooledByteBuffer;

    .line 33
    .line 34
    invoke-interface {v1}, Lcom/facebook/common/memory/PooledByteBuffer;->size()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->j()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/facebook/common/memory/PooledByteBuffer;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/facebook/imagepipeline/bitmaps/d;->b:Lcom/facebook/imagepipeline/memory/v;

    .line 45
    .line 46
    add-int/lit8 v4, v1, 0x2

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Lcom/facebook/imagepipeline/memory/v;->a(I)Lcom/facebook/common/references/CloseableReference;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->j()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, [B

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    invoke-interface {v2, v4, v3, v4, v1}, Lcom/facebook/common/memory/PooledByteBuffer;->B(I[BII)I

    .line 60
    .line 61
    .line 62
    invoke-static {v3, v4, v1, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    invoke-static {p3}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    check-cast p3, Landroid/graphics/Bitmap;

    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    invoke-virtual {p3, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    .line 79
    invoke-static {p2}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v0}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V

    .line 83
    .line 84
    .line 85
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 86
    .line 87
    .line 88
    return-object p3

    .line 89
    :catchall_0
    move-exception p3

    .line 90
    goto :goto_0

    .line 91
    :catchall_1
    move-exception p3

    .line 92
    move-object v0, p2

    .line 93
    :goto_0
    invoke-static {p2}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v0}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V

    .line 97
    .line 98
    .line 99
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 100
    .line 101
    .line 102
    throw p3
.end method

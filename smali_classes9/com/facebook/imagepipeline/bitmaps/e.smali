.class public Lcom/facebook/imagepipeline/bitmaps/e;
.super Lcom/facebook/imagepipeline/bitmaps/f;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final e:Ljava/lang/String; = "e"


# instance fields
.field private final a:Lcom/facebook/imagepipeline/bitmaps/b;

.field private final b:Lcom/facebook/imagepipeline/platform/g;

.field private final c:Lcom/facebook/imagepipeline/core/a;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/bitmaps/b;Lcom/facebook/imagepipeline/platform/g;Lcom/facebook/imagepipeline/core/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "jpegGenerator",
            "purgeableDecoder",
            "closeableReferenceFactory"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/bitmaps/f;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/imagepipeline/bitmaps/e;->a:Lcom/facebook/imagepipeline/bitmaps/b;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/imagepipeline/bitmaps/e;->b:Lcom/facebook/imagepipeline/platform/g;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/facebook/imagepipeline/bitmaps/e;->c:Lcom/facebook/imagepipeline/core/a;

    .line 9
    .line 10
    return-void
.end method

.method private E(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;
    .locals 1
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/bitmaps/e;->c:Lcom/facebook/imagepipeline/core/a;

    .line 2
    .line 3
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {}, Lcom/facebook/imagepipeline/bitmaps/h;->a()Lcom/facebook/imagepipeline/bitmaps/h;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/core/a;->c(Ljava/lang/Object;Lcom/facebook/common/references/g;)Lcom/facebook/common/references/CloseableReference;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method


# virtual methods
.method public z(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/bitmaps/e;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/bitmaps/e;->E(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/bitmaps/e;->a:Lcom/facebook/imagepipeline/bitmaps/b;

    .line 11
    .line 12
    int-to-short v1, p1

    .line 13
    int-to-short v2, p2

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/facebook/imagepipeline/bitmaps/b;->a(SS)Lcom/facebook/common/references/CloseableReference;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :try_start_0
    new-instance v1, Lcom/facebook/imagepipeline/image/e;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/image/e;-><init>(Lcom/facebook/common/references/CloseableReference;)V

    .line 21
    .line 22
    .line 23
    sget-object v2, Lcom/facebook/imageformat/b;->a:Lcom/facebook/imageformat/c;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/image/e;->g0(Lcom/facebook/imageformat/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    .line 27
    .line 28
    :try_start_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/bitmaps/e;->b:Lcom/facebook/imagepipeline/platform/g;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->j()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lcom/facebook/common/memory/PooledByteBuffer;

    .line 35
    .line 36
    invoke-interface {v3}, Lcom/facebook/common/memory/PooledByteBuffer;->size()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-interface {v2, v1, p3, v4, v3}, Lcom/facebook/imagepipeline/platform/g;->d(Lcom/facebook/imagepipeline/image/e;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;I)Lcom/facebook/common/references/CloseableReference;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lcom/facebook/common/references/CloseableReference;->j()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Landroid/graphics/Bitmap;

    .line 50
    .line 51
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isMutable()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    const/4 v4, 0x1

    .line 56
    if-nez v3, :cond_1

    .line 57
    .line 58
    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 59
    .line 60
    .line 61
    iput-boolean v4, p0, Lcom/facebook/imagepipeline/bitmaps/e;->d:Z

    .line 62
    .line 63
    sget-object v2, Lcom/facebook/imagepipeline/bitmaps/e;->e:Ljava/lang/String;

    .line 64
    .line 65
    const-string v3, "Immutable bitmap returned by decoder"

    .line 66
    .line 67
    invoke-static {v2, v3}, Li3/a;->w0(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/bitmaps/e;->E(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;

    .line 71
    .line 72
    .line 73
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :try_start_2
    invoke-static {v1}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 78
    .line 79
    .line 80
    return-object p1

    .line 81
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Lcom/facebook/common/references/CloseableReference;->j()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Landroid/graphics/Bitmap;

    .line 86
    .line 87
    invoke-virtual {p1, v4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/facebook/common/references/CloseableReference;->j()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Landroid/graphics/Bitmap;

    .line 95
    .line 96
    const/4 p2, 0x0

    .line 97
    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    .line 99
    .line 100
    :try_start_4
    invoke-static {v1}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 104
    .line 105
    .line 106
    return-object v2

    .line 107
    :catchall_0
    move-exception p1

    .line 108
    :try_start_5
    invoke-static {v1}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V

    .line 109
    .line 110
    .line 111
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 112
    :catchall_1
    move-exception p1

    .line 113
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 114
    .line 115
    .line 116
    throw p1
.end method

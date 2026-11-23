.class public Lcom/facebook/imagepipeline/animated/factory/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/factory/d;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field static c:Lcom/facebook/imagepipeline/animated/factory/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field static d:Lcom/facebook/imagepipeline/animated/factory/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/imagepipeline/animated/impl/b;

.field private final b:Lcom/facebook/imagepipeline/bitmaps/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "com.facebook.animated.gif.GifImage"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/imagepipeline/animated/factory/e;->g(Ljava/lang/String;)Lcom/facebook/imagepipeline/animated/factory/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/facebook/imagepipeline/animated/factory/e;->c:Lcom/facebook/imagepipeline/animated/factory/c;

    .line 8
    .line 9
    const-string v0, "com.facebook.animated.webp.WebPImage"

    .line 10
    .line 11
    invoke-static {v0}, Lcom/facebook/imagepipeline/animated/factory/e;->g(Ljava/lang/String;)Lcom/facebook/imagepipeline/animated/factory/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/facebook/imagepipeline/animated/factory/e;->d:Lcom/facebook/imagepipeline/animated/factory/c;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/animated/impl/b;Lcom/facebook/imagepipeline/bitmaps/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "animatedDrawableBackendProvider",
            "bitmapFactory"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/factory/e;->a:Lcom/facebook/imagepipeline/animated/impl/b;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/factory/e;->b:Lcom/facebook/imagepipeline/bitmaps/f;

    .line 7
    .line 8
    return-void
.end method

.method private c(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
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
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/factory/e;->b:Lcom/facebook/imagepipeline/bitmaps/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/imagepipeline/bitmaps/f;->z(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->j()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Landroid/graphics/Bitmap;

    .line 12
    .line 13
    const/4 p3, 0x0

    .line 14
    invoke-virtual {p2, p3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->j()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    check-cast p2, Landroid/graphics/Bitmap;

    .line 22
    .line 23
    const/4 p3, 0x1

    .line 24
    invoke-virtual {p2, p3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 25
    .line 26
    .line 27
    return-object p1
.end method

.method private d(Lcom/facebook/imagepipeline/animated/base/d;Landroid/graphics/Bitmap$Config;I)Lcom/facebook/common/references/CloseableReference;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "image",
            "bitmapConfig",
            "frameForPreview"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/animated/base/d;",
            "Landroid/graphics/Bitmap$Config;",
            "I)",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/d;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/d;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {p0, v0, v1, p2}, Lcom/facebook/imagepipeline/animated/factory/e;->c(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-static {p1}, Lcom/facebook/imagepipeline/animated/base/f;->b(Lcom/facebook/imagepipeline/animated/base/d;)Lcom/facebook/imagepipeline/animated/base/f;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/factory/e;->a:Lcom/facebook/imagepipeline/animated/impl/b;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/animated/impl/b;->a(Lcom/facebook/imagepipeline/animated/base/f;Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/a;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    .line 25
    .line 26
    new-instance v1, Lcom/facebook/imagepipeline/animated/factory/e$a;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/animated/factory/e$a;-><init>(Lcom/facebook/imagepipeline/animated/factory/e;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p1, v1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;-><init>(Lcom/facebook/imagepipeline/animated/base/a;Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$b;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->j()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/graphics/Bitmap;

    .line 39
    .line 40
    invoke-virtual {v0, p3, p1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->g(ILandroid/graphics/Bitmap;)V

    .line 41
    .line 42
    .line 43
    return-object p2
.end method

.method private e(Lcom/facebook/imagepipeline/animated/base/d;Landroid/graphics/Bitmap$Config;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "image",
            "bitmapConfig"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/animated/base/d;",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/imagepipeline/animated/base/f;->b(Lcom/facebook/imagepipeline/animated/base/d;)Lcom/facebook/imagepipeline/animated/base/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/factory/e;->a:Lcom/facebook/imagepipeline/animated/impl/b;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/animated/impl/b;->a(Lcom/facebook/imagepipeline/animated/base/f;Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/a;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/a;->c()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    .line 22
    .line 23
    new-instance v2, Lcom/facebook/imagepipeline/animated/factory/e$b;

    .line 24
    .line 25
    invoke-direct {v2, p0, v0}, Lcom/facebook/imagepipeline/animated/factory/e$b;-><init>(Lcom/facebook/imagepipeline/animated/factory/e;Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p1, v2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;-><init>(Lcom/facebook/imagepipeline/animated/base/a;Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$b;)V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    :goto_0
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/a;->c()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-ge v2, v3, :cond_0

    .line 37
    .line 38
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/a;->getWidth()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/a;->getHeight()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-direct {p0, v3, v4, p2}, Lcom/facebook/imagepipeline/animated/factory/e;->c(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Lcom/facebook/common/references/CloseableReference;->j()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Landroid/graphics/Bitmap;

    .line 55
    .line 56
    invoke-virtual {v1, v2, v4}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->g(ILandroid/graphics/Bitmap;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    add-int/lit8 v2, v2, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    return-object v0
.end method

.method private f(Lcom/facebook/imagepipeline/common/c;Lcom/facebook/imagepipeline/animated/base/d;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/image/c;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "options",
            "image",
            "bitmapConfig"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-boolean v1, p1, Lcom/facebook/imagepipeline/common/c;->d:Z

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/d;->c()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    iget-boolean v3, p1, Lcom/facebook/imagepipeline/common/c;->f:Z

    .line 16
    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    new-instance p1, Lcom/facebook/imagepipeline/image/d;

    .line 20
    .line 21
    invoke-direct {p0, p2, p3, v1}, Lcom/facebook/imagepipeline/animated/factory/e;->d(Lcom/facebook/imagepipeline/animated/base/d;Landroid/graphics/Bitmap$Config;I)Lcom/facebook/common/references/CloseableReference;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    sget-object p3, Lcom/facebook/imagepipeline/image/h;->d:Lcom/facebook/imagepipeline/image/j;

    .line 26
    .line 27
    invoke-direct {p1, p2, p3, v2}, Lcom/facebook/imagepipeline/image/d;-><init>(Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/image/j;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->i(Ljava/lang/Iterable;)V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_1
    :try_start_1
    iget-boolean v2, p1, Lcom/facebook/imagepipeline/common/c;->e:Z

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-direct {p0, p2, p3}, Lcom/facebook/imagepipeline/animated/factory/e;->e(Lcom/facebook/imagepipeline/animated/base/d;Landroid/graphics/Bitmap$Config;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    :try_start_2
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Lcom/facebook/common/references/CloseableReference;

    .line 50
    .line 51
    invoke-static {v3}, Lcom/facebook/common/references/CloseableReference;->f(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    move-object v2, v0

    .line 57
    :goto_1
    iget-boolean v3, p1, Lcom/facebook/imagepipeline/common/c;->c:Z

    .line 58
    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    invoke-direct {p0, p2, p3, v1}, Lcom/facebook/imagepipeline/animated/factory/e;->d(Lcom/facebook/imagepipeline/animated/base/d;Landroid/graphics/Bitmap$Config;I)Lcom/facebook/common/references/CloseableReference;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    move-object v0, p3

    .line 68
    :cond_3
    invoke-static {p2}, Lcom/facebook/imagepipeline/animated/base/f;->i(Lcom/facebook/imagepipeline/animated/base/d;)Lcom/facebook/imagepipeline/animated/base/g;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p2, v0}, Lcom/facebook/imagepipeline/animated/base/g;->j(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/imagepipeline/animated/base/g;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p2, v1}, Lcom/facebook/imagepipeline/animated/base/g;->i(I)Lcom/facebook/imagepipeline/animated/base/g;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p2, v2}, Lcom/facebook/imagepipeline/animated/base/g;->h(Ljava/util/List;)Lcom/facebook/imagepipeline/animated/base/g;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    iget-object p1, p1, Lcom/facebook/imagepipeline/common/c;->j:Lm4/a;

    .line 85
    .line 86
    invoke-virtual {p2, p1}, Lcom/facebook/imagepipeline/animated/base/g;->g(Lm4/a;)Lcom/facebook/imagepipeline/animated/base/g;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/base/g;->a()Lcom/facebook/imagepipeline/animated/base/f;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    new-instance p2, Lcom/facebook/imagepipeline/image/a;

    .line 95
    .line 96
    invoke-direct {p2, p1}, Lcom/facebook/imagepipeline/image/a;-><init>(Lcom/facebook/imagepipeline/animated/base/f;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    .line 98
    .line 99
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->i(Ljava/lang/Iterable;)V

    .line 103
    .line 104
    .line 105
    return-object p2

    .line 106
    :catchall_0
    move-exception p1

    .line 107
    goto :goto_2

    .line 108
    :catchall_1
    move-exception p1

    .line 109
    move-object v2, v0

    .line 110
    :goto_2
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->i(Ljava/lang/Iterable;)V

    .line 114
    .line 115
    .line 116
    throw p1
.end method

.method private static g(Ljava/lang/String;)Lcom/facebook/imagepipeline/animated/factory/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "className"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/facebook/imagepipeline/animated/factory/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :catchall_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/image/e;Lcom/facebook/imagepipeline/common/c;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/image/c;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "encodedImage",
            "options",
            "bitmapConfig"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/animated/factory/e;->c:Lcom/facebook/imagepipeline/animated/factory/c;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->f()Lcom/facebook/common/references/CloseableReference;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->j()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/facebook/common/memory/PooledByteBuffer;

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->C()Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    sget-object v1, Lcom/facebook/imagepipeline/animated/factory/e;->c:Lcom/facebook/imagepipeline/animated/factory/c;

    .line 25
    .line 26
    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->C()Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v1, v0, p2}, Lcom/facebook/imagepipeline/animated/factory/c;->d(Ljava/nio/ByteBuffer;Lcom/facebook/imagepipeline/common/c;)Lcom/facebook/imagepipeline/animated/base/d;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sget-object v1, Lcom/facebook/imagepipeline/animated/factory/e;->c:Lcom/facebook/imagepipeline/animated/factory/c;

    .line 36
    .line 37
    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->A()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->size()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-interface {v1, v2, v3, v0, p2}, Lcom/facebook/imagepipeline/animated/factory/c;->g(JILcom/facebook/imagepipeline/common/c;)Lcom/facebook/imagepipeline/animated/base/d;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :goto_0
    invoke-direct {p0, p2, v0, p3}, Lcom/facebook/imagepipeline/animated/factory/e;->f(Lcom/facebook/imagepipeline/common/c;Lcom/facebook/imagepipeline/animated/base/d;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/image/c;

    .line 50
    .line 51
    .line 52
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 54
    .line 55
    .line 56
    return-object p2

    .line 57
    :catchall_0
    move-exception p2

    .line 58
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 59
    .line 60
    .line 61
    throw p2

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 63
    .line 64
    const-string p2, "To encode animated gif please add the dependency to the animated-gif module"

    .line 65
    .line 66
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1
.end method

.method public b(Lcom/facebook/imagepipeline/image/e;Lcom/facebook/imagepipeline/common/c;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/image/c;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "encodedImage",
            "options",
            "bitmapConfig"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/animated/factory/e;->d:Lcom/facebook/imagepipeline/animated/factory/c;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->f()Lcom/facebook/common/references/CloseableReference;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->j()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/facebook/common/memory/PooledByteBuffer;

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->C()Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    sget-object v1, Lcom/facebook/imagepipeline/animated/factory/e;->d:Lcom/facebook/imagepipeline/animated/factory/c;

    .line 25
    .line 26
    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->C()Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v1, v0, p2}, Lcom/facebook/imagepipeline/animated/factory/c;->d(Ljava/nio/ByteBuffer;Lcom/facebook/imagepipeline/common/c;)Lcom/facebook/imagepipeline/animated/base/d;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sget-object v1, Lcom/facebook/imagepipeline/animated/factory/e;->d:Lcom/facebook/imagepipeline/animated/factory/c;

    .line 36
    .line 37
    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->A()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->size()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-interface {v1, v2, v3, v0, p2}, Lcom/facebook/imagepipeline/animated/factory/c;->g(JILcom/facebook/imagepipeline/common/c;)Lcom/facebook/imagepipeline/animated/base/d;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :goto_0
    invoke-direct {p0, p2, v0, p3}, Lcom/facebook/imagepipeline/animated/factory/e;->f(Lcom/facebook/imagepipeline/common/c;Lcom/facebook/imagepipeline/animated/base/d;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/image/c;

    .line 50
    .line 51
    .line 52
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 54
    .line 55
    .line 56
    return-object p2

    .line 57
    :catchall_0
    move-exception p2

    .line 58
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 59
    .line 60
    .line 61
    throw p2

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 63
    .line 64
    const-string p2, "To encode animated webp please add the dependency to the animated-webp module"

    .line 65
    .line 66
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1
.end method

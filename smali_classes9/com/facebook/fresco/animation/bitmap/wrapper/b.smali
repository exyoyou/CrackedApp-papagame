.class public Lcom/facebook/fresco/animation/bitmap/wrapper/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/b;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lu3/a;

.field private b:Lcom/facebook/imagepipeline/animated/base/a;

.field private c:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

.field private final d:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/fresco/animation/bitmap/wrapper/b;

    .line 2
    .line 3
    sput-object v0, Lcom/facebook/fresco/animation/bitmap/wrapper/b;->e:Ljava/lang/Class;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Lu3/a;Lcom/facebook/imagepipeline/animated/base/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmapFrameCache",
            "animatedDrawableBackend"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/wrapper/b$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/bitmap/wrapper/b$a;-><init>(Lcom/facebook/fresco/animation/bitmap/wrapper/b;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/b;->d:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$b;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/b;->a:Lu3/a;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/b;->b:Lcom/facebook/imagepipeline/animated/base/a;

    .line 14
    .line 15
    new-instance p1, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    .line 16
    .line 17
    invoke-direct {p1, p2, v0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;-><init>(Lcom/facebook/imagepipeline/animated/base/a;Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$b;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/b;->c:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    .line 21
    .line 22
    return-void
.end method

.method static synthetic b(Lcom/facebook/fresco/animation/bitmap/wrapper/b;)Lu3/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/b;->a:Lu3/a;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(ILandroid/graphics/Bitmap;)Z
    .locals 3
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

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/b;->c:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    .line 3
    .line 4
    invoke-virtual {v1, p1, p2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->g(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    return v0

    .line 8
    :catch_0
    move-exception p2

    .line 9
    sget-object v1, Lcom/facebook/fresco/animation/bitmap/wrapper/b;->e:Ljava/lang/Class;

    .line 10
    .line 11
    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v2, 0x0

    .line 18
    aput-object p1, v0, v2

    .line 19
    .line 20
    const-string p1, "Rendering of frame unsuccessful. Frame number: %d"

    .line 21
    .line 22
    invoke-static {v1, p2, p1, v0}, Li3/a;->t(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return v2
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/b;->b:Lcom/facebook/imagepipeline/animated/base/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/a;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/b;->b:Lcom/facebook/imagepipeline/animated/base/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/a;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public f(Landroid/graphics/Rect;)V
    .locals 2
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
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/b;->b:Lcom/facebook/imagepipeline/animated/base/a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/a;->m(Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/b;->b:Lcom/facebook/imagepipeline/animated/base/a;

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/b;->b:Lcom/facebook/imagepipeline/animated/base/a;

    .line 12
    .line 13
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/b;->d:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$b;

    .line 16
    .line 17
    invoke-direct {v0, p1, v1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;-><init>(Lcom/facebook/imagepipeline/animated/base/a;Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$b;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/b;->c:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    .line 21
    .line 22
    :cond_0
    return-void
.end method

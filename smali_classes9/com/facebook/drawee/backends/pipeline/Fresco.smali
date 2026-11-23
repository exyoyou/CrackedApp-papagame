.class public Lcom/facebook/drawee/backends/pipeline/Fresco;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sDraweeControllerBuilderSupplier:Lcom/facebook/drawee/backends/pipeline/f;

.field private static volatile sIsInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/drawee/backends/pipeline/Fresco;

    .line 2
    .line 3
    sput-object v0, Lcom/facebook/drawee/backends/pipeline/Fresco;->TAG:Ljava/lang/Class;

    .line 4
    .line 5
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getDraweeControllerBuilderSupplier()Lcom/facebook/drawee/backends/pipeline/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/drawee/backends/pipeline/Fresco;->sDraweeControllerBuilderSupplier:Lcom/facebook/drawee/backends/pipeline/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getImagePipeline()Lcom/facebook/imagepipeline/core/h;
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipelineFactory()Lcom/facebook/imagepipeline/core/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/k;->j()Lcom/facebook/imagepipeline/core/h;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static getImagePipelineFactory()Lcom/facebook/imagepipeline/core/k;
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/core/k;->l()Lcom/facebook/imagepipeline/core/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static hasBeenInitialized()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/facebook/drawee/backends/pipeline/Fresco;->sIsInitialized:Z

    .line 2
    .line 3
    return v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0}, Lcom/facebook/drawee/backends/pipeline/Fresco;->initialize(Landroid/content/Context;Lcom/facebook/imagepipeline/core/ImagePipelineConfig;Lcom/facebook/drawee/backends/pipeline/c;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Lcom/facebook/imagepipeline/core/ImagePipelineConfig;)V
    .locals 1
    .param p1    # Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "imagePipelineConfig"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/facebook/drawee/backends/pipeline/Fresco;->initialize(Landroid/content/Context;Lcom/facebook/imagepipeline/core/ImagePipelineConfig;Lcom/facebook/drawee/backends/pipeline/c;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Lcom/facebook/imagepipeline/core/ImagePipelineConfig;Lcom/facebook/drawee/backends/pipeline/c;)V
    .locals 1
    .param p1    # Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/drawee/backends/pipeline/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "imagePipelineConfig",
            "draweeConfig"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    invoke-static {p0, p1, p2, v0}, Lcom/facebook/drawee/backends/pipeline/Fresco;->initialize(Landroid/content/Context;Lcom/facebook/imagepipeline/core/ImagePipelineConfig;Lcom/facebook/drawee/backends/pipeline/c;Z)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Lcom/facebook/imagepipeline/core/ImagePipelineConfig;Lcom/facebook/drawee/backends/pipeline/c;Z)V
    .locals 5
    .param p1    # Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/drawee/backends/pipeline/c;
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
            "context",
            "imagePipelineConfig",
            "draweeConfig",
            "useNativeCode"
        }
    .end annotation

    .line 4
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Fresco#initialize"

    .line 5
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 6
    :cond_0
    sget-boolean v0, Lcom/facebook/drawee/backends/pipeline/Fresco;->sIsInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 7
    sget-object v0, Lcom/facebook/drawee/backends/pipeline/Fresco;->TAG:Ljava/lang/Class;

    const-string v2, "Fresco has already been initialized! `Fresco.initialize(...)` should only be called 1 single time to avoid memory leaks!"

    invoke-static {v0, v2}, Li3/a;->k0(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    sput-boolean v1, Lcom/facebook/drawee/backends/pipeline/Fresco;->sIsInitialized:Z

    .line 9
    :goto_0
    invoke-static {p3}, Lcom/facebook/imagepipeline/core/l;->b(Z)V

    .line 10
    invoke-static {}, Lr4/a;->e()Z

    move-result p3

    if-nez p3, :cond_4

    .line 11
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "Fresco.initialize->SoLoader.init"

    .line 12
    invoke-static {p3}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 13
    :cond_2
    :try_start_0
    const-class p3, Lcom/facebook/imagepipeline/nativecode/NativeCodeInitializer;

    const-string v0, "init"

    new-array v2, v1, [Ljava/lang/Class;

    .line 14
    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p3, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v4

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 16
    :catch_0
    :try_start_1
    new-instance p3, Lr4/c;

    invoke-direct {p3}, Lr4/c;-><init>()V

    invoke-static {p3}, Lr4/a;->d(Lr4/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    .line 18
    :catch_1
    :try_start_2
    new-instance p3, Lr4/c;

    invoke-direct {p3}, Lr4/c;-><init>()V

    invoke-static {p3}, Lr4/a;->d(Lr4/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    .line 20
    :catch_2
    :try_start_3
    new-instance p3, Lr4/c;

    invoke-direct {p3}, Lr4/c;-><init>()V

    invoke-static {p3}, Lr4/a;->d(Lr4/b;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 21
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    .line 22
    :catch_3
    :try_start_4
    new-instance p3, Lr4/c;

    invoke-direct {p3}, Lr4/c;-><init>()V

    invoke-static {p3}, Lr4/a;->d(Lr4/b;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 23
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 24
    :goto_1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    goto :goto_3

    .line 25
    :goto_2
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 26
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 27
    :cond_3
    throw p0

    .line 28
    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p1, :cond_5

    .line 29
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/k;->v(Landroid/content/Context;)V

    goto :goto_4

    .line 30
    :cond_5
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/k;->w(Lcom/facebook/imagepipeline/core/i;)V

    .line 31
    :goto_4
    invoke-static {p0, p2}, Lcom/facebook/drawee/backends/pipeline/Fresco;->initializeDrawee(Landroid/content/Context;Lcom/facebook/drawee/backends/pipeline/c;)V

    .line 32
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 33
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_6
    return-void
.end method

.method private static initializeDrawee(Landroid/content/Context;Lcom/facebook/drawee/backends/pipeline/c;)V
    .locals 1
    .param p1    # Lcom/facebook/drawee/backends/pipeline/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "draweeConfig"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "Fresco.initializeDrawee"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v0, Lcom/facebook/drawee/backends/pipeline/f;

    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Lcom/facebook/drawee/backends/pipeline/f;-><init>(Landroid/content/Context;Lcom/facebook/drawee/backends/pipeline/c;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/facebook/drawee/backends/pipeline/Fresco;->sDraweeControllerBuilderSupplier:Lcom/facebook/drawee/backends/pipeline/f;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->initialize(Lcom/facebook/common/internal/l;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public static newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/drawee/backends/pipeline/Fresco;->sDraweeControllerBuilderSupplier:Lcom/facebook/drawee/backends/pipeline/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/drawee/backends/pipeline/f;->a()Lcom/facebook/drawee/backends/pipeline/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static shutDown()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/facebook/drawee/backends/pipeline/Fresco;->sDraweeControllerBuilderSupplier:Lcom/facebook/drawee/backends/pipeline/f;

    .line 3
    .line 4
    invoke-static {}, Lcom/facebook/drawee/view/SimpleDraweeView;->shutDown()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/facebook/imagepipeline/core/k;->A()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

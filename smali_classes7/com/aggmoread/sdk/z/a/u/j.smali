.class public Lcom/aggmoread/sdk/z/a/u/j;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/a/u/j$f;
    }
.end annotation


# static fields
.field private static final m:I

.field private static final n:I

.field private static final o:I

.field private static final p:Ljava/util/concurrent/ThreadFactory;

.field private static final q:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static final r:Ljava/util/concurrent/Executor;


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:J

.field private i:[B

.field private j:Landroid/graphics/Movie;

.field private k:J

.field private l:Lcom/aggmoread/sdk/z/a/u/j$f;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/aggmoread/sdk/z/a/u/j;->m:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/aggmoread/sdk/z/a/u/j;->n:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, 0x1

    sput v3, Lcom/aggmoread/sdk/z/a/u/j;->o:I

    new-instance v8, Lcom/aggmoread/sdk/z/a/u/j$a;

    invoke-direct {v8}, Lcom/aggmoread/sdk/z/a/u/j$a;-><init>()V

    sput-object v8, Lcom/aggmoread/sdk/z/a/u/j;->p:Ljava/util/concurrent/ThreadFactory;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x80

    invoke-direct {v7, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v7, Lcom/aggmoread/sdk/z/a/u/j;->q:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Lcom/aggmoread/sdk/z/a/u/j$b;

    invoke-direct {v9}, Lcom/aggmoread/sdk/z/a/u/j$b;-><init>()V

    const-wide/16 v4, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/aggmoread/sdk/z/a/u/j;->r:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aggmoread/sdk/z/a/u/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/aggmoread/sdk/z/a/u/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/u/j;->a:Z

    iput p1, p0, Lcom/aggmoread/sdk/z/a/u/j;->b:I

    iput p1, p0, Lcom/aggmoread/sdk/z/a/u/j;->c:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/aggmoread/sdk/z/a/u/j;->d:F

    iput p1, p0, Lcom/aggmoread/sdk/z/a/u/j;->e:F

    const-wide/16 p1, 0x21

    iput-wide p1, p0, Lcom/aggmoread/sdk/z/a/u/j;->h:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/j;->j:Landroid/graphics/Movie;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/aggmoread/sdk/z/a/u/j;->k:J

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/u/j;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/aggmoread/sdk/z/a/u/j;->k:J

    return-wide p1
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/u/j;Landroid/graphics/Movie;)Landroid/graphics/Movie;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/j;->j:Landroid/graphics/Movie;

    return-object p1
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/u/j;)Lcom/aggmoread/sdk/z/a/u/j$f;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/u/j;->l:Lcom/aggmoread/sdk/z/a/u/j$f;

    return-object p0
.end method

.method private a()V
    .locals 4

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/high16 v2, 0x3f000000    # 0.5f

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget v3, p0, Lcom/aggmoread/sdk/z/a/u/j;->b:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    iget v1, p0, Lcom/aggmoread/sdk/z/a/u/j;->c:I

    int-to-float v1, v1

    div-float/2addr v3, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/aggmoread/sdk/z/a/u/j;->e:F

    iput v0, p0, Lcom/aggmoread/sdk/z/a/u/j;->d:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/u/j;->j:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->height()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/aggmoread/sdk/z/a/u/j;->e:F

    mul-float v1, v1, v3

    sub-float/2addr v0, v1

    mul-float v0, v0, v2

    iput v0, p0, Lcom/aggmoread/sdk/z/a/u/j;->g:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/u/j;->j:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->width()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/aggmoread/sdk/z/a/u/j;->d:F

    mul-float v1, v1, v3

    sub-float/2addr v0, v1

    mul-float v0, v0, v2

    iput v0, p0, Lcom/aggmoread/sdk/z/a/u/j;->f:F

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/aggmoread/sdk/z/a/u/j;->b:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/aggmoread/sdk/z/a/u/j;->c:I

    mul-int v1, v1, v3

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/aggmoread/sdk/z/a/u/j;->c:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/u/j;->j:Landroid/graphics/Movie;

    invoke-virtual {v3}, Landroid/graphics/Movie;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    sub-float/2addr v1, v3

    mul-float v1, v1, v2

    iput v1, p0, Lcom/aggmoread/sdk/z/a/u/j;->f:F

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/aggmoread/sdk/z/a/u/j;->b:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/u/j;->j:Landroid/graphics/Movie;

    invoke-virtual {v3}, Landroid/graphics/Movie;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    sub-float/2addr v1, v3

    mul-float v1, v1, v2

    iput v1, p0, Lcom/aggmoread/sdk/z/a/u/j;->g:F

    :goto_0
    iput v0, p0, Lcom/aggmoread/sdk/z/a/u/j;->e:F

    iput v0, p0, Lcom/aggmoread/sdk/z/a/u/j;->d:F

    :cond_2
    :goto_1
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/j;->j:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/aggmoread/sdk/z/a/u/j;->f:F

    iget v1, p0, Lcom/aggmoread/sdk/z/a/u/j;->g:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/aggmoread/sdk/z/a/u/j;->d:F

    iget v1, p0, Lcom/aggmoread/sdk/z/a/u/j;->e:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/j;->e()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/j;->j:Landroid/graphics/Movie;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/a/u/j;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/aggmoread/sdk/z/a/u/j;->f:F

    return p0
.end method

.method private b()V
    .locals 2

    .line 2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/u/j;->i:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/u/j;->j:Landroid/graphics/Movie;

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/j;->a()V

    new-instance v0, Lcom/aggmoread/sdk/z/a/u/j$c;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/a/u/j$c;-><init>(Lcom/aggmoread/sdk/z/a/u/j;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic c(Lcom/aggmoread/sdk/z/a/u/j;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/aggmoread/sdk/z/a/u/j;->g:F

    return p0
.end method

.method private c()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/j;->i:[B

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/aggmoread/sdk/z/a/u/j;->r:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/aggmoread/sdk/z/a/u/j$d;

    invoke-direct {v2, p0}, Lcom/aggmoread/sdk/z/a/u/j$d;-><init>(Lcom/aggmoread/sdk/z/a/u/j;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private d()V
    .locals 2

    .line 1
    const-string v0, "GIFVIEWTAG"

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/a/u/j;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/u/j;->j:Landroid/graphics/Movie;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/aggmoread/sdk/z/a/u/j;->k:J

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/aggmoread/sdk/z/a/u/j;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/j;->b()V

    return-void
.end method

.method private e()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/j;->j:Landroid/graphics/Movie;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Movie;->duration()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/aggmoread/sdk/z/a/u/j;->h:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/j;->j:Landroid/graphics/Movie;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/aggmoread/sdk/z/a/u/j;->k:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gez v8, :cond_2

    iput-wide v2, p0, Lcom/aggmoread/sdk/z/a/u/j;->k:J

    :cond_2
    iget-wide v4, p0, Lcom/aggmoread/sdk/z/a/u/j;->k:J

    sub-long/2addr v2, v4

    rem-long/2addr v2, v0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/j;->j:Landroid/graphics/Movie;

    long-to-int v1, v2

    goto :goto_0

    :goto_1
    return-void
.end method

.method static synthetic e(Lcom/aggmoread/sdk/z/a/u/j;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/aggmoread/sdk/z/a/u/j;->a:Z

    return p0
.end method

.method static synthetic f(Lcom/aggmoread/sdk/z/a/u/j;)Landroid/graphics/Movie;
    .locals 0

    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/u/j;->j:Landroid/graphics/Movie;

    return-object p0
.end method

.method static synthetic g(Lcom/aggmoread/sdk/z/a/u/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/j;->e()V

    return-void
.end method

.method static synthetic h(Lcom/aggmoread/sdk/z/a/u/j;)J
    .locals 2

    iget-wide v0, p0, Lcom/aggmoread/sdk/z/a/u/j;->h:J

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 1

    .line 6
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/aggmoread/sdk/z/a/u/j$e;

    invoke-direct {v0, p0, p1}, Lcom/aggmoread/sdk/z/a/u/j$e;-><init>(Lcom/aggmoread/sdk/z/a/u/j;Ljava/io/File;)V

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->b(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 4

    .line 7
    const-string v0, "setGifData"

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/j;->i:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/u/j;->j:Landroid/graphics/Movie;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGifData length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/aggmoread/sdk/z/a/u/j;->a:Z

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/aggmoread/sdk/z/a/u/j;->b:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/aggmoread/sdk/z/a/u/j;->c:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gifWidth "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/aggmoread/sdk/z/a/u/j;->b:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", gifHeight "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/aggmoread/sdk/z/a/u/j;->c:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge p1, v2, :cond_1

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/j;->d()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/a/u/j;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/j;->j:Landroid/graphics/Movie;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/j;->c()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/a/u/j;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVisibilityChanged  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",visibility "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GIFVIEWTAG"

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x8

    if-eq p2, p1, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/j;->d()V

    :cond_1
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/u/j;->a:Z

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/u/j;->a:Z

    return-void
.end method

.method public setImageIcon(Landroid/graphics/drawable/Icon;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Icon;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/u/j;->a:Z

    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/u/j;->a:Z

    return-void
.end method

.method public setImageResource(I)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v1, "GIF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/a/u/i;->a(Landroid/content/Context;I)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/a/u/j;->a([B)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/u/j;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/u/j;->a:Z

    return-void
.end method

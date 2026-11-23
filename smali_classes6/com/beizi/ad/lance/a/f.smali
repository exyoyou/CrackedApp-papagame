.class public Lcom/beizi/ad/lance/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/beizi/ad/internal/c/e;

.field private c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private d:Ljava/lang/Runnable;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/beizi/ad/internal/c/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/beizi/ad/lance/a/f;->e:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/beizi/ad/lance/a/f;->a:Landroid/view/View;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/beizi/ad/lance/a/f;->b:Lcom/beizi/ad/internal/c/e;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/beizi/ad/lance/a/f;->b()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/lance/a/f;Ljava/util/concurrent/ScheduledThreadPoolExecutor;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/lance/a/f;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object p1
.end method

.method static synthetic a(Lcom/beizi/ad/lance/a/f;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/beizi/ad/lance/a/f;->e:Z

    return p0
.end method

.method static synthetic a(Lcom/beizi/ad/lance/a/f;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/beizi/ad/lance/a/f;->e:Z

    return p1
.end method

.method private b()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/beizi/ad/lance/a/f;->a:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/beizi/ad/lance/a/f$1;

    invoke-direct {v0, p0}, Lcom/beizi/ad/lance/a/f$1;-><init>(Lcom/beizi/ad/lance/a/f;)V

    iput-object v0, p0, Lcom/beizi/ad/lance/a/f;->d:Ljava/lang/Runnable;

    .line 4
    invoke-static {}, Lcom/beizi/ad/lance/a/c;->b()Lcom/beizi/ad/lance/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/ad/lance/a/c;->g()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    iput-object v1, p0, Lcom/beizi/ad/lance/a/f;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 5
    iget-object v2, p0, Lcom/beizi/ad/lance/a/f;->d:Ljava/lang/Runnable;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x64

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v1 .. v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic b(Lcom/beizi/ad/lance/a/f;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/lance/a/f;->c()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/beizi/ad/lance/a/f;)Lcom/beizi/ad/internal/c/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/lance/a/f;->b:Lcom/beizi/ad/internal/c/e;

    return-object p0
.end method

.method private c()Z
    .locals 4

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/ad/lance/a/f;->a:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/beizi/ad/lance/a/f;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/beizi/ad/lance/a/f;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int v2, v2, v1

    .line 6
    iget-object v1, p0, Lcom/beizi/ad/lance/a/f;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v3, p0, Lcom/beizi/ad/lance/a/f;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-int v1, v1, v3

    if-lez v1, :cond_2

    if-lez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0

    :catch_0
    move-exception v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method static synthetic d(Lcom/beizi/ad/lance/a/f;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/lance/a/f;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/beizi/ad/lance/a/f;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/lance/a/f;->d:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/lance/a/f;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/beizi/ad/lance/a/f;->d:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/beizi/ad/lance/a/f;->b:Lcom/beizi/ad/internal/c/e;

    .line 7
    iput-object v0, p0, Lcom/beizi/ad/lance/a/f;->a:Landroid/view/View;

    .line 8
    iput-object v0, p0, Lcom/beizi/ad/lance/a/f;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

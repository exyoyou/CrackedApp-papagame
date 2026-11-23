.class public final Lcom/byazt/oz/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yj/t;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd5,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/oz/ve$c;,
        Lcom/byazt/oz/ve$tt;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView$ScaleType;

.field public c:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field public d:Z

.field public da:Lcom/byazt/yj/da;

.field public eo:Lcom/byazt/yj/gt;

.field public gr:Lcom/byazt/oz/c;

.field public gt:Z

.field public gu:Lcom/byazt/oz/a;

.field public h:Ljava/util/concurrent/ExecutorService;

.field public i:I

.field public m:Lcom/byazt/yj/or;

.field public md:Z

.field public final my:Landroid/os/Handler;

.field public n:Lcom/byazt/yj/gr;

.field public nu:I

.field public p:I

.field public qy:I

.field public rh:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/byazt/pc/i;",
            ">;"
        }
    .end annotation
.end field

.field public rl:Lcom/byazt/yj/x;

.field public sl:I

.field public sp:Landroid/graphics/Bitmap$Config;

.field public t:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field public tt:Ljava/lang/String;

.field public volatile u:Z

.field public uj:Ljava/lang/String;

.field public ve:Ljava/lang/String;

.field public x:I

.field public yp:Z

.field public yv:I

.field public z:Z

.field public zb:Z

.field public zm:Lcom/byazt/yj/tt;


# direct methods
.method private constructor <init>(Lcom/byazt/oz/ve$tt;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/byazt/oz/ve;->rh:Ljava/util/Queue;

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/byazt/oz/ve;->my:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/byazt/oz/ve;->gt:Z

    .line 6
    invoke-static {p1}, Lcom/byazt/oz/ve$tt;->c(Lcom/byazt/oz/ve$tt;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/oz/ve;->tt:Ljava/lang/String;

    .line 7
    new-instance v0, Lcom/byazt/oz/ve$c;

    invoke-static {p1}, Lcom/byazt/oz/ve$tt;->tt(Lcom/byazt/oz/ve$tt;)Lcom/byazt/yj/gr;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/byazt/oz/ve$c;-><init>(Lcom/byazt/oz/ve;Lcom/byazt/yj/gr;)V

    iput-object v0, p0, Lcom/byazt/oz/ve;->n:Lcom/byazt/yj/gr;

    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/byazt/oz/ve$tt;->ve(Lcom/byazt/oz/ve$tt;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/byazt/oz/ve;->t:Ljava/lang/ref/WeakReference;

    .line 9
    invoke-static {p1}, Lcom/byazt/oz/ve$tt;->uj(Lcom/byazt/oz/ve$tt;)Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/oz/ve;->a:Landroid/widget/ImageView$ScaleType;

    .line 10
    invoke-static {p1}, Lcom/byazt/oz/ve$tt;->n(Lcom/byazt/oz/ve$tt;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/oz/ve;->sp:Landroid/graphics/Bitmap$Config;

    .line 11
    invoke-static {p1}, Lcom/byazt/oz/ve$tt;->a(Lcom/byazt/oz/ve$tt;)I

    move-result v0

    iput v0, p0, Lcom/byazt/oz/ve;->x:I

    .line 12
    invoke-static {p1}, Lcom/byazt/oz/ve$tt;->sp(Lcom/byazt/oz/ve$tt;)I

    move-result v0

    iput v0, p0, Lcom/byazt/oz/ve;->i:I

    .line 13
    invoke-static {p1}, Lcom/byazt/oz/ve$tt;->x(Lcom/byazt/oz/ve$tt;)I

    move-result v0

    iput v0, p0, Lcom/byazt/oz/ve;->sl:I

    .line 14
    invoke-static {p1}, Lcom/byazt/oz/ve$tt;->i(Lcom/byazt/oz/ve$tt;)I

    move-result v0

    iput v0, p0, Lcom/byazt/oz/ve;->nu:I

    .line 15
    invoke-static {p1}, Lcom/byazt/oz/ve$tt;->da(Lcom/byazt/oz/ve$tt;)Lcom/byazt/yj/or;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/oz/ve;->m:Lcom/byazt/yj/or;

    .line 16
    invoke-direct {p0, p1}, Lcom/byazt/oz/ve;->c(Lcom/byazt/oz/ve$tt;)Lcom/byazt/yj/tt;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/oz/ve;->zm:Lcom/byazt/yj/tt;

    .line 17
    invoke-static {p1}, Lcom/byazt/oz/ve$tt;->sl(Lcom/byazt/oz/ve$tt;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    invoke-static {p1}, Lcom/byazt/oz/ve$tt;->sl(Lcom/byazt/oz/ve$tt;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/byazt/oz/ve;->tt(Ljava/lang/String;)V

    .line 19
    invoke-static {p1}, Lcom/byazt/oz/ve$tt;->sl(Lcom/byazt/oz/ve$tt;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/byazt/oz/ve;->c(Ljava/lang/String;)V

    .line 20
    :cond_0
    invoke-static {p1}, Lcom/byazt/oz/ve$tt;->t(Lcom/byazt/oz/ve$tt;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/oz/ve;->yp:Z

    .line 21
    invoke-static {p1}, Lcom/byazt/oz/ve$tt;->u(Lcom/byazt/oz/ve$tt;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/oz/ve;->z:Z

    .line 22
    invoke-static {p1}, Lcom/byazt/oz/ve$tt;->yp(Lcom/byazt/oz/ve$tt;)Lcom/byazt/oz/a;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/oz/ve;->gu:Lcom/byazt/oz/a;

    .line 23
    invoke-static {p1}, Lcom/byazt/oz/ve$tt;->z(Lcom/byazt/oz/ve$tt;)Lcom/byazt/yj/da;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/oz/ve;->da:Lcom/byazt/yj/da;

    .line 24
    invoke-static {p1}, Lcom/byazt/oz/ve$tt;->m(Lcom/byazt/oz/ve$tt;)I

    move-result v0

    iput v0, p0, Lcom/byazt/oz/ve;->p:I

    .line 25
    invoke-static {p1}, Lcom/byazt/oz/ve$tt;->nu(Lcom/byazt/oz/ve$tt;)I

    move-result v0

    iput v0, p0, Lcom/byazt/oz/ve;->yv:I

    .line 26
    invoke-static {p1}, Lcom/byazt/oz/ve$tt;->rh(Lcom/byazt/oz/ve$tt;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/oz/ve;->h:Ljava/util/concurrent/ExecutorService;

    .line 27
    invoke-static {p1}, Lcom/byazt/oz/ve$tt;->my(Lcom/byazt/oz/ve$tt;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/oz/ve;->md:Z

    .line 28
    invoke-static {p1}, Lcom/byazt/oz/ve$tt;->gt(Lcom/byazt/oz/ve$tt;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/oz/ve;->d:Z

    .line 29
    invoke-static {p1}, Lcom/byazt/oz/ve$tt;->rl(Lcom/byazt/oz/ve$tt;)Lcom/byazt/yj/gt;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/oz/ve;->eo:Lcom/byazt/yj/gt;

    .line 30
    invoke-static {p1}, Lcom/byazt/oz/ve$tt;->qy(Lcom/byazt/oz/ve$tt;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/byazt/oz/ve;->zb:Z

    .line 31
    iget-object p1, p0, Lcom/byazt/oz/ve;->rh:Ljava/util/Queue;

    new-instance v0, Lcom/byazt/pc/ve;

    invoke-direct {v0}, Lcom/byazt/pc/ve;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/oz/ve$tt;Lcom/byazt/oz/ve$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/oz/ve;-><init>(Lcom/byazt/oz/ve$tt;)V

    return-void
.end method

.method public static synthetic a(Lcom/byazt/oz/ve;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/oz/ve;->sl:I

    return p0
.end method

.method private c(Lcom/byazt/oz/ve$tt;)Lcom/byazt/yj/tt;
    .locals 1

    .line 3
    invoke-static {p1}, Lcom/byazt/oz/ve$tt;->gu(Lcom/byazt/oz/ve$tt;)Lcom/byazt/yj/tt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1}, Lcom/byazt/oz/ve$tt;->gu(Lcom/byazt/oz/ve$tt;)Lcom/byazt/yj/tt;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/byazt/oz/ve$tt;->gr(Lcom/byazt/oz/ve$tt;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/byazt/oz/ve$tt;->gr(Lcom/byazt/oz/ve$tt;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/byazt/ep/c;->c(Ljava/io/File;)Lcom/byazt/yj/tt;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-static {}, Lcom/byazt/ep/c;->c()Lcom/byazt/yj/tt;

    move-result-object p1

    return-object p1
.end method

.method private c(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 16
    new-instance v0, Lcom/byazt/pc/x;

    invoke-direct {v0, p1, p2, p3}, Lcom/byazt/pc/x;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lcom/byazt/pc/x;->c(Lcom/byazt/oz/ve;)V

    .line 17
    iget-object p1, p0, Lcom/byazt/oz/ve;->rh:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/oz/ve;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/oz/ve;->c(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/oz/ve;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/byazt/oz/ve;->u:Z

    return p0
.end method

.method public static synthetic da(Lcom/byazt/oz/ve;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/oz/ve;->ve:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic i(Lcom/byazt/oz/ve;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/oz/ve;->nu:I

    return p0
.end method

.method public static synthetic n(Lcom/byazt/oz/ve;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/oz/ve;->t:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private rh()Lcom/byazt/yj/t;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/oz/ve;->gu:Lcom/byazt/oz/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/oz/ve;->n:Lcom/byazt/yj/gr;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v2, "not init !"

    .line 11
    .line 12
    const/16 v3, 0x3ed

    .line 13
    .line 14
    invoke-interface {v0, v3, v2, v1}, Lcom/byazt/yj/gr;->onFailed(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-object p0

    .line 18
    :cond_1
    iget-object v2, p0, Lcom/byazt/oz/ve;->h:Ljava/util/concurrent/ExecutorService;

    .line 19
    .line 20
    if-nez v2, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/byazt/oz/a;->a()Ljava/util/concurrent/ExecutorService;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_2
    new-instance v0, Lcom/byazt/oz/ve$1;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/byazt/oz/ve$1;-><init>(Lcom/byazt/oz/ve;)V

    .line 29
    .line 30
    .line 31
    iget-boolean v2, p0, Lcom/byazt/oz/ve;->d:Z

    .line 32
    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    iget-object v2, p0, Lcom/byazt/oz/ve;->h:Ljava/util/concurrent/ExecutorService;

    .line 40
    .line 41
    if-eqz v2, :cond_4

    .line 42
    .line 43
    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/byazt/oz/ve;->c:Ljava/util/concurrent/Future;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    if-eqz v1, :cond_5

    .line 51
    .line 52
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/byazt/oz/ve;->c:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string v1, "ImageRequest"

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_5
    :goto_0
    return-object p0
.end method

.method public static synthetic sp(Lcom/byazt/oz/ve;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/oz/ve;->my:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/oz/ve;)Ljava/util/Queue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/oz/ve;->rh:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/oz/ve;)Lcom/byazt/yj/t;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/oz/ve;->rh()Lcom/byazt/yj/t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/oz/ve;)Lcom/byazt/yj/or;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/oz/ve;->m:Lcom/byazt/yj/or;

    return-object p0
.end method

.method public static synthetic x(Lcom/byazt/oz/ve;)Lcom/byazt/yj/da;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/oz/ve;->da:Lcom/byazt/yj/da;

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/byazt/oz/ve;->yp:Z

    return v0
.end method

.method public c()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/byazt/oz/ve;->yv:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/byazt/oz/ve;->qy:I

    return-void
.end method

.method public c(Lcom/byazt/oz/c;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/byazt/oz/ve;->gr:Lcom/byazt/oz/c;

    return-void
.end method

.method public c(Lcom/byazt/yj/x;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/byazt/oz/ve;->rl:Lcom/byazt/yj/x;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/byazt/oz/ve;->uj:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/byazt/oz/ve;->gt:Z

    return-void
.end method

.method public c(Lcom/byazt/pc/i;)Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/byazt/oz/ve;->u:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/byazt/oz/ve;->rh:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public cancelRequest()Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/oz/ve;->u:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/byazt/oz/ve;->c:Ljava/util/concurrent/Future;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :cond_0
    return v0
.end method

.method public da()Lcom/byazt/yj/x;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/oz/ve;->rl:Lcom/byazt/yj/x;

    return-object v0
.end method

.method public getBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/ve;->sp:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/oz/ve;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public getMemoryCacheKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/ve;->ve:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRawCacheKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/ve;->uj:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/ve;->a:Landroid/widget/ImageView$ScaleType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/ve;->tt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/oz/ve;->x:I

    .line 2
    .line 3
    return v0
.end method

.method public i()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/byazt/oz/ve;->zb:Z

    return v0
.end method

.method public m()Lcom/byazt/yj/gt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/ve;->eo:Lcom/byazt/yj/gt;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/byazt/oz/ve;->sl:I

    return v0
.end method

.method public nu()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/oz/ve;->getRawCacheKey()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public sl()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/oz/ve;->qy:I

    .line 2
    .line 3
    return v0
.end method

.method public sp()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/byazt/oz/ve;->z:Z

    return v0
.end method

.method public t()Lcom/byazt/oz/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/ve;->gr:Lcom/byazt/oz/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/byazt/oz/ve;->p:I

    return v0
.end method

.method public tt(Ljava/lang/String;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/oz/ve;->t:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/oz/ve;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x413c0901

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/byazt/oz/ve;->ve:Ljava/lang/String;

    return-void
.end method

.method public u()Lcom/byazt/oz/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/ve;->gu:Lcom/byazt/oz/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/oz/ve;->sp:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public ve()Lcom/byazt/yj/gr;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/oz/ve;->n:Lcom/byazt/yj/gr;

    return-object v0
.end method

.method public x()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/byazt/oz/ve;->gt:Z

    return v0
.end method

.method public yp()Lcom/byazt/yj/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/ve;->zm:Lcom/byazt/yj/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/oz/ve;->md:Z

    .line 2
    .line 3
    return v0
.end method

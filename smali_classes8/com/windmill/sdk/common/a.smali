.class public Lcom/windmill/sdk/common/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/common/a$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field private static final d:J = 0x3e8L


# instance fields
.field private final e:I

.field private final f:Ljava/lang/String;

.field private g:Lcom/windmill/sdk/common/a$a;

.field private h:Lcom/windmill/sdk/utils/a$a;

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Runnable;

.field private k:Z

.field private l:J

.field private m:Ljava/lang/Runnable;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private final s:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final t:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adnId",
            "loadId"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/windmill/sdk/common/a;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/windmill/sdk/common/a;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    iput p1, p0, Lcom/windmill/sdk/common/a;->e:I

    .line 20
    .line 21
    iput-object p2, p0, Lcom/windmill/sdk/common/a;->f:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method static synthetic a(Lcom/windmill/sdk/common/a;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/common/a;->i:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic a(Lcom/windmill/sdk/common/a;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/windmill/sdk/common/a;->i:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method private a(Landroid/app/Activity;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/windmill/sdk/common/a;->i:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 17
    iget-object v0, p0, Lcom/windmill/sdk/common/a;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/windmill/sdk/common/a;Landroid/app/Activity;)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/windmill/sdk/common/a;->a(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/windmill/sdk/common/a;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/windmill/sdk/common/a;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/windmill/sdk/common/a;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/common/a;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic c(Lcom/windmill/sdk/common/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/windmill/sdk/common/a;->p:Z

    return p0
.end method

.method static synthetic d(Lcom/windmill/sdk/common/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/windmill/sdk/common/a;->k:Z

    return p0
.end method

.method static synthetic e(Lcom/windmill/sdk/common/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/windmill/sdk/common/a;->q:Z

    return p0
.end method

.method private f()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/common/a;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/common/a;->i:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/windmill/sdk/common/a;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/windmill/sdk/common/a;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 6
    iput-boolean v0, p0, Lcom/windmill/sdk/common/a;->o:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/windmill/sdk/common/a;->g:Lcom/windmill/sdk/common/a$a;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/windmill/sdk/common/a;->o:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 8
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    iget-object v1, p0, Lcom/windmill/sdk/common/a;->g:Lcom/windmill/sdk/common/a$a;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/windmill/sdk/common/a;->o:Z

    if-eqz v2, :cond_2

    .line 10
    :goto_0
    invoke-interface {v1}, Lcom/windmill/sdk/common/a$a;->onFinish()V

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/windmill/sdk/common/a;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    .line 12
    :goto_1
    iget-object v1, p0, Lcom/windmill/sdk/common/a;->g:Lcom/windmill/sdk/common/a$a;

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lcom/windmill/sdk/common/a;->o:Z

    if-eqz v2, :cond_3

    .line 13
    invoke-interface {v1}, Lcom/windmill/sdk/common/a$a;->onFinish()V

    .line 14
    :cond_3
    throw v0

    .line 15
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/windmill/sdk/common/a;->g()V

    return-void
.end method

.method static synthetic f(Lcom/windmill/sdk/common/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/common/a;->f()V

    return-void
.end method

.method private g()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/common/a;->h:Lcom/windmill/sdk/utils/a$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/windmill/sdk/utils/a;->a()Lcom/windmill/sdk/utils/a;

    move-result-object v0

    iget-object v2, p0, Lcom/windmill/sdk/common/a;->h:Lcom/windmill/sdk/utils/a$a;

    invoke-virtual {v0, v2}, Lcom/windmill/sdk/utils/a;->b(Lcom/windmill/sdk/utils/a$a;)V

    .line 4
    iput-object v1, p0, Lcom/windmill/sdk/common/a;->h:Lcom/windmill/sdk/utils/a$a;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/common/a;->i:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 7
    iput-object v1, p0, Lcom/windmill/sdk/common/a;->i:Ljava/lang/ref/WeakReference;

    .line 8
    :cond_1
    iput-object v1, p0, Lcom/windmill/sdk/common/a;->g:Lcom/windmill/sdk/common/a$a;

    .line 9
    iget-object v0, p0, Lcom/windmill/sdk/common/a;->j:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 10
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAd;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/windmill/sdk/common/a;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    iput-object v1, p0, Lcom/windmill/sdk/common/a;->j:Ljava/lang/Runnable;

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/common/a;->m:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 13
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAd;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/windmill/sdk/common/a;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    iput-object v1, p0, Lcom/windmill/sdk/common/a;->m:Ljava/lang/Runnable;

    :cond_3
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/windmill/sdk/common/a;->k:Z

    const-wide/16 v1, 0x0

    .line 16
    iput-wide v1, p0, Lcom/windmill/sdk/common/a;->l:J

    .line 17
    iput-boolean v0, p0, Lcom/windmill/sdk/common/a;->n:Z

    .line 18
    iput-boolean v0, p0, Lcom/windmill/sdk/common/a;->p:Z

    .line 19
    iput-boolean v0, p0, Lcom/windmill/sdk/common/a;->q:Z

    .line 20
    iput-boolean v0, p0, Lcom/windmill/sdk/common/a;->r:Z

    .line 21
    iget-object v1, p0, Lcom/windmill/sdk/common/a;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public static synthetic g(Lcom/windmill/sdk/common/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/common/a;->i()V

    return-void
.end method

.method private synthetic h()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/common/a;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/windmill/sdk/common/a;->f()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/windmill/sdk/common/a;->r:Z

    :goto_0
    return-void
.end method

.method public static synthetic h(Lcom/windmill/sdk/common/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/common/a;->h()V

    return-void
.end method

.method private synthetic i()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/windmill/sdk/common/a;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/windmill/sdk/common/a;->q:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/common/a;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/windmill/sdk/common/a;->f()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 12
    iget-boolean v0, p0, Lcom/windmill/sdk/common/a;->k:Z

    if-eqz v0, :cond_0

    .line 13
    new-instance v0, Lcom/windmill/sdk/common/w;

    invoke-direct {v0, p0}, Lcom/windmill/sdk/common/w;-><init>(Lcom/windmill/sdk/common/a;)V

    iput-object v0, p0, Lcom/windmill/sdk/common/a;->j:Ljava/lang/Runnable;

    .line 14
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAd;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/sdk/common/a;->j:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/windmill/sdk/common/a;->l:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public a(JZLcom/windmill/sdk/common/a$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "closeInterval",
            "autoCloseAfterClick",
            "listener"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iput-boolean v0, p0, Lcom/windmill/sdk/common/a;->k:Z

    .line 6
    iput-wide p1, p0, Lcom/windmill/sdk/common/a;->l:J

    .line 7
    iput-boolean p3, p0, Lcom/windmill/sdk/common/a;->n:Z

    .line 8
    iput-object p4, p0, Lcom/windmill/sdk/common/a;->g:Lcom/windmill/sdk/common/a$a;

    .line 9
    new-instance p1, Lcom/windmill/sdk/common/a$1;

    invoke-direct {p1, p0, p3}, Lcom/windmill/sdk/common/a$1;-><init>(Lcom/windmill/sdk/common/a;Z)V

    iput-object p1, p0, Lcom/windmill/sdk/common/a;->h:Lcom/windmill/sdk/utils/a$a;

    .line 10
    invoke-static {}, Lcom/windmill/sdk/utils/a;->a()Lcom/windmill/sdk/utils/a;

    move-result-object p1

    iget-object p2, p0, Lcom/windmill/sdk/common/a;->h:Lcom/windmill/sdk/utils/a$a;

    invoke-virtual {p1, p2}, Lcom/windmill/sdk/utils/a;->a(Lcom/windmill/sdk/utils/a$a;)V

    .line 11
    invoke-virtual {p0}, Lcom/windmill/sdk/common/a;->a()V

    return-void
.end method

.method public a(ILjava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adnId",
            "loadId"
        }
    .end annotation

    .line 15
    iget v0, p0, Lcom/windmill/sdk/common/a;->e:I

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/windmill/sdk/common/a;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/windmill/sdk/common/a;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/common/a;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 3
    iget-boolean v0, p0, Lcom/windmill/sdk/common/a;->n:Z

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/windmill/sdk/common/v;

    invoke-direct {v0, p0}, Lcom/windmill/sdk/common/v;-><init>(Lcom/windmill/sdk/common/a;)V

    iput-object v0, p0, Lcom/windmill/sdk/common/a;->m:Ljava/lang/Runnable;

    .line 5
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAd;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/sdk/common/a;->m:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/common/a;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/windmill/sdk/common/a;->g()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/common/a;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 3
    iget-boolean v0, p0, Lcom/windmill/sdk/common/a;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/sdk/common/a;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/windmill/sdk/common/a;->r:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/windmill/sdk/common/a;->f()V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/windmill/sdk/common/a;->o:Z

    return v0
.end method

.class public Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;
.super Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;
.source "SourceFile"


# instance fields
.field private C:Lcom/baidu/mobads/sdk/api/SplashAd;

.field private D:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private E:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private a(Landroid/view/ViewGroup;Lcom/baidu/mobads/sdk/api/SplashAd;)V
    .locals 0

    .line 3
    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/baidu/mobads/sdk/api/SplashAd;->show(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;I)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;II)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;Ljava/util/List;)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->f(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->s()V

    return-void
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method static synthetic c(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->s()V

    return-void
.end method

.method static synthetic d(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->r()V

    return-void
.end method

.method static synthetic e(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->t()V

    return-void
.end method

.method static synthetic f(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->q()V

    return-void
.end method

.method static synthetic g(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;)Lcom/baidu/mobads/sdk/api/SplashAd;
    .locals 0

    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;->C:Lcom/baidu/mobads/sdk/api/SplashAd;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 7

    .line 2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/k;->v:Z

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->e0:Ljava/lang/Object;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->l:Lcom/aggmoread/sdk/z/c/a/a/e/v/g;

    invoke-static {v1, v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/e/v/g;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    invoke-direct {v2}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;-><init>()V

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget v3, v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->n:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "timeout"

    invoke-virtual {v2, v4, v3}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    const-string v3, "displayDownloadInfo"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    const-string v3, "use_dialog_frame"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v2, v3, v4}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a(Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    invoke-virtual {v2}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->build()Lcom/baidu/mobads/sdk/api/RequestParameters;

    move-result-object v2

    new-instance v3, Lcom/baidu/mobads/sdk/api/SplashAd;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v4, v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v5, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->a0:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;->a()Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;

    move-result-object v5

    new-instance v6, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a$a;

    invoke-direct {v6, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;)V

    invoke-virtual {v5, v6}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$k;)Lcom/baidu/mobads/sdk/api/SplashInteractionListener;

    move-result-object v5

    invoke-direct {v3, v1, v4, v2, v5}, Lcom/baidu/mobads/sdk/api/SplashAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobads/sdk/api/RequestParameters;Lcom/baidu/mobads/sdk/api/SplashAdListener;)V

    iput-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;->C:Lcom/baidu/mobads/sdk/api/SplashAd;

    invoke-virtual {v3, v0}, Lcom/baidu/mobads/sdk/api/SplashAd;->setAppSid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {p0, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(I)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b()V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;->C:Lcom/baidu/mobads/sdk/api/SplashAd;

    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/api/SplashAd;->load()V

    return-void
.end method

.method public b(IILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;->C:Lcom/baidu/mobads/sdk/api/SplashAd;

    const-string p2, "203"

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/view/ViewGroup;)V
    .locals 3

    .line 2
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;->C:Lcom/baidu/mobads/sdk/api/SplashAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;->C:Lcom/baidu/mobads/sdk/api/SplashAd;

    invoke-direct {p0, p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;->a(Landroid/view/ViewGroup;Lcom/baidu/mobads/sdk/api/SplashAd;)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "win "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;->C:Lcom/baidu/mobads/sdk/api/SplashAd;

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method protected j()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a()Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/i/a;->C:Lcom/baidu/mobads/sdk/api/SplashAd;

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a(Lcom/baidu/mobads/sdk/api/SplashAd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

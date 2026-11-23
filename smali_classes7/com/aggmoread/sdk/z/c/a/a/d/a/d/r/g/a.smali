.class public Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;
.super Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h;
.source "SourceFile"


# instance fields
.field private t:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

.field private u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private v:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$j;


# direct methods
.method public constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a$a;

    invoke-direct {p1, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;)V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->v:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$j;

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;)Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->t:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    return-object p0
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;I)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;II)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;Z)Z
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;)[Ljava/lang/Object;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h;->r:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method static synthetic c(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;)[Ljava/lang/Object;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h;->r:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method static synthetic d(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;)[Ljava/lang/Object;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h;->r:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic e(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h;->r:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic f(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h;->r()V

    return-void
.end method

.method static synthetic g(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h;->q:Z

    return p0
.end method

.method static synthetic h(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h;->u()V

    return-void
.end method

.method static synthetic i(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h;->w()V

    return-void
.end method

.method static synthetic j(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h;->s()V

    return-void
.end method

.method static synthetic k(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h;->u()V

    return-void
.end method

.method static synthetic l(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h;->w()V

    return-void
.end method

.method static synthetic m(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h;->v()V

    return-void
.end method

.method static synthetic n(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h;->t()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 4

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show #2 activity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AMITAGBD"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->t:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "show #2 "

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-super {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h;->b()V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a$b;

    invoke-direct {v2, p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a$b;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show #3 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->t:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->show(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/c/a/a/d/a/c;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/a/c;

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    const-string v0, "AMITAGBD"

    const-string v1, "show()"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->d:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h;->b()V

    :goto_0
    return-void
.end method

.method public b(IILjava/lang/String;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->t:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    const-string p2, "203"

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

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

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->t:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->t:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->t:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    :cond_0
    return-void
.end method

.method protected j()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a()Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->t:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a(Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()V
    .locals 5

    .line 1
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

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v3, v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->a0:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->t:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;->a()Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;

    move-result-object v1

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->v:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$j;

    invoke-virtual {v1, v3}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$j;)Lcom/baidu/mobads/sdk/api/ExpressInterstitialListener;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->setLoadListener(Lcom/baidu/mobads/sdk/api/ExpressInterstitialListener;)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->t:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    invoke-virtual {v1, v0}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->setAppSid(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/h;->q:Z

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {p0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(I)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b()V

    :try_start_0
    new-instance v0, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    invoke-direct {v0}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;-><init>()V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a(Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->build()Lcom/baidu/mobads/sdk/api/RequestParameters;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->t:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a(Ljava/lang/Object;Lcom/baidu/mobads/sdk/api/RequestParameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/g/a;->t:Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;

    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/ExpressInterstitialAd;->load()V

    const-string v0, "AMITAGBD"

    const-string v1, "load enter"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

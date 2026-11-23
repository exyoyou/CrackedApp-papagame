.class public Lcom/aggmoread/sdk/z/a/r/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/a/a;


# instance fields
.field private a:Lcom/aggmoread/sdk/z/a/g/c;

.field private b:Lcom/aggmoread/sdk/z/a/s/d;

.field private c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

.field private d:Lcom/aggmoread/sdk/z/a/g/c$a;

.field private e:Lcom/aggmoread/sdk/z/a/s/a;

.field private f:Landroid/app/Activity;

.field private g:Landroid/content/Context;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Lcom/aggmoread/sdk/z/a/r/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/a/r/a;->h:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/aggmoread/sdk/z/a/r/a;->j:I

    return-void
.end method

.method private a()Lcom/aggmoread/sdk/z/a/g/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a;->e:Lcom/aggmoread/sdk/z/a/s/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/s/a;->a()Lcom/aggmoread/sdk/z/a/g/d;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/aggmoread/sdk/z/a/g/d;

    invoke-direct {v0}, Lcom/aggmoread/sdk/z/a/g/d;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/r/a;Lcom/aggmoread/sdk/z/a/s/a;)Lcom/aggmoread/sdk/z/a/s/a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/r/a;->e:Lcom/aggmoread/sdk/z/a/s/a;

    return-object p1
.end method

.method private a(Landroid/app/Activity;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/a;->e()V

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/m/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/a;->b:Lcom/aggmoread/sdk/z/a/s/d;

    sget-object v0, Lcom/aggmoread/sdk/z/a/g/f;->c:Lcom/aggmoread/sdk/z/a/g/f;

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/a/s/b;->a(Lcom/aggmoread/sdk/z/a/i/h;Lcom/aggmoread/sdk/z/a/g/f;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a;->a:Lcom/aggmoread/sdk/z/a/g/c;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/r/a;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/a;->a()Lcom/aggmoread/sdk/z/a/g/d;

    move-result-object v2

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/r/a;->b:Lcom/aggmoread/sdk/z/a/s/d;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/aggmoread/sdk/z/a/m/l;->a(Landroid/view/View;Lcom/aggmoread/sdk/z/a/g/c;Lcom/aggmoread/sdk/z/a/g/c$a$b;Lcom/aggmoread/sdk/z/a/g/d;Lcom/aggmoread/sdk/z/a/i/h;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/r/a;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/a;->h()V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/r/a;Landroid/app/Activity;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/a/r/a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/r/a;Ljava/util/Map;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/a/r/a;->a(Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a;->d:Lcom/aggmoread/sdk/z/a/g/c$a;

    const v1, 0x18a99

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/g/c$a;->a(I)Ljava/util/List;

    move-result-object v0

    const-string v1, "onAdReward"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a;->b:Lcom/aggmoread/sdk/z/a/s/d;

    invoke-interface {v0, p1}, Lcom/aggmoread/sdk/z/a/s/d;->onReward(Ljava/util/Map;)V

    return-void
.end method

.method private b(Landroid/app/Activity;)V
    .locals 3

    .line 1
    const-string v0, "AgRewardHandler_dsp"

    const-string v1, "showAD enter "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0xc353

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/a;->b:Lcom/aggmoread/sdk/z/a/s/d;

    new-instance v1, Lcom/aggmoread/sdk/z/a/g/f;

    const-string v2, "\u5e7f\u544a\u5c55\u793a\u5931\u8d25,Activity\u7f3a\u5931!"

    invoke-direct {v1, v0, v2}, Lcom/aggmoread/sdk/z/a/g/f;-><init>(ILjava/lang/String;)V

    invoke-static {p1, v1}, Lcom/aggmoread/sdk/z/a/s/b;->a(Lcom/aggmoread/sdk/z/a/i/h;Lcom/aggmoread/sdk/z/a/g/f;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/r/a;->k:Lcom/aggmoread/sdk/z/a/r/b;

    invoke-static {v1}, Lcom/aggmoread/sdk/z/a/u/b;->a(Lcom/aggmoread/sdk/z/a/u/k;)V

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/aggmoread/sdk/z/a/u/b;->a(Landroid/app/Activity;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/a;->b:Lcom/aggmoread/sdk/z/a/s/d;

    new-instance v1, Lcom/aggmoread/sdk/z/a/g/f;

    const-string v2, "\u5e7f\u544a\u5c55\u793a\u5931\u8d25!"

    invoke-direct {v1, v0, v2}, Lcom/aggmoread/sdk/z/a/g/f;-><init>(ILjava/lang/String;)V

    invoke-static {p1, v1}, Lcom/aggmoread/sdk/z/a/s/b;->a(Lcom/aggmoread/sdk/z/a/i/h;Lcom/aggmoread/sdk/z/a/g/f;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/a/r/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/a;->g()V

    return-void
.end method

.method static synthetic c(Lcom/aggmoread/sdk/z/a/r/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/a;->i()V

    return-void
.end method

.method static synthetic d(Lcom/aggmoread/sdk/z/a/r/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/a;->f()V

    return-void
.end method

.method private e()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdClick = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/a;->a()Lcom/aggmoread/sdk/z/a/g/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgRewardHandler_dsp"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->r()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/r/a;->e:Lcom/aggmoread/sdk/z/a/s/a;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/s/a;->a()Lcom/aggmoread/sdk/z/a/g/d;

    move-result-object v1

    const-string v2, "onAdClick"

    invoke-static {v2, v0, v1}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/util/List;Lcom/aggmoread/sdk/z/a/g/d;)Ljava/util/List;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a;->d:Lcom/aggmoread/sdk/z/a/g/c$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/g/c$a;->a(I)Ljava/util/List;

    move-result-object v0

    const-string v1, "onAdClickV"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a;->b:Lcom/aggmoread/sdk/z/a/s/d;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/s/d;->onAdClicked()V

    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a;->d:Lcom/aggmoread/sdk/z/a/g/c$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/g/c$a;->a(I)Ljava/util/List;

    move-result-object v0

    const-string v1, "onAdDismissed"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a;->b:Lcom/aggmoread/sdk/z/a/s/d;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/s/d;->a()V

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->s()Ljava/util/List;

    move-result-object v0

    const-string v1, "onAdExposure"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a;->d:Lcom/aggmoread/sdk/z/a/g/c$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/g/c$a;->a(I)Ljava/util/List;

    move-result-object v0

    const-string v1, "onAdExposureV"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a;->b:Lcom/aggmoread/sdk/z/a/s/d;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/s/d;->d()V

    return-void
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a;->d:Lcom/aggmoread/sdk/z/a/g/c$a;

    const v1, 0x18a88

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/g/c$a;->a(I)Ljava/util/List;

    move-result-object v0

    const-string v1, "onAdShowBegin"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a;->d:Lcom/aggmoread/sdk/z/a/g/c$a;

    const v1, 0x18a8d

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/g/c$a;->a(I)Ljava/util/List;

    move-result-object v0

    const-string v1, "onAdShowMute"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a;->d:Lcom/aggmoread/sdk/z/a/g/c$a;

    const v2, 0x18a8e

    invoke-virtual {v0, v2}, Lcom/aggmoread/sdk/z/a/g/c$a;->a(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a;->d:Lcom/aggmoread/sdk/z/a/g/c$a;

    const v1, 0x18a89

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/g/c$a;->a(I)Ljava/util/List;

    move-result-object v0

    const-string v1, "onAdShowFull"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a;->b:Lcom/aggmoread/sdk/z/a/s/d;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/s/d;->onAdShow()V

    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a;->d:Lcom/aggmoread/sdk/z/a/g/c$a;

    const v1, 0x18a8a

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/g/c$a;->a(I)Ljava/util/List;

    move-result-object v0

    const-string v1, "onAdVideoComplete"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a;->d:Lcom/aggmoread/sdk/z/a/g/c$a;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/g/c$a;->a(I)Ljava/util/List;

    move-result-object v0

    const-string v1, "onAdVideoComplete7"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a;->b:Lcom/aggmoread/sdk/z/a/s/d;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/s/d;->onVideoCompleted()V

    return-void
.end method


# virtual methods
.method public a(Lcom/aggmoread/sdk/z/a/g/c;Lcom/aggmoread/sdk/z/a/s/d;)V
    .locals 9

    .line 4
    const-string v0, "handle   enter"

    const-string v1, "AgRewardHandler_dsp"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/r/a;->a:Lcom/aggmoread/sdk/z/a/g/c;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/r/a;->b:Lcom/aggmoread/sdk/z/a/s/d;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/c;->e()Lcom/aggmoread/sdk/z/a/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/i/e;->f()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a;->f:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/c;->e()Lcom/aggmoread/sdk/z/a/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/i/e;->l()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/r/a;->f:Landroid/app/Activity;

    if-nez v2, :cond_0

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a;->f:Landroid/app/Activity;

    :cond_0
    iget-object v0, p1, Lcom/aggmoread/sdk/z/a/g/c;->e:Ljava/util/List;

    const v2, 0xc350

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/aggmoread/sdk/z/a/g/c;->e:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aggmoread/sdk/z/a/g/c$a;

    if-eqz v0, :cond_8

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a;->d:Lcom/aggmoread/sdk/z/a/g/c$a;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c$a;->b()Lcom/aggmoread/sdk/z/a/g/c$a$b;

    move-result-object v3

    if-eqz v3, :cond_8

    iput-object v3, p0, Lcom/aggmoread/sdk/z/a/r/a;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    iget v4, v3, Lcom/aggmoread/sdk/z/a/g/c$a$b;->t:I

    iput v4, p0, Lcom/aggmoread/sdk/z/a/r/a;->j:I

    invoke-virtual {v3}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->i()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/aggmoread/sdk/z/a/r/a;->i:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clickUrl = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/aggmoread/sdk/z/a/r/a;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c$a;->a()Lcom/aggmoread/sdk/z/a/g/c$a$a;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contentInfoBean = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget-object v6, v4, Lcom/aggmoread/sdk/z/a/g/c$a$a;->b:Lcom/aggmoread/sdk/z/a/g/c$a$a$a;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "videoObj = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v6, v5

    :goto_0
    new-instance v1, Lcom/aggmoread/sdk/z/a/t/d;

    invoke-direct {v1}, Lcom/aggmoread/sdk/z/a/t/d;-><init>()V

    if-eqz v6, :cond_3

    iget-object p1, v6, Lcom/aggmoread/sdk/z/a/g/c$a$a$a;->a:Ljava/lang/String;

    iput-object p1, v1, Lcom/aggmoread/sdk/z/a/t/d;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/a;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    iget-object p2, p1, Lcom/aggmoread/sdk/z/a/g/c$a$b;->w:Landroid/graphics/Bitmap;

    iput-object p2, v1, Lcom/aggmoread/sdk/z/a/t/d;->n:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->l()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/aggmoread/sdk/z/a/t/d;->e:Ljava/lang/String;

    iget-object p1, v4, Lcom/aggmoread/sdk/z/a/g/c$a$a;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/a;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p1, v4, Lcom/aggmoread/sdk/z/a/g/c$a$a;->a:Ljava/lang/String;

    :goto_1
    iput-object p1, v1, Lcom/aggmoread/sdk/z/a/t/d;->c:Ljava/lang/String;

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/a;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/aggmoread/sdk/z/a/t/d;->d:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/aggmoread/sdk/z/a/g/c$a$a$a;->a()Ljava/lang/String;

    throw v5

    :cond_3
    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/r/a;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    iget-object v5, v4, Lcom/aggmoread/sdk/z/a/g/c$a$b;->w:Landroid/graphics/Bitmap;

    iput-object v5, v1, Lcom/aggmoread/sdk/z/a/t/d;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->k()Ljava/lang/String;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/r/a;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-virtual {v4}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->q()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/aggmoread/sdk/z/a/t/d;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/r/a;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-virtual {v4}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->l()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/aggmoread/sdk/z/a/t/d;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/r/a;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-virtual {v4}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/aggmoread/sdk/z/a/t/d;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/r/a;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-virtual {v4}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->f()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/aggmoread/sdk/z/a/t/d;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/r/a;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-virtual {v4}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->k()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/aggmoread/sdk/z/a/t/d;->j:Ljava/lang/String;

    const/16 v4, 0x1e

    iput v4, v1, Lcom/aggmoread/sdk/z/a/t/d;->g:I

    iget-object v4, v1, Lcom/aggmoread/sdk/z/a/t/d;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v2, Lcom/aggmoread/sdk/z/a/r/b;

    invoke-direct {v2}, Lcom/aggmoread/sdk/z/a/r/b;-><init>()V

    iput-object v2, p0, Lcom/aggmoread/sdk/z/a/r/a;->k:Lcom/aggmoread/sdk/z/a/r/b;

    invoke-virtual {v2, v1}, Lcom/aggmoread/sdk/z/a/r/b;->a(Lcom/aggmoread/sdk/z/a/t/d;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/aggmoread/sdk/z/a/r/a;->h:Z

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/r/a;->b:Lcom/aggmoread/sdk/z/a/s/d;

    if-eqz v2, :cond_4

    invoke-interface {v2, p0}, Lcom/aggmoread/sdk/z/a/s/d;->a(Lcom/aggmoread/sdk/z/a/a;)V

    :cond_4
    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/r/a;->k:Lcom/aggmoread/sdk/z/a/r/b;

    new-instance v4, Lcom/aggmoread/sdk/z/a/r/a$a;

    invoke-direct {v4, p0, v0, p2, v3}, Lcom/aggmoread/sdk/z/a/r/a$a;-><init>(Lcom/aggmoread/sdk/z/a/r/a;Lcom/aggmoread/sdk/z/a/g/c$a;Lcom/aggmoread/sdk/z/a/s/d;Lcom/aggmoread/sdk/z/a/g/c$a$b;)V

    invoke-virtual {v2, v4}, Lcom/aggmoread/sdk/z/a/r/b;->a(Lcom/aggmoread/sdk/z/a/t/c$b;)V

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/c;->e()Lcom/aggmoread/sdk/z/a/h/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/i/e;->r()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/a;->f:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/a/r/a;->b(Landroid/app/Activity;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/a;->k:Lcom/aggmoread/sdk/z/a/r/b;

    iget-object p2, p0, Lcom/aggmoread/sdk/z/a/r/a;->f:Landroid/app/Activity;

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/aggmoread/sdk/z/a/r/a;->g:Landroid/content/Context;

    :cond_6
    iget-object v0, v1, Lcom/aggmoread/sdk/z/a/t/d;->b:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/aggmoread/sdk/z/a/r/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_7
    new-instance p1, Lcom/aggmoread/sdk/z/a/g/f;

    const-string v0, "\u6682\u65e0\u89c6\u9891\u5e7f\u544a\u7d20\u6750\uff0c\u5e7f\u544a\u52a0\u8f7d\u5931\u8d25!"

    invoke-direct {p1, v2, v0}, Lcom/aggmoread/sdk/z/a/g/f;-><init>(ILjava/lang/String;)V

    :goto_3
    invoke-static {p2, p1}, Lcom/aggmoread/sdk/z/a/s/b;->a(Lcom/aggmoread/sdk/z/a/i/h;Lcom/aggmoread/sdk/z/a/g/f;)V

    return-void

    :cond_8
    new-instance p1, Lcom/aggmoread/sdk/z/a/g/f;

    const-string v0, "\u5e7f\u544a\u6570\u636e\u5f02\u5e38"

    invoke-direct {p1, v2, v0}, Lcom/aggmoread/sdk/z/a/g/f;-><init>(ILjava/lang/String;)V

    goto :goto_3
.end method

.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;)Z
    .locals 1

    .line 9
    iget-object p2, p0, Lcom/aggmoread/sdk/z/a/r/a;->a:Lcom/aggmoread/sdk/z/a/g/c;

    invoke-virtual {p2}, Lcom/aggmoread/sdk/z/a/g/c;->e()Lcom/aggmoread/sdk/z/a/h/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/aggmoread/sdk/z/a/i/e;->r()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-boolean p2, p0, Lcom/aggmoread/sdk/z/a/r/a;->h:Z

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/a/r/a;->b(Landroid/app/Activity;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public b()Z
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a;->f:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/aggmoread/sdk/z/a/r/a;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/a;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/aggmoread/sdk/z/a/r/a;->j:I

    return v0
.end method

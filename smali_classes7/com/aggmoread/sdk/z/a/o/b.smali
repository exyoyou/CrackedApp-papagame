.class public Lcom/aggmoread/sdk/z/a/o/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/a/a;


# instance fields
.field private a:Lcom/aggmoread/sdk/z/a/g/c;

.field private b:Lcom/aggmoread/sdk/z/a/s/c;

.field private c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

.field private d:Lcom/aggmoread/sdk/z/a/s/a;

.field private e:Landroid/app/Activity;

.field private f:Landroid/content/Context;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Lcom/aggmoread/sdk/z/a/o/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/a/o/b;->g:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/aggmoread/sdk/z/a/o/b;->i:I

    return-void
.end method

.method private a()Lcom/aggmoread/sdk/z/a/g/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/b;->d:Lcom/aggmoread/sdk/z/a/s/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/s/a;->a()Lcom/aggmoread/sdk/z/a/g/d;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/aggmoread/sdk/z/a/g/d;

    invoke-direct {v0}, Lcom/aggmoread/sdk/z/a/g/d;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/o/b;Lcom/aggmoread/sdk/z/a/s/a;)Lcom/aggmoread/sdk/z/a/s/a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/o/b;->d:Lcom/aggmoread/sdk/z/a/s/a;

    return-object p1
.end method

.method private a(Landroid/app/Activity;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/o/b;->e()V

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/m/a;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/o/b;->b:Lcom/aggmoread/sdk/z/a/s/c;

    sget-object v0, Lcom/aggmoread/sdk/z/a/g/f;->c:Lcom/aggmoread/sdk/z/a/g/f;

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/a/s/b;->a(Lcom/aggmoread/sdk/z/a/i/h;Lcom/aggmoread/sdk/z/a/g/f;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/o/b;->j:Lcom/aggmoread/sdk/z/a/o/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/o/a;->c()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/b;->a:Lcom/aggmoread/sdk/z/a/g/c;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/o/b;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/o/b;->a()Lcom/aggmoread/sdk/z/a/g/d;

    move-result-object v2

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/o/b;->b:Lcom/aggmoread/sdk/z/a/s/c;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/aggmoread/sdk/z/a/m/l;->a(Landroid/view/View;Lcom/aggmoread/sdk/z/a/g/c;Lcom/aggmoread/sdk/z/a/g/c$a$b;Lcom/aggmoread/sdk/z/a/g/d;Lcom/aggmoread/sdk/z/a/i/h;)V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/o/b;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/o/b;->h()V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/o/b;Landroid/app/Activity;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/a/o/b;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private b(Landroid/app/Activity;)V
    .locals 3

    .line 1
    const-string v0, "JHInterHandler_dsp"

    const-string v1, "showAD enter "

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0xc353

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/o/b;->b:Lcom/aggmoread/sdk/z/a/s/c;

    new-instance v1, Lcom/aggmoread/sdk/z/a/g/f;

    const-string v2, "\u5e7f\u544a\u5c55\u793a\u5931\u8d25,Activity\u7f3a\u5931!"

    invoke-direct {v1, v0, v2}, Lcom/aggmoread/sdk/z/a/g/f;-><init>(ILjava/lang/String;)V

    invoke-static {p1, v1}, Lcom/aggmoread/sdk/z/a/s/b;->a(Lcom/aggmoread/sdk/z/a/i/h;Lcom/aggmoread/sdk/z/a/g/f;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/o/b;->j:Lcom/aggmoread/sdk/z/a/o/a;

    invoke-static {v1}, Lcom/aggmoread/sdk/z/a/u/a;->a(Lcom/aggmoread/sdk/z/a/u/k;)V

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/aggmoread/sdk/z/a/u/a;->a(Landroid/app/Activity;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/o/b;->b:Lcom/aggmoread/sdk/z/a/s/c;

    new-instance v1, Lcom/aggmoread/sdk/z/a/g/f;

    const-string v2, "\u5e7f\u544a\u5c55\u793a\u5931\u8d25!"

    invoke-direct {v1, v0, v2}, Lcom/aggmoread/sdk/z/a/g/f;-><init>(ILjava/lang/String;)V

    invoke-static {p1, v1}, Lcom/aggmoread/sdk/z/a/s/b;->a(Lcom/aggmoread/sdk/z/a/i/h;Lcom/aggmoread/sdk/z/a/g/f;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/a/o/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/o/b;->g()V

    return-void
.end method

.method static synthetic c(Lcom/aggmoread/sdk/z/a/o/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/o/b;->f()V

    return-void
.end method

.method static synthetic d(Lcom/aggmoread/sdk/z/a/o/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/o/b;->i()V

    return-void
.end method

.method private e()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdClick = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/o/b;->a()Lcom/aggmoread/sdk/z/a/g/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JHInterHandler_dsp"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/b;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->r()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/o/b;->a()Lcom/aggmoread/sdk/z/a/g/d;

    move-result-object v1

    const-string v2, "onAdClick"

    invoke-static {v2, v0, v1}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/util/List;Lcom/aggmoread/sdk/z/a/g/d;)Ljava/util/List;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/b;->b:Lcom/aggmoread/sdk/z/a/s/c;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/s/c;->onAdClicked()V

    return-void
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/b;->b:Lcom/aggmoread/sdk/z/a/s/c;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/s/c;->a()V

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/b;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->s()Ljava/util/List;

    move-result-object v0

    const-string v1, "onAdExposure"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/b;->b:Lcom/aggmoread/sdk/z/a/s/c;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/s/c;->d()V

    return-void
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/b;->b:Lcom/aggmoread/sdk/z/a/s/c;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/s/c;->onAdShow()V

    return-void
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/b;->b:Lcom/aggmoread/sdk/z/a/s/c;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/s/c;->onVideoCompleted()V

    return-void
.end method


# virtual methods
.method public a(Lcom/aggmoread/sdk/z/a/g/c;Lcom/aggmoread/sdk/z/a/s/c;)V
    .locals 4

    .line 4
    const-string v0, "handle   enter"

    const-string v1, "JHInterHandler_dsp"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/o/b;->a:Lcom/aggmoread/sdk/z/a/g/c;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/o/b;->b:Lcom/aggmoread/sdk/z/a/s/c;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/c;->e()Lcom/aggmoread/sdk/z/a/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/i/e;->f()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/o/b;->e:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/c;->e()Lcom/aggmoread/sdk/z/a/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/i/e;->l()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/o/b;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/o/b;->e:Landroid/app/Activity;

    if-nez v2, :cond_0

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/o/b;->e:Landroid/app/Activity;

    :cond_0
    iget-object v0, p1, Lcom/aggmoread/sdk/z/a/g/c;->e:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aggmoread/sdk/z/a/g/c$a;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c$a;->b()Lcom/aggmoread/sdk/z/a/g/c$a$b;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/o/b;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    iget v2, v0, Lcom/aggmoread/sdk/z/a/g/c$a$b;->t:I

    iput v2, p0, Lcom/aggmoread/sdk/z/a/o/b;->i:I

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->i()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aggmoread/sdk/z/a/o/b;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clickUrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/o/b;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/aggmoread/sdk/z/a/g/h;

    invoke-direct {v1}, Lcom/aggmoread/sdk/z/a/g/h;-><init>()V

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->k()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/aggmoread/sdk/z/a/g/h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/aggmoread/sdk/z/a/g/h;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/aggmoread/sdk/z/a/g/h;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/c;->e()Lcom/aggmoread/sdk/z/a/h/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aggmoread/sdk/z/a/i/e;->j()Lcom/aggmoread/sdk/z/a/i/b;

    move-result-object v2

    iput-object v2, v1, Lcom/aggmoread/sdk/z/a/g/h;->f:Lcom/aggmoread/sdk/z/a/i/b;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/c;->e()Lcom/aggmoread/sdk/z/a/h/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aggmoread/sdk/z/a/i/e;->o()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/aggmoread/sdk/z/a/g/h;->h:D

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->q()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/aggmoread/sdk/z/a/g/h;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/a/g/c$a$b;->w:Landroid/graphics/Bitmap;

    iput-object v0, v1, Lcom/aggmoread/sdk/z/a/g/h;->g:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/aggmoread/sdk/z/a/o/a;

    invoke-direct {v0}, Lcom/aggmoread/sdk/z/a/o/a;-><init>()V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/o/b;->j:Lcom/aggmoread/sdk/z/a/o/a;

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/o/a;->a(Lcom/aggmoread/sdk/z/a/g/h;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/a/o/b;->g:Z

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/b;->b:Lcom/aggmoread/sdk/z/a/s/c;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/aggmoread/sdk/z/a/s/c;->a(Lcom/aggmoread/sdk/z/a/a;)V

    :cond_1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/b;->j:Lcom/aggmoread/sdk/z/a/o/a;

    new-instance v1, Lcom/aggmoread/sdk/z/a/o/b$a;

    invoke-direct {v1, p0, p2}, Lcom/aggmoread/sdk/z/a/o/b$a;-><init>(Lcom/aggmoread/sdk/z/a/o/b;Lcom/aggmoread/sdk/z/a/s/c;)V

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/o/a;->a(Lcom/aggmoread/sdk/z/a/o/a$j;)V

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/c;->e()Lcom/aggmoread/sdk/z/a/h/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/i/e;->r()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/o/b;->e:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/a/o/b;->b(Landroid/app/Activity;)V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Lcom/aggmoread/sdk/z/a/g/f;

    const v0, 0xc350

    const-string v1, "\u5e7f\u544a\u6570\u636e\u5f02\u5e38"

    invoke-direct {p1, v0, v1}, Lcom/aggmoread/sdk/z/a/g/f;-><init>(ILjava/lang/String;)V

    invoke-static {p2, p1}, Lcom/aggmoread/sdk/z/a/s/b;->a(Lcom/aggmoread/sdk/z/a/i/h;Lcom/aggmoread/sdk/z/a/g/f;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;)Z
    .locals 1

    .line 7
    iget-object p2, p0, Lcom/aggmoread/sdk/z/a/o/b;->a:Lcom/aggmoread/sdk/z/a/g/c;

    invoke-virtual {p2}, Lcom/aggmoread/sdk/z/a/g/c;->e()Lcom/aggmoread/sdk/z/a/h/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/aggmoread/sdk/z/a/i/e;->r()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-boolean p2, p0, Lcom/aggmoread/sdk/z/a/o/b;->g:Z

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/a/o/b;->b(Landroid/app/Activity;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public b()Z
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/b;->e:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/aggmoread/sdk/z/a/o/b;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/b;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/b;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/b;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/aggmoread/sdk/z/a/o/b;->i:I

    return v0
.end method

.class public Lcom/aggmoread/sdk/z/a/s/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/a/a;


# instance fields
.field private a:Lcom/aggmoread/sdk/z/a/g/c;

.field private b:Lcom/aggmoread/sdk/z/a/s/e;

.field private c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

.field private d:Lcom/aggmoread/sdk/z/a/s/a;

.field private e:Landroid/app/Activity;

.field private f:Landroid/content/Context;

.field private g:Landroid/view/View;

.field private h:Landroid/view/ViewGroup;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/ImageView;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:[B

.field private o:Landroid/view/View;

.field private p:Z

.field private q:Lcom/aggmoread/sdk/z/a/s/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->l:Z

    iput-boolean v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->p:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->q:Lcom/aggmoread/sdk/z/a/s/i;

    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->q:Lcom/aggmoread/sdk/z/a/s/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->q:Lcom/aggmoread/sdk/z/a/s/i;

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 4

    .line 2
    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/g;->b:Lcom/aggmoread/sdk/z/a/s/e;

    sget-object p2, Lcom/aggmoread/sdk/z/a/g/f;->e:Lcom/aggmoread/sdk/z/a/g/f;

    :goto_0
    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/a/s/b;->a(Lcom/aggmoread/sdk/z/a/i/h;Lcom/aggmoread/sdk/z/a/g/f;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->e:Landroid/app/Activity;

    if-nez v0, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->e:Landroid/app/Activity;

    :cond_1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->e:Landroid/app/Activity;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/m/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/g;->b:Lcom/aggmoread/sdk/z/a/s/e;

    sget-object p2, Lcom/aggmoread/sdk/z/a/g/f;->c:Lcom/aggmoread/sdk/z/a/g/f;

    goto :goto_0

    :cond_2
    invoke-static {p3}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-static {}, Lcom/aggmoread/sdk/z/a/i/d;->a()Lcom/aggmoread/sdk/z/a/i/d;

    move-result-object p3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->a:Lcom/aggmoread/sdk/z/a/g/c;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c;->e()Lcom/aggmoread/sdk/z/a/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/i/e;->j()Lcom/aggmoread/sdk/z/a/i/b;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/aggmoread/sdk/z/a/i/d;->a(Lcom/aggmoread/sdk/z/a/i/b;)Z

    move-result p3

    const-string v0, "ApiSplashHandler_api"

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/aggmoread/sdk/z/a/s/g;->o:Landroid/view/View;

    if-eqz p3, :cond_3

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, Lcom/aggmoread/sdk/z/a/s/g;->o:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setClickable(Z)V

    iget-boolean v2, p0, Lcom/aggmoread/sdk/z/a/s/g;->p:Z

    if-eqz v2, :cond_4

    const-string p3, "CKT"

    invoke-static {v0, p3}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object p3, p2

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDownload = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/s/g;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-virtual {v3}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->t()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , downType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/s/g;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-virtual {v3}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , downloadUrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/s/g;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-virtual {v3}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", clickView "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/aggmoread/sdk/z/a/s/g$c;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/a/s/g$c;-><init>(Lcom/aggmoread/sdk/z/a/s/g;)V

    invoke-static {p2, p3, v0}, Lcom/aggmoread/sdk/z/a/s/a;->a(Landroid/view/View;Landroid/view/View;Lcom/aggmoread/sdk/z/a/s/a$a;)Lcom/aggmoread/sdk/z/a/s/a;

    move-result-object p3

    iput-object p3, p0, Lcom/aggmoread/sdk/z/a/s/g;->d:Lcom/aggmoread/sdk/z/a/s/a;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/g;->k:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/g;->a:Lcom/aggmoread/sdk/z/a/g/c;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/c;->e()Lcom/aggmoread/sdk/z/a/h/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/i/e;->q()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/g;->k:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    :try_start_0
    sget-object p1, Lcom/aggmoread/sdk/z/a/i/c;->a:Ljava/lang/Object;

    invoke-virtual {p4, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Lcom/aggmoread/sdk/z/a/u/q;

    if-eqz p2, :cond_6

    new-instance p2, Lcom/aggmoread/sdk/z/a/s/g$d;

    invoke-direct {p2, p0, p1}, Lcom/aggmoread/sdk/z/a/s/g$d;-><init>(Lcom/aggmoread/sdk/z/a/s/g;Landroid/view/View;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    invoke-direct {p0, p4}, Lcom/aggmoread/sdk/z/a/s/g;->a(Landroid/view/View;)V

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/g;->b:Lcom/aggmoread/sdk/z/a/s/e;

    sget-object p2, Lcom/aggmoread/sdk/z/a/g/f;->c:Lcom/aggmoread/sdk/z/a/g/f;

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/a/s/b;->a(Lcom/aggmoread/sdk/z/a/i/h;Lcom/aggmoread/sdk/z/a/g/f;)V

    :goto_1
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 8

    .line 3
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/s/g;->h()V

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/s/g;->g()V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/g;->a:Lcom/aggmoread/sdk/z/a/g/c;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/c;->e()Lcom/aggmoread/sdk/z/a/h/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/i/e;->h()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "ApiSplashHandler_api"

    const-string v0, "getAdSkipView = null"

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/g;->g:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/i/e;->h()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/s/g;->g:Landroid/view/View;

    :goto_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/s/g;->g:Landroid/view/View;

    new-instance v0, Lcom/aggmoread/sdk/z/a/s/g$e;

    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/z/a/s/g$e;-><init>(Lcom/aggmoread/sdk/z/a/s/g;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/aggmoread/sdk/z/a/s/i;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/s/g;->g:Landroid/view/View;

    new-instance v3, Lcom/aggmoread/sdk/z/a/s/g$f;

    invoke-direct {v3, p0}, Lcom/aggmoread/sdk/z/a/s/g$f;-><init>(Lcom/aggmoread/sdk/z/a/s/g;)V

    const-wide/16 v4, 0x1450

    const-wide/16 v6, 0x1f4

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/aggmoread/sdk/z/a/s/i;-><init>(Landroid/view/View;Lcom/aggmoread/sdk/z/a/s/i$a;JJ)V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/s/g;->q:Lcom/aggmoread/sdk/z/a/s/i;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 4

    .line 4
    invoke-static {}, Lcom/aggmoread/sdk/z/a/i/d;->a()Lcom/aggmoread/sdk/z/a/i/d;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/s/g;->f:Landroid/content/Context;

    invoke-static {}, Lcom/aggmoread/sdk/z/a/h/a;->d()Lcom/aggmoread/sdk/z/a/h/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aggmoread/sdk/z/a/h/a;->e()Lcom/aggmoread/sdk/z/a/g/i;

    move-result-object v2

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/s/g;->a:Lcom/aggmoread/sdk/z/a/g/c;

    invoke-virtual {v3}, Lcom/aggmoread/sdk/z/a/g/c;->e()Lcom/aggmoread/sdk/z/a/h/c;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/aggmoread/sdk/z/a/i/d;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/aggmoread/sdk/z/a/g/i;Lcom/aggmoread/sdk/z/a/i/e;)Lcom/aggmoread/sdk/z/a/i/d$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/aggmoread/sdk/z/a/i/d$b;->a:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->j:Landroid/view/View;

    iget-object v0, p1, Lcom/aggmoread/sdk/z/a/i/d$b;->b:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->i:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/aggmoread/sdk/z/a/i/d$b;->c:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->k:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/aggmoread/sdk/z/a/i/d$b;->d:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->g:Landroid/view/View;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/a/i/d$b;->e:Landroid/view/View;

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/s/g;->o:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private a(Landroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2

    .line 5
    const-string v0, "ApiSplashHandler_api"

    const-string v1, "showAD enter"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/aggmoread/sdk/z/a/s/g$b;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/aggmoread/sdk/z/a/s/g$b;-><init>(Lcom/aggmoread/sdk/z/a/s/g;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/m/p;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/s/g;Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aggmoread/sdk/z/a/s/g;->a(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/s/g;Landroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/aggmoread/sdk/z/a/s/g;->a(Landroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/s/g;Z)Z
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/aggmoread/sdk/z/a/s/g;->l:Z

    return p1
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/s/g;)[B
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/s/g;->n:[B

    return-object p0
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/s/g;[B)[B
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/s/g;->n:[B

    return-object p1
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/a/s/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/s/g;->e()V

    return-void
.end method

.method static synthetic c(Lcom/aggmoread/sdk/z/a/s/g;)Lcom/aggmoread/sdk/z/a/g/c$a$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/s/g;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    return-object p0
.end method

.method static synthetic d(Lcom/aggmoread/sdk/z/a/s/g;)Lcom/aggmoread/sdk/z/a/s/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/s/g;->d:Lcom/aggmoread/sdk/z/a/s/a;

    return-object p0
.end method

.method private e()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdClick = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/s/g;->d:Lcom/aggmoread/sdk/z/a/s/a;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/s/a;->a()Lcom/aggmoread/sdk/z/a/g/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApiSplashHandler_api"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->r()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/s/g;->d:Lcom/aggmoread/sdk/z/a/s/a;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/s/a;->a()Lcom/aggmoread/sdk/z/a/g/d;

    move-result-object v1

    const-string v2, "onAdClick"

    invoke-static {v2, v0, v1}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/util/List;Lcom/aggmoread/sdk/z/a/g/d;)Ljava/util/List;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->b:Lcom/aggmoread/sdk/z/a/s/e;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/s/e;->onAdClicked()V

    return-void
.end method

.method static synthetic e(Lcom/aggmoread/sdk/z/a/s/g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/s/g;->f()V

    return-void
.end method

.method static synthetic f(Lcom/aggmoread/sdk/z/a/s/g;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/s/g;->i:Landroid/widget/ImageView;

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->b:Lcom/aggmoread/sdk/z/a/s/e;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/s/e;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->o:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/aggmoread/sdk/z/a/i/c;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/aggmoread/sdk/z/a/u/q;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/aggmoread/sdk/z/a/u/q;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/u/q;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/aggmoread/sdk/z/a/s/g;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/s/g;->h:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private g()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->s()Ljava/util/List;

    move-result-object v0

    const-string v1, "onAdExposure"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/q/a;->a(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->b:Lcom/aggmoread/sdk/z/a/s/e;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/s/e;->d()V

    return-void
.end method

.method static synthetic h(Lcom/aggmoread/sdk/z/a/s/g;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/s/g;->j:Landroid/view/View;

    return-object p0
.end method

.method private h()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->b:Lcom/aggmoread/sdk/z/a/s/e;

    invoke-interface {v0}, Lcom/aggmoread/sdk/z/a/s/e;->onAdShow()V

    return-void
.end method

.method static synthetic i(Lcom/aggmoread/sdk/z/a/s/g;)Lcom/aggmoread/sdk/z/a/s/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/s/g;->b:Lcom/aggmoread/sdk/z/a/s/e;

    return-object p0
.end method

.method static synthetic j(Lcom/aggmoread/sdk/z/a/s/g;)Lcom/aggmoread/sdk/z/a/g/c;
    .locals 0

    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/s/g;->a:Lcom/aggmoread/sdk/z/a/g/c;

    return-object p0
.end method

.method static synthetic k(Lcom/aggmoread/sdk/z/a/s/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/s/g;->a()V

    return-void
.end method


# virtual methods
.method public a(Lcom/aggmoread/sdk/z/a/g/c;Lcom/aggmoread/sdk/z/a/s/e;)V
    .locals 3

    .line 6
    const-string v0, "handle enter"

    const-string v1, "ApiSplashHandler_api"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/s/g;->a:Lcom/aggmoread/sdk/z/a/g/c;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/s/g;->b:Lcom/aggmoread/sdk/z/a/s/e;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/c;->e()Lcom/aggmoread/sdk/z/a/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/i/e;->f()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->e:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/c;->e()Lcom/aggmoread/sdk/z/a/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/i/e;->l()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->f:Landroid/content/Context;

    iget-object v0, p1, Lcom/aggmoread/sdk/z/a/g/c;->e:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aggmoread/sdk/z/a/g/c$a;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c$a;->b()Lcom/aggmoread/sdk/z/a/g/c$a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->k()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aggmoread/sdk/z/a/s/g;->m:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->i()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imageUrl = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/s/g;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/j/g;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/c;->e()Lcom/aggmoread/sdk/z/a/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/i/e;->g()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->h:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/aggmoread/sdk/z/a/s/g;->a(Landroid/view/ViewGroup;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imageView = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/s/g;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->m:Ljava/lang/String;

    new-instance v1, Lcom/aggmoread/sdk/z/a/s/g$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/aggmoread/sdk/z/a/s/g$a;-><init>(Lcom/aggmoread/sdk/z/a/s/g;Lcom/aggmoread/sdk/z/a/s/e;Lcom/aggmoread/sdk/z/a/g/c;)V

    const/4 p1, 0x0

    invoke-static {v0, p1, v1}, Lcom/aggmoread/sdk/z/a/p/a;->a(Ljava/lang/String;Ljava/util/Map;Lcom/aggmoread/sdk/z/a/p/a$g;)V

    return-void

    :cond_0
    new-instance p1, Lcom/aggmoread/sdk/z/a/g/f;

    const v0, 0xc350

    const-string v1, "\u5e7f\u544a\u6570\u636e\u5f02\u5e38"

    invoke-direct {p1, v0, v1}, Lcom/aggmoread/sdk/z/a/g/f;-><init>(ILjava/lang/String;)V

    invoke-static {p2, p1}, Lcom/aggmoread/sdk/z/a/s/b;->a(Lcom/aggmoread/sdk/z/a/i/h;Lcom/aggmoread/sdk/z/a/g/f;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;)Z
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->a:Lcom/aggmoread/sdk/z/a/g/c;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c;->e()Lcom/aggmoread/sdk/z/a/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/i/e;->r()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->h:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->j:Landroid/view/View;

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show add adContainer tmpView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApiSplashHandler_api"

    invoke-static {v2, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/s/g;->h:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/s/g;->e:Landroid/app/Activity;

    :cond_3
    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/a/s/g;->b()Z

    move-result p1

    return p1
.end method

.method public b()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->a:Lcom/aggmoread/sdk/z/a/g/c;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c;->e()Lcom/aggmoread/sdk/z/a/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/i/e;->r()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->l:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/a/s/g;->i()V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

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
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->c:Lcom/aggmoread/sdk/z/a/g/c$a$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->p()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public i()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/s/g;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/s/g;->h:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/s/g;->j:Landroid/view/View;

    invoke-direct {p0, v0, v1, v2}, Lcom/aggmoread/sdk/z/a/s/g;->a(Landroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

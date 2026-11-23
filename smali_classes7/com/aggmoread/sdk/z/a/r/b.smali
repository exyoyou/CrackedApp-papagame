.class public Lcom/aggmoread/sdk/z/a/r/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/a/u/k;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/aggmoread/sdk/z/a/r/c;

.field private c:Lcom/aggmoread/sdk/z/a/t/d;

.field private d:Lcom/aggmoread/sdk/z/a/t/c$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/aggmoread/sdk/z/a/r/c;

    invoke-direct {v0}, Lcom/aggmoread/sdk/z/a/r/c;-><init>()V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b;->b:Lcom/aggmoread/sdk/z/a/r/c;

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/r/b;)Lcom/aggmoread/sdk/z/a/t/c$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/r/b;->d:Lcom/aggmoread/sdk/z/a/t/c$b;

    return-object p0
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/a/r/b;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/z/a/r/b;->a:Landroid/app/Activity;

    return-object p0
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    const/16 v2, 0x400

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    goto :goto_0

    :cond_0
    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    const/16 v2, 0x17

    if-le v1, v2, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x3402

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/r/b;->a:Landroid/app/Activity;

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b;->b:Lcom/aggmoread/sdk/z/a/r/c;

    new-instance v1, Lcom/aggmoread/sdk/z/a/r/b$a;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/a/r/b$a;-><init>(Lcom/aggmoread/sdk/z/a/r/b;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/aggmoread/sdk/z/a/t/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/aggmoread/sdk/z/a/t/g$b;)V

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 0

    .line 4
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .line 5
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/b;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/r/b;->c()V

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b;->c:Lcom/aggmoread/sdk/z/a/t/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aggmoread/sdk/z/a/t/d;

    invoke-direct {v0}, Lcom/aggmoread/sdk/z/a/t/d;-><init>()V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b;->c:Lcom/aggmoread/sdk/z/a/t/d;

    const-string v1, "videoUrl"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/aggmoread/sdk/z/a/t/d;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b;->c:Lcom/aggmoread/sdk/z/a/t/d;

    const-string v1, "adIconUrl"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/aggmoread/sdk/z/a/t/d;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b;->c:Lcom/aggmoread/sdk/z/a/t/d;

    const-string v1, "adTitle"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/aggmoread/sdk/z/a/t/d;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b;->c:Lcom/aggmoread/sdk/z/a/t/d;

    const-string v1, "adDesc"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/aggmoread/sdk/z/a/t/d;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b;->c:Lcom/aggmoread/sdk/z/a/t/d;

    const-string v1, "skip"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/aggmoread/sdk/z/a/t/d;->f:I

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b;->c:Lcom/aggmoread/sdk/z/a/t/d;

    const-string v1, "skipMinTime"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/aggmoread/sdk/z/a/t/d;->g:I

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b;->c:Lcom/aggmoread/sdk/z/a/t/d;

    const-string v1, "showCountDownView"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/aggmoread/sdk/z/a/t/d;->h:I

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b;->c:Lcom/aggmoread/sdk/z/a/t/d;

    const-string v1, "endCardPicUrl"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/aggmoread/sdk/z/a/t/d;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b;->c:Lcom/aggmoread/sdk/z/a/t/d;

    const-string v1, "endIconUrl"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/aggmoread/sdk/z/a/t/d;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b;->c:Lcom/aggmoread/sdk/z/a/t/d;

    const-string v1, "endCardTitle"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/aggmoread/sdk/z/a/t/d;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b;->c:Lcom/aggmoread/sdk/z/a/t/d;

    const-string v1, "endCardDesc"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/aggmoread/sdk/z/a/t/d;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b;->c:Lcom/aggmoread/sdk/z/a/t/d;

    const-string v1, "videoBackGroundPic"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/aggmoread/sdk/z/a/t/d;->i:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/b;->c:Lcom/aggmoread/sdk/z/a/t/d;

    if-nez p1, :cond_1

    const-string p1, "ApiRewardVideoPresenter"

    const-string v0, "\u89c6\u9891\u7d20\u6750\u4fe1\u606f\u4e3a\u7a7a"

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/b;->d:Lcom/aggmoread/sdk/z/a/t/c$b;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lcom/aggmoread/sdk/z/a/t/c$b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b;->b:Lcom/aggmoread/sdk/z/a/r/c;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/r/b;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/aggmoread/sdk/z/a/t/c;->a(Landroid/app/Activity;Lcom/aggmoread/sdk/z/a/t/d;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/b;->b:Lcom/aggmoread/sdk/z/a/r/c;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/z/a/r/c;->a(Z)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/b;->b:Lcom/aggmoread/sdk/z/a/r/c;

    new-instance v1, Lcom/aggmoread/sdk/z/a/r/b$b;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/a/r/b$b;-><init>(Lcom/aggmoread/sdk/z/a/r/b;)V

    invoke-virtual {p1, v1}, Lcom/aggmoread/sdk/z/a/r/c;->a(Lcom/aggmoread/sdk/z/a/t/c$b;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/b;->b:Lcom/aggmoread/sdk/z/a/r/c;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/r/c;->e()V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/b;->c:Lcom/aggmoread/sdk/z/a/t/d;

    iget-boolean p1, p1, Lcom/aggmoread/sdk/z/a/t/d;->p:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/b;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/t/c$b;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/r/b;->d:Lcom/aggmoread/sdk/z/a/t/c$b;

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/a/t/d;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/r/b;->c:Lcom/aggmoread/sdk/z/a/t/d;

    return-void
.end method

.method public a()Z
    .locals 1

    .line 8
    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 9
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b;->b:Lcom/aggmoread/sdk/z/a/r/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/r/c;->a()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/a/r/b;->a(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b;->a:Landroid/app/Activity;

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b;->b:Lcom/aggmoread/sdk/z/a/r/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/r/c;->c()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/b;->b:Lcom/aggmoread/sdk/z/a/r/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/r/c;->d()V

    :cond_0
    return-void
.end method

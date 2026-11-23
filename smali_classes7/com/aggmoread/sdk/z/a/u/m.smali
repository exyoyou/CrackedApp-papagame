.class public Lcom/aggmoread/sdk/z/a/u/m;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/aggmoread/sdk/z/a/t/f;

.field private b:Lcom/aggmoread/sdk/z/a/t/a;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/aggmoread/sdk/z/a/u/m;->e:I

    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/a/u/m;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 2
    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/aggmoread/sdk/z/a/u/m;->c:I

    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    invoke-static {p1, v0, v1}, Lcom/aggmoread/sdk/z/a/m/b;->a(Landroid/content/Context;D)I

    move-result v0

    iput v0, p0, Lcom/aggmoread/sdk/z/a/u/m;->d:I

    new-instance v0, Lcom/aggmoread/sdk/z/a/t/f;

    invoke-direct {v0, p1}, Lcom/aggmoread/sdk/z/a/t/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/u/m;->a:Lcom/aggmoread/sdk/z/a/t/f;

    new-instance v0, Lcom/aggmoread/sdk/z/a/t/b;

    invoke-direct {v0, p1}, Lcom/aggmoread/sdk/z/a/t/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/u/m;->b:Lcom/aggmoread/sdk/z/a/t/a;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/u/m;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/u/m;->a:Lcom/aggmoread/sdk/z/a/t/f;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/aggmoread/sdk/z/a/t/f;->d(Z)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/m;->b:Lcom/aggmoread/sdk/z/a/t/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/m;->b:Lcom/aggmoread/sdk/z/a/t/a;

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/u/m;->a:Lcom/aggmoread/sdk/z/a/t/f;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/m;->b:Lcom/aggmoread/sdk/z/a/t/a;

    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/z/a/t/f;->a(Lcom/aggmoread/sdk/z/a/t/a;)V

    new-instance p1, Lcom/aggmoread/sdk/z/a/u/m$a;

    invoke-direct {p1, p0}, Lcom/aggmoread/sdk/z/a/u/m$a;-><init>(Lcom/aggmoread/sdk/z/a/u/m;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/u/m;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/u/m;->e()V

    return-void
.end method

.method private e()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, 0x1

    const/4 v3, -0x2

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/aggmoread/sdk/z/a/u/m;->d:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v4, v3, :cond_1

    iget v1, p0, Lcom/aggmoread/sdk/z/a/u/m;->c:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLayoutParams width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "test"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public a()Lcom/aggmoread/sdk/z/a/t/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/m;->b:Lcom/aggmoread/sdk/z/a/t/a;

    return-object v0
.end method

.method public b()Lcom/aggmoread/sdk/z/a/t/f;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/m;->a:Lcom/aggmoread/sdk/z/a/t/f;

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/m;->a:Lcom/aggmoread/sdk/z/a/t/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/f;->b()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/m;->a:Lcom/aggmoread/sdk/z/a/t/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/f;->p()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/m;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/f;->d()V

    :cond_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/m;->a:Lcom/aggmoread/sdk/z/a/t/f;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowVisibilityChanged visibility "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/u/m;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/t/f;->a()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/aggmoread/sdk/z/a/u/m;->e:I

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/a/u/m;->c()V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/aggmoread/sdk/z/a/u/m;->e:I

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/a/u/m;->d()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/aggmoread/sdk/z/a/u/m;->e:I

    :cond_1
    :goto_0
    return-void
.end method

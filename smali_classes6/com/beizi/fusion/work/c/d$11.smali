.class Lcom/beizi/fusion/work/c/d$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/ad/internal/e/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/work/c/d;->c(Lcom/beizi/ad/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/beizi/ad/e;

.field final synthetic c:Lcom/beizi/fusion/work/c/d;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/c/d;Landroid/widget/ImageView;Lcom/beizi/ad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/beizi/fusion/work/c/d$11;->a:Landroid/widget/ImageView;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/beizi/fusion/work/c/d$11;->b:Lcom/beizi/ad/e;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    const-string v1, "sdk custom error "

    const-string v2, "onBitmapLoadFailed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x18697

    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/work/c/d;->b(Lcom/beizi/fusion/work/c/d;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 10

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double v2, v2, v4

    int-to-double v4, v1

    div-double/2addr v2, v4

    double-to-float v7, v2

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    invoke-static {v0}, Lcom/beizi/fusion/work/c/d;->h(Lcom/beizi/fusion/work/c/d;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    invoke-static {v2}, Lcom/beizi/fusion/work/c/d;->i(Lcom/beizi/fusion/work/c/d;)F

    move-result v2

    invoke-static {v0, v2}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v0

    .line 4
    iget-object v2, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    invoke-static {v2}, Lcom/beizi/fusion/work/c/d;->j(Lcom/beizi/fusion/work/c/d;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    invoke-static {v2}, Lcom/beizi/fusion/work/c/d;->h(Lcom/beizi/fusion/work/c/d;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    invoke-static {v3}, Lcom/beizi/fusion/work/c/d;->j(Lcom/beizi/fusion/work/c/d;)F

    move-result v3

    invoke-static {v2, v3}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v2

    goto :goto_0

    :cond_0
    int-to-float v2, v0

    div-float/2addr v2, v7

    float-to-int v2, v2

    .line 6
    :goto_0
    iget-object v3, p0, Lcom/beizi/fusion/work/c/d$11;->a:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 8
    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 9
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 10
    iget-object v4, p0, Lcom/beizi/fusion/work/c/d$11;->a:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    :cond_1
    iget-object v9, p0, Lcom/beizi/fusion/work/c/d$11;->a:Landroid/widget/ImageView;

    if-eqz v9, :cond_2

    .line 12
    iget-object v4, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    move v5, v0

    move v6, v2

    move-object v8, p1

    invoke-static/range {v4 .. v9}, Lcom/beizi/fusion/work/c/d;->a(Lcom/beizi/fusion/work/c/d;IIFLandroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    .line 13
    iget-object v3, p0, Lcom/beizi/fusion/work/c/d$11;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 14
    :cond_2
    iget-object v3, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    invoke-static {v3, v0}, Lcom/beizi/fusion/work/c/d;->b(Lcom/beizi/fusion/work/c/d;I)I

    .line 15
    iget-object v3, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    invoke-static {v3, v2}, Lcom/beizi/fusion/work/c/d;->c(Lcom/beizi/fusion/work/c/d;I)I

    .line 16
    iget-object v3, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    invoke-static {v3}, Lcom/beizi/fusion/work/c/d;->k(Lcom/beizi/fusion/work/c/d;)I

    move-result v3

    if-gez v3, :cond_3

    .line 17
    iget-object v3, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    invoke-static {v3, v1}, Lcom/beizi/fusion/work/c/d;->c(Lcom/beizi/fusion/work/c/d;I)I

    .line 18
    :cond_3
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 19
    iget-object v3, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    invoke-static {v3}, Lcom/beizi/fusion/work/c/d;->l(Lcom/beizi/fusion/work/c/d;)Landroid/view/ViewGroup;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "BeiZis"

    if-eqz v3, :cond_7

    .line 20
    :try_start_1
    iget-object v3, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    invoke-static {v3}, Lcom/beizi/fusion/work/c/d;->l(Lcom/beizi/fusion/work/c/d;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 21
    iget-object v3, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    invoke-static {v3}, Lcom/beizi/fusion/work/c/d;->l(Lcom/beizi/fusion/work/c/d;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNativeAd != null ? "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    .line 23
    invoke-static {v5}, Lcom/beizi/fusion/work/c/d;->a(Lcom/beizi/fusion/work/c/d;)Lcom/beizi/ad/v2/d/a;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",renderViewBean != null ? "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    .line 24
    invoke-static {v5}, Lcom/beizi/fusion/work/c/d;->m(Lcom/beizi/fusion/work/c/d;)Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

    move-result-object v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-static {v4, v3}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v3, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    invoke-static {v3}, Lcom/beizi/fusion/work/c/d;->l(Lcom/beizi/fusion/work/c/d;)Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v5, p0, Lcom/beizi/fusion/work/c/d$11;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    iget-object v1, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    iget-object v3, p0, Lcom/beizi/fusion/work/c/d$11;->b:Lcom/beizi/ad/e;

    invoke-static {v1, v3}, Lcom/beizi/fusion/work/c/d;->c(Lcom/beizi/fusion/work/c/d;Lcom/beizi/ad/e;)V

    .line 28
    iget-object v1, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    invoke-static {v1}, Lcom/beizi/fusion/work/c/d;->n(Lcom/beizi/fusion/work/c/d;)V

    .line 29
    iget-object v1, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    iget-object v3, p0, Lcom/beizi/fusion/work/c/d$11;->b:Lcom/beizi/ad/e;

    invoke-static {v1, v3}, Lcom/beizi/fusion/work/c/d;->d(Lcom/beizi/fusion/work/c/d;Lcom/beizi/ad/e;)V

    .line 30
    iget-object v1, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    iget-object v3, p0, Lcom/beizi/fusion/work/c/d$11;->b:Lcom/beizi/ad/e;

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    .line 32
    invoke-static {v1, v3, v0, v2, p1}, Lcom/beizi/fusion/work/c/d;->a(Lcom/beizi/fusion/work/c/d;Lcom/beizi/ad/e;III)V

    .line 33
    iget-object p1, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    invoke-static {p1}, Lcom/beizi/fusion/work/c/d;->o(Lcom/beizi/fusion/work/c/d;)V

    .line 34
    iget-object p1, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    invoke-static {p1}, Lcom/beizi/fusion/work/c/d;->p(Lcom/beizi/fusion/work/c/d;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 35
    iget-object p1, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    iget-object v0, p0, Lcom/beizi/fusion/work/c/d$11;->b:Lcom/beizi/ad/e;

    invoke-static {p1, v0}, Lcom/beizi/fusion/work/c/d;->e(Lcom/beizi/fusion/work/c/d;Lcom/beizi/ad/e;)V

    .line 36
    :cond_6
    iget-object p1, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    invoke-static {p1}, Lcom/beizi/fusion/work/c/d;->l(Lcom/beizi/fusion/work/c/d;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/beizi/fusion/work/c/d;->a(Lcom/beizi/fusion/work/c/d;Landroid/view/View;)Landroid/view/View;

    .line 37
    iget-object p1, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    invoke-static {p1}, Lcom/beizi/fusion/work/c/d;->q(Lcom/beizi/fusion/work/c/d;)Lcom/beizi/fusion/tool/ad;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 38
    iget-object p1, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    invoke-static {p1}, Lcom/beizi/fusion/work/c/d;->q(Lcom/beizi/fusion/work/c/d;)Lcom/beizi/fusion/tool/ad;

    move-result-object p1

    iget-object v0, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    invoke-static {v0}, Lcom/beizi/fusion/work/c/d;->r(Lcom/beizi/fusion/work/c/d;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/tool/ad;->a(Landroid/view/View;)V

    .line 39
    :cond_7
    iget-object p1, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    invoke-static {p1}, Lcom/beizi/fusion/work/c/d;->a(Lcom/beizi/fusion/work/c/d;)Lcom/beizi/ad/v2/d/a;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    invoke-static {p1}, Lcom/beizi/fusion/work/c/d;->m(Lcom/beizi/fusion/work/c/d;)Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 40
    iget-object p1, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    invoke-static {p1}, Lcom/beizi/fusion/work/c/d;->a(Lcom/beizi/fusion/work/c/d;)Lcom/beizi/ad/v2/d/a;

    move-result-object p1

    iget-object v0, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    invoke-static {v0}, Lcom/beizi/fusion/work/c/d;->s(Lcom/beizi/fusion/work/c/d;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beizi/ad/v2/d/a;->a(Ljava/util/List;)V

    .line 41
    iget-object p1, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    invoke-static {p1}, Lcom/beizi/fusion/work/c/d;->a(Lcom/beizi/fusion/work/c/d;)Lcom/beizi/ad/v2/d/a;

    move-result-object p1

    iget-object v0, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    invoke-static {v0}, Lcom/beizi/fusion/work/c/d;->m(Lcom/beizi/fusion/work/c/d;)Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;->getOptimizePercent()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/beizi/ad/v2/d/a;->b(I)V

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "percent = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    .line 43
    invoke-static {v0}, Lcom/beizi/fusion/work/c/d;->m(Lcom/beizi/fusion/work/c/d;)Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;->getOptimizePercent()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-static {v4, p1}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    invoke-static {p1}, Lcom/beizi/fusion/work/c/d;->l(Lcom/beizi/fusion/work/c/d;)Landroid/view/ViewGroup;

    move-result-object p1

    new-instance v0, Lcom/beizi/fusion/work/c/d$11$1;

    invoke-direct {v0, p0}, Lcom/beizi/fusion/work/c/d$11$1;-><init>(Lcom/beizi/fusion/work/c/d$11;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 46
    :cond_8
    iget-object p1, p0, Lcom/beizi/fusion/work/c/d$11;->c:Lcom/beizi/fusion/work/c/d;

    iget-object v0, p0, Lcom/beizi/fusion/work/c/d$11;->b:Lcom/beizi/ad/e;

    invoke-static {p1, v0}, Lcom/beizi/fusion/work/c/d;->f(Lcom/beizi/fusion/work/c/d;Lcom/beizi/ad/e;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

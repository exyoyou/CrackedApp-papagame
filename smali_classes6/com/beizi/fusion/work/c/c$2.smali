.class Lcom/beizi/fusion/work/c/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/ad/internal/e/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/work/c/c;->aI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/work/c/c;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/c/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/c/c$2;->a:Lcom/beizi/fusion/work/c/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/beizi/fusion/work/c/c$2;->a:Lcom/beizi/fusion/work/c/c;

    const-string v1, "sdk custom error "

    const-string v2, "onBitmapLoadFailed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x18697

    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/work/c/c;->b(Lcom/beizi/fusion/work/c/c;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 10

    if-eqz p1, :cond_6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/c/c$2;->a:Lcom/beizi/fusion/work/c/c;

    iget-object v0, v0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showBeiZiNativeAd onBitmapLoaded width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double v2, v2, v4

    int-to-double v4, v1

    div-double/2addr v2, v4

    double-to-float v7, v2

    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/work/c/c$2;->a:Lcom/beizi/fusion/work/c/c;

    iget-object v2, v0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    iget v0, v0, Lcom/beizi/fusion/work/c/a;->r:F

    const/high16 v3, 0x41800000    # 16.0f

    sub-float/2addr v0, v3

    invoke-static {v2, v0}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v5

    int-to-float v0, v5

    div-float/2addr v0, v7

    float-to-int v0, v0

    .line 7
    iget-object v2, p0, Lcom/beizi/fusion/work/c/c$2;->a:Lcom/beizi/fusion/work/c/c;

    iget v4, v2, Lcom/beizi/fusion/work/c/a;->s:F

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-lez v4, :cond_2

    .line 8
    invoke-static {v2}, Lcom/beizi/fusion/work/c/c;->i(Lcom/beizi/fusion/work/c/c;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 9
    iget-object v2, p0, Lcom/beizi/fusion/work/c/c$2;->a:Lcom/beizi/fusion/work/c/c;

    invoke-static {v2}, Lcom/beizi/fusion/work/c/c;->i(Lcom/beizi/fusion/work/c/c;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/View;->measure(II)V

    .line 10
    iget-object v2, p0, Lcom/beizi/fusion/work/c/c$2;->a:Lcom/beizi/fusion/work/c/c;

    invoke-static {v2}, Lcom/beizi/fusion/work/c/c;->i(Lcom/beizi/fusion/work/c/c;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 11
    :cond_1
    iget-object v2, p0, Lcom/beizi/fusion/work/c/c$2;->a:Lcom/beizi/fusion/work/c/c;

    iget-object v6, v2, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    iget v2, v2, Lcom/beizi/fusion/work/c/a;->s:F

    sub-float/2addr v2, v3

    invoke-static {v6, v2}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v2

    if-le v2, v4, :cond_2

    sub-int/2addr v2, v4

    move v6, v2

    goto :goto_0

    :cond_2
    move v6, v0

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/work/c/c$2;->a:Lcom/beizi/fusion/work/c/c;

    iput v5, v0, Lcom/beizi/fusion/work/c/a;->S:I

    .line 13
    iput v6, v0, Lcom/beizi/fusion/work/c/a;->T:I

    if-gez v6, :cond_3

    .line 14
    iput v1, v0, Lcom/beizi/fusion/work/c/a;->T:I

    .line 15
    :cond_3
    invoke-static {v0}, Lcom/beizi/fusion/work/c/c;->j(Lcom/beizi/fusion/work/c/c;)Lcom/beizi/fusion/widget/CustomRoundImageView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, p0, Lcom/beizi/fusion/work/c/c$2;->a:Lcom/beizi/fusion/work/c/c;

    .line 17
    invoke-static {v0}, Lcom/beizi/fusion/work/c/c;->j(Lcom/beizi/fusion/work/c/c;)Lcom/beizi/fusion/widget/CustomRoundImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 18
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 19
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 20
    iget-object v1, p0, Lcom/beizi/fusion/work/c/c$2;->a:Lcom/beizi/fusion/work/c/c;

    invoke-static {v1}, Lcom/beizi/fusion/work/c/c;->j(Lcom/beizi/fusion/work/c/c;)Lcom/beizi/fusion/widget/CustomRoundImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/beizi/fusion/work/c/c$2;->a:Lcom/beizi/fusion/work/c/c;

    invoke-static {v0}, Lcom/beizi/fusion/work/c/c;->j(Lcom/beizi/fusion/work/c/c;)Lcom/beizi/fusion/widget/CustomRoundImageView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 22
    iget-object v0, p0, Lcom/beizi/fusion/work/c/c$2;->a:Lcom/beizi/fusion/work/c/c;

    invoke-static {v0}, Lcom/beizi/fusion/work/c/c;->j(Lcom/beizi/fusion/work/c/c;)Lcom/beizi/fusion/widget/CustomRoundImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/beizi/fusion/work/c/c$2;->a:Lcom/beizi/fusion/work/c/c;

    iget-object v1, v1, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/widget/CustomRoundImageView;->setRectRadius(F)V

    .line 23
    iget-object v4, p0, Lcom/beizi/fusion/work/c/c$2;->a:Lcom/beizi/fusion/work/c/c;

    invoke-static {v4}, Lcom/beizi/fusion/work/c/c;->j(Lcom/beizi/fusion/work/c/c;)Lcom/beizi/fusion/widget/CustomRoundImageView;

    move-result-object v9

    move-object v8, p1

    invoke-virtual/range {v4 .. v9}, Lcom/beizi/fusion/work/c/a;->a(IIFLandroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    .line 24
    iget-object v0, p0, Lcom/beizi/fusion/work/c/c$2;->a:Lcom/beizi/fusion/work/c/c;

    invoke-static {v0}, Lcom/beizi/fusion/work/c/c;->j(Lcom/beizi/fusion/work/c/c;)Lcom/beizi/fusion/widget/CustomRoundImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 25
    :cond_5
    iget-object p1, p0, Lcom/beizi/fusion/work/c/c$2;->a:Lcom/beizi/fusion/work/c/c;

    invoke-static {p1}, Lcom/beizi/fusion/work/c/c;->j(Lcom/beizi/fusion/work/c/c;)Lcom/beizi/fusion/widget/CustomRoundImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/work/c/a;->a(Landroid/view/View;)V

    .line 26
    iget-object p1, p0, Lcom/beizi/fusion/work/c/c$2;->a:Lcom/beizi/fusion/work/c/c;

    invoke-static {p1}, Lcom/beizi/fusion/work/c/c;->k(Lcom/beizi/fusion/work/c/c;)V

    .line 27
    iget-object p1, p0, Lcom/beizi/fusion/work/c/c$2;->a:Lcom/beizi/fusion/work/c/c;

    invoke-static {p1}, Lcom/beizi/fusion/work/c/c;->l(Lcom/beizi/fusion/work/c/c;)V

    .line 28
    iget-object p1, p0, Lcom/beizi/fusion/work/c/c$2;->a:Lcom/beizi/fusion/work/c/c;

    invoke-static {p1}, Lcom/beizi/fusion/work/c/c;->m(Lcom/beizi/fusion/work/c/c;)V

    .line 29
    iget-object p1, p0, Lcom/beizi/fusion/work/c/c$2;->a:Lcom/beizi/fusion/work/c/c;

    invoke-virtual {p1}, Lcom/beizi/fusion/work/c/a;->az()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    iget-object p1, p0, Lcom/beizi/fusion/work/c/c$2;->a:Lcom/beizi/fusion/work/c/c;

    const-string v0, "sdk custom error "

    const-string v1, "onBitmapLoadFailed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x18697

    invoke-static {p1, v0, v1}, Lcom/beizi/fusion/work/c/c;->a(Lcom/beizi/fusion/work/c/c;Ljava/lang/String;I)V

    :cond_6
    :goto_1
    return-void
.end method

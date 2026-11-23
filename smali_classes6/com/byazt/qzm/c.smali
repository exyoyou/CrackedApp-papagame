.class public Lcom/byazt/qzm/c;
.super Lcom/byazt/un/uj;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2b6,
        0x14
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ete/ic;Ljava/lang/String;ZZZ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/byazt/un/uj;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ete/ic;Ljava/lang/String;ZZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c(Landroid/content/Context;)Landroid/view/View;
    .locals 9

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 8
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v2, 0x7e06ff02

    .line 9
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    const/high16 v2, -0x1000000

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 11
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v5, 0x7e06ffbc    # 4.48611E37f

    .line 13
    invoke-virtual {v2, v5}, Landroid/view/View;->setId(I)V

    const/4 v5, 0x0

    .line 14
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v5, 0x11

    .line 15
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 16
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 18
    new-instance v3, Lcom/byazt/ff/TTProgressBar;

    invoke-direct {v3, p1}, Lcom/byazt/ff/TTProgressBar;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/4 v7, 0x1

    const/high16 v8, 0x42700000    # 60.0f

    invoke-static {v7, v8, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v7, v8, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {v5, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v0, 0x7e06feaf

    .line 20
    invoke-virtual {v3, v0}, Landroid/view/View;->setId(I)V

    const/16 v0, 0xd

    .line 21
    invoke-virtual {v5, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 22
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    new-instance v0, Lcom/byazt/qzm/c$1;

    invoke-direct {v0, p0, p1, v3}, Lcom/byazt/qzm/c$1;-><init>(Lcom/byazt/qzm/c;Landroid/content/Context;Lcom/byazt/ff/TTProgressBar;)V

    const/16 v4, 0x140

    const-string v5, "tt_normalscreen_loading"

    invoke-static {p1, v5, v0, v4}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/qr/c;I)V

    .line 24
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1
.end method


# virtual methods
.method public c(Landroid/content/Context;Ljava/util/EnumSet;)Lcom/byazt/un/a;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/EnumSet<",
            "Lcom/byazt/dh/tt$c;",
            ">;)",
            "Lcom/byazt/un/a;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/byazt/nj/c;->t:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/qzm/c;->c(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/byazt/wol/LayoutVideoDetail;

    invoke-direct {v0, p1}, Lcom/byazt/wol/LayoutVideoDetail;-><init>(Landroid/content/Context;)V

    :goto_0
    move-object v3, v0

    if-nez v3, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/byazt/nj/c;->t:Z

    if-eqz v0, :cond_2

    .line 5
    new-instance v0, Lcom/byazt/un/a;

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-virtual {p0}, Lcom/byazt/nj/c;->or()Z

    move-result v8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v5, p2

    move-object v7, p0

    invoke-direct/range {v1 .. v9}, Lcom/byazt/un/a;-><init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/byazt/ete/ic;Lcom/byazt/dh/ve;ZLcom/byazt/hkv/c;)V

    goto :goto_1

    .line 6
    :cond_2
    new-instance v0, Lcom/byazt/un/n;

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v5, p2

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Lcom/byazt/un/n;-><init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/byazt/ete/ic;Lcom/byazt/dh/ve;Z)V

    :goto_1
    return-object v0
.end method

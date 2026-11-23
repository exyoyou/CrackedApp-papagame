.class public Lcom/byazt/xzj/RewardLpBottomView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2a3,
        0x505
    }
.end annotation


# instance fields
.field public c:Z

.field public tt:Lcom/byazt/rpt/SlideUpLoadMoreArrow;

.field public ve:Lcom/byazt/xzj/RewardLandingPageAppInfoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/xzj/RewardLpBottomView;->c:Z

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic c(Lcom/byazt/xzj/RewardLpBottomView;)Lcom/byazt/xzj/RewardLandingPageAppInfoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xzj/RewardLpBottomView;->ve:Lcom/byazt/xzj/RewardLandingPageAppInfoView;

    return-object p0
.end method

.method private c(Lcom/byazt/ete/ic;)Z
    .locals 1

    .line 10
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->i()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private tt(Lcom/byazt/ete/ic;Ljava/lang/String;)V
    .locals 2

    .line 5
    iget-boolean v0, p0, Lcom/byazt/xzj/RewardLpBottomView;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/byazt/xzj/RewardLandingPageAppInfoView;

    invoke-direct {v1, v0}, Lcom/byazt/xzj/RewardLandingPageAppInfoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/byazt/xzj/RewardLpBottomView;->ve:Lcom/byazt/xzj/RewardLandingPageAppInfoView;

    .line 8
    invoke-virtual {v1, p1, p2}, Lcom/byazt/xzj/RewardLandingPageAppInfoView;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 9
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 10
    iget-object p2, p0, Lcom/byazt/xzj/RewardLpBottomView;->ve:Lcom/byazt/xzj/RewardLandingPageAppInfoView;

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private uj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/xzj/RewardLpBottomView;->ve:Lcom/byazt/xzj/RewardLandingPageAppInfoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/byazt/xzj/RewardLpBottomView$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/byazt/xzj/RewardLpBottomView$1;-><init>(Lcom/byazt/xzj/RewardLpBottomView;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private ve()V
    .locals 4

    .line 1
    new-instance v0, Lcom/byazt/rpt/SlideUpLoadMoreArrow;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-boolean v2, p0, Lcom/byazt/xzj/RewardLpBottomView;->c:Z

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const/16 v2, 0xc

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 v2, 0x30

    .line 15
    .line 16
    :goto_0
    const/4 v3, 0x0

    .line 17
    invoke-direct {v0, v1, v2, v3}, Lcom/byazt/rpt/SlideUpLoadMoreArrow;-><init>(Landroid/content/Context;IZ)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/byazt/xzj/RewardLpBottomView;->tt:Lcom/byazt/rpt/SlideUpLoadMoreArrow;

    .line 21
    .line 22
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 23
    .line 24
    const/4 v1, -0x2

    .line 25
    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 30
    .line 31
    iget-object v1, p0, Lcom/byazt/xzj/RewardLpBottomView;->tt:Lcom/byazt/rpt/SlideUpLoadMoreArrow;

    .line 32
    .line 33
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/byazt/xzj/RewardLpBottomView;->tt:Lcom/byazt/rpt/SlideUpLoadMoreArrow;

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Lcom/byazt/rpt/SlideUpLoadMoreArrow;->c()V

    .line 15
    :cond_1
    invoke-direct {p0}, Lcom/byazt/xzj/RewardLpBottomView;->uj()V

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/byazt/xzj/RewardLpBottomView;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/xzj/RewardLpBottomView;->c:Z

    .line 3
    invoke-direct {p0}, Lcom/byazt/xzj/RewardLpBottomView;->ve()V

    .line 4
    invoke-static {p1}, Lcom/byazt/ete/my;->ve(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/byazt/xzj/RewardLpBottomView;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p1, 0x8

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    sget-object p2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v0, 0x0

    const/high16 v1, -0x78000000

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDownLoadClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/xzj/RewardLpBottomView;->ve:Lcom/byazt/xzj/RewardLandingPageAppInfoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/byazt/xzj/RewardLandingPageAppInfoView;->setDownLoadClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public tt()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/byazt/xzj/RewardLpBottomView;->tt:Lcom/byazt/rpt/SlideUpLoadMoreArrow;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/byazt/rpt/SlideUpLoadMoreArrow;->tt()V

    .line 4
    iget-object v0, p0, Lcom/byazt/xzj/RewardLpBottomView;->tt:Lcom/byazt/rpt/SlideUpLoadMoreArrow;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

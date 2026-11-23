.class public Lcom/byazt/cc/SlideUpView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c0,
        0x366
    }
.end annotation


# instance fields
.field public a:Landroid/animation/AnimatorSet;

.field public c:Landroid/widget/ImageView;

.field public n:Landroid/animation/AnimatorSet;

.field public sp:Landroid/animation/AnimatorSet;

.field public tt:Landroid/widget/ImageView;

.field public uj:Landroid/widget/ImageView;

.field public ve:Landroid/widget/ImageView;

.field public x:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/byazt/cc/SlideUpView;->tt(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private c(Landroid/content/Context;)Landroid/view/View;
    .locals 13

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x10

    .line 5
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setGravity(I)V

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 7
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/byazt/cc/SlideUpView;->ve:Landroid/widget/ImageView;

    const v3, 0x7e06feb7

    .line 9
    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 10
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 11
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v4, 0x1

    const/high16 v5, 0x42700000    # 60.0f

    invoke-static {v4, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 12
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xe

    .line 13
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0x8

    const v6, 0x7e06ff31

    .line 14
    invoke-virtual {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v7, -0x3e400000    # -24.0f

    .line 15
    invoke-static {p1, v7}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v7

    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 16
    iget-object v7, p0, Lcom/byazt/cc/SlideUpView;->ve:Landroid/widget/ImageView;

    const-string v8, "tt_splash_slide_up_circle"

    const/16 v9, 0x140

    invoke-static {p1, v8, v7, v9}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;I)V

    .line 17
    iget-object v7, p0, Lcom/byazt/cc/SlideUpView;->ve:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    .line 18
    iget-object v7, p0, Lcom/byazt/cc/SlideUpView;->ve:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    iget-object v2, p0, Lcom/byazt/cc/SlideUpView;->ve:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 20
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/byazt/cc/SlideUpView;->tt:Landroid/widget/ImageView;

    const v7, 0x7e06ffe3

    .line 21
    invoke-virtual {v2, v7}, Landroid/view/View;->setId(I)V

    .line 22
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v7, 0x41200000    # 10.0f

    .line 23
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v4, v7, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    .line 24
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v4, v8, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    float-to-int v10, v10

    invoke-direct {v2, v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 25
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 26
    invoke-virtual {v2, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 27
    invoke-virtual {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const-string v7, "tt_splash_slide_up_bg"

    .line 28
    iget-object v10, p0, Lcom/byazt/cc/SlideUpView;->tt:Landroid/widget/ImageView;

    invoke-static {p1, v7, v10, v9}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;I)V

    const/high16 v7, -0x3f200000    # -7.0f

    .line 29
    invoke-static {p1, v7}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v10

    iput v10, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 30
    iget-object v10, p0, Lcom/byazt/cc/SlideUpView;->tt:Landroid/widget/ImageView;

    invoke-virtual {v10, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    iget-object v2, p0, Lcom/byazt/cc/SlideUpView;->tt:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 32
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/byazt/cc/SlideUpView;->c:Landroid/widget/ImageView;

    const v10, 0x7e06febc

    .line 33
    invoke-virtual {v2, v10}, Landroid/view/View;->setId(I)V

    .line 34
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v10, 0x42b60000    # 91.0f

    .line 35
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v4, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    float-to-int v10, v10

    const/high16 v11, 0x42880000    # 68.0f

    .line 36
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    invoke-static {v4, v11, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    invoke-direct {v2, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 37
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 38
    invoke-virtual {v2, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 39
    invoke-virtual {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const-string v5, "tt_splash_slide_up_finger"

    .line 40
    iget-object v10, p0, Lcom/byazt/cc/SlideUpView;->c:Landroid/widget/ImageView;

    invoke-static {p1, v5, v10, v9}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;I)V

    .line 41
    invoke-static {p1, v7}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/high16 v5, -0x3e600000    # -20.0f

    .line 42
    invoke-static {p1, v5}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 43
    iget-object v5, p0, Lcom/byazt/cc/SlideUpView;->c:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/view/View;->setAlpha(F)V

    .line 44
    iget-object v5, p0, Lcom/byazt/cc/SlideUpView;->c:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object v2, p0, Lcom/byazt/cc/SlideUpView;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/byazt/cc/SlideUpView;->uj:Landroid/widget/ImageView;

    .line 47
    invoke-virtual {v2, v6}, Landroid/view/View;->setId(I)V

    .line 48
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v5, 0x41600000    # 14.0f

    .line 49
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    const/high16 v6, 0x42f80000    # 124.0f

    .line 50
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v4, v6, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {v2, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const-string v0, "tt_splash_slide_up_arrow"

    .line 52
    iget-object v3, p0, Lcom/byazt/cc/SlideUpView;->uj:Landroid/widget/ImageView;

    invoke-static {p1, v0, v3, v9}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;I)V

    .line 53
    iget-object p1, p0, Lcom/byazt/cc/SlideUpView;->uj:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object p1, p0, Lcom/byazt/cc/SlideUpView;->uj:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method public static synthetic c(Lcom/byazt/cc/SlideUpView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/SlideUpView;->tt:Landroid/widget/ImageView;

    return-object p0
.end method

.method private tt(Landroid/content/Context;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/byazt/cc/SlideUpView;->c(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 18

    move-object/from16 v0, p0

    .line 55
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lcom/byazt/cc/SlideUpView;->a:Landroid/animation/AnimatorSet;

    .line 56
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lcom/byazt/cc/SlideUpView;->sp:Landroid/animation/AnimatorSet;

    .line 57
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lcom/byazt/cc/SlideUpView;->x:Landroid/animation/AnimatorSet;

    .line 58
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lcom/byazt/cc/SlideUpView;->n:Landroid/animation/AnimatorSet;

    .line 59
    iget-object v1, v0, Lcom/byazt/cc/SlideUpView;->c:Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 60
    iget-object v3, v0, Lcom/byazt/cc/SlideUpView;->c:Landroid/widget/ImageView;

    new-array v5, v2, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 61
    iget-object v5, v0, Lcom/byazt/cc/SlideUpView;->c:Landroid/widget/ImageView;

    new-array v6, v2, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const/high16 v10, -0x3d240000    # -110.0f

    invoke-static {v9, v10}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v9

    int-to-float v9, v9

    const/4 v11, 0x1

    aput v9, v6, v11

    const-string v9, "translationY"

    invoke-static {v5, v9, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 62
    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v12, 0x3e4ccccd    # 0.2f

    const v13, 0x3e99999a    # 0.3f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v6, v12, v8, v13, v14}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v15, 0x42dc0000    # 110.0f

    invoke-static {v6, v15}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v6

    filled-new-array {v7, v6}, [I

    move-result-object v6

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 64
    new-instance v15, Lcom/byazt/cc/SlideUpView$1;

    invoke-direct {v15, v0}, Lcom/byazt/cc/SlideUpView$1;-><init>(Lcom/byazt/cc/SlideUpView;)V

    invoke-virtual {v6, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 65
    new-instance v15, Landroid/view/animation/PathInterpolator;

    invoke-direct {v15, v12, v8, v13, v14}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v6, v15}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 66
    iget-object v15, v0, Lcom/byazt/cc/SlideUpView;->tt:Landroid/widget/ImageView;

    new-array v12, v2, [F

    fill-array-data v12, :array_2

    invoke-static {v15, v4, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 67
    iget-object v15, v0, Lcom/byazt/cc/SlideUpView;->tt:Landroid/widget/ImageView;

    new-array v13, v2, [F

    fill-array-data v13, :array_3

    invoke-static {v15, v4, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 68
    iget-object v15, v0, Lcom/byazt/cc/SlideUpView;->ve:Landroid/widget/ImageView;

    new-array v14, v2, [F

    fill-array-data v14, :array_4

    invoke-static {v15, v4, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 69
    iget-object v15, v0, Lcom/byazt/cc/SlideUpView;->ve:Landroid/widget/ImageView;

    new-array v11, v2, [F

    fill-array-data v11, :array_5

    invoke-static {v15, v4, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 70
    iget-object v11, v0, Lcom/byazt/cc/SlideUpView;->ve:Landroid/widget/ImageView;

    new-array v15, v2, [F

    fill-array-data v15, :array_6

    const-string v10, "scaleX"

    invoke-static {v11, v10, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 71
    iget-object v11, v0, Lcom/byazt/cc/SlideUpView;->ve:Landroid/widget/ImageView;

    new-array v15, v2, [F

    fill-array-data v15, :array_7

    const-string v7, "scaleY"

    invoke-static {v11, v7, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 72
    iget-object v11, v0, Lcom/byazt/cc/SlideUpView;->ve:Landroid/widget/ImageView;

    new-array v15, v2, [F

    const/16 v17, 0x0

    aput v8, v15, v17

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v8, -0x3d240000    # -110.0f

    invoke-static {v2, v8}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    const/4 v8, 0x1

    aput v2, v15, v8

    invoke-static {v11, v9, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 73
    new-instance v8, Landroid/view/animation/PathInterpolator;

    move-object/from16 v16, v6

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const v11, 0x3e4ccccd    # 0.2f

    const v15, 0x3e99999a    # 0.3f

    invoke-direct {v8, v11, v9, v15, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 74
    iget-object v6, v0, Lcom/byazt/cc/SlideUpView;->a:Landroid/animation/AnimatorSet;

    const-wide/16 v8, 0x32

    invoke-virtual {v6, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 75
    iget-object v6, v0, Lcom/byazt/cc/SlideUpView;->x:Landroid/animation/AnimatorSet;

    const-wide/16 v8, 0x5dc

    invoke-virtual {v6, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 76
    iget-object v6, v0, Lcom/byazt/cc/SlideUpView;->sp:Landroid/animation/AnimatorSet;

    const-wide/16 v8, 0x32

    invoke-virtual {v6, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 77
    iget-object v6, v0, Lcom/byazt/cc/SlideUpView;->a:Landroid/animation/AnimatorSet;

    const/4 v8, 0x3

    new-array v9, v8, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v3, v9, v11

    const/4 v3, 0x1

    aput-object v4, v9, v3

    const/4 v4, 0x2

    aput-object v13, v9, v4

    invoke-virtual {v6, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 78
    iget-object v6, v0, Lcom/byazt/cc/SlideUpView;->sp:Landroid/animation/AnimatorSet;

    const/4 v9, 0x5

    new-array v9, v9, [Landroid/animation/Animator;

    aput-object v1, v9, v11

    aput-object v14, v9, v3

    aput-object v10, v9, v4

    aput-object v7, v9, v8

    const/4 v1, 0x4

    aput-object v12, v9, v1

    invoke-virtual {v6, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 79
    iget-object v1, v0, Lcom/byazt/cc/SlideUpView;->x:Landroid/animation/AnimatorSet;

    new-array v6, v8, [Landroid/animation/Animator;

    aput-object v5, v6, v11

    aput-object v16, v6, v3

    aput-object v2, v6, v4

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 80
    iget-object v1, v0, Lcom/byazt/cc/SlideUpView;->n:Landroid/animation/AnimatorSet;

    new-array v2, v8, [Landroid/animation/Animator;

    iget-object v5, v0, Lcom/byazt/cc/SlideUpView;->sp:Landroid/animation/AnimatorSet;

    aput-object v5, v2, v11

    iget-object v5, v0, Lcom/byazt/cc/SlideUpView;->x:Landroid/animation/AnimatorSet;

    aput-object v5, v2, v3

    iget-object v3, v0, Lcom/byazt/cc/SlideUpView;->a:Landroid/animation/AnimatorSet;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getSlideUpAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cc/SlideUpView;->n:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/cc/SlideUpView;->n:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/cc/SlideUpView;->sp:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/byazt/cc/SlideUpView;->a:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/byazt/cc/SlideUpView;->x:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3
    return-void
.end method

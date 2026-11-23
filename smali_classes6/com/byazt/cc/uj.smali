.class public Lcom/byazt/cc/uj;
.super Lcom/byazt/cc/ve;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c0,
        0xf
    }
.end annotation


# instance fields
.field public a:Landroid/widget/RelativeLayout;

.field public da:Landroid/widget/RelativeLayout;

.field public gt:Landroid/widget/RelativeLayout;

.field public gu:Landroid/view/View$OnClickListener;

.field public i:Landroid/widget/FrameLayout;

.field public m:Landroid/view/View;

.field public my:Landroid/widget/TextView;

.field public n:Lcom/byazt/nc/sp;

.field public nu:Landroid/widget/RelativeLayout;

.field public qy:Lcom/byazt/nr/zm;

.field public rh:Landroid/widget/TextView;

.field public rl:Landroid/widget/TextView;

.field public sl:Landroid/widget/ImageView;

.field public sp:Landroid/widget/ImageView;

.field public t:Landroid/widget/TextView;

.field public u:Landroid/widget/TextView;

.field public x:Landroid/view/View;

.field public yp:Landroid/widget/TextView;

.field public z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/cc/ve;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/byazt/cc/uj;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/uj;->i:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private a()Ljava/lang/Runnable;
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/cc/uj$8;

    invoke-direct {v0, p0}, Lcom/byazt/cc/uj$8;-><init>(Lcom/byazt/cc/uj;)V

    return-object v0
.end method

.method private c(Landroid/content/Context;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 4
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v6, "#B3000000"

    .line 6
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/byazt/cc/uj;->a:Landroid/widget/RelativeLayout;

    const v6, 0x7e06fe6a

    .line 9
    invoke-virtual {v4, v6}, Landroid/view/View;->setId(I)V

    .line 10
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 11
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    const/4 v8, 0x1

    const/high16 v9, 0x438c0000    # 280.0f

    invoke-static {v8, v9, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    const/4 v10, -0x2

    invoke-direct {v4, v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xd

    .line 12
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 13
    iget-object v11, v0, Lcom/byazt/cc/uj;->a:Landroid/widget/RelativeLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 14
    iget-object v11, v0, Lcom/byazt/cc/uj;->a:Landroid/widget/RelativeLayout;

    const/4 v13, 0x4

    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object v11, v0, Lcom/byazt/cc/uj;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v11, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object v4, v0, Lcom/byazt/cc/uj;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/byazt/cc/uj;->x:Landroid/view/View;

    const v11, 0x7e06fe69

    .line 18
    invoke-virtual {v4, v11}, Landroid/view/View;->setId(I)V

    .line 19
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 20
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v8, v9, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    const/high16 v11, 0x43b90000    # 370.0f

    .line 21
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    invoke-static {v8, v11, v13}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    invoke-direct {v4, v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 22
    iget-object v9, v0, Lcom/byazt/cc/uj;->x:Landroid/view/View;

    invoke-virtual {v9, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    iget-object v4, v0, Lcom/byazt/cc/uj;->a:Landroid/widget/RelativeLayout;

    iget-object v9, v0, Lcom/byazt/cc/uj;->x:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 24
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v9, 0x7e06fe68

    .line 25
    invoke-virtual {v4, v9}, Landroid/view/View;->setId(I)V

    .line 26
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v13, 0x43020000    # 130.0f

    .line 27
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-static {v8, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    float-to-int v13, v13

    invoke-direct {v11, v5, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 28
    invoke-virtual {v4, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    iget-object v11, v0, Lcom/byazt/cc/uj;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 30
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lcom/byazt/cc/uj;->yp:Landroid/widget/TextView;

    const v13, 0x7e06fe67

    .line 31
    invoke-virtual {v11, v13}, Landroid/view/View;->setId(I)V

    .line 32
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v13, 0x42200000    # 40.0f

    .line 33
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-static {v8, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    float-to-int v13, v13

    .line 34
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    const/high16 v15, 0x41c00000    # 24.0f

    invoke-static {v8, v15, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    float-to-int v14, v14

    invoke-direct {v11, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v13, 0xa

    .line 35
    invoke-virtual {v11, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v13, 0x15

    .line 36
    invoke-virtual {v11, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v13, 0x41000000    # 8.0f

    .line 37
    invoke-static {v1, v13}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v14

    iput v14, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/high16 v14, 0x41200000    # 10.0f

    .line 38
    invoke-static {v1, v14}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v14

    iput v14, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/high16 v14, 0x40800000    # 4.0f

    .line 39
    invoke-static {v1, v14}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v14

    iput v14, v11, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 40
    iget-object v14, v0, Lcom/byazt/cc/uj;->yp:Landroid/widget/TextView;

    invoke-virtual {v14, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    iget-object v11, v0, Lcom/byazt/cc/ve;->c:Landroid/content/Context;

    const-string v14, "tt_splash_card_feedback_bg"

    iget-object v6, v0, Lcom/byazt/cc/uj;->yp:Landroid/widget/TextView;

    const/16 v15, 0x140

    invoke-static {v11, v14, v6, v15}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;I)V

    .line 42
    iget-object v6, v0, Lcom/byazt/cc/uj;->yp:Landroid/widget/TextView;

    const/16 v11, 0x11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 43
    iget-object v6, v0, Lcom/byazt/cc/uj;->yp:Landroid/widget/TextView;

    const-string v14, "\u53cd\u9988"

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v6, v0, Lcom/byazt/cc/uj;->yp:Landroid/widget/TextView;

    const-string v14, "#99FFFFFF"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    iget-object v6, v0, Lcom/byazt/cc/uj;->yp:Landroid/widget/TextView;

    const/high16 v14, 0x41400000    # 12.0f

    const/4 v7, 0x2

    invoke-virtual {v6, v7, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 46
    iget-object v6, v0, Lcom/byazt/cc/uj;->yp:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 47
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/byazt/cc/uj;->da:Landroid/widget/RelativeLayout;

    const v6, 0x7e06fe66

    .line 48
    invoke-virtual {v4, v6}, Landroid/view/View;->setId(I)V

    .line 49
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v6, 0x43700000    # 240.0f

    .line 50
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-static {v8, v6, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x3

    .line 51
    invoke-virtual {v4, v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 52
    iget-object v9, v0, Lcom/byazt/cc/uj;->da:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v4, v0, Lcom/byazt/cc/uj;->da:Landroid/widget/RelativeLayout;

    const-string v9, "#D9FFFFFF"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 54
    iget-object v4, v0, Lcom/byazt/cc/uj;->a:Landroid/widget/RelativeLayout;

    iget-object v9, v0, Lcom/byazt/cc/uj;->da:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 55
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/byazt/cc/uj;->i:Landroid/widget/FrameLayout;

    const v9, 0x7e06fe65

    .line 56
    invoke-virtual {v4, v9}, Landroid/view/View;->setId(I)V

    .line 57
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 58
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    const/high16 v11, 0x42a80000    # 84.0f

    invoke-static {v8, v11, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    float-to-int v14, v14

    .line 59
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-static {v8, v11, v15}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    invoke-direct {v4, v14, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0xe

    .line 60
    invoke-virtual {v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v14, -0x3dd80000    # -42.0f

    .line 61
    invoke-static {v1, v14}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v14

    iput v14, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 62
    iget-object v14, v0, Lcom/byazt/cc/uj;->i:Landroid/widget/FrameLayout;

    const/high16 v15, 0x40400000    # 3.0f

    invoke-static {v1, v15}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setElevation(F)V

    .line 63
    iget-object v14, v0, Lcom/byazt/cc/uj;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v14, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v4, v0, Lcom/byazt/cc/uj;->da:Landroid/widget/RelativeLayout;

    iget-object v14, v0, Lcom/byazt/cc/uj;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 65
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/byazt/cc/uj;->sl:Landroid/widget/ImageView;

    const v14, 0x7e06fe64

    .line 66
    invoke-virtual {v4, v14}, Landroid/view/View;->setId(I)V

    .line 67
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/high16 v14, 0x40000000    # 2.0f

    .line 68
    invoke-static {v1, v14}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v15

    invoke-static {v1, v14}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v13

    invoke-static {v1, v14}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v7

    invoke-static {v1, v14}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v14

    invoke-virtual {v4, v15, v13, v7, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 69
    iget-object v7, v0, Lcom/byazt/cc/uj;->sl:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v4, v0, Lcom/byazt/cc/uj;->i:Landroid/widget/FrameLayout;

    iget-object v7, v0, Lcom/byazt/cc/uj;->sl:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 73
    invoke-virtual {v4, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 75
    invoke-virtual {v7, v12}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v12, 0x40c00000    # 6.0f

    .line 76
    invoke-static {v1, v12}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v12

    int-to-float v13, v12

    .line 77
    invoke-virtual {v7, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 78
    div-int/2addr v12, v6

    invoke-virtual {v7, v12, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 79
    invoke-virtual {v4, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v7, v0, Lcom/byazt/cc/uj;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 81
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/byazt/cc/uj;->t:Landroid/widget/TextView;

    const v7, 0x7e06fe63

    .line 82
    invoke-virtual {v4, v7}, Landroid/view/View;->setId(I)V

    .line 83
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 84
    invoke-virtual {v4, v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 85
    invoke-virtual {v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v9, 0x41800000    # 16.0f

    .line 86
    invoke-static {v1, v9}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v9

    iput v9, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 87
    iget-object v9, v0, Lcom/byazt/cc/uj;->t:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v4, v0, Lcom/byazt/cc/uj;->t:Landroid/widget/TextView;

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 89
    iget-object v4, v0, Lcom/byazt/cc/uj;->t:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 90
    iget-object v4, v0, Lcom/byazt/cc/uj;->t:Landroid/widget/TextView;

    const-string v9, "#161823"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object v4, v0, Lcom/byazt/cc/uj;->t:Landroid/widget/TextView;

    const/high16 v9, 0x41a00000    # 20.0f

    const/4 v12, 0x2

    invoke-virtual {v4, v12, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 92
    iget-object v4, v0, Lcom/byazt/cc/uj;->da:Landroid/widget/RelativeLayout;

    iget-object v9, v0, Lcom/byazt/cc/uj;->t:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/byazt/cc/uj;->u:Landroid/widget/TextView;

    const v9, 0x7e06fe62

    .line 94
    invoke-virtual {v4, v9}, Landroid/view/View;->setId(I)V

    .line 95
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 96
    invoke-virtual {v4, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 97
    invoke-virtual {v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v7, 0x42280000    # 42.0f

    .line 98
    invoke-static {v1, v7}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 99
    invoke-static {v1, v7}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    const/high16 v7, 0x41000000    # 8.0f

    .line 100
    invoke-static {v1, v7}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v12

    iput v12, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 101
    iget-object v7, v0, Lcom/byazt/cc/uj;->u:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v4, v0, Lcom/byazt/cc/uj;->u:Landroid/widget/TextView;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 103
    iget-object v4, v0, Lcom/byazt/cc/uj;->u:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 104
    iget-object v4, v0, Lcom/byazt/cc/uj;->u:Landroid/widget/TextView;

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 105
    iget-object v4, v0, Lcom/byazt/cc/uj;->u:Landroid/widget/TextView;

    const-string v12, "#90161823"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    iget-object v4, v0, Lcom/byazt/cc/uj;->u:Landroid/widget/TextView;

    const/high16 v12, 0x41600000    # 14.0f

    invoke-virtual {v4, v7, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 107
    iget-object v4, v0, Lcom/byazt/cc/uj;->da:Landroid/widget/RelativeLayout;

    iget-object v7, v0, Lcom/byazt/cc/uj;->u:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/byazt/cc/uj;->nu:Landroid/widget/RelativeLayout;

    const v7, 0x7e06fe61

    .line 109
    invoke-virtual {v4, v7}, Landroid/view/View;->setId(I)V

    .line 110
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v7, 0x43400000    # 192.0f

    .line 111
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    invoke-static {v8, v7, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    .line 112
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    const/high16 v13, 0x42100000    # 36.0f

    invoke-static {v8, v13, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v12, v12

    invoke-direct {v4, v7, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 113
    invoke-virtual {v4, v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 114
    invoke-virtual {v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 115
    invoke-static {v1, v13}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v7

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 116
    iget-object v7, v0, Lcom/byazt/cc/uj;->nu:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v4, v0, Lcom/byazt/cc/ve;->c:Landroid/content/Context;

    const-string v7, "tt_splash_card_btn_bg"

    iget-object v12, v0, Lcom/byazt/cc/uj;->nu:Landroid/widget/RelativeLayout;

    const/16 v14, 0x140

    invoke-static {v4, v7, v12, v14}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;I)V

    .line 118
    iget-object v4, v0, Lcom/byazt/cc/uj;->nu:Landroid/widget/RelativeLayout;

    const/16 v7, 0x11

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 119
    iget-object v4, v0, Lcom/byazt/cc/uj;->da:Landroid/widget/RelativeLayout;

    iget-object v7, v0, Lcom/byazt/cc/uj;->nu:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 120
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/byazt/cc/uj;->rh:Landroid/widget/TextView;

    const v7, 0x7e06fe60

    .line 121
    invoke-virtual {v4, v7}, Landroid/view/View;->setId(I)V

    .line 122
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 123
    invoke-virtual {v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 124
    iget-object v7, v0, Lcom/byazt/cc/uj;->rh:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v4, v0, Lcom/byazt/cc/uj;->rh:Landroid/widget/TextView;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 126
    iget-object v4, v0, Lcom/byazt/cc/uj;->rh:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 127
    iget-object v4, v0, Lcom/byazt/cc/uj;->rh:Landroid/widget/TextView;

    const-string v7, "#FFFFFF"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    iget-object v4, v0, Lcom/byazt/cc/uj;->rh:Landroid/widget/TextView;

    const/high16 v7, 0x41600000    # 14.0f

    const/4 v12, 0x2

    invoke-virtual {v4, v12, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 129
    iget-object v4, v0, Lcom/byazt/cc/uj;->rh:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 130
    iget-object v4, v0, Lcom/byazt/cc/uj;->nu:Landroid/widget/RelativeLayout;

    iget-object v7, v0, Lcom/byazt/cc/uj;->rh:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 131
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/byazt/cc/uj;->my:Landroid/widget/TextView;

    const v7, 0x7e06fe5f

    .line 132
    invoke-virtual {v4, v7}, Landroid/view/View;->setId(I)V

    .line 133
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v7, 0x7e06fe60

    .line 134
    invoke-virtual {v4, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 135
    invoke-virtual {v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 136
    iget-object v7, v0, Lcom/byazt/cc/uj;->my:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v4, v0, Lcom/byazt/cc/uj;->my:Landroid/widget/TextView;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 138
    iget-object v4, v0, Lcom/byazt/cc/uj;->my:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 139
    iget-object v4, v0, Lcom/byazt/cc/uj;->my:Landroid/widget/TextView;

    const-string v7, "#AAFFFFFF"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    iget-object v4, v0, Lcom/byazt/cc/uj;->my:Landroid/widget/TextView;

    const/high16 v7, 0x41300000    # 11.0f

    const/4 v12, 0x2

    invoke-virtual {v4, v12, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 141
    iget-object v4, v0, Lcom/byazt/cc/uj;->nu:Landroid/widget/RelativeLayout;

    iget-object v7, v0, Lcom/byazt/cc/uj;->my:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 142
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/byazt/cc/uj;->gt:Landroid/widget/RelativeLayout;

    const v7, 0x7e06fe5e

    .line 143
    invoke-virtual {v4, v7}, Landroid/view/View;->setId(I)V

    .line 144
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v7, 0x43400000    # 192.0f

    .line 145
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    invoke-static {v8, v7, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    .line 146
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    invoke-static {v8, v13, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v12, v12

    invoke-direct {v4, v7, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 147
    invoke-virtual {v4, v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 148
    invoke-virtual {v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 149
    invoke-static {v1, v13}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v7

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 150
    iget-object v7, v0, Lcom/byazt/cc/uj;->gt:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object v4, v0, Lcom/byazt/cc/ve;->c:Landroid/content/Context;

    const-string v7, "tt_splash_card_btn_bg"

    iget-object v9, v0, Lcom/byazt/cc/uj;->gt:Landroid/widget/RelativeLayout;

    const/16 v12, 0x140

    invoke-static {v4, v7, v9, v12}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;I)V

    .line 152
    iget-object v4, v0, Lcom/byazt/cc/uj;->gt:Landroid/widget/RelativeLayout;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v4, v0, Lcom/byazt/cc/uj;->da:Landroid/widget/RelativeLayout;

    iget-object v7, v0, Lcom/byazt/cc/uj;->gt:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 154
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 155
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xd

    .line 156
    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 157
    invoke-virtual {v4, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v7, v0, Lcom/byazt/cc/uj;->gt:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 159
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v9, 0x7e06fe5d

    .line 160
    invoke-virtual {v7, v9}, Landroid/view/View;->setId(I)V

    .line 161
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v12, 0x41b80000    # 23.0f

    .line 162
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    invoke-static {v8, v12, v13}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v12, v12

    .line 163
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    const/high16 v14, 0x41c00000    # 24.0f

    invoke-static {v8, v14, v13}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    float-to-int v13, v13

    invoke-direct {v9, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0x9

    .line 164
    invoke-virtual {v9, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v12, 0xf

    .line 165
    invoke-virtual {v9, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 166
    invoke-virtual {v7, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object v9, v0, Lcom/byazt/cc/ve;->c:Landroid/content/Context;

    const-string v12, "tt_splash_card_shake"

    const/16 v13, 0xa0

    invoke-static {v9, v12, v7, v13}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;I)V

    .line 168
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 169
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/byazt/cc/uj;->rl:Landroid/widget/TextView;

    const v9, 0x7e06fe5c

    .line 170
    invoke-virtual {v7, v9}, Landroid/view/View;->setId(I)V

    .line 171
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v9, 0x41000000    # 8.0f

    .line 172
    invoke-static {v1, v9}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v12

    iput v12, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const v9, 0x7e06fe5d

    .line 173
    invoke-virtual {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0xf

    .line 174
    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 175
    iget-object v9, v0, Lcom/byazt/cc/uj;->rl:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v7, v0, Lcom/byazt/cc/uj;->rl:Landroid/widget/TextView;

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 177
    iget-object v7, v0, Lcom/byazt/cc/uj;->rl:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 178
    iget-object v7, v0, Lcom/byazt/cc/uj;->rl:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 179
    iget-object v7, v0, Lcom/byazt/cc/uj;->rl:Landroid/widget/TextView;

    const-string v9, "#FFFFFF"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    iget-object v7, v0, Lcom/byazt/cc/uj;->rl:Landroid/widget/TextView;

    const/high16 v9, 0x41500000    # 13.0f

    const/4 v12, 0x2

    invoke-virtual {v7, v12, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 181
    iget-object v7, v0, Lcom/byazt/cc/uj;->rl:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 182
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/byazt/cc/uj;->z:Landroid/widget/TextView;

    const v7, 0x7e06fe5a

    .line 183
    invoke-virtual {v4, v7}, Landroid/view/View;->setId(I)V

    .line 184
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x14

    .line 185
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v7, 0xc

    .line 186
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v7, 0x41000000    # 8.0f

    .line 187
    invoke-static {v1, v7}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 188
    invoke-static {v1, v7}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v7

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 189
    iget-object v7, v0, Lcom/byazt/cc/uj;->z:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    iget-object v4, v0, Lcom/byazt/cc/ve;->c:Landroid/content/Context;

    iget-object v7, v0, Lcom/byazt/cc/uj;->z:Landroid/widget/TextView;

    invoke-static {v4, v8, v7}, Lcom/byazt/fh/uj;->c(Landroid/content/Context;ILandroid/view/View;)V

    .line 191
    iget-object v4, v0, Lcom/byazt/cc/uj;->da:Landroid/widget/RelativeLayout;

    iget-object v7, v0, Lcom/byazt/cc/uj;->z:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 192
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/byazt/cc/uj;->m:Landroid/view/View;

    const v7, 0x7e06fe5b

    .line 193
    invoke-virtual {v4, v7}, Landroid/view/View;->setId(I)V

    .line 194
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v7, 0x42000000    # 32.0f

    .line 195
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v8, v7, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    const/high16 v9, 0x42000000    # 32.0f

    .line 196
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v8, v9, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v4, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v2, 0x7e06fe6a

    .line 197
    invoke-virtual {v4, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 198
    invoke-virtual {v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v2, 0x42400000    # 48.0f

    .line 199
    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v2

    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 200
    iget-object v2, v0, Lcom/byazt/cc/uj;->m:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    iget-object v2, v0, Lcom/byazt/cc/ve;->c:Landroid/content/Context;

    const-string v4, "tt_splash_card_close"

    iget-object v6, v0, Lcom/byazt/cc/uj;->m:Landroid/view/View;

    const/16 v7, 0x140

    invoke-static {v2, v4, v6, v7}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;I)V

    .line 202
    iget-object v2, v0, Lcom/byazt/cc/uj;->m:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 203
    new-instance v2, Lcom/byazt/ff/TTRoundRectImageView;

    invoke-direct {v2, v1}, Lcom/byazt/ff/TTRoundRectImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/byazt/cc/uj;->sp:Landroid/widget/ImageView;

    const v1, 0x7e06fe59    # 4.48593E37f

    .line 204
    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    .line 205
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 206
    iget-object v2, v0, Lcom/byazt/cc/uj;->sp:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v1, v0, Lcom/byazt/cc/uj;->sp:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 208
    iget-object v1, v0, Lcom/byazt/cc/uj;->sp:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v3
.end method

.method public static synthetic c(Lcom/byazt/cc/uj;)Landroid/view/View;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/cc/uj;->x:Landroid/view/View;

    return-object p0
.end method

.method private c(Lcom/byazt/ete/ic;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/byazt/cc/uj;->a:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    return-void

    .line 230
    :cond_1
    invoke-static {p1}, Lcom/byazt/ete/oz;->n(Lcom/byazt/ete/ic;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    return-void

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/byazt/cc/uj;->gt:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 232
    iget-object v0, p0, Lcom/byazt/cc/uj;->nu:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-static {v0, v3}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 233
    iget-object v0, p0, Lcom/byazt/cc/uj;->rl:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 234
    invoke-static {p1}, Lcom/byazt/ete/oz;->uj(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/byazt/cc/uj;->qy:Lcom/byazt/nr/zm;

    if-nez v0, :cond_4

    .line 236
    new-instance v0, Lcom/byazt/nr/zm;

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 237
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v4

    invoke-virtual {v4}, Lcom/byazt/omf/x;->uj()Z

    move-result v4

    invoke-direct {v0, v3, v1, v4}, Lcom/byazt/nr/zm;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/byazt/cc/uj;->qy:Lcom/byazt/nr/zm;

    .line 238
    :cond_4
    iget-object v0, p0, Lcom/byazt/cc/uj;->qy:Lcom/byazt/nr/zm;

    iget-object v1, p0, Lcom/byazt/cc/ve;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->br()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->tt(F)V

    .line 239
    iget-object v0, p0, Lcom/byazt/cc/uj;->qy:Lcom/byazt/nr/zm;

    iget-object v1, p0, Lcom/byazt/cc/ve;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->lv()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->c(Lorg/json/JSONObject;)V

    .line 240
    iget-object v0, p0, Lcom/byazt/cc/uj;->qy:Lcom/byazt/nr/zm;

    iget-object v1, p0, Lcom/byazt/cc/ve;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->yx()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->tt(Lorg/json/JSONObject;)V

    .line 241
    iget-object v0, p0, Lcom/byazt/cc/uj;->qy:Lcom/byazt/nr/zm;

    iget-object v1, p0, Lcom/byazt/cc/ve;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->pe()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->a(I)V

    .line 242
    iget-object v0, p0, Lcom/byazt/cc/uj;->qy:Lcom/byazt/nr/zm;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->ge()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->c(F)V

    .line 243
    iget-object v0, p0, Lcom/byazt/cc/uj;->qy:Lcom/byazt/nr/zm;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->cy()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->ve(Lorg/json/JSONObject;)V

    .line 244
    iget-object v0, p0, Lcom/byazt/cc/uj;->qy:Lcom/byazt/nr/zm;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->e()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/byazt/nr/zm;->n(I)V

    .line 245
    iget-object p1, p0, Lcom/byazt/cc/uj;->qy:Lcom/byazt/nr/zm;

    new-instance v0, Lcom/byazt/cc/uj$5;

    invoke-direct {v0, p0}, Lcom/byazt/cc/uj$5;-><init>(Lcom/byazt/cc/uj;)V

    invoke-virtual {p1, v0}, Lcom/byazt/nr/zm;->c(Lcom/byazt/nr/zm$c;)V

    .line 246
    iget-object p1, p0, Lcom/byazt/cc/uj;->qy:Lcom/byazt/nr/zm;

    iget-object v0, p0, Lcom/byazt/cc/ve;->ve:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->eo()I

    move-result v2

    :cond_5
    invoke-virtual {p1, v2}, Lcom/byazt/nr/zm;->c(I)Z

    return-void
.end method

.method public static synthetic i(Lcom/byazt/cc/uj;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/uj;->nu:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/cc/uj;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/cc/uj;->a()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic sp(Lcom/byazt/cc/uj;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/uj;->t:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/cc/uj;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/uj;->sp:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/cc/uj;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/uj;->a:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/cc/uj;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/uj;->gu:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static synthetic x(Lcom/byazt/cc/uj;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/uj;->u:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "splash_card_show"

    return-object v0
.end method

.method public c(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ete/ic;)V
    .locals 1

    .line 209
    invoke-super {p0, p1, p2, p3}, Lcom/byazt/cc/ve;->c(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ete/ic;)V

    .line 210
    iget-object p1, p0, Lcom/byazt/cc/ve;->c:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/byazt/cc/uj;->c(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 211
    :cond_0
    iget-object p2, p0, Lcom/byazt/cc/ve;->tt:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 212
    iget-object p1, p0, Lcom/byazt/cc/uj;->a:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/byazt/cc/uj$1;

    invoke-direct {p2, p0}, Lcom/byazt/cc/uj$1;-><init>(Lcom/byazt/cc/uj;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 213
    iget-object p1, p0, Lcom/byazt/cc/uj;->a:Landroid/widget/RelativeLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 214
    iget-object p1, p0, Lcom/byazt/cc/uj;->sp:Landroid/widget/ImageView;

    new-instance p3, Lcom/byazt/cc/uj$2;

    invoke-direct {p3, p0}, Lcom/byazt/cc/uj$2;-><init>(Lcom/byazt/cc/uj;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 215
    iget-object p1, p0, Lcom/byazt/cc/uj;->sp:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 216
    iget-object p1, p0, Lcom/byazt/cc/uj;->z:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/byazt/cc/ve;->ve:Lcom/byazt/ete/ic;

    invoke-static {p1, p2}, Lcom/byazt/aas/pf;->c(Landroid/widget/TextView;Lcom/byazt/ete/ic;)V

    .line 217
    iget-object p1, p0, Lcom/byazt/cc/ve;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->pa()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 218
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_1

    .line 219
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/ete/zb;

    invoke-static {p1}, Lcom/byazt/xky/tt;->c(Lcom/byazt/ete/zb;)Lcom/byazt/yj/yp;

    move-result-object p1

    const/4 p3, 0x2

    invoke-interface {p1, p3}, Lcom/byazt/yj/yp;->type(I)Lcom/byazt/yj/yp;

    move-result-object p1

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {p1, p3}, Lcom/byazt/yj/yp;->config(Landroid/graphics/Bitmap$Config;)Lcom/byazt/yj/yp;

    move-result-object p1

    new-instance p3, Lcom/byazt/cc/uj$3;

    invoke-direct {p3, p0}, Lcom/byazt/cc/uj$3;-><init>(Lcom/byazt/cc/uj;)V

    const/4 v0, 0x4

    .line 220
    invoke-interface {p1, p3, v0}, Lcom/byazt/yj/yp;->to(Lcom/byazt/yj/gr;I)Lcom/byazt/yj/t;

    .line 221
    :cond_1
    iget-object p1, p0, Lcom/byazt/cc/ve;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->te()Lcom/byazt/ete/zb;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/xky/tt;->c(Lcom/byazt/ete/zb;)Lcom/byazt/yj/yp;

    move-result-object p1

    iget-object p3, p0, Lcom/byazt/cc/uj;->sl:Landroid/widget/ImageView;

    invoke-interface {p1, p3}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    .line 222
    iget-object p1, p0, Lcom/byazt/cc/uj;->t:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/byazt/cc/uj;->ve()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object p1, p0, Lcom/byazt/cc/uj;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/byazt/cc/uj;->uj()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object p1, p0, Lcom/byazt/cc/uj;->yp:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/byazt/cc/ve;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {p3}, Lcom/byazt/ete/ic;->fe()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object p1, p0, Lcom/byazt/cc/uj;->yp:Landroid/widget/TextView;

    new-instance p2, Lcom/byazt/cc/uj$4;

    invoke-direct {p2, p0}, Lcom/byazt/cc/uj$4;-><init>(Lcom/byazt/cc/uj;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object p1, p0, Lcom/byazt/cc/uj;->rh:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/byazt/cc/ve;->ve:Lcom/byazt/ete/ic;

    invoke-static {p2}, Lcom/byazt/ete/oz;->uj(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object p1, p0, Lcom/byazt/cc/uj;->my:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/byazt/cc/ve;->ve:Lcom/byazt/ete/ic;

    invoke-static {p2}, Lcom/byazt/ete/oz;->ve(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object p1, p0, Lcom/byazt/cc/ve;->ve:Lcom/byazt/ete/ic;

    invoke-direct {p0, p1}, Lcom/byazt/cc/uj;->c(Lcom/byazt/ete/ic;)V

    return-void
.end method

.method public c(Lcom/byazt/hkv/c;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 247
    :cond_0
    iput-object p1, p0, Lcom/byazt/cc/uj;->gu:Landroid/view/View$OnClickListener;

    .line 248
    iget-object p1, p0, Lcom/byazt/cc/ve;->ve:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ete/oz;->sp(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 249
    iget-object p1, p0, Lcom/byazt/cc/uj;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object p1, p0, Lcom/byazt/cc/uj;->x:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object p1, p0, Lcom/byazt/cc/uj;->sl:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object p1, p0, Lcom/byazt/cc/uj;->t:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object p1, p0, Lcom/byazt/cc/uj;->u:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object p1, p0, Lcom/byazt/cc/uj;->da:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    :cond_1
    iget-object p1, p0, Lcom/byazt/cc/uj;->nu:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public c(Lcom/byazt/un/uj;Lcom/byazt/cc/i$c;)V
    .locals 0

    .line 256
    invoke-super {p0, p1, p2}, Lcom/byazt/cc/ve;->c(Lcom/byazt/un/uj;Lcom/byazt/cc/i$c;)V

    .line 257
    iget-object p1, p0, Lcom/byazt/cc/ve;->tt:Landroid/view/ViewGroup;

    new-instance p2, Lcom/byazt/cc/uj$6;

    invoke-direct {p2, p0}, Lcom/byazt/cc/uj$6;-><init>(Lcom/byazt/cc/uj;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 258
    iget-object p1, p0, Lcom/byazt/cc/ve;->uj:Lcom/byazt/cc/i$c;

    if-eqz p1, :cond_0

    .line 259
    iget-object p1, p0, Lcom/byazt/cc/uj;->m:Landroid/view/View;

    new-instance p2, Lcom/byazt/cc/uj$7;

    invoke-direct {p2, p0}, Lcom/byazt/cc/uj$7;-><init>(Lcom/byazt/cc/uj;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    :cond_0
    iget-object p1, p0, Lcom/byazt/cc/ve;->ve:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ete/oz;->i(Lcom/byazt/ete/ic;)V

    return-void
.end method

.method public c(Z)V
    .locals 3

    .line 261
    invoke-super {p0, p1}, Lcom/byazt/cc/ve;->c(Z)V

    .line 262
    iget-object v0, p0, Lcom/byazt/cc/ve;->uj:Lcom/byazt/cc/i$c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-wide/16 v1, -0x1

    .line 263
    invoke-interface {v0, v1, v2}, Lcom/byazt/cc/i$c;->c(J)V

    goto :goto_0

    .line 264
    :cond_1
    invoke-interface {v0}, Lcom/byazt/cc/i$c;->c()V

    .line 265
    :goto_0
    iget-object v0, p0, Lcom/byazt/cc/uj;->qy:Lcom/byazt/nr/zm;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 266
    iget-object p1, p0, Lcom/byazt/cc/ve;->ve:Lcom/byazt/ete/ic;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->eo()I

    move-result v1

    :cond_2
    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->c(I)Z

    return-void

    .line 267
    :cond_3
    iget-object p1, p0, Lcom/byazt/cc/ve;->ve:Lcom/byazt/ete/ic;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->eo()I

    move-result v1

    :cond_4
    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->tt(I)V

    :cond_5
    return-void
.end method

.method public n()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/byazt/cc/ve;->uj:Lcom/byazt/cc/i$c;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/byazt/cc/uj;->n:Lcom/byazt/nc/sp;

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Lcom/byazt/dyf/tt;

    invoke-interface {v0}, Lcom/byazt/cc/i$c;->getActivity()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/byazt/cc/ve;->ve:Lcom/byazt/ete/ic;

    .line 5
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->wq()Lcom/byazt/vo/tt;

    move-result-object v4

    const-string v5, "splash_ad"

    const/4 v6, 0x1

    .line 6
    invoke-static {}, Lcom/byazt/xky/tt;->c()Lcom/byazt/dyf/c;

    move-result-object v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/byazt/dyf/tt;-><init>(Landroid/content/Context;Lcom/byazt/vo/tt;Ljava/lang/String;ZLcom/byazt/dyf/c;)V

    iput-object v1, p0, Lcom/byazt/cc/uj;->n:Lcom/byazt/nc/sp;

    .line 7
    iget-object v0, p0, Lcom/byazt/cc/ve;->uj:Lcom/byazt/cc/i$c;

    invoke-interface {v0}, Lcom/byazt/cc/i$c;->getActivity()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/cc/ve;->ve:Lcom/byazt/ete/ic;

    iget-object v2, p0, Lcom/byazt/cc/uj;->n:Lcom/byazt/nc/sp;

    check-cast v2, Lcom/byazt/dyf/tt;

    invoke-static {v0, v1, v2}, Lcom/byazt/tl/ve;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dyf/tt;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/byazt/cc/uj;->n:Lcom/byazt/nc/sp;

    const-string v1, "splash_card"

    invoke-virtual {v0, v1}, Lcom/byazt/nc/sp;->setDislikeSource(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/byazt/cc/uj;->n:Lcom/byazt/nc/sp;

    invoke-virtual {v0}, Lcom/byazt/nc/sp;->showDislikeDialog()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7e06fe61

    .line 6
    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const v1, 0x7e06fe69

    .line 17
    .line 18
    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const v1, 0x7e06fe64

    .line 28
    .line 29
    .line 30
    if-ne v0, v1, :cond_2

    .line 31
    .line 32
    const/4 v0, 0x2

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const v1, 0x7e06fe63

    .line 39
    .line 40
    .line 41
    if-ne v0, v1, :cond_3

    .line 42
    .line 43
    const/4 v0, 0x3

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const v1, 0x7e06fe62

    .line 50
    .line 51
    .line 52
    if-ne v0, v1, :cond_4

    .line 53
    .line 54
    const/4 v0, 0x4

    .line 55
    goto :goto_0

    .line 56
    :cond_4
    const/4 v0, 0x5

    .line 57
    :goto_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 58
    .line 59
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v2, "splash_card_click_type"

    .line 63
    .line 64
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/byazt/cc/ve;->ve:Lcom/byazt/ete/ic;

    .line 68
    .line 69
    const-string v2, "splash_ad"

    .line 70
    .line 71
    const-string v3, "splash_card_click"

    .line 72
    .line 73
    invoke-static {v0, v2, v3, v1}, Lcom/byazt/ddx/uj;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    :goto_1
    iget-object v0, p0, Lcom/byazt/cc/uj;->gu:Landroid/view/View$OnClickListener;

    .line 82
    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 86
    .line 87
    .line 88
    :cond_5
    return-void
.end method

.method public tt()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/byazt/cc/ve;->ve:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/oz;->x(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "splash_card_close_type"

    const/4 v2, 0x2

    .line 4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5
    iget-object v1, p0, Lcom/byazt/cc/ve;->ve:Lcom/byazt/ete/ic;

    const-string v2, "splash_ad"

    const-string v3, "splash_card_close"

    invoke-static {v1, v2, v3, v0}, Lcom/byazt/ddx/uj;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 6
    iget-object v0, p0, Lcom/byazt/cc/ve;->uj:Lcom/byazt/cc/i$c;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0}, Lcom/byazt/cc/i$c;->tt()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 8
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public uj()Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/cc/ve;->ve:Lcom/byazt/ete/ic;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->v_()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/byazt/cc/ve;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->v_()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public ve()Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/cc/ve;->ve:Lcom/byazt/ete/ic;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->an()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/byazt/cc/ve;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->an()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/byazt/cc/ve;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/byazt/cc/ve;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/byazt/cc/ve;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

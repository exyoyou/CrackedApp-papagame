.class public abstract Lcom/windmill/sdk/widget/InterstitialBaseView;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field public A:Landroid/widget/RelativeLayout;

.field public B:Landroid/widget/ImageView;

.field public C:Landroid/widget/TextView;

.field private D:Landroid/view/ViewGroup;

.field private E:Z

.field private F:Ljava/lang/String;

.field private G:Lcom/windmill/sdk/widget/c;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/RelativeLayout;

.field private J:Ljava/lang/String;

.field private K:Lcom/windmill/sdk/widget/d;

.field private L:Lcom/windmill/sdk/widget/CircleWebView;

.field private M:Landroid/animation/ObjectAnimator;

.field private N:Landroid/animation/AnimatorSet;

.field private O:Landroid/animation/ObjectAnimator;

.field public a:Landroid/view/View;

.field public b:Landroid/view/ViewGroup;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/view/ViewGroup;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/widget/FrameLayout;

.field public g:Landroid/view/View;

.field public h:Landroid/widget/LinearLayout;

.field public i:Landroid/view/View;

.field public j:Landroid/widget/LinearLayout;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/ImageView;

.field public m:Lcom/windmill/sdk/widget/TbCircleImageView;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/view/View;

.field public r:Landroid/widget/LinearLayout;

.field public s:Landroid/widget/RelativeLayout;

.field public t:Landroid/widget/ImageView;

.field public u:I

.field public v:I

.field public w:Lcom/windmill/sdk/widget/a;

.field public x:Lcom/windmill/sdk/natives/WMNativeAdData;

.field public y:I

.field public z:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->E:Z

    .line 6
    .line 7
    return-void
.end method

.method static synthetic a(Lcom/windmill/sdk/widget/InterstitialBaseView;Lcom/windmill/sdk/widget/CircleWebView;)Lcom/windmill/sdk/widget/CircleWebView;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->L:Lcom/windmill/sdk/widget/CircleWebView;

    return-object p1
.end method

.method static synthetic a(Lcom/windmill/sdk/widget/InterstitialBaseView;Lcom/windmill/sdk/widget/c;)Lcom/windmill/sdk/widget/c;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->G:Lcom/windmill/sdk/widget/c;

    return-object p1
.end method

.method private static a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "key",
            "defaultValue"
        }
    .end annotation

    if-nez p0, :cond_0

    return-object p2

    .line 59
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_1

    return-object p2

    .line 60
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p2
.end method

.method private a(I)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "close_position"
        }
    .end annotation

    .line 61
    :try_start_0
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 62
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/16 v2, 0xa

    int-to-float v3, v2

    const/4 v4, 0x2

    .line 64
    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 65
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v3, -0x1

    .line 66
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v5, 0x11

    .line 67
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v6, 0x1a

    .line 68
    invoke-static {v6, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 69
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {v7, v8}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v7

    .line 70
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 71
    iput v7, v8, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 72
    iput v7, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/4 v9, 0x1

    const/4 v10, 0x6

    const/16 v11, 0xb

    if-eq p1, v9, :cond_2

    const/16 v5, 0x9

    if-eq p1, v4, :cond_1

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1

    const-string p1, "InterstitialView_4102001"

    .line 73
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->F:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 75
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "tobid_interstitial_show_tips"

    invoke-static {v0, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->J:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-static {v6, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 78
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v1, 0x10

    invoke-virtual {v8, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 81
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v8, v10, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 82
    invoke-virtual {v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 83
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->I:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 85
    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 86
    invoke-virtual {v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 87
    iput v7, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 88
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->I:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 89
    :cond_2
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v8, v5, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 90
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v8, v10, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 91
    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 92
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->I:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "InterstitialBaseView"

    .line 93
    invoke-static {v0, p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/windmill/sdk/widget/InterstitialBaseView;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->n()V

    return-void
.end method

.method static synthetic b(Lcom/windmill/sdk/widget/InterstitialBaseView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->m()V

    return-void
.end method

.method static synthetic c(Lcom/windmill/sdk/widget/InterstitialBaseView;)Lcom/windmill/sdk/widget/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->G:Lcom/windmill/sdk/widget/c;

    return-object p0
.end method

.method static synthetic d(Lcom/windmill/sdk/widget/InterstitialBaseView;)Lcom/windmill/sdk/widget/CircleWebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->L:Lcom/windmill/sdk/widget/CircleWebView;

    return-object p0
.end method

.method static synthetic e(Lcom/windmill/sdk/widget/InterstitialBaseView;)Lcom/windmill/sdk/widget/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->K:Lcom/windmill/sdk/widget/d;

    return-object p0
.end method

.method private m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->w:Lcom/windmill/sdk/widget/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/widget/a;->getMistake_click_rate()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->y:I

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->j:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lcom/windmill/sdk/widget/InterstitialBaseView$6;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/windmill/sdk/widget/InterstitialBaseView$6;-><init>(Lcom/windmill/sdk/widget/InterstitialBaseView;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->i:Landroid/view/View;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const/16 v1, 0x8

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method private n()V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/windmill/sdk/R$anim;->tobid_enter_anim:I

    .line 5
    .line 6
    sget v1, Lcom/windmill/sdk/R$anim;->tobid_exit_anim:I

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->K:Lcom/windmill/sdk/widget/d;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/windmill/sdk/widget/d;->c()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->K:Lcom/windmill/sdk/widget/d;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/windmill/sdk/widget/d;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_0
    return-void
.end method

.method private o()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->r:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/view/ViewGroup;

    .line 9
    .line 10
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/16 v3, 0x9

    .line 15
    .line 16
    if-ge v1, v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/widget/TextView;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->w:Lcom/windmill/sdk/widget/a;

    .line 25
    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/windmill/sdk/widget/a;->getNativeTemplateId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-nez v5, :cond_0

    .line 37
    .line 38
    const-string v5, "4012002"

    .line 39
    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    const/4 v4, 0x2

    .line 47
    const/high16 v5, 0x41100000    # 9.0f

    .line 48
    .line 49
    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFlags(I)V

    .line 57
    .line 58
    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getNetworkId()I

    .line 65
    .line 66
    .line 67
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    const/4 v1, 0x4

    .line 69
    const/16 v2, 0x8

    .line 70
    .line 71
    const-string v4, "InterstitialView_4102001"

    .line 72
    .line 73
    if-eq v0, v3, :cond_5

    .line 74
    .line 75
    :try_start_1
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getNetworkId()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    const/16 v3, 0x3e7

    .line 82
    .line 83
    if-ne v0, v3, :cond_2

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getInteractionType()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    const/4 v3, 0x1

    .line 93
    if-ne v0, v3, :cond_3

    .line 94
    .line 95
    invoke-direct {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->p()V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->F:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->r:Landroid/widget/LinearLayout;

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_4
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->r:Landroid/widget/LinearLayout;

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getAppInfo()Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    if-eqz v0, :cond_6

    .line 126
    .line 127
    invoke-direct {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->p()V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_6
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->F:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_7

    .line 138
    .line 139
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->r:Landroid/widget/LinearLayout;

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_7
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->r:Landroid/widget/LinearLayout;

    .line 146
    .line 147
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 153
    .line 154
    .line 155
    :goto_2
    return-void
.end method

.method private p()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->r:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    new-instance v1, Lcom/windmill/sdk/widget/InterstitialBaseView$9;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/windmill/sdk/widget/InterstitialBaseView$9;-><init>(Lcom/windmill/sdk/widget/InterstitialBaseView;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getNetworkId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_b

    .line 9
    .line 10
    const/16 v1, 0xd

    .line 11
    .line 12
    if-eq v0, v1, :cond_a

    .line 13
    .line 14
    const/16 v1, 0x10

    .line 15
    .line 16
    if-eq v0, v1, :cond_9

    .line 17
    .line 18
    const/16 v1, 0x13

    .line 19
    .line 20
    if-eq v0, v1, :cond_8

    .line 21
    .line 22
    const/16 v1, 0x15

    .line 23
    .line 24
    if-eq v0, v1, :cond_7

    .line 25
    .line 26
    const/16 v1, 0x16

    .line 27
    .line 28
    if-eq v0, v1, :cond_a

    .line 29
    .line 30
    const/16 v1, 0x1c

    .line 31
    .line 32
    if-eq v0, v1, :cond_6

    .line 33
    .line 34
    const/16 v1, 0x1d

    .line 35
    .line 36
    if-eq v0, v1, :cond_5

    .line 37
    .line 38
    const/16 v1, 0x29

    .line 39
    .line 40
    if-eq v0, v1, :cond_4

    .line 41
    .line 42
    const/16 v1, 0x2a

    .line 43
    .line 44
    if-eq v0, v1, :cond_3

    .line 45
    .line 46
    const/16 v1, 0x3e6

    .line 47
    .line 48
    if-eq v0, v1, :cond_1

    .line 49
    .line 50
    const/16 v1, 0x3e7

    .line 51
    .line 52
    if-eq v0, v1, :cond_0

    .line 53
    .line 54
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->t:Landroid/widget/ImageView;

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v2, "tobid_image_ad_logo_sg_fff"

    .line 61
    .line 62
    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_1

    .line 70
    .line 71
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->t:Landroid/widget/ImageView;

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const-string v2, "tobid_image_ad_logo_adx"

    .line 78
    .line 79
    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_1

    .line 87
    .line 88
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getAdLogo()Landroid/graphics/Bitmap;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_2

    .line 95
    .line 96
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->t:Landroid/widget/ImageView;

    .line 97
    .line 98
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->t:Landroid/widget/ImageView;

    .line 103
    .line 104
    const/16 v1, 0x8

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    :goto_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->H:Landroid/widget/TextView;

    .line 110
    .line 111
    if-eqz v0, :cond_c

    .line 112
    .line 113
    const/4 v1, 0x0

    .line 114
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    goto/16 :goto_1

    .line 118
    .line 119
    :cond_3
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->t:Landroid/widget/ImageView;

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    const-string v2, "tobid_image_ad_logo_bayes_fff"

    .line 126
    .line 127
    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    .line 133
    .line 134
    goto/16 :goto_1

    .line 135
    .line 136
    :cond_4
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->t:Landroid/widget/ImageView;

    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    const-string v2, "tobid_image_ad_logo_octopus_fff"

    .line 143
    .line 144
    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->t:Landroid/widget/ImageView;

    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    const-string v2, "tobid_image_ad_logo_tap_fff"

    .line 159
    .line 160
    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_6
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->t:Landroid/widget/ImageView;

    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    const-string v2, "tobid_image_ad_logo_qm_fff"

    .line 175
    .line 176
    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_7
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->t:Landroid/widget/ImageView;

    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    const-string v2, "tobid_image_ad_logo_bd_fff"

    .line 191
    .line 192
    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_8
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->t:Landroid/widget/ImageView;

    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    const-string v2, "tobid_image_ad_logo_ks_fff"

    .line 207
    .line 208
    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 213
    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_9
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->t:Landroid/widget/ImageView;

    .line 217
    .line 218
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    const-string v2, "tobid_image_ad_logo_ylh_fff"

    .line 223
    .line 224
    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_a
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->t:Landroid/widget/ImageView;

    .line 233
    .line 234
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    const-string v2, "tobid_image_ad_logo_tt_fff"

    .line 239
    .line 240
    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    .line 246
    .line 247
    goto :goto_1

    .line 248
    :cond_b
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->t:Landroid/widget/ImageView;

    .line 249
    .line 250
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    const-string v2, "tobid_image_ad_logo_mtg_fff"

    .line 255
    .line 256
    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 261
    .line 262
    .line 263
    :cond_c
    :goto_1
    return-void
.end method


# virtual methods
.method a()Landroid/content/Context;
    .locals 0

    .line 1
    return-object p0
.end method

.method public abstract a(Landroid/content/Context;)Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method protected a(Landroid/view/View;Ljava/util/List;Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "clickableViews",
            "creativeViewList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 94
    iget-object v1, v0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    invoke-virtual {v1}, Lcom/windmill/sdk/natives/WMNativeAdData;->getNetworkId()I

    move-result v1

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_0

    .line 95
    iget-object v3, v0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v4

    new-instance v8, Landroid/view/View;

    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v8, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v3 .. v8}, Lcom/windmill/sdk/natives/WMNativeAdData;->bindViewForInteraction(Landroid/content/Context;Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v9, v0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v10

    const/4 v14, 0x0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-virtual/range {v9 .. v14}, Lcom/windmill/sdk/natives/WMNativeAdData;->bindViewForInteraction(Landroid/content/Context;Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tips"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->J:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->F:Ljava/lang/String;

    .line 7
    invoke-static {p0}, Lcom/windmill/sdk/utils/UIUtils;->getScreenWidthPx(Landroid/content/Context;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->u:I

    .line 8
    invoke-static {p0}, Lcom/windmill/sdk/utils/UIUtils;->getScreenHeightInPx(Landroid/content/Context;)I

    move-result p1

    div-int/lit8 p1, p1, 0x5

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->v:I

    .line 9
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->y:I

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InterstitialBaseView: ranDom "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->y:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "InterstitialBaseView"

    invoke-static {v1, p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 12
    invoke-static {}, Lcom/windmill/sdk/widget/InterstitialViewManager;->getBaseControl()Lcom/windmill/sdk/widget/a;

    move-result-object p1

    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->w:Lcom/windmill/sdk/widget/a;

    .line 13
    invoke-virtual {p1}, Lcom/windmill/sdk/widget/a;->getNativeAdData()Lcom/windmill/sdk/natives/WMNativeAdData;

    move-result-object p1

    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 14
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/windmill/sdk/natives/WMNativeAdData;->getNativeAdContainer(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->D:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 16
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->D:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 17
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->D:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_interstitial_click_group"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->b:Landroid/view/ViewGroup;

    .line 19
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_interstitial_post_group"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->d:Landroid/view/ViewGroup;

    .line 20
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_interstitial_blur_image"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->c:Landroid/widget/ImageView;

    .line 21
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_interstitial_post_image"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->e:Landroid/widget/ImageView;

    .line 22
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_interstitial_post_media"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->f:Landroid/widget/FrameLayout;

    .line 23
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_interstitial_bg_shade"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->g:Landroid/view/View;

    .line 24
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_interstitial_sound_and_skip_layout"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->h:Landroid/widget/LinearLayout;

    .line 25
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_interstitial_skip_ll"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->j:Landroid/widget/LinearLayout;

    .line 26
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_interstitial_skip_shade"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->i:Landroid/view/View;

    .line 27
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_interstitial_skip_text"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->k:Landroid/widget/TextView;

    .line 28
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_interstitial_sound_image"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->l:Landroid/widget/ImageView;

    .line 29
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_interstitial_icon_image"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/windmill/sdk/widget/TbCircleImageView;

    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->m:Lcom/windmill/sdk/widget/TbCircleImageView;

    .line 30
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_interstitial_tittle_tv"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->n:Landroid/widget/TextView;

    .line 31
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_interstitial_desc_tv"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->o:Landroid/widget/TextView;

    .line 32
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_interstitial_cta_bt"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->p:Landroid/widget/TextView;

    .line 33
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_interstitial_cta_bt_gd"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->q:Landroid/view/View;

    .line 34
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_interstitial_privacy_ll"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->r:Landroid/widget/LinearLayout;

    .line 35
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_interstitial_privacy_group"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->s:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_2

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "InterstitialView_4102001"

    .line 37
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->F:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 38
    iget v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->v:I

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    :cond_2
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_interstitial_logo_image"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->t:Landroid/widget/ImageView;

    .line 41
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_interstitial_ad_text"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->H:Landroid/widget/TextView;

    .line 42
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_interstitial_ad_detail"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->I:Landroid/widget/RelativeLayout;

    .line 43
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->j:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/windmill/sdk/widget/InterstitialBaseView$1;

    invoke-direct {v1, p0}, Lcom/windmill/sdk/widget/InterstitialBaseView$1;-><init>(Lcom/windmill/sdk/widget/InterstitialBaseView;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_0
    const-string p1, "------BayesNativeAdData   InterstitialBaseView "

    .line 44
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    invoke-virtual {p1}, Lcom/windmill/sdk/natives/WMNativeAdData;->getNetworkId()I

    move-result p1

    const/16 v1, 0x2a

    if-ne p1, v1, :cond_3

    .line 46
    new-instance p1, Lcom/windmill/sdk/natives/WMNativeAdContainer;

    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/windmill/sdk/natives/WMNativeAdContainer;-><init>(Landroid/content/Context;)V

    .line 47
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 48
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 50
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    new-instance v3, Lcom/windmill/sdk/widget/InterstitialBaseView$5;

    invoke-direct {v3, p0, v1}, Lcom/windmill/sdk/widget/InterstitialBaseView$5;-><init>(Lcom/windmill/sdk/widget/InterstitialBaseView;Landroid/widget/FrameLayout;)V

    invoke-virtual {v2, p0, p1, v3}, Lcom/windmill/sdk/natives/WMNativeAdData;->connectAdToView(Landroid/app/Activity;Lcom/windmill/sdk/natives/WMNativeAdContainer;Lcom/windmill/sdk/natives/WMNativeAdRender;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 51
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 52
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 53
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------BayesNativeAdData Exception   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 55
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->o()V

    .line 56
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->h()V

    .line 57
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->w:Lcom/windmill/sdk/widget/a;

    invoke-virtual {p1}, Lcom/windmill/sdk/widget/a;->getNativeBtnStyle()I

    move-result p1

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->q:Landroid/view/View;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public b()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_interstitial_shake_group"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->z:Landroid/widget/RelativeLayout;

    .line 3
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_interstitial_shake_layout"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->A:Landroid/widget/RelativeLayout;

    .line 4
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_interstitial_shake_image"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->B:Landroid/widget/ImageView;

    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tobid_interstitial_shake_text"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->C:Landroid/widget/TextView;

    return-void
.end method

.method public c()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getImageList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getImageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getImageList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/windmill/sdk/natives/WMImage;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "----imageUrl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMImage;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMImage;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMImage;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/common/utils/ImageManager;->with(Landroid/content/Context;)Lcom/czhj/sdk/common/utils/ImageManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMImage;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/windmill/sdk/widget/InterstitialBaseView$7;

    invoke-direct {v2, p0}, Lcom/windmill/sdk/widget/InterstitialBaseView$7;-><init>(Lcom/windmill/sdk/widget/InterstitialBaseView;)V

    invoke-virtual {v1, v0, v2}, Lcom/czhj/sdk/common/utils/ImageManager;->getBitmap(Ljava/lang/String;Lcom/czhj/sdk/common/utils/ImageManager$BitmapLoadedListener;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->K:Lcom/windmill/sdk/widget/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/windmill/sdk/widget/d;->c()V

    .line 4
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->K:Lcom/windmill/sdk/widget/d;

    invoke-virtual {v0}, Lcom/windmill/sdk/widget/d;->d()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->w:Lcom/windmill/sdk/widget/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/widget/a;->getNativeTotalTime(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    if-lez v0, :cond_1

    .line 6
    new-instance v1, Lcom/windmill/sdk/widget/d;

    int-to-long v2, v0

    const-wide/16 v4, 0x1f4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/windmill/sdk/widget/d;-><init>(JJ)V

    iput-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->K:Lcom/windmill/sdk/widget/d;

    .line 7
    new-instance v0, Lcom/windmill/sdk/widget/InterstitialBaseView$8;

    invoke-direct {v0, p0}, Lcom/windmill/sdk/widget/InterstitialBaseView$8;-><init>(Lcom/windmill/sdk/widget/InterstitialBaseView;)V

    invoke-virtual {v1, v0}, Lcom/windmill/sdk/widget/d;->a(Lcom/windmill/sdk/widget/d$a;)V

    .line 8
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->K:Lcom/windmill/sdk/widget/d;

    invoke-virtual {v0}, Lcom/windmill/sdk/widget/d;->a()V

    .line 9
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->K:Lcom/windmill/sdk/widget/d;

    invoke-virtual {v0}, Lcom/windmill/sdk/widget/d;->b()V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const-string v2, "\u5173\u95ed"

    .line 11
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 13
    :cond_2
    invoke-direct {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->m()V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->c:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/windmill/sdk/widget/b;->a(Landroid/widget/ImageView;)V

    .line 3
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->e:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/windmill/sdk/widget/b;->a(Landroid/widget/ImageView;)V

    .line 4
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->m:Lcom/windmill/sdk/widget/TbCircleImageView;

    invoke-static {v0}, Lcom/windmill/sdk/widget/b;->a(Landroid/widget/ImageView;)V

    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->t:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/windmill/sdk/widget/b;->a(Landroid/widget/ImageView;)V

    .line 6
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->B:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/windmill/sdk/widget/b;->a(Landroid/widget/ImageView;)V

    .line 7
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->l:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/windmill/sdk/widget/b;->a(Landroid/widget/ImageView;)V

    return-void
.end method

.method public abstract f()V
.end method

.method public g()V
    .locals 11

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->w:Lcom/windmill/sdk/widget/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/windmill/sdk/widget/a;->getClose_position()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->h:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 14
    .line 15
    const-string v2, "InterstitialView_4102001"

    .line 16
    .line 17
    iget-object v3, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->F:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    :cond_0
    const/16 v2, 0x9

    .line 28
    .line 29
    const/16 v4, 0xa

    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    const/16 v6, 0x8

    .line 33
    .line 34
    const/high16 v7, 0x41200000    # 10.0f

    .line 35
    .line 36
    const/4 v8, 0x2

    .line 37
    const/4 v9, 0x1

    .line 38
    if-eq v0, v9, :cond_3

    .line 39
    .line 40
    const/high16 v10, 0x40a00000    # 5.0f

    .line 41
    .line 42
    if-eq v0, v8, :cond_2

    .line 43
    .line 44
    const/16 v2, 0xb

    .line 45
    .line 46
    if-eq v0, v5, :cond_1

    .line 47
    .line 48
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v2, v7}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-static {v4, v7}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    invoke-virtual {v1, v3, v2, v4, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->h:Landroid/widget/LinearLayout;

    .line 74
    .line 75
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 80
    .line 81
    .line 82
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->c:Landroid/widget/ImageView;

    .line 83
    .line 84
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {v2, v10}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-static {v4, v10}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    invoke-virtual {v1, v3, v3, v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 108
    .line 109
    .line 110
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->h:Landroid/widget/LinearLayout;

    .line 111
    .line 112
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 117
    .line 118
    .line 119
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->c:Landroid/widget/ImageView;

    .line 120
    .line 121
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-static {v2, v10}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-static {v4, v10}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 145
    .line 146
    .line 147
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->h:Landroid/widget/LinearLayout;

    .line 148
    .line 149
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_3
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-static {v2, v7}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-static {v4, v7}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    invoke-virtual {v1, v2, v4, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 176
    .line 177
    .line 178
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->h:Landroid/widget/LinearLayout;

    .line 179
    .line 180
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    .line 182
    .line 183
    :goto_0
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->w:Lcom/windmill/sdk/widget/a;

    .line 184
    .line 185
    invoke-virtual {v1}, Lcom/windmill/sdk/widget/a;->getClose_style()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->l:Landroid/widget/ImageView;

    .line 190
    .line 191
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    if-eq v1, v9, :cond_5

    .line 196
    .line 197
    if-eq v1, v8, :cond_4

    .line 198
    .line 199
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    const/high16 v4, 0x41c80000    # 25.0f

    .line 204
    .line 205
    invoke-static {v1, v4}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-static {v1, v4}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 220
    .line 221
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->l:Landroid/widget/ImageView;

    .line 222
    .line 223
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    .line 225
    .line 226
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->k:Landroid/widget/TextView;

    .line 227
    .line 228
    invoke-virtual {v1, v8, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_4
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    const/high16 v4, 0x41b00000    # 22.0f

    .line 237
    .line 238
    invoke-static {v1, v4}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 243
    .line 244
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-static {v1, v4}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 253
    .line 254
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->l:Landroid/widget/ImageView;

    .line 255
    .line 256
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    .line 258
    .line 259
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->k:Landroid/widget/TextView;

    .line 260
    .line 261
    const/high16 v2, 0x41000000    # 8.0f

    .line 262
    .line 263
    invoke-virtual {v1, v8, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 264
    .line 265
    .line 266
    goto :goto_1

    .line 267
    :cond_5
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    const/high16 v4, 0x41e00000    # 28.0f

    .line 272
    .line 273
    invoke-static {v1, v4}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 278
    .line 279
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-static {v1, v4}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 288
    .line 289
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->l:Landroid/widget/ImageView;

    .line 290
    .line 291
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    .line 293
    .line 294
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->k:Landroid/widget/TextView;

    .line 295
    .line 296
    const/high16 v2, 0x41400000    # 12.0f

    .line 297
    .line 298
    invoke-virtual {v1, v8, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 299
    .line 300
    .line 301
    :goto_1
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 302
    .line 303
    invoke-virtual {v1}, Lcom/windmill/sdk/natives/WMNativeAdData;->getAdPatternType()I

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-eq v1, v9, :cond_7

    .line 308
    .line 309
    if-eq v1, v8, :cond_7

    .line 310
    .line 311
    if-ne v1, v5, :cond_6

    .line 312
    .line 313
    goto :goto_2

    .line 314
    :cond_6
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->l:Landroid/widget/ImageView;

    .line 315
    .line 316
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 317
    .line 318
    .line 319
    goto :goto_3

    .line 320
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->l:Landroid/widget/ImageView;

    .line 321
    .line 322
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 323
    .line 324
    .line 325
    :goto_3
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 326
    .line 327
    invoke-virtual {v1}, Lcom/windmill/sdk/natives/WMNativeAdData;->getNetworkId()I

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    if-eq v1, v9, :cond_9

    .line 332
    .line 333
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 334
    .line 335
    invoke-virtual {v1}, Lcom/windmill/sdk/natives/WMNativeAdData;->getNetworkId()I

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    const/16 v2, 0x15

    .line 340
    .line 341
    if-eq v1, v2, :cond_9

    .line 342
    .line 343
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 344
    .line 345
    invoke-virtual {v1}, Lcom/windmill/sdk/natives/WMNativeAdData;->getNetworkId()I

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    const/16 v2, 0x10

    .line 350
    .line 351
    if-ne v1, v2, :cond_8

    .line 352
    .line 353
    goto :goto_4

    .line 354
    :cond_8
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->l:Landroid/widget/ImageView;

    .line 355
    .line 356
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 357
    .line 358
    .line 359
    goto :goto_5

    .line 360
    :cond_9
    :goto_4
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->w:Lcom/windmill/sdk/widget/a;

    .line 361
    .line 362
    invoke-virtual {v1}, Lcom/windmill/sdk/widget/a;->getAutoPlayMuted()I

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->l:Landroid/widget/ImageView;

    .line 367
    .line 368
    new-instance v4, Lcom/windmill/sdk/widget/InterstitialBaseView$10;

    .line 369
    .line 370
    invoke-direct {v4, p0}, Lcom/windmill/sdk/widget/InterstitialBaseView$10;-><init>(Lcom/windmill/sdk/widget/InterstitialBaseView;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    .line 375
    .line 376
    if-eq v1, v9, :cond_a

    .line 377
    .line 378
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 379
    .line 380
    invoke-virtual {v1, v3}, Lcom/windmill/sdk/natives/WMNativeAdData;->setVideoMute(Z)V

    .line 381
    .line 382
    .line 383
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->l:Landroid/widget/ImageView;

    .line 384
    .line 385
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    const-string v3, "tobid_image_ad_sound_on"

    .line 390
    .line 391
    invoke-static {v2, v3}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    .line 392
    .line 393
    .line 394
    move-result v2

    .line 395
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 396
    .line 397
    .line 398
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->l:Landroid/widget/ImageView;

    .line 399
    .line 400
    const-string v2, "sound_on"

    .line 401
    .line 402
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    goto :goto_5

    .line 406
    :cond_a
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 407
    .line 408
    invoke-virtual {v1, v9}, Lcom/windmill/sdk/natives/WMNativeAdData;->setVideoMute(Z)V

    .line 409
    .line 410
    .line 411
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->l:Landroid/widget/ImageView;

    .line 412
    .line 413
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    const-string v3, "tobid_image_ad_sound_off"

    .line 418
    .line 419
    invoke-static {v2, v3}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    .line 420
    .line 421
    .line 422
    move-result v2

    .line 423
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 424
    .line 425
    .line 426
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->l:Landroid/widget/ImageView;

    .line 427
    .line 428
    const-string v2, "sound_off"

    .line 429
    .line 430
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 431
    .line 432
    .line 433
    :goto_5
    invoke-direct {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->q()V

    .line 434
    .line 435
    .line 436
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->J:Ljava/lang/String;

    .line 437
    .line 438
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    if-nez v1, :cond_b

    .line 443
    .line 444
    invoke-direct {p0, v0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    .line 446
    .line 447
    goto :goto_6

    .line 448
    :catch_0
    move-exception v0

    .line 449
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 450
    .line 451
    .line 452
    :cond_b
    :goto_6
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/windmill/sdk/widget/InterstitialBaseView$11;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/windmill/sdk/widget/InterstitialBaseView$11;-><init>(Lcom/windmill/sdk/widget/InterstitialBaseView;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdData;->setInteractionListener(Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public i()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->w:Lcom/windmill/sdk/widget/a;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->z:Landroid/widget/RelativeLayout;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/windmill/sdk/widget/a;->getNativeShakeAd()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->z:Landroid/widget/RelativeLayout;

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->B:Landroid/widget/ImageView;

    .line 27
    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getNetworkId()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/16 v1, 0x15

    .line 37
    .line 38
    if-ne v0, v1, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 41
    .line 42
    new-instance v1, Lcom/windmill/sdk/widget/InterstitialBaseView$12;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcom/windmill/sdk/widget/InterstitialBaseView$12;-><init>(Lcom/windmill/sdk/widget/InterstitialBaseView;)V

    .line 45
    .line 46
    .line 47
    const/16 v2, 0x50

    .line 48
    .line 49
    invoke-virtual {v0, v2, v2, v1}, Lcom/windmill/sdk/natives/WMNativeAdData;->renderShakeView(IILcom/windmill/sdk/natives/WMNativeAdData$AdShakeViewListener;)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-nez v1, :cond_3

    .line 60
    .line 61
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->z:Landroid/widget/RelativeLayout;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->z:Landroid/widget/RelativeLayout;

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getNetworkId()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    const/16 v1, 0x29

    .line 79
    .line 80
    if-ne v0, v1, :cond_3

    .line 81
    .line 82
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->z:Landroid/widget/RelativeLayout;

    .line 83
    .line 84
    const/4 v1, 0x0

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->z:Landroid/widget/RelativeLayout;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->x:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 94
    .line 95
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->z:Landroid/widget/RelativeLayout;

    .line 96
    .line 97
    const/16 v3, 0xc8

    .line 98
    .line 99
    const/16 v4, 0xc8

    .line 100
    .line 101
    const/4 v5, 0x0

    .line 102
    const/4 v6, 0x0

    .line 103
    invoke-virtual/range {v1 .. v6}, Lcom/windmill/sdk/natives/WMNativeAdData;->getInteractionWidgetView(Landroid/view/ViewGroup;IIILcom/windmill/sdk/natives/WMNativeAdData$AdShakeViewListener;)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->B:Landroid/widget/ImageView;

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 114
    .line 115
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->B:Landroid/widget/ImageView;

    .line 116
    .line 117
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 122
    .line 123
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->B:Landroid/widget/ImageView;

    .line 124
    .line 125
    int-to-float v1, v1

    .line 126
    invoke-virtual {v2, v1}, Landroid/view/View;->setPivotX(F)V

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->B:Landroid/widget/ImageView;

    .line 130
    .line 131
    int-to-float v0, v0

    .line 132
    invoke-virtual {v1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->B:Landroid/widget/ImageView;

    .line 136
    .line 137
    const/16 v1, 0xb

    .line 138
    .line 139
    new-array v1, v1, [F

    .line 140
    .line 141
    fill-array-data v1, :array_0

    .line 142
    .line 143
    .line 144
    const-string v2, "rotation"

    .line 145
    .line 146
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iput-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->M:Landroid/animation/ObjectAnimator;

    .line 151
    .line 152
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 153
    .line 154
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->M:Landroid/animation/ObjectAnimator;

    .line 161
    .line 162
    const/4 v1, 0x2

    .line 163
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->M:Landroid/animation/ObjectAnimator;

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->M:Landroid/animation/ObjectAnimator;

    .line 172
    .line 173
    const-wide/16 v1, 0x3e8

    .line 174
    .line 175
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->M:Landroid/animation/ObjectAnimator;

    .line 179
    .line 180
    new-instance v1, Lcom/windmill/sdk/widget/InterstitialBaseView$2;

    .line 181
    .line 182
    invoke-direct {v1, p0}, Lcom/windmill/sdk/widget/InterstitialBaseView$2;-><init>(Lcom/windmill/sdk/widget/InterstitialBaseView;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->M:Landroid/animation/ObjectAnimator;

    .line 189
    .line 190
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 191
    .line 192
    .line 193
    :cond_4
    :goto_0
    return-void

    .line 194
    :cond_5
    :goto_1
    const-string v0, "----shakeStart--return--baseControl ==null || shakeGroup == null"

    .line 195
    .line 196
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    nop

    .line 201
    :array_0
    .array-data 4
        0x0
        0x41900000    # 18.0f
        0x0
        -0x3e700000    # -18.0f
        0x0
        0x41900000    # 18.0f
        0x0
        -0x3e700000    # -18.0f
        0x0
        0x41900000    # 18.0f
        0x0
    .end array-data
.end method

.method public j()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->w:Lcom/windmill/sdk/widget/a;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->z:Landroid/widget/RelativeLayout;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->A:Landroid/widget/RelativeLayout;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "#FF005C"

    .line 21
    .line 22
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->A:Landroid/widget/RelativeLayout;

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->w:Lcom/windmill/sdk/widget/a;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/windmill/sdk/widget/a;->getClose_position()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/high16 v2, 0x40a00000    # 5.0f

    .line 45
    .line 46
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 47
    .line 48
    const-wide v5, 0x3fd999999999999aL    # 0.4

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    const/4 v7, 0x2

    .line 54
    if-ne v0, v7, :cond_1

    .line 55
    .line 56
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->h:Landroid/widget/LinearLayout;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget-object v8, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->h:Landroid/widget/LinearLayout;

    .line 63
    .line 64
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    iget-object v9, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->z:Landroid/widget/RelativeLayout;

    .line 69
    .line 70
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    int-to-double v9, v9

    .line 75
    mul-double v9, v9, v5

    .line 76
    .line 77
    div-double/2addr v9, v3

    .line 78
    double-to-int v3, v9

    .line 79
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-static {v4, v2}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    sub-int v2, v3, v2

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->c:Landroid/widget/ImageView;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    iget-object v8, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->c:Landroid/widget/ImageView;

    .line 97
    .line 98
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    iget-object v9, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->c:Landroid/widget/ImageView;

    .line 103
    .line 104
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    add-int/2addr v8, v9

    .line 109
    iget-object v9, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->z:Landroid/widget/RelativeLayout;

    .line 110
    .line 111
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    int-to-double v9, v9

    .line 116
    mul-double v9, v9, v5

    .line 117
    .line 118
    div-double/2addr v9, v3

    .line 119
    double-to-int v3, v9

    .line 120
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-static {v4, v2}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    sub-int/2addr v3, v2

    .line 129
    move v2, v3

    .line 130
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v5, "----whereFrom----"

    .line 136
    .line 137
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget-object v5, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->F:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v5, " "

    .line 146
    .line 147
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-static {v4}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    const-string v4, "InterstitialView_4102001"

    .line 167
    .line 168
    iget-object v6, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->F:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-eqz v4, :cond_2

    .line 175
    .line 176
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    const/high16 v4, 0x41a00000    # 20.0f

    .line 181
    .line 182
    invoke-static {v0, v4}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-static {v4}, Lcom/windmill/sdk/utils/UIUtils;->getScreenHeightPx(Landroid/content/Context;)F

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    float-to-int v4, v4

    .line 195
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    const/high16 v8, 0x42b40000    # 90.0f

    .line 200
    .line 201
    invoke-static {v6, v8}, Lcom/windmill/sdk/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    sub-int v8, v4, v6

    .line 206
    .line 207
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string v6, "----whereFrom----111 "

    .line 213
    .line 214
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    invoke-static {v4}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    iget-object v4, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->z:Landroid/widget/RelativeLayout;

    .line 234
    .line 235
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    iget-object v5, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->z:Landroid/widget/RelativeLayout;

    .line 240
    .line 241
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    new-instance v6, Landroid/animation/AnimatorSet;

    .line 246
    .line 247
    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 248
    .line 249
    .line 250
    iput-object v6, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->N:Landroid/animation/AnimatorSet;

    .line 251
    .line 252
    const/4 v9, 0x4

    .line 253
    new-array v9, v9, [Landroid/animation/Animator;

    .line 254
    .line 255
    iget-object v10, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->z:Landroid/widget/RelativeLayout;

    .line 256
    .line 257
    new-array v11, v7, [F

    .line 258
    .line 259
    const/4 v12, 0x0

    .line 260
    const/4 v13, 0x0

    .line 261
    aput v13, v11, v12

    .line 262
    .line 263
    sub-int/2addr v0, v4

    .line 264
    sub-int/2addr v0, v3

    .line 265
    int-to-float v0, v0

    .line 266
    aput v0, v11, v1

    .line 267
    .line 268
    const-string v0, "translationX"

    .line 269
    .line 270
    invoke-static {v10, v0, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    aput-object v0, v9, v12

    .line 275
    .line 276
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->z:Landroid/widget/RelativeLayout;

    .line 277
    .line 278
    new-array v3, v7, [F

    .line 279
    .line 280
    aput v13, v3, v12

    .line 281
    .line 282
    sub-int/2addr v8, v5

    .line 283
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 284
    .line 285
    .line 286
    move-result v4

    .line 287
    sub-int/2addr v8, v4

    .line 288
    add-int/2addr v8, v2

    .line 289
    int-to-float v2, v8

    .line 290
    aput v2, v3, v1

    .line 291
    .line 292
    const-string v2, "translationY"

    .line 293
    .line 294
    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    aput-object v0, v9, v1

    .line 299
    .line 300
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->A:Landroid/widget/RelativeLayout;

    .line 301
    .line 302
    new-array v1, v7, [F

    .line 303
    .line 304
    fill-array-data v1, :array_0

    .line 305
    .line 306
    .line 307
    const-string v2, "scaleX"

    .line 308
    .line 309
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    aput-object v0, v9, v7

    .line 314
    .line 315
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->A:Landroid/widget/RelativeLayout;

    .line 316
    .line 317
    new-array v1, v7, [F

    .line 318
    .line 319
    fill-array-data v1, :array_1

    .line 320
    .line 321
    .line 322
    const-string v2, "scaleY"

    .line 323
    .line 324
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    const/4 v1, 0x3

    .line 329
    aput-object v0, v9, v1

    .line 330
    .line 331
    invoke-virtual {v6, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 332
    .line 333
    .line 334
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->N:Landroid/animation/AnimatorSet;

    .line 335
    .line 336
    new-instance v1, Lcom/windmill/sdk/widget/InterstitialBaseView$3;

    .line 337
    .line 338
    invoke-direct {v1, p0}, Lcom/windmill/sdk/widget/InterstitialBaseView$3;-><init>(Lcom/windmill/sdk/widget/InterstitialBaseView;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 342
    .line 343
    .line 344
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->N:Landroid/animation/AnimatorSet;

    .line 345
    .line 346
    new-array v1, v12, [Landroid/animation/Animator;

    .line 347
    .line 348
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 349
    .line 350
    .line 351
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->N:Landroid/animation/AnimatorSet;

    .line 352
    .line 353
    const-wide/16 v1, 0x1f4

    .line 354
    .line 355
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 360
    .line 361
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 365
    .line 366
    .line 367
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->N:Landroid/animation/AnimatorSet;

    .line 368
    .line 369
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 370
    .line 371
    .line 372
    return-void

    .line 373
    :cond_3
    :goto_1
    const-string v0, "----shakeStart2--return--baseControl ==null || shakeGroup == null || shakeLayout == null"

    .line 374
    .line 375
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    return-void

    .line 379
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method public k()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->w:Lcom/windmill/sdk/widget/a;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->z:Landroid/widget/RelativeLayout;

    .line 6
    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->A:Landroid/widget/RelativeLayout;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x2

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->z:Landroid/widget/RelativeLayout;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    mul-int/lit8 v2, v2, 0x2

    .line 29
    .line 30
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 31
    .line 32
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->z:Landroid/widget/RelativeLayout;

    .line 33
    .line 34
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->C:Landroid/widget/TextView;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->A:Landroid/widget/RelativeLayout;

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    int-to-double v2, v2

    .line 54
    const-wide v4, 0x3fe3333333333333L    # 0.6

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    mul-double v2, v2, v4

    .line 60
    .line 61
    double-to-int v2, v2

    .line 62
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 63
    .line 64
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->C:Landroid/widget/TextView;

    .line 65
    .line 66
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->C:Landroid/widget/TextView;

    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->C:Landroid/widget/TextView;

    .line 76
    .line 77
    new-instance v2, Lcom/windmill/sdk/widget/InterstitialBaseView$4;

    .line 78
    .line 79
    invoke-direct {v2, p0}, Lcom/windmill/sdk/widget/InterstitialBaseView$4;-><init>(Lcom/windmill/sdk/widget/InterstitialBaseView;)V

    .line 80
    .line 81
    .line 82
    const-wide/16 v3, 0x1f4

    .line 83
    .line 84
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    .line 86
    .line 87
    :cond_3
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->B:Landroid/widget/ImageView;

    .line 88
    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 96
    .line 97
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->B:Landroid/widget/ImageView;

    .line 98
    .line 99
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 104
    .line 105
    iget-object v3, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->B:Landroid/widget/ImageView;

    .line 106
    .line 107
    int-to-float v2, v2

    .line 108
    invoke-virtual {v3, v2}, Landroid/view/View;->setPivotX(F)V

    .line 109
    .line 110
    .line 111
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->B:Landroid/widget/ImageView;

    .line 112
    .line 113
    int-to-float v0, v0

    .line 114
    invoke-virtual {v2, v0}, Landroid/view/View;->setPivotY(F)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->B:Landroid/widget/ImageView;

    .line 118
    .line 119
    const/16 v2, 0xb

    .line 120
    .line 121
    new-array v2, v2, [F

    .line 122
    .line 123
    fill-array-data v2, :array_0

    .line 124
    .line 125
    .line 126
    const-string v3, "rotation"

    .line 127
    .line 128
    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iput-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->O:Landroid/animation/ObjectAnimator;

    .line 133
    .line 134
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    .line 135
    .line 136
    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->O:Landroid/animation/ObjectAnimator;

    .line 143
    .line 144
    const/4 v2, -0x1

    .line 145
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->O:Landroid/animation/ObjectAnimator;

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->O:Landroid/animation/ObjectAnimator;

    .line 154
    .line 155
    const-wide/16 v1, 0x3e8

    .line 156
    .line 157
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->O:Landroid/animation/ObjectAnimator;

    .line 161
    .line 162
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 163
    .line 164
    .line 165
    :cond_4
    return-void

    .line 166
    :cond_5
    :goto_0
    const-string v0, "----shakeStart3--return--baseControl ==null || shakeGroup == null || shakeLayout == null"

    .line 167
    .line 168
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    nop

    .line 173
    :array_0
    .array-data 4
        0x0
        0x41900000    # 18.0f
        0x0
        -0x3e700000    # -18.0f
        0x0
        0x41900000    # 18.0f
        0x0
        -0x3e700000    # -18.0f
        0x0
        0x41900000    # 18.0f
        0x0
    .end array-data
.end method

.method protected l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "tips"

    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    invoke-static {p1, v0, v1}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->D:Landroid/view/ViewGroup;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->a:Landroid/view/View;

    .line 25
    .line 26
    :goto_0
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-static {p1}, Lcom/windmill/sdk/utils/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 40
    .line 41
    .line 42
    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    const-string v0, "InterstitialBaseView"

    .line 5
    .line 6
    const-string v1, "---onDismiss------"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->K:Lcom/windmill/sdk/widget/d;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/windmill/sdk/widget/d;->c()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->K:Lcom/windmill/sdk/widget/d;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/windmill/sdk/widget/d;->d()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->w:Lcom/windmill/sdk/widget/a;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/windmill/sdk/widget/a;->getListener()Lcom/windmill/sdk/widget/ViewInteractionListener;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->w:Lcom/windmill/sdk/widget/a;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/windmill/sdk/widget/a;->getListener()Lcom/windmill/sdk/widget/ViewInteractionListener;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Lcom/windmill/sdk/widget/ViewInteractionListener;->onAdClose()V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->w:Lcom/windmill/sdk/widget/a;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/windmill/sdk/widget/a;->destroy()V

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->e()V

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->w:Lcom/windmill/sdk/widget/a;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->M:Landroid/animation/ObjectAnimator;

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->M:Landroid/animation/ObjectAnimator;

    .line 63
    .line 64
    :cond_3
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->O:Landroid/animation/ObjectAnimator;

    .line 65
    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->O:Landroid/animation/ObjectAnimator;

    .line 72
    .line 73
    :cond_4
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->N:Landroid/animation/AnimatorSet;

    .line 74
    .line 75
    if-eqz v1, :cond_5

    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->N:Landroid/animation/AnimatorSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    :catch_0
    :cond_5
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->E:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView;->E:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    :catchall_0
    :cond_0
    return-void
.end method

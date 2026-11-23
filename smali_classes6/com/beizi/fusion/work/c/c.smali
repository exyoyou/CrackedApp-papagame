.class public Lcom/beizi/fusion/work/c/c;
.super Lcom/beizi/fusion/work/c/a;
.source "SourceFile"


# instance fields
.field private V:Landroid/widget/LinearLayout;

.field private W:Landroid/widget/LinearLayout;

.field private X:Landroid/widget/FrameLayout;

.field private Y:Lcom/beizi/fusion/widget/CustomRoundImageView;

.field private Z:Landroid/widget/TextView;

.field private aa:Landroid/widget/TextView;

.field private ab:Landroid/widget/TextView;

.field private ac:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JJLcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Lcom/beizi/fusion/c/e;FF)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p11}, Lcom/beizi/fusion/work/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;JJLcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Lcom/beizi/fusion/c/e;FF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/c/c;)Lcom/beizi/fusion/events/EventBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    return-object p0
.end method

.method static synthetic a(Lcom/beizi/fusion/work/c/c;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/beizi/fusion/work/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private aF()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->N:Lcom/beizi/fusion/model/AdSpacesBean$ComplainBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$ComplainBean;->getOpen()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    new-instance v0, Lcom/beizi/fusion/tool/l;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/beizi/fusion/tool/l;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a;->t:Landroid/view/ViewGroup;

    .line 22
    .line 23
    const-string v3, "2"

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2, v3}, Lcom/beizi/fusion/tool/l;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/beizi/fusion/work/c/c$1;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/beizi/fusion/work/c/c$1;-><init>(Lcom/beizi/fusion/work/c/c;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/tool/l;->a(Lcom/beizi/fusion/tool/l$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method private aG()V
    .locals 6

    .line 1
    const-string v0, "#000000"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Landroid/widget/LinearLayout;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 12
    .line 13
    .line 14
    const/16 v2, 0x11

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 17
    .line 18
    .line 19
    const-string v3, "#FFFFFF"

    .line 20
    .line 21
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 26
    .line 27
    .line 28
    new-instance v3, Landroid/widget/ImageView;

    .line 29
    .line 30
    iget-object v4, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    .line 31
    .line 32
    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    sget v4, Lcom/beizi/fusion/R$drawable;->beizi_icon_checkbox:I

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    new-instance v3, Landroid/widget/TextView;

    .line 51
    .line 52
    iget-object v4, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    .line 53
    .line 54
    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    const-string v4, "\u6295\u8bc9\u6210\u529f\uff0c\u6211\u4eec\u5c06\u91cd\u89c6\u60a8\u7684\u53cd\u9988\u3002"

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    .line 68
    .line 69
    const/4 v0, 0x2

    .line 70
    const/high16 v4, 0x41500000    # 13.0f

    .line 71
    .line 72
    invoke-virtual {v3, v0, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 76
    .line 77
    .line 78
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 79
    .line 80
    const/4 v4, -0x1

    .line 81
    const/4 v5, -0x2

    .line 82
    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 83
    .line 84
    .line 85
    const/16 v4, 0x1e

    .line 86
    .line 87
    const/4 v5, 0x0

    .line 88
    invoke-virtual {v0, v5, v4, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->u:Landroid/view/View;

    .line 95
    .line 96
    invoke-virtual {v0, v5, v5}, Landroid/view/View;->measure(II)V

    .line 97
    .line 98
    .line 99
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 100
    .line 101
    iget-object v3, p0, Lcom/beizi/fusion/work/c/a;->u:Landroid/view/View;

    .line 102
    .line 103
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    iget-object v4, p0, Lcom/beizi/fusion/work/c/a;->u:Landroid/view/View;

    .line 108
    .line 109
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 114
    .line 115
    .line 116
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 117
    .line 118
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a;->t:Landroid/view/ViewGroup;

    .line 119
    .line 120
    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 126
    .line 127
    .line 128
    :goto_0
    return-void
.end method

.method private aH()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->K:Lcom/beizi/ad/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Lcom/beizi/ad/e;->m()Lcom/beizi/ad/lance/ApkBean;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->K:Lcom/beizi/ad/e;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/beizi/ad/internal/c/d;->a(Landroid/content/Context;Lcom/beizi/ad/e;)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/beizi/fusion/work/c/c;->X:Landroid/widget/FrameLayout;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {v1, v2, v2}, Landroid/view/View;->measure(II)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/beizi/fusion/work/c/c;->X:Landroid/widget/FrameLayout;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    mul-int/lit8 v1, v1, 0x2

    .line 37
    .line 38
    div-int/lit8 v1, v1, 0x3

    .line 39
    .line 40
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 41
    .line 42
    const/4 v3, -0x2

    .line 43
    invoke-direct {v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x53

    .line 47
    .line 48
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 49
    .line 50
    iget-object v1, p0, Lcom/beizi/fusion/work/c/c;->X:Landroid/widget/FrameLayout;

    .line 51
    .line 52
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method private aI()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->K:Lcom/beizi/ad/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Lcom/beizi/ad/e;->b()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v1}, Lcom/beizi/ad/internal/e/h;->a(Landroid/content/Context;)Lcom/beizi/ad/internal/e/h;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Lcom/beizi/fusion/work/c/c$2;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Lcom/beizi/fusion/work/c/c$2;-><init>(Lcom/beizi/fusion/work/c/c;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0, v2}, Lcom/beizi/ad/internal/e/h;->a(Ljava/lang/String;Lcom/beizi/ad/internal/e/h$a;)V
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
    :goto_0
    return-void
.end method

.method private aJ()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->K:Lcom/beizi/ad/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 14
    .line 15
    const/16 v2, 0x11

    .line 16
    .line 17
    const/4 v3, -0x2

    .line 18
    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->K:Lcom/beizi/ad/e;

    .line 25
    .line 26
    invoke-interface {v1}, Lcom/beizi/ad/e;->k()Lcom/beizi/ad/internal/d/a$a;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v4, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v4, v1}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;Lcom/beizi/ad/internal/d/a$a;)Landroid/widget/FrameLayout;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 41
    .line 42
    const/high16 v6, 0x41880000    # 17.0f

    .line 43
    .line 44
    invoke-direct {v5, v3, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->K:Lcom/beizi/ad/e;

    .line 51
    .line 52
    invoke-interface {v1}, Lcom/beizi/ad/e;->j()Lcom/beizi/ad/internal/d/a$a;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object v5, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {v5, v1}, Lcom/beizi/ad/internal/e/t;->b(Landroid/content/Context;Lcom/beizi/ad/internal/d/a$a;)Landroid/widget/FrameLayout;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 66
    .line 67
    invoke-direct {v5, v3, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 78
    .line 79
    const/4 v6, 0x5

    .line 80
    invoke-virtual {v5, v6, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 81
    .line 82
    .line 83
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 84
    .line 85
    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->t:Landroid/view/ViewGroup;

    .line 89
    .line 90
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 91
    .line 92
    const/16 v5, 0x35

    .line 93
    .line 94
    invoke-direct {v2, v3, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/beizi/fusion/work/c/a;->aC()Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    const/high16 v3, 0x41800000    # 16.0f

    .line 111
    .line 112
    if-eqz v2, :cond_1

    .line 113
    .line 114
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    .line 115
    .line 116
    invoke-static {v2, v3}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    iget-object v3, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    .line 121
    .line 122
    const/high16 v5, 0x42200000    # 40.0f

    .line 123
    .line 124
    invoke-static {v3, v5}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    invoke-virtual {v1, v4, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_1
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    .line 133
    .line 134
    invoke-static {v2, v3}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    iget-object v5, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    .line 139
    .line 140
    invoke-static {v5, v3}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    invoke-virtual {v1, v4, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 145
    .line 146
    .line 147
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 153
    .line 154
    .line 155
    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/beizi/fusion/work/c/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    return-void
.end method

.method static synthetic b(Lcom/beizi/fusion/work/c/c;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/beizi/fusion/work/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic c(Lcom/beizi/fusion/work/c/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->H()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(Lcom/beizi/fusion/work/c/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/c/c;->aG()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Lcom/beizi/fusion/work/c/c;)Lcom/beizi/fusion/c/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/beizi/fusion/work/c/c;)Lcom/beizi/fusion/c/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/beizi/fusion/work/c/c;)Lcom/beizi/fusion/c/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/beizi/fusion/work/c/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->F()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i(Lcom/beizi/fusion/work/c/c;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/c/c;->W:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/beizi/fusion/work/c/c;)Lcom/beizi/fusion/widget/CustomRoundImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/c/c;->Y:Lcom/beizi/fusion/widget/CustomRoundImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/beizi/fusion/work/c/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/c/c;->aF()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic l(Lcom/beizi/fusion/work/c/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/c/c;->aH()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic m(Lcom/beizi/fusion/work/c/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/c/c;->aJ()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/beizi/ad/e;)V
    .locals 5

    .line 3
    :try_start_0
    new-instance p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v0

    add-int/lit8 v0, v0, 0x2a

    .line 5
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 6
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v2, v3}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v2

    .line 7
    iget-object v3, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v3, v4}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v3

    .line 8
    invoke-virtual {p1, v3, v2, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    sget v1, Lcom/beizi/fusion/R$drawable;->beizi_close_two:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x5

    .line 14
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 15
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->t:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    new-instance v0, Lcom/beizi/fusion/work/c/c$3;

    invoke-direct {v0, p0}, Lcom/beizi/fusion/work/c/c$3;-><init>(Lcom/beizi/fusion/work/c/c;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 17
    new-instance v0, Lcom/beizi/fusion/work/c/c$4;

    invoke-direct {v0, p0}, Lcom/beizi/fusion/work/c/c$4;-><init>(Lcom/beizi/fusion/work/c/c;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 4

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->K:Lcom/beizi/ad/e;

    if-nez v0, :cond_0

    const/16 v0, -0x3df

    .line 4
    invoke-virtual {p0, v0}, Lcom/beizi/fusion/work/a;->d(I)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    .line 6
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/beizi/fusion/R$layout;->beizi_layout_native_top_picture_bottom_text_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/c/a;->M:Landroid/view/View;

    .line 7
    sget v1, Lcom/beizi/fusion/R$id;->native_ad_tpbt_container_ll:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/beizi/fusion/work/c/c;->V:Landroid/widget/LinearLayout;

    .line 8
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->M:Landroid/view/View;

    sget v1, Lcom/beizi/fusion/R$id;->native_ad_tpbt_img_container_fl:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/beizi/fusion/work/c/c;->X:Landroid/widget/FrameLayout;

    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->M:Landroid/view/View;

    sget v1, Lcom/beizi/fusion/R$id;->native_ad_tpbt_image_iv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/beizi/fusion/widget/CustomRoundImageView;

    iput-object v0, p0, Lcom/beizi/fusion/work/c/c;->Y:Lcom/beizi/fusion/widget/CustomRoundImageView;

    .line 10
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->M:Landroid/view/View;

    sget v1, Lcom/beizi/fusion/R$id;->native_ad_tpbt_content_ll:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/beizi/fusion/work/c/c;->W:Landroid/widget/LinearLayout;

    .line 11
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->M:Landroid/view/View;

    sget v1, Lcom/beizi/fusion/R$id;->native_ad_tpbt_title_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/fusion/work/c/c;->Z:Landroid/widget/TextView;

    .line 12
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->M:Landroid/view/View;

    sget v1, Lcom/beizi/fusion/R$id;->native_ad_tpbt_subtitle_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/fusion/work/c/c;->aa:Landroid/widget/TextView;

    .line 13
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->M:Landroid/view/View;

    sget v1, Lcom/beizi/fusion/R$id;->native_ad_tpbt_go_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/fusion/work/c/c;->ab:Landroid/widget/TextView;

    .line 14
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->M:Landroid/view/View;

    sget v1, Lcom/beizi/fusion/R$id;->native_ad_tpbt_go_iv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/beizi/fusion/work/c/c;->ac:Landroid/widget/ImageView;

    .line 15
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    iget v1, p0, Lcom/beizi/fusion/work/c/a;->r:F

    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v0

    .line 16
    iget v1, p0, Lcom/beizi/fusion/work/c/a;->s:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 17
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x2

    .line 18
    :goto_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 19
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v0

    .line 20
    iget-object v3, p0, Lcom/beizi/fusion/work/c/c;->V:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    .line 21
    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 22
    iget-object v0, p0, Lcom/beizi/fusion/work/c/c;->V:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/work/c/c;->W:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 24
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    .line 25
    invoke-static {v3, v1}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v1

    const/4 v3, 0x0

    .line 26
    invoke-virtual {v0, v3, v2, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 27
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->K:Lcom/beizi/ad/e;

    invoke-interface {v0}, Lcom/beizi/ad/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/beizi/fusion/work/c/c;->Z:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 29
    iget-object v1, p0, Lcom/beizi/fusion/work/c/c;->Z:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    :cond_4
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->K:Lcom/beizi/ad/e;

    invoke-interface {v0}, Lcom/beizi/ad/e;->c()Ljava/lang/String;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/beizi/fusion/work/c/c;->aa:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 32
    iget-object v1, p0, Lcom/beizi/fusion/work/c/c;->aa:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    :cond_5
    iget-object v0, p0, Lcom/beizi/fusion/work/c/c;->ab:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 34
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    sget v2, Lcom/beizi/fusion/R$drawable;->beizi_bg_operate_button:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 35
    :cond_6
    iget-object v0, p0, Lcom/beizi/fusion/work/c/c;->ac:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 36
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    const/high16 v2, 0x427c0000    # 63.0f

    .line 37
    invoke-static {v1, v2}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    const/high16 v3, 0x41c00000    # 24.0f

    .line 38
    invoke-static {v2, v3}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 39
    iget-object v1, p0, Lcom/beizi/fusion/work/c/c;->ac:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    iget-object v0, p0, Lcom/beizi/fusion/work/c/c;->ac:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 41
    :cond_7
    iget-object v0, p0, Lcom/beizi/fusion/work/c/c;->ab:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/beizi/fusion/work/c/c;->ac:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/beizi/fusion/work/c/a;->a(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 42
    invoke-direct {p0}, Lcom/beizi/fusion/work/c/c;->aI()V

    .line 43
    invoke-virtual {p0}, Lcom/beizi/fusion/work/c/a;->aA()V

    .line 44
    invoke-virtual {p0}, Lcom/beizi/fusion/work/c/a;->aB()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

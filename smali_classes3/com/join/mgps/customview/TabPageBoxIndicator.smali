.class public Lcom/join/mgps/customview/TabPageBoxIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/g0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/TabPageBoxIndicator$e;,
        Lcom/join/mgps/customview/TabPageBoxIndicator$d;
    }
.end annotation


# static fields
.field private static final n:Ljava/lang/CharSequence;


# instance fields
.field private b:Ljava/lang/Runnable;

.field private final c:Landroid/view/View$OnClickListener;

.field private final d:Lcom/join/mgps/customview/IcsLinearLayout;

.field private e:Landroidx/viewpager/widget/ViewPager;

.field private f:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private g:I

.field private h:I

.field private i:Lcom/join/mgps/customview/TabPageIndicator$d;

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    sput-object v0, Lcom/join/mgps/customview/TabPageBoxIndicator;->n:Ljava/lang/CharSequence;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/TabPageBoxIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p2, Lcom/join/mgps/customview/TabPageBoxIndicator$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/TabPageBoxIndicator$a;-><init>(Lcom/join/mgps/customview/TabPageBoxIndicator;)V

    iput-object p2, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->c:Landroid/view/View$OnClickListener;

    const p2, -0x757576

    .line 4
    iput p2, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->j:I

    const/4 p2, -0x1

    .line 5
    iput p2, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->k:I

    const v0, 0x7f080c5f

    .line 6
    iput v0, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->l:I

    const v0, 0x7f080c60

    .line 7
    iput v0, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->m:I

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 9
    new-instance v0, Lcom/join/mgps/customview/IcsLinearLayout;

    const v1, 0x7f04081a

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/customview/IcsLinearLayout;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->d:Lcom/join/mgps/customview/IcsLinearLayout;

    .line 10
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/TabPageBoxIndicator;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/TabPageBoxIndicator;)Lcom/join/mgps/customview/TabPageIndicator$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->i:Lcom/join/mgps/customview/TabPageIndicator$d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/customview/TabPageBoxIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->b:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic d(Lcom/join/mgps/customview/TabPageBoxIndicator;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->g:I

    .line 2
    .line 3
    return p0
.end method

.method private e(ILjava/lang/CharSequence;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "index",
            "text",
            "iconResId"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/widget/RadioGroup$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v3, v1, v2}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/high16 v2, 0x41500000    # 13.0f

    .line 15
    .line 16
    invoke-static {v1, v2}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const/high16 v5, 0x41200000    # 10.0f

    .line 25
    .line 26
    invoke-static {v4, v5}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-static {v5, v2}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    const/high16 v6, 0x41100000    # 9.0f

    .line 43
    .line 44
    invoke-static {v5, v6}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Lcom/join/mgps/customview/TabPageBoxIndicator$e;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/customview/TabPageBoxIndicator$e;-><init>(Lcom/join/mgps/customview/TabPageBoxIndicator;Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v1, p1}, Lcom/join/mgps/customview/TabPageBoxIndicator$e;->a(Lcom/join/mgps/customview/TabPageBoxIndicator$e;I)I

    .line 61
    .line 62
    .line 63
    const/4 v2, 0x1

    .line 64
    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->c:Landroid/view/View$OnClickListener;

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    const/high16 p2, 0x41800000    # 16.0f

    .line 76
    .line 77
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    const/high16 v2, 0x41900000    # 18.0f

    .line 85
    .line 86
    invoke-static {p2, v2}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    const/high16 v5, 0x40000000    # 2.0f

    .line 95
    .line 96
    invoke-static {v4, v5}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-static {v6, v2}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-static {v6, v5}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    invoke-virtual {v1, p2, v4, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 117
    .line 118
    .line 119
    iget p2, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->j:I

    .line 120
    .line 121
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    .line 123
    .line 124
    const/16 p2, 0x11

    .line 125
    .line 126
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 127
    .line 128
    .line 129
    const p2, 0x7f080237

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 133
    .line 134
    .line 135
    if-eqz p3, :cond_0

    .line 136
    .line 137
    invoke-virtual {v1, v3, v3, v3, p3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 138
    .line 139
    .line 140
    :cond_0
    new-instance p2, Lcom/join/mgps/customview/TabPageBoxIndicator$c;

    .line 141
    .line 142
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/customview/TabPageBoxIndicator$c;-><init>(Lcom/join/mgps/customview/TabPageBoxIndicator;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->d:Lcom/join/mgps/customview/IcsLinearLayout;

    .line 149
    .line 150
    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method private f(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->d:Lcom/join/mgps/customview/IcsLinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->b:Ljava/lang/Runnable;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    new-instance v0, Lcom/join/mgps/customview/TabPageBoxIndicator$b;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/customview/TabPageBoxIndicator$b;-><init>(Lcom/join/mgps/customview/TabPageBoxIndicator;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->b:Ljava/lang/Runnable;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->d:Lcom/join/mgps/customview/IcsLinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v1, v0, Lcom/join/mgps/adapter/e3;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    move-object v1, v0

    .line 17
    check-cast v1, Lcom/join/mgps/adapter/e3;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x0

    .line 26
    :goto_1
    if-ge v3, v2, :cond_3

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    if-nez v4, :cond_1

    .line 33
    .line 34
    sget-object v4, Lcom/join/mgps/customview/TabPageBoxIndicator;->n:Ljava/lang/CharSequence;

    .line 35
    .line 36
    :cond_1
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-interface {v1, v3}, Lcom/join/mgps/adapter/e3;->a(I)I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    const v5, 0x7f080c5f

    .line 44
    .line 45
    .line 46
    :goto_2
    invoke-direct {p0, v3, v4, v5}, Lcom/join/mgps/customview/TabPageBoxIndicator;->e(ILjava/lang/CharSequence;I)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    iget v0, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->h:I

    .line 53
    .line 54
    if-le v0, v2, :cond_4

    .line 55
    .line 56
    add-int/lit8 v2, v2, -0x1

    .line 57
    .line 58
    iput v2, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->h:I

    .line 59
    .line 60
    :cond_4
    iget v0, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->h:I

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/TabPageBoxIndicator;->setCurrentItem(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->b:Ljava/lang/Runnable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->b:Ljava/lang/Runnable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/high16 v2, 0x40000000    # 2.0f

    .line 7
    .line 8
    if-ne v0, v2, :cond_0

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v3, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v4, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->d:Lcom/join/mgps/customview/IcsLinearLayout;

    .line 17
    .line 18
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-le v4, v1, :cond_3

    .line 23
    .line 24
    if-eq v0, v2, :cond_1

    .line 25
    .line 26
    const/high16 v1, -0x80000000

    .line 27
    .line 28
    if-ne v0, v1, :cond_3

    .line 29
    .line 30
    :cond_1
    const/4 v0, 0x2

    .line 31
    if-le v4, v0, :cond_2

    .line 32
    .line 33
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    int-to-float v0, v0

    .line 38
    const v1, 0x3ecccccd    # 0.4f

    .line 39
    .line 40
    .line 41
    mul-float v0, v0, v1

    .line 42
    .line 43
    float-to-int v0, v0

    .line 44
    iput v0, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->g:I

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    div-int/2addr v1, v0

    .line 52
    iput v1, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->g:I

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->g:I

    .line 57
    .line 58
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz v3, :cond_4

    .line 70
    .line 71
    if-eq v0, p1, :cond_4

    .line 72
    .line 73
    iget p1, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->h:I

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/TabPageBoxIndicator;->setCurrentItem(I)V

    .line 76
    .line 77
    .line 78
    :cond_4
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->f:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "arg0",
            "arg1",
            "arg2"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->f:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/TabPageBoxIndicator;->setCurrentItem(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->f:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->h:I

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->d:Lcom/join/mgps/customview/IcsLinearLayout;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-ge v2, v0, :cond_4

    .line 20
    .line 21
    iget-object v3, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->d:Lcom/join/mgps/customview/IcsLinearLayout;

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-ne v2, p1, :cond_1

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v4, 0x0

    .line 32
    :goto_1
    move-object v5, v3

    .line 33
    check-cast v5, Lcom/join/mgps/customview/TabPageBoxIndicator$e;

    .line 34
    .line 35
    if-ne v2, p1, :cond_2

    .line 36
    .line 37
    const v6, 0x7f08023a

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 41
    .line 42
    .line 43
    iget v6, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->k:I

    .line 44
    .line 45
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    .line 47
    .line 48
    iget v6, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->l:I

    .line 49
    .line 50
    invoke-virtual {v5, v1, v1, v1, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const v6, 0x7f080237

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 58
    .line 59
    .line 60
    iget v6, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->j:I

    .line 61
    .line 62
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    .line 64
    .line 65
    iget v6, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->m:I

    .line 66
    .line 67
    invoke-virtual {v5, v1, v1, v1, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 68
    .line 69
    .line 70
    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 71
    .line 72
    .line 73
    if-eqz v4, :cond_3

    .line 74
    .line 75
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/TabPageBoxIndicator;->f(I)V

    .line 76
    .line 77
    .line 78
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    return-void
.end method

.method public setNormalBottomDrawableBound(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawableBound"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->m:I

    .line 2
    .line 3
    return-void
.end method

.method public setNormalTextColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->j:I

    .line 2
    .line 3
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->f:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnTabReselectedListener(Lcom/join/mgps/customview/TabPageIndicator$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->i:Lcom/join/mgps/customview/TabPageIndicator$d;

    .line 2
    .line 3
    return-void
.end method

.method public setSelectedBottomDrawableBounds(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawableBound"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->l:I

    .line 2
    .line 3
    return-void
.end method

.method public setSelectedTextColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->k:I

    .line 2
    .line 3
    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iput-object p1, p0, Lcom/join/mgps/customview/TabPageBoxIndicator;->e:Landroidx/viewpager/widget/ViewPager;

    .line 5
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/customview/TabPageBoxIndicator;->notifyDataSetChanged()V

    return-void

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "initialPosition"
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/TabPageBoxIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 9
    invoke-virtual {p0, p2}, Lcom/join/mgps/customview/TabPageBoxIndicator;->setCurrentItem(I)V

    return-void
.end method

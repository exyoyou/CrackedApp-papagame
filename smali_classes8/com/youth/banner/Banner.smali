.class public Lcom/youth/banner/Banner;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youth/banner/Banner$b;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/List;

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private F:Landroid/content/Context;

.field private G:Lcom/youth/banner/view/BannerViewPager;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/LinearLayout;

.field private L:Landroid/widget/LinearLayout;

.field private M:Landroid/widget/LinearLayout;

.field private N:Landroid/widget/ImageView;

.field private O:Lcom/youth/banner/loader/ImageLoaderInterface;

.field private P:Lcom/youth/banner/Banner$b;

.field private Q:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private R:Lcom/youth/banner/b;

.field private S:Lya/a;

.field private T:Lya/b;

.field private U:Landroid/util/DisplayMetrics;

.field private V:Lcom/youth/banner/e;

.field private final W:Ljava/lang/Runnable;

.field public b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/youth/banner/Banner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/youth/banner/Banner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, "banner"

    .line 4
    iput-object p3, p0, Lcom/youth/banner/Banner;->b:Ljava/lang/String;

    const/4 p3, 0x5

    .line 5
    iput p3, p0, Lcom/youth/banner/Banner;->c:I

    const/4 p3, 0x1

    .line 6
    iput p3, p0, Lcom/youth/banner/Banner;->j:I

    const/16 v0, 0x7d0

    .line 7
    iput v0, p0, Lcom/youth/banner/Banner;->k:I

    const/16 v0, 0x320

    .line 8
    iput v0, p0, Lcom/youth/banner/Banner;->l:I

    .line 9
    iput-boolean p3, p0, Lcom/youth/banner/Banner;->m:Z

    .line 10
    iput-boolean p3, p0, Lcom/youth/banner/Banner;->n:Z

    .line 11
    sget v0, Lcom/youth/banner/R$drawable;->gray_radius:I

    iput v0, p0, Lcom/youth/banner/Banner;->o:I

    .line 12
    sget v0, Lcom/youth/banner/R$drawable;->white_radius:I

    iput v0, p0, Lcom/youth/banner/Banner;->p:I

    .line 13
    sget v0, Lcom/youth/banner/R$layout;->banner:I

    iput v0, p0, Lcom/youth/banner/Banner;->q:I

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/youth/banner/Banner;->w:I

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/youth/banner/Banner;->y:I

    .line 16
    iput p3, p0, Lcom/youth/banner/Banner;->z:I

    .line 17
    iput p3, p0, Lcom/youth/banner/Banner;->A:I

    .line 18
    new-instance p3, Lcom/youth/banner/e;

    invoke-direct {p3}, Lcom/youth/banner/e;-><init>()V

    iput-object p3, p0, Lcom/youth/banner/Banner;->V:Lcom/youth/banner/e;

    .line 19
    new-instance p3, Lcom/youth/banner/Banner$a;

    invoke-direct {p3, p0}, Lcom/youth/banner/Banner$a;-><init>(Lcom/youth/banner/Banner;)V

    iput-object p3, p0, Lcom/youth/banner/Banner;->W:Ljava/lang/Runnable;

    .line 20
    iput-object p1, p0, Lcom/youth/banner/Banner;->F:Landroid/content/Context;

    .line 21
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/youth/banner/Banner;->B:Ljava/util/List;

    .line 22
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/youth/banner/Banner;->C:Ljava/util/List;

    .line 23
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/youth/banner/Banner;->D:Ljava/util/List;

    .line 24
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/youth/banner/Banner;->E:Ljava/util/List;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iput-object p3, p0, Lcom/youth/banner/Banner;->U:Landroid/util/DisplayMetrics;

    .line 26
    iget p3, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p3, p3, 0x50

    iput p3, p0, Lcom/youth/banner/Banner;->h:I

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/youth/banner/Banner;->o(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private G()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/youth/banner/Banner;->B:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/youth/banner/Banner;->C:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ne v0, v1, :cond_5

    .line 14
    .line 15
    iget v0, p0, Lcom/youth/banner/Banner;->s:I

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    iget-object v2, p0, Lcom/youth/banner/Banner;->M:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget v0, p0, Lcom/youth/banner/Banner;->r:I

    .line 26
    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/youth/banner/Banner;->M:Landroid/widget/LinearLayout;

    .line 30
    .line 31
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 32
    .line 33
    iget v3, p0, Lcom/youth/banner/Banner;->r:I

    .line 34
    .line 35
    invoke-direct {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget v0, p0, Lcom/youth/banner/Banner;->t:I

    .line 42
    .line 43
    if-eq v0, v1, :cond_2

    .line 44
    .line 45
    iget-object v2, p0, Lcom/youth/banner/Banner;->H:Landroid/widget/TextView;

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget v0, p0, Lcom/youth/banner/Banner;->u:I

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    if-eq v0, v1, :cond_3

    .line 54
    .line 55
    iget-object v1, p0, Lcom/youth/banner/Banner;->H:Landroid/widget/TextView;

    .line 56
    .line 57
    int-to-float v0, v0

    .line 58
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 59
    .line 60
    .line 61
    :cond_3
    iget-object v0, p0, Lcom/youth/banner/Banner;->B:Ljava/util/List;

    .line 62
    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-lez v0, :cond_4

    .line 70
    .line 71
    iget-object v0, p0, Lcom/youth/banner/Banner;->H:Landroid/widget/TextView;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/youth/banner/Banner;->B:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Ljava/lang/CharSequence;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/youth/banner/Banner;->H:Landroid/widget/TextView;

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/youth/banner/Banner;->M:Landroid/widget/LinearLayout;

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    :cond_4
    return-void

    .line 95
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    .line 96
    .line 97
    const-string v1, "[Banner] --> The number of titles and images is different"

    .line 98
    .line 99
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw v0
.end method

.method static synthetic a(Lcom/youth/banner/Banner;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/youth/banner/Banner;->w:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/youth/banner/Banner;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/youth/banner/Banner;->m:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lcom/youth/banner/Banner;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/youth/banner/Banner;->x:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lcom/youth/banner/Banner;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/youth/banner/Banner;->x:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic e(Lcom/youth/banner/Banner;)Lcom/youth/banner/view/BannerViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/youth/banner/Banner;->G:Lcom/youth/banner/view/BannerViewPager;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/youth/banner/Banner;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/youth/banner/Banner;->W:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/youth/banner/Banner;)Lcom/youth/banner/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/youth/banner/Banner;->V:Lcom/youth/banner/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/youth/banner/Banner;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/youth/banner/Banner;->k:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic i(Lcom/youth/banner/Banner;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/youth/banner/Banner;->D:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/youth/banner/Banner;)Lya/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/youth/banner/Banner;->S:Lya/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/youth/banner/Banner;)Lya/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/youth/banner/Banner;->T:Lya/b;

    .line 2
    .line 3
    return-object p0
.end method

.method private l()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/youth/banner/Banner;->E:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/youth/banner/Banner;->K:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/youth/banner/Banner;->L:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    :goto_0
    iget v1, p0, Lcom/youth/banner/Banner;->w:I

    .line 18
    .line 19
    if-ge v0, v1, :cond_4

    .line 20
    .line 21
    new-instance v1, Landroid/widget/ImageView;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/youth/banner/Banner;->F:Landroid/content/Context;

    .line 24
    .line 25
    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 31
    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 36
    .line 37
    iget v3, p0, Lcom/youth/banner/Banner;->f:I

    .line 38
    .line 39
    iget v4, p0, Lcom/youth/banner/Banner;->g:I

    .line 40
    .line 41
    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 42
    .line 43
    .line 44
    iget v3, p0, Lcom/youth/banner/Banner;->o:I

    .line 45
    .line 46
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 51
    .line 52
    iget v3, p0, Lcom/youth/banner/Banner;->d:I

    .line 53
    .line 54
    iget v4, p0, Lcom/youth/banner/Banner;->e:I

    .line 55
    .line 56
    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 57
    .line 58
    .line 59
    iget v3, p0, Lcom/youth/banner/Banner;->p:I

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    .line 63
    .line 64
    :goto_1
    iget v3, p0, Lcom/youth/banner/Banner;->c:I

    .line 65
    .line 66
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 67
    .line 68
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 69
    .line 70
    iget-object v3, p0, Lcom/youth/banner/Banner;->E:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    iget v3, p0, Lcom/youth/banner/Banner;->j:I

    .line 76
    .line 77
    const/4 v4, 0x1

    .line 78
    if-eq v3, v4, :cond_2

    .line 79
    .line 80
    const/4 v4, 0x4

    .line 81
    if-ne v3, v4, :cond_1

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_1
    const/4 v4, 0x5

    .line 85
    if-ne v3, v4, :cond_3

    .line 86
    .line 87
    iget-object v3, p0, Lcom/youth/banner/Banner;->L:Landroid/widget/LinearLayout;

    .line 88
    .line 89
    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/youth/banner/Banner;->K:Landroid/widget/LinearLayout;

    .line 94
    .line 95
    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    .line 97
    .line 98
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    return-void
.end method

.method private m(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/youth/banner/R$styleable;->Banner:[I

    .line 5
    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget p2, Lcom/youth/banner/R$styleable;->Banner_indicator_width:I

    .line 11
    .line 12
    iget v0, p0, Lcom/youth/banner/Banner;->h:I

    .line 13
    .line 14
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    iput p2, p0, Lcom/youth/banner/Banner;->d:I

    .line 19
    .line 20
    sget p2, Lcom/youth/banner/R$styleable;->Banner_indicator_height:I

    .line 21
    .line 22
    iget v0, p0, Lcom/youth/banner/Banner;->h:I

    .line 23
    .line 24
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    iput p2, p0, Lcom/youth/banner/Banner;->e:I

    .line 29
    .line 30
    sget p2, Lcom/youth/banner/R$styleable;->Banner_indicator_selected_width:I

    .line 31
    .line 32
    iget v0, p0, Lcom/youth/banner/Banner;->h:I

    .line 33
    .line 34
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    iput p2, p0, Lcom/youth/banner/Banner;->f:I

    .line 39
    .line 40
    sget p2, Lcom/youth/banner/R$styleable;->Banner_indicator_selected_height:I

    .line 41
    .line 42
    iget v0, p0, Lcom/youth/banner/Banner;->h:I

    .line 43
    .line 44
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    iput p2, p0, Lcom/youth/banner/Banner;->g:I

    .line 49
    .line 50
    sget p2, Lcom/youth/banner/R$styleable;->Banner_indicator_margin:I

    .line 51
    .line 52
    const/4 v0, 0x5

    .line 53
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    iput p2, p0, Lcom/youth/banner/Banner;->c:I

    .line 58
    .line 59
    sget p2, Lcom/youth/banner/R$styleable;->Banner_indicator_drawable_selected:I

    .line 60
    .line 61
    sget v0, Lcom/youth/banner/R$drawable;->gray_radius:I

    .line 62
    .line 63
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    iput p2, p0, Lcom/youth/banner/Banner;->o:I

    .line 68
    .line 69
    sget p2, Lcom/youth/banner/R$styleable;->Banner_indicator_drawable_unselected:I

    .line 70
    .line 71
    sget v0, Lcom/youth/banner/R$drawable;->white_radius:I

    .line 72
    .line 73
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    iput p2, p0, Lcom/youth/banner/Banner;->p:I

    .line 78
    .line 79
    sget p2, Lcom/youth/banner/R$styleable;->Banner_image_scale_type:I

    .line 80
    .line 81
    iget v0, p0, Lcom/youth/banner/Banner;->A:I

    .line 82
    .line 83
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    iput p2, p0, Lcom/youth/banner/Banner;->A:I

    .line 88
    .line 89
    sget p2, Lcom/youth/banner/R$styleable;->Banner_delay_time:I

    .line 90
    .line 91
    const/16 v0, 0x7d0

    .line 92
    .line 93
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    iput p2, p0, Lcom/youth/banner/Banner;->k:I

    .line 98
    .line 99
    sget p2, Lcom/youth/banner/R$styleable;->Banner_scroll_time:I

    .line 100
    .line 101
    const/16 v0, 0x320

    .line 102
    .line 103
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    iput p2, p0, Lcom/youth/banner/Banner;->l:I

    .line 108
    .line 109
    sget p2, Lcom/youth/banner/R$styleable;->Banner_is_auto_play:I

    .line 110
    .line 111
    const/4 v0, 0x1

    .line 112
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    iput-boolean p2, p0, Lcom/youth/banner/Banner;->m:Z

    .line 117
    .line 118
    sget p2, Lcom/youth/banner/R$styleable;->Banner_title_background:I

    .line 119
    .line 120
    const/4 v0, -0x1

    .line 121
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    iput p2, p0, Lcom/youth/banner/Banner;->s:I

    .line 126
    .line 127
    sget p2, Lcom/youth/banner/R$styleable;->Banner_title_height:I

    .line 128
    .line 129
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    iput p2, p0, Lcom/youth/banner/Banner;->r:I

    .line 134
    .line 135
    sget p2, Lcom/youth/banner/R$styleable;->Banner_title_textcolor:I

    .line 136
    .line 137
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    iput p2, p0, Lcom/youth/banner/Banner;->t:I

    .line 142
    .line 143
    sget p2, Lcom/youth/banner/R$styleable;->Banner_title_textsize:I

    .line 144
    .line 145
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    iput p2, p0, Lcom/youth/banner/Banner;->u:I

    .line 150
    .line 151
    sget p2, Lcom/youth/banner/R$styleable;->Banner_banner_layout:I

    .line 152
    .line 153
    iget v0, p0, Lcom/youth/banner/Banner;->q:I

    .line 154
    .line 155
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 156
    .line 157
    .line 158
    move-result p2

    .line 159
    iput p2, p0, Lcom/youth/banner/Banner;->q:I

    .line 160
    .line 161
    sget p2, Lcom/youth/banner/R$styleable;->Banner_banner_default_image:I

    .line 162
    .line 163
    sget v0, Lcom/youth/banner/R$drawable;->no_banner:I

    .line 164
    .line 165
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 166
    .line 167
    .line 168
    move-result p2

    .line 169
    iput p2, p0, Lcom/youth/banner/Banner;->i:I

    .line 170
    .line 171
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    .line 173
    .line 174
    return-void
.end method

.method private n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/youth/banner/Banner;->D:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/youth/banner/Banner;->j:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x5

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x3

    .line 19
    const-string v2, "1/"

    .line 20
    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/youth/banner/Banner;->I:Landroid/widget/TextView;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget v2, p0, Lcom/youth/banner/Banner;->w:I

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v1, 0x2

    .line 47
    if-ne v0, v1, :cond_3

    .line 48
    .line 49
    iget-object v0, p0, Lcom/youth/banner/Banner;->J:Landroid/widget/TextView;

    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget v2, p0, Lcom/youth/banner/Banner;->w:I

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/youth/banner/Banner;->l()V

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_1
    return-void
.end method

.method private o(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/youth/banner/Banner;->D:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/youth/banner/Banner;->m(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget p2, p0, Lcom/youth/banner/Banner;->q:I

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget p2, Lcom/youth/banner/R$id;->bannerDefaultImage:I

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Landroid/widget/ImageView;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/youth/banner/Banner;->N:Landroid/widget/ImageView;

    .line 29
    .line 30
    sget p2, Lcom/youth/banner/R$id;->bannerViewPager:I

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Lcom/youth/banner/view/BannerViewPager;

    .line 37
    .line 38
    iput-object p2, p0, Lcom/youth/banner/Banner;->G:Lcom/youth/banner/view/BannerViewPager;

    .line 39
    .line 40
    sget p2, Lcom/youth/banner/R$id;->titleView:I

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Landroid/widget/LinearLayout;

    .line 47
    .line 48
    iput-object p2, p0, Lcom/youth/banner/Banner;->M:Landroid/widget/LinearLayout;

    .line 49
    .line 50
    sget p2, Lcom/youth/banner/R$id;->circleIndicator:I

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Landroid/widget/LinearLayout;

    .line 57
    .line 58
    iput-object p2, p0, Lcom/youth/banner/Banner;->K:Landroid/widget/LinearLayout;

    .line 59
    .line 60
    sget p2, Lcom/youth/banner/R$id;->indicatorInside:I

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    check-cast p2, Landroid/widget/LinearLayout;

    .line 67
    .line 68
    iput-object p2, p0, Lcom/youth/banner/Banner;->L:Landroid/widget/LinearLayout;

    .line 69
    .line 70
    sget p2, Lcom/youth/banner/R$id;->bannerTitle:I

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    check-cast p2, Landroid/widget/TextView;

    .line 77
    .line 78
    iput-object p2, p0, Lcom/youth/banner/Banner;->H:Landroid/widget/TextView;

    .line 79
    .line 80
    sget p2, Lcom/youth/banner/R$id;->numIndicator:I

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    check-cast p2, Landroid/widget/TextView;

    .line 87
    .line 88
    iput-object p2, p0, Lcom/youth/banner/Banner;->J:Landroid/widget/TextView;

    .line 89
    .line 90
    sget p2, Lcom/youth/banner/R$id;->numIndicatorInside:I

    .line 91
    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Landroid/widget/TextView;

    .line 97
    .line 98
    iput-object p1, p0, Lcom/youth/banner/Banner;->I:Landroid/widget/TextView;

    .line 99
    .line 100
    iget-object p1, p0, Lcom/youth/banner/Banner;->N:Landroid/widget/ImageView;

    .line 101
    .line 102
    iget p2, p0, Lcom/youth/banner/Banner;->i:I

    .line 103
    .line 104
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    .line 106
    .line 107
    invoke-direct {p0}, Lcom/youth/banner/Banner;->p()V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method private p()V
    .locals 3

    .line 1
    :try_start_0
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    const-string v1, "mScroller"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/youth/banner/b;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/youth/banner/Banner;->G:Lcom/youth/banner/view/BannerViewPager;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-direct {v1, v2}, Lcom/youth/banner/b;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/youth/banner/Banner;->R:Lcom/youth/banner/b;

    .line 25
    .line 26
    iget v2, p0, Lcom/youth/banner/Banner;->l:I

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/youth/banner/b;->a(I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/youth/banner/Banner;->G:Lcom/youth/banner/view/BannerViewPager;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/youth/banner/Banner;->R:Lcom/youth/banner/b;

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method private setImageList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_7

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-gtz v1, :cond_0

    .line 9
    .line 10
    goto :goto_3

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/youth/banner/Banner;->N:Landroid/widget/ImageView;

    .line 12
    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/youth/banner/Banner;->n()V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    iget v2, p0, Lcom/youth/banner/Banner;->w:I

    .line 23
    .line 24
    add-int/lit8 v3, v2, 0x1

    .line 25
    .line 26
    if-gt v1, v3, :cond_6

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    add-int/lit8 v2, v2, -0x1

    .line 31
    .line 32
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    if-ne v1, v2, :cond_2

    .line 40
    .line 41
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    add-int/lit8 v2, v1, -0x1

    .line 47
    .line 48
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :goto_1
    iget-object v3, p0, Lcom/youth/banner/Banner;->O:Lcom/youth/banner/loader/ImageLoaderInterface;

    .line 53
    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    iget-object v4, p0, Lcom/youth/banner/Banner;->F:Landroid/content/Context;

    .line 57
    .line 58
    invoke-interface {v3, v4, v2}, Lcom/youth/banner/loader/ImageLoaderInterface;->createImageView(Landroid/content/Context;Ljava/lang/Object;)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    const/4 v3, 0x0

    .line 64
    :goto_2
    if-nez v3, :cond_4

    .line 65
    .line 66
    new-instance v3, Landroid/widget/ImageView;

    .line 67
    .line 68
    iget-object v4, p0, Lcom/youth/banner/Banner;->F:Landroid/content/Context;

    .line 69
    .line 70
    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    :cond_4
    invoke-direct {p0, v3}, Lcom/youth/banner/Banner;->setScaleType(Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    iget-object v4, p0, Lcom/youth/banner/Banner;->D:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    iget-object v4, p0, Lcom/youth/banner/Banner;->O:Lcom/youth/banner/loader/ImageLoaderInterface;

    .line 82
    .line 83
    if-eqz v4, :cond_5

    .line 84
    .line 85
    iget-object v5, p0, Lcom/youth/banner/Banner;->F:Landroid/content/Context;

    .line 86
    .line 87
    invoke-interface {v4, v5, v2, v3}, Lcom/youth/banner/loader/ImageLoaderInterface;->displayImage(Landroid/content/Context;Ljava/lang/Object;Landroid/view/View;)V

    .line 88
    .line 89
    .line 90
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_6
    return-void

    .line 94
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/youth/banner/Banner;->N:Landroid/widget/ImageView;

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method private setScaleType(Landroid/view/View;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroid/widget/ImageView;

    .line 6
    .line 7
    iget v0, p0, Lcom/youth/banner/Banner;->A:I

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_2
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_3
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_4
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_5
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :pswitch_6
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :pswitch_7
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    :goto_0
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private u()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/youth/banner/Banner;->w:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-le v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x8

    .line 9
    .line 10
    :goto_0
    iget v2, p0, Lcom/youth/banner/Banner;->j:I

    .line 11
    .line 12
    if-eq v2, v1, :cond_5

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq v2, v1, :cond_4

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-eq v2, v1, :cond_3

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    if-eq v2, v1, :cond_2

    .line 22
    .line 23
    const/4 v1, 0x5

    .line 24
    if-eq v2, v1, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/youth/banner/Banner;->L:Landroid/widget/LinearLayout;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/youth/banner/Banner;->G()V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    iget-object v1, p0, Lcom/youth/banner/Banner;->K:Landroid/widget/LinearLayout;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lcom/youth/banner/Banner;->G()V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    iget-object v1, p0, Lcom/youth/banner/Banner;->I:Landroid/widget/TextView;

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lcom/youth/banner/Banner;->G()V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_4
    iget-object v1, p0, Lcom/youth/banner/Banner;->J:Landroid/widget/TextView;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_5
    iget-object v1, p0, Lcom/youth/banner/Banner;->K:Landroid/widget/LinearLayout;

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    :goto_1
    return-void
.end method

.method private w()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/youth/banner/Banner;->v:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput v0, p0, Lcom/youth/banner/Banner;->x:I

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iput v1, p0, Lcom/youth/banner/Banner;->x:I

    .line 10
    .line 11
    :goto_0
    iget-object v0, p0, Lcom/youth/banner/Banner;->P:Lcom/youth/banner/Banner$b;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Lcom/youth/banner/Banner$b;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/youth/banner/Banner$b;-><init>(Lcom/youth/banner/Banner;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/youth/banner/Banner;->P:Lcom/youth/banner/Banner$b;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/youth/banner/Banner;->G:Lcom/youth/banner/view/BannerViewPager;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/youth/banner/Banner;->G:Lcom/youth/banner/view/BannerViewPager;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/youth/banner/Banner;->P:Lcom/youth/banner/Banner$b;

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 36
    .line 37
    .line 38
    :goto_1
    iget-object v0, p0, Lcom/youth/banner/Banner;->G:Lcom/youth/banner/view/BannerViewPager;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/youth/banner/Banner;->G:Lcom/youth/banner/view/BannerViewPager;

    .line 44
    .line 45
    iget v2, p0, Lcom/youth/banner/Banner;->x:I

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 48
    .line 49
    .line 50
    iget v0, p0, Lcom/youth/banner/Banner;->y:I

    .line 51
    .line 52
    const/4 v2, -0x1

    .line 53
    if-eq v0, v2, :cond_2

    .line 54
    .line 55
    iget-object v2, p0, Lcom/youth/banner/Banner;->K:Landroid/widget/LinearLayout;

    .line 56
    .line 57
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 58
    .line 59
    .line 60
    :cond_2
    iget-boolean v0, p0, Lcom/youth/banner/Banner;->n:Z

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    iget v0, p0, Lcom/youth/banner/Banner;->w:I

    .line 65
    .line 66
    if-le v0, v1, :cond_3

    .line 67
    .line 68
    iget-object v0, p0, Lcom/youth/banner/Banner;->G:Lcom/youth/banner/view/BannerViewPager;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/youth/banner/view/BannerViewPager;->setScrollable(Z)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    iget-object v0, p0, Lcom/youth/banner/Banner;->G:Lcom/youth/banner/view/BannerViewPager;

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    invoke-virtual {v0, v1}, Lcom/youth/banner/view/BannerViewPager;->setScrollable(Z)V

    .line 78
    .line 79
    .line 80
    :goto_2
    iget-boolean v0, p0, Lcom/youth/banner/Banner;->m:Z

    .line 81
    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->J()V

    .line 85
    .line 86
    .line 87
    :cond_4
    return-void
.end method


# virtual methods
.method public A(I)Lcom/youth/banner/Banner;
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    if-eq p1, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x6

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x7

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 p1, 0x15

    .line 12
    .line 13
    iput p1, p0, Lcom/youth/banner/Banner;->y:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/16 p1, 0x11

    .line 17
    .line 18
    iput p1, p0, Lcom/youth/banner/Banner;->y:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    const/16 p1, 0x13

    .line 22
    .line 23
    iput p1, p0, Lcom/youth/banner/Banner;->y:I

    .line 24
    .line 25
    :goto_0
    return-object p0
.end method

.method public B(I)Lcom/youth/banner/Banner;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/youth/banner/Banner;->G:Lcom/youth/banner/view/BannerViewPager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-object p0
.end method

.method public C(Lya/a;)Lcom/youth/banner/Banner;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/youth/banner/Banner;->S:Lya/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public D(Lya/b;)Lcom/youth/banner/Banner;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/youth/banner/Banner;->T:Lya/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public E(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)Lcom/youth/banner/Banner;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/youth/banner/Banner;->G:Lcom/youth/banner/view/BannerViewPager;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public F(I)Lcom/youth/banner/Banner;
    .locals 0

    .line 1
    iput p1, p0, Lcom/youth/banner/Banner;->v:I

    .line 2
    .line 3
    return-object p0
.end method

.method public H(Z)Lcom/youth/banner/Banner;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/youth/banner/Banner;->n:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public I()Lcom/youth/banner/Banner;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/youth/banner/Banner;->u()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/youth/banner/Banner;->C:Ljava/util/List;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/youth/banner/Banner;->setImageList(Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/youth/banner/Banner;->w()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public J()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/youth/banner/Banner;->V:Lcom/youth/banner/e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/youth/banner/Banner;->W:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/youth/banner/e;->i(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/youth/banner/Banner;->V:Lcom/youth/banner/e;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/youth/banner/Banner;->W:Ljava/lang/Runnable;

    .line 11
    .line 12
    iget v2, p0, Lcom/youth/banner/Banner;->k:I

    .line 13
    .line 14
    int-to-long v2, v2

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Lcom/youth/banner/e;->h(Ljava/lang/Runnable;J)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public K()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/youth/banner/Banner;->V:Lcom/youth/banner/e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/youth/banner/Banner;->W:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/youth/banner/e;->i(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public L(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/youth/banner/Banner;->w:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 p1, p1, -0x1

    .line 6
    .line 7
    rem-int/2addr p1, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    if-gez p1, :cond_1

    .line 11
    .line 12
    add-int/2addr p1, v0

    .line 13
    :cond_1
    return p1
.end method

.method public M(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/youth/banner/Banner;->K:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/youth/banner/Banner;->J:Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/youth/banner/Banner;->I:Landroid/widget/TextView;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/youth/banner/Banner;->L:Landroid/widget/LinearLayout;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/youth/banner/Banner;->H:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/youth/banner/Banner;->M:Landroid/widget/LinearLayout;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iput p1, p0, Lcom/youth/banner/Banner;->j:I

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->I()Lcom/youth/banner/Banner;

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/youth/banner/Banner;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-nez v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->K()V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->J()V

    .line 26
    .line 27
    .line 28
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/youth/banner/Banner;->Q:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

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
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    if-eq p1, v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget p1, p0, Lcom/youth/banner/Banner;->x:I

    .line 16
    .line 17
    iget v2, p0, Lcom/youth/banner/Banner;->w:I

    .line 18
    .line 19
    add-int/lit8 v3, v2, 0x1

    .line 20
    .line 21
    if-ne p1, v3, :cond_2

    .line 22
    .line 23
    iget-object p1, p0, Lcom/youth/banner/Banner;->G:Lcom/youth/banner/view/BannerViewPager;

    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    if-nez p1, :cond_5

    .line 30
    .line 31
    iget-object p1, p0, Lcom/youth/banner/Banner;->G:Lcom/youth/banner/view/BannerViewPager;

    .line 32
    .line 33
    invoke-virtual {p1, v2, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    iget p1, p0, Lcom/youth/banner/Banner;->x:I

    .line 38
    .line 39
    if-nez p1, :cond_4

    .line 40
    .line 41
    iget-object p1, p0, Lcom/youth/banner/Banner;->G:Lcom/youth/banner/view/BannerViewPager;

    .line 42
    .line 43
    iget v1, p0, Lcom/youth/banner/Banner;->w:I

    .line 44
    .line 45
    invoke-virtual {p1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_4
    iget v2, p0, Lcom/youth/banner/Banner;->w:I

    .line 50
    .line 51
    add-int/2addr v2, v1

    .line 52
    if-ne p1, v2, :cond_5

    .line 53
    .line 54
    iget-object p1, p0, Lcom/youth/banner/Banner;->G:Lcom/youth/banner/view/BannerViewPager;

    .line 55
    .line 56
    invoke-virtual {p1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 57
    .line 58
    .line 59
    :cond_5
    :goto_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/youth/banner/Banner;->Q:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/youth/banner/Banner;->L(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 8

    .line 1
    iput p1, p0, Lcom/youth/banner/Banner;->x:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/youth/banner/Banner;->Q:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/youth/banner/Banner;->L(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-interface {v0, v1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget v0, p0, Lcom/youth/banner/Banner;->j:I

    .line 15
    .line 16
    const/4 v1, 0x5

    .line 17
    const/4 v2, 0x4

    .line 18
    const/4 v3, 0x1

    .line 19
    if-eq v0, v3, :cond_1

    .line 20
    .line 21
    if-eq v0, v2, :cond_1

    .line 22
    .line 23
    if-ne v0, v1, :cond_2

    .line 24
    .line 25
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 26
    .line 27
    iget v4, p0, Lcom/youth/banner/Banner;->f:I

    .line 28
    .line 29
    iget v5, p0, Lcom/youth/banner/Banner;->g:I

    .line 30
    .line 31
    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 32
    .line 33
    .line 34
    iget v4, p0, Lcom/youth/banner/Banner;->c:I

    .line 35
    .line 36
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 37
    .line 38
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 39
    .line 40
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 41
    .line 42
    iget v5, p0, Lcom/youth/banner/Banner;->d:I

    .line 43
    .line 44
    iget v6, p0, Lcom/youth/banner/Banner;->e:I

    .line 45
    .line 46
    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    .line 48
    .line 49
    iget v5, p0, Lcom/youth/banner/Banner;->c:I

    .line 50
    .line 51
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 52
    .line 53
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 54
    .line 55
    iget-object v5, p0, Lcom/youth/banner/Banner;->E:Ljava/util/List;

    .line 56
    .line 57
    iget v6, p0, Lcom/youth/banner/Banner;->z:I

    .line 58
    .line 59
    sub-int/2addr v6, v3

    .line 60
    iget v7, p0, Lcom/youth/banner/Banner;->w:I

    .line 61
    .line 62
    add-int/2addr v6, v7

    .line 63
    rem-int/2addr v6, v7

    .line 64
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    check-cast v5, Landroid/widget/ImageView;

    .line 69
    .line 70
    iget v6, p0, Lcom/youth/banner/Banner;->p:I

    .line 71
    .line 72
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    .line 74
    .line 75
    iget-object v5, p0, Lcom/youth/banner/Banner;->E:Ljava/util/List;

    .line 76
    .line 77
    iget v6, p0, Lcom/youth/banner/Banner;->z:I

    .line 78
    .line 79
    sub-int/2addr v6, v3

    .line 80
    iget v7, p0, Lcom/youth/banner/Banner;->w:I

    .line 81
    .line 82
    add-int/2addr v6, v7

    .line 83
    rem-int/2addr v6, v7

    .line 84
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    check-cast v5, Landroid/widget/ImageView;

    .line 89
    .line 90
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .line 92
    .line 93
    iget-object v4, p0, Lcom/youth/banner/Banner;->E:Ljava/util/List;

    .line 94
    .line 95
    add-int/lit8 v5, p1, -0x1

    .line 96
    .line 97
    iget v6, p0, Lcom/youth/banner/Banner;->w:I

    .line 98
    .line 99
    add-int v7, v5, v6

    .line 100
    .line 101
    rem-int/2addr v7, v6

    .line 102
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    check-cast v4, Landroid/widget/ImageView;

    .line 107
    .line 108
    iget v6, p0, Lcom/youth/banner/Banner;->o:I

    .line 109
    .line 110
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    .line 112
    .line 113
    iget-object v4, p0, Lcom/youth/banner/Banner;->E:Ljava/util/List;

    .line 114
    .line 115
    iget v6, p0, Lcom/youth/banner/Banner;->w:I

    .line 116
    .line 117
    add-int/2addr v5, v6

    .line 118
    rem-int/2addr v5, v6

    .line 119
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    check-cast v4, Landroid/widget/ImageView;

    .line 124
    .line 125
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    .line 127
    .line 128
    iput p1, p0, Lcom/youth/banner/Banner;->z:I

    .line 129
    .line 130
    :cond_2
    if-nez p1, :cond_3

    .line 131
    .line 132
    iget p1, p0, Lcom/youth/banner/Banner;->w:I

    .line 133
    .line 134
    :cond_3
    iget v0, p0, Lcom/youth/banner/Banner;->w:I

    .line 135
    .line 136
    if-le p1, v0, :cond_4

    .line 137
    .line 138
    const/4 p1, 0x1

    .line 139
    :cond_4
    iget v0, p0, Lcom/youth/banner/Banner;->j:I

    .line 140
    .line 141
    const/4 v4, 0x2

    .line 142
    const-string v5, "/"

    .line 143
    .line 144
    if-eq v0, v4, :cond_8

    .line 145
    .line 146
    const/4 v4, 0x3

    .line 147
    if-eq v0, v4, :cond_7

    .line 148
    .line 149
    if-eq v0, v2, :cond_6

    .line 150
    .line 151
    if-eq v0, v1, :cond_5

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_5
    iget-object v0, p0, Lcom/youth/banner/Banner;->H:Landroid/widget/TextView;

    .line 155
    .line 156
    iget-object v1, p0, Lcom/youth/banner/Banner;->B:Ljava/util/List;

    .line 157
    .line 158
    sub-int/2addr p1, v3

    .line 159
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    check-cast p1, Ljava/lang/CharSequence;

    .line 164
    .line 165
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_6
    iget-object v0, p0, Lcom/youth/banner/Banner;->H:Landroid/widget/TextView;

    .line 170
    .line 171
    iget-object v1, p0, Lcom/youth/banner/Banner;->B:Ljava/util/List;

    .line 172
    .line 173
    sub-int/2addr p1, v3

    .line 174
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    check-cast p1, Ljava/lang/CharSequence;

    .line 179
    .line 180
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_7
    iget-object v0, p0, Lcom/youth/banner/Banner;->I:Landroid/widget/TextView;

    .line 185
    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    iget v2, p0, Lcom/youth/banner/Banner;->w:I

    .line 198
    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    .line 208
    .line 209
    iget-object v0, p0, Lcom/youth/banner/Banner;->H:Landroid/widget/TextView;

    .line 210
    .line 211
    iget-object v1, p0, Lcom/youth/banner/Banner;->B:Ljava/util/List;

    .line 212
    .line 213
    sub-int/2addr p1, v3

    .line 214
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    check-cast p1, Ljava/lang/CharSequence;

    .line 219
    .line 220
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    .line 222
    .line 223
    goto :goto_0

    .line 224
    :cond_8
    iget-object v0, p0, Lcom/youth/banner/Banner;->J:Landroid/widget/TextView;

    .line 225
    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    iget p1, p0, Lcom/youth/banner/Banner;->w:I

    .line 238
    .line 239
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    .line 248
    .line 249
    :goto_0
    return-void
.end method

.method public q(Z)Lcom/youth/banner/Banner;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/youth/banner/Banner;->m:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/youth/banner/Banner;->V:Lcom/youth/banner/e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/youth/banner/e;->k(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public s(Ljava/lang/Class;)Lcom/youth/banner/Banner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/viewpager/widget/ViewPager$PageTransformer;",
            ">;)",
            "Lcom/youth/banner/Banner;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroidx/viewpager/widget/ViewPager$PageTransformer;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/youth/banner/Banner;->E(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)Lcom/youth/banner/Banner;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    return-object p0
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/youth/banner/Banner;->Q:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 2
    .line 3
    return-void
.end method

.method public t(I)Lcom/youth/banner/Banner;
    .locals 0

    .line 1
    iput p1, p0, Lcom/youth/banner/Banner;->j:I

    .line 2
    .line 3
    return-object p0
.end method

.method public update(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/youth/banner/Banner;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/youth/banner/Banner;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lcom/youth/banner/Banner;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    iget-object v0, p0, Lcom/youth/banner/Banner;->C:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-object p1, p0, Lcom/youth/banner/Banner;->C:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/youth/banner/Banner;->w:I

    .line 9
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->I()Lcom/youth/banner/Banner;

    return-void
.end method

.method public update(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/youth/banner/Banner;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/youth/banner/Banner;->B:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {p0, p1}, Lcom/youth/banner/Banner;->update(Ljava/util/List;)V

    return-void
.end method

.method public v(Ljava/util/List;)Lcom/youth/banner/Banner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/youth/banner/Banner;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/youth/banner/Banner;->B:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public x(I)Lcom/youth/banner/Banner;
    .locals 0

    .line 1
    iput p1, p0, Lcom/youth/banner/Banner;->k:I

    .line 2
    .line 3
    return-object p0
.end method

.method public y(Lcom/youth/banner/loader/ImageLoaderInterface;)Lcom/youth/banner/Banner;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/youth/banner/Banner;->O:Lcom/youth/banner/loader/ImageLoaderInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public z(Ljava/util/List;)Lcom/youth/banner/Banner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Lcom/youth/banner/Banner;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/youth/banner/Banner;->C:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Lcom/youth/banner/Banner;->w:I

    .line 11
    .line 12
    return-object p0
.end method

.class public Lcom/beizi/fusion/widget/BZCarouselView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beizi/fusion/widget/BZCarouselView$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:J

.field private e:Lcom/beizi/fusion/widget/BZCarouselView$a;

.field private final f:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private final g:Landroid/os/Handler;

.field private final h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/beizi/fusion/widget/BZCarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/beizi/fusion/widget/BZCarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/beizi/fusion/widget/BZCarouselView;->b:Ljava/util/List;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/beizi/fusion/widget/BZCarouselView;->c:I

    const-wide/16 p1, 0x1388

    .line 6
    iput-wide p1, p0, Lcom/beizi/fusion/widget/BZCarouselView;->d:J

    .line 7
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/beizi/fusion/widget/BZCarouselView;->f:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 8
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/beizi/fusion/widget/BZCarouselView;->g:Landroid/os/Handler;

    .line 9
    new-instance p1, Lcom/beizi/fusion/widget/BZCarouselView$1;

    invoke-direct {p1, p0}, Lcom/beizi/fusion/widget/BZCarouselView$1;-><init>(Lcom/beizi/fusion/widget/BZCarouselView;)V

    iput-object p1, p0, Lcom/beizi/fusion/widget/BZCarouselView;->h:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/widget/BZCarouselView;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/widget/BZCarouselView;->d:J

    return-wide v0
.end method

.method private a(II)V
    .locals 4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/widget/BZCarouselView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-lez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    if-lez p2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6
    :goto_1
    iget-object v0, p0, Lcom/beizi/fusion/widget/BZCarouselView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 8
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 9
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object v3, p0, Lcom/beizi/fusion/widget/BZCarouselView;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_3

    :cond_2
    int-to-float v3, p1

    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 11
    iget-object v3, p0, Lcom/beizi/fusion/widget/BZCarouselView;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/beizi/fusion/widget/BZCarouselView;->a(Ljava/lang/String;Landroid/widget/ImageView;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageView;II)V
    .locals 2

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/beizi/ad/internal/e/h;->a(Landroid/content/Context;)Lcom/beizi/ad/internal/e/h;

    move-result-object v0

    new-instance v1, Lcom/beizi/fusion/widget/BZCarouselView$2;

    invoke-direct {v1, p0, p3, p4, p2}, Lcom/beizi/fusion/widget/BZCarouselView$2;-><init>(Lcom/beizi/fusion/widget/BZCarouselView;IILandroid/widget/ImageView;)V

    invoke-virtual {v0, p1, v1}, Lcom/beizi/ad/internal/e/h;->a(Ljava/lang/String;Lcom/beizi/ad/internal/e/h$a;)V

    return-void
.end method

.method static synthetic b(Lcom/beizi/fusion/widget/BZCarouselView;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/widget/BZCarouselView;->g:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/beizi/fusion/widget/BZCarouselView;->stopCarousel()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/beizi/fusion/widget/BZCarouselView;->g:Landroid/os/Handler;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public performCarousel()V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/widget/BZCarouselView;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-gt v0, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 20
    .line 21
    iget-object v2, p0, Lcom/beizi/fusion/widget/BZCarouselView;->b:Ljava/util/List;

    .line 22
    .line 23
    iget v3, p0, Lcom/beizi/fusion/widget/BZCarouselView;->c:I

    .line 24
    .line 25
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroid/widget/ImageView;

    .line 30
    .line 31
    iget v3, p0, Lcom/beizi/fusion/widget/BZCarouselView;->c:I

    .line 32
    .line 33
    add-int/2addr v3, v1

    .line 34
    iget-object v1, p0, Lcom/beizi/fusion/widget/BZCarouselView;->b:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    rem-int/2addr v3, v1

    .line 41
    iget-object v1, p0, Lcom/beizi/fusion/widget/BZCarouselView;->b:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroid/widget/ImageView;

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    int-to-float v5, v0

    .line 54
    neg-float v6, v5

    .line 55
    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const-wide/16 v6, 0x1f4

    .line 60
    .line 61
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    iget-object v8, p0, Lcom/beizi/fusion/widget/BZCarouselView;->f:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 66
    .line 67
    invoke-virtual {v4, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const/4 v4, 0x0

    .line 82
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iget-object v4, p0, Lcom/beizi/fusion/widget/BZCarouselView;->f:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 91
    .line 92
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 97
    .line 98
    .line 99
    iput v3, p0, Lcom/beizi/fusion/widget/BZCarouselView;->c:I

    .line 100
    .line 101
    iget-object v1, p0, Lcom/beizi/fusion/widget/BZCarouselView;->g:Landroid/os/Handler;

    .line 102
    .line 103
    new-instance v3, Lcom/beizi/fusion/widget/BZCarouselView$3;

    .line 104
    .line 105
    invoke-direct {v3, p0, v2, v0}, Lcom/beizi/fusion/widget/BZCarouselView$3;-><init>(Lcom/beizi/fusion/widget/BZCarouselView;Landroid/widget/ImageView;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/beizi/fusion/widget/BZCarouselView;->e:Lcom/beizi/fusion/widget/BZCarouselView$a;

    .line 112
    .line 113
    if-eqz v0, :cond_1

    .line 114
    .line 115
    iget v1, p0, Lcom/beizi/fusion/widget/BZCarouselView;->c:I

    .line 116
    .line 117
    invoke-interface {v0, v1}, Lcom/beizi/fusion/widget/BZCarouselView$a;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 123
    .line 124
    .line 125
    :cond_1
    :goto_0
    return-void
.end method

.method public performLastCarousel()V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/widget/BZCarouselView;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-gt v0, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/beizi/fusion/widget/BZCarouselView;->stopCarousel()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 23
    .line 24
    iget-object v2, p0, Lcom/beizi/fusion/widget/BZCarouselView;->b:Ljava/util/List;

    .line 25
    .line 26
    iget v3, p0, Lcom/beizi/fusion/widget/BZCarouselView;->c:I

    .line 27
    .line 28
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/widget/ImageView;

    .line 33
    .line 34
    iget v3, p0, Lcom/beizi/fusion/widget/BZCarouselView;->c:I

    .line 35
    .line 36
    sub-int/2addr v3, v1

    .line 37
    iget-object v1, p0, Lcom/beizi/fusion/widget/BZCarouselView;->b:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    add-int/2addr v3, v1

    .line 44
    iget-object v1, p0, Lcom/beizi/fusion/widget/BZCarouselView;->b:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    rem-int/2addr v3, v1

    .line 51
    iget-object v1, p0, Lcom/beizi/fusion/widget/BZCarouselView;->b:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Landroid/widget/ImageView;

    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    int-to-float v5, v0

    .line 64
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    const-wide/16 v6, 0x1f4

    .line 69
    .line 70
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    iget-object v8, p0, Lcom/beizi/fusion/widget/BZCarouselView;->f:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 75
    .line 76
    invoke-virtual {v4, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 81
    .line 82
    .line 83
    neg-float v4, v5

    .line 84
    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const/4 v4, 0x0

    .line 92
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iget-object v4, p0, Lcom/beizi/fusion/widget/BZCarouselView;->f:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 101
    .line 102
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 107
    .line 108
    .line 109
    iput v3, p0, Lcom/beizi/fusion/widget/BZCarouselView;->c:I

    .line 110
    .line 111
    iget-object v1, p0, Lcom/beizi/fusion/widget/BZCarouselView;->g:Landroid/os/Handler;

    .line 112
    .line 113
    new-instance v3, Lcom/beizi/fusion/widget/BZCarouselView$4;

    .line 114
    .line 115
    invoke-direct {v3, p0, v2, v0}, Lcom/beizi/fusion/widget/BZCarouselView$4;-><init>(Lcom/beizi/fusion/widget/BZCarouselView;Landroid/widget/ImageView;I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/beizi/fusion/widget/BZCarouselView;->e:Lcom/beizi/fusion/widget/BZCarouselView$a;

    .line 122
    .line 123
    if-eqz v0, :cond_1

    .line 124
    .line 125
    iget v1, p0, Lcom/beizi/fusion/widget/BZCarouselView;->c:I

    .line 126
    .line 127
    invoke-interface {v0, v1}, Lcom/beizi/fusion/widget/BZCarouselView$a;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 133
    .line 134
    .line 135
    :cond_1
    :goto_0
    return-void
.end method

.method public performNextCarousel()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/widget/BZCarouselView;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-gt v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/beizi/fusion/widget/BZCarouselView;->e:Lcom/beizi/fusion/widget/BZCarouselView$a;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget v1, p0, Lcom/beizi/fusion/widget/BZCarouselView;->c:I

    .line 15
    .line 16
    invoke-interface {v0, v1}, Lcom/beizi/fusion/widget/BZCarouselView$a;->a(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/beizi/fusion/widget/BZCarouselView;->stopCarousel()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/beizi/fusion/widget/BZCarouselView;->performCarousel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public setImageUrls(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/beizi/fusion/widget/BZCarouselView;->a:Ljava/util/List;

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1, p1}, Lcom/beizi/fusion/widget/BZCarouselView;->a(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setImageUrls(Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/beizi/fusion/widget/BZCarouselView;->a:Ljava/util/List;

    .line 6
    invoke-direct {p0, p2, p3}, Lcom/beizi/fusion/widget/BZCarouselView;->a(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnContentChangeListener(Lcom/beizi/fusion/widget/BZCarouselView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/widget/BZCarouselView;->e:Lcom/beizi/fusion/widget/BZCarouselView$a;

    .line 2
    .line 3
    return-void
.end method

.method public setScrollInterval(I)V
    .locals 2

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    mul-int/lit16 p1, p1, 0x3e8

    .line 4
    .line 5
    int-to-long v0, p1

    .line 6
    iput-wide v0, p0, Lcom/beizi/fusion/widget/BZCarouselView;->d:J

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public startCarousel()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/widget/BZCarouselView;->a:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/beizi/fusion/widget/BZCarouselView;->stopCarousel()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/beizi/fusion/widget/BZCarouselView;->g:Landroid/os/Handler;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v1, p0, Lcom/beizi/fusion/widget/BZCarouselView;->h:Ljava/lang/Runnable;

    .line 20
    .line 21
    iget-wide v2, p0, Lcom/beizi/fusion/widget/BZCarouselView;->d:J

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_1
    return-void
.end method

.method public stopCarousel()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/widget/BZCarouselView;->g:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/beizi/fusion/widget/BZCarouselView;->h:Ljava/lang/Runnable;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    return-void
.end method

.class public Lme/relex/circleindicator/CircleIndicator;
.super Lme/relex/circleindicator/BaseCircleIndicator;
.source "SourceFile"


# instance fields
.field private n:Landroidx/viewpager/widget/ViewPager;

.field private final o:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private final p:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lme/relex/circleindicator/BaseCircleIndicator;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lme/relex/circleindicator/CircleIndicator$a;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator$a;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->o:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 3
    new-instance p1, Lme/relex/circleindicator/CircleIndicator$b;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator$b;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->p:Landroid/database/DataSetObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lme/relex/circleindicator/BaseCircleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Lme/relex/circleindicator/CircleIndicator$a;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator$a;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->o:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 6
    new-instance p1, Lme/relex/circleindicator/CircleIndicator$b;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator$b;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->p:Landroid/database/DataSetObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lme/relex/circleindicator/BaseCircleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Lme/relex/circleindicator/CircleIndicator$a;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator$a;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->o:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 9
    new-instance p1, Lme/relex/circleindicator/CircleIndicator$b;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator$b;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->p:Landroid/database/DataSetObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lme/relex/circleindicator/BaseCircleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 11
    new-instance p1, Lme/relex/circleindicator/CircleIndicator$a;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator$a;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->o:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 12
    new-instance p1, Lme/relex/circleindicator/CircleIndicator$b;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator$b;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->p:Landroid/database/DataSetObserver;

    return-void
.end method

.method static synthetic i(Lme/relex/circleindicator/CircleIndicator;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lme/relex/circleindicator/CircleIndicator;->n:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lme/relex/circleindicator/CircleIndicator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lme/relex/circleindicator/CircleIndicator;->k()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->n:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    :goto_0
    iget-object v1, p0, Lme/relex/circleindicator/CircleIndicator;->n:Landroidx/viewpager/widget/ViewPager;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {p0, v0, v1}, Lme/relex/circleindicator/CircleIndicator;->e(II)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public bridge synthetic b(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lme/relex/circleindicator/BaseCircleIndicator;->b(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic e(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lme/relex/circleindicator/BaseCircleIndicator;->e(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getDataSetObserver()Landroid/database/DataSetObserver;
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->p:Landroid/database/DataSetObserver;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic h(Lme/relex/circleindicator/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lme/relex/circleindicator/BaseCircleIndicator;->h(Lme/relex/circleindicator/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setIndicatorCreatedListener(Lme/relex/circleindicator/BaseCircleIndicator$a;)V
    .locals 0
    .param p1    # Lme/relex/circleindicator/BaseCircleIndicator$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lme/relex/circleindicator/BaseCircleIndicator;->setIndicatorCreatedListener(Lme/relex/circleindicator/BaseCircleIndicator$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->n:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->n:Landroidx/viewpager/widget/ViewPager;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 15
    .line 16
    const-string v0, "can not find Viewpager , setViewPager first"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1
    .param p1    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->n:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lme/relex/circleindicator/BaseCircleIndicator;->k:I

    .line 13
    .line 14
    invoke-direct {p0}, Lme/relex/circleindicator/CircleIndicator;->k()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->n:Landroidx/viewpager/widget/ViewPager;

    .line 18
    .line 19
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->o:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->n:Landroidx/viewpager/widget/ViewPager;

    .line 25
    .line 26
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->o:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->o:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 32
    .line 33
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->n:Landroidx/viewpager/widget/ViewPager;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-interface {p1, v0}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

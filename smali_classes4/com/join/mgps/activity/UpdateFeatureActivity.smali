.class public Lcom/join/mgps/activity/UpdateFeatureActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/UpdateFeatureActivity$c;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0888
.end annotation


# instance fields
.field autoPlayRunnable:Ljava/lang/Runnable;

.field commonAdBean:Lcom/join/mgps/dto/CommonAdBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field indicator:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private indicatorAdapte:Lcom/join/mgps/activity/UpdateFeatureActivity$c;

.field private indicatorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private pageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private picList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field viewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->picList:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->pageList:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->indicatorList:Ljava/util/List;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/activity/z9;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/z9;-><init>(Lcom/join/mgps/activity/UpdateFeatureActivity;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->autoPlayRunnable:Ljava/lang/Runnable;

    .line 31
    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/UpdateFeatureActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->pageList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/UpdateFeatureActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->picList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/UpdateFeatureActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->indicatorList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/UpdateFeatureActivity;)Lcom/join/mgps/activity/UpdateFeatureActivity$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->indicatorAdapte:Lcom/join/mgps/activity/UpdateFeatureActivity$c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/UpdateFeatureActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method private initIndicator()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->indicator:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->context:Landroid/content/Context;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/join/mgps/activity/UpdateFeatureActivity$c;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UpdateFeatureActivity$c;-><init>(Lcom/join/mgps/activity/UpdateFeatureActivity;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->indicatorAdapte:Lcom/join/mgps/activity/UpdateFeatureActivity$c;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->indicator:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private initViewpager()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->picList:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const v3, 0x7f0d05f1

    .line 10
    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    if-ge v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->pageList:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {v5, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->indicatorList:Ljava/util/List;

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const/4 v3, 0x0

    .line 35
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->pageList:Ljava/util/List;

    .line 46
    .line 47
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    new-instance v0, Lcom/join/mgps/activity/UpdateFeatureActivity$a;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/UpdateFeatureActivity$a;-><init>(Lcom/join/mgps/activity/UpdateFeatureActivity;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 69
    .line 70
    const/4 v1, 0x4

    .line 71
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 75
    .line 76
    new-instance v1, Lcom/join/mgps/activity/UpdateFeatureActivity$b;

    .line 77
    .line 78
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/UpdateFeatureActivity$b;-><init>(Lcom/join/mgps/activity/UpdateFeatureActivity;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->mHandler:Landroid/os/Handler;

    .line 85
    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->mHandler:Landroid/os/Handler;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->autoPlayRunnable:Ljava/lang/Runnable;

    .line 94
    .line 95
    const-wide/16 v2, 0xbb8

    .line 96
    .line 97
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    .line 99
    .line 100
    :cond_2
    return-void
.end method

.method public static synthetic k(Lcom/join/mgps/activity/UpdateFeatureActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/UpdateFeatureActivity;->lambda$new$0()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->pageList:Ljava/util/List;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->pageList:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    rem-int/2addr v0, v2

    .line 32
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method afterviews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v0, Landroid/os/Handler;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/high16 v1, 0x4000000

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/16 v2, 0x500

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 26
    .line 27
    .line 28
    const/high16 v1, -0x80000000

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->commonAdBean:Lcom/join/mgps/dto/CommonAdBean;

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonAdBean;->getAd_info_list()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->commonAdBean:Lcom/join/mgps/dto/CommonAdBean;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonAdBean;->getAd_info_list()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-gtz v0, :cond_1

    .line 58
    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/UpdateFeatureActivity;->finish()V

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->commonAdBean:Lcom/join/mgps/dto/CommonAdBean;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonAdBean;->getAd_info_list()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 83
    .line 84
    iget-object v2, p0, Lcom/join/mgps/activity/UpdateFeatureActivity;->picList:Ljava/util/List;

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/activity/UpdateFeatureActivity;->initViewpager()V

    .line 95
    .line 96
    .line 97
    invoke-direct {p0}, Lcom/join/mgps/activity/UpdateFeatureActivity;->initIndicator()V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public finish()V
    .locals 1

    .line 1
    const/16 v0, 0x2715

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

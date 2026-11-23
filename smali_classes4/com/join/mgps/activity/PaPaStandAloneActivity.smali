.class public Lcom/join/mgps/activity/PaPaStandAloneActivity;
.super Lcom/BaseFragmentActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/PaPaStandAloneActivity$a;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d008b
.end annotation


# static fields
.field static TITLE_PAPA_STANDALONE:[Ljava/lang/String;


# instance fields
.field private fragments:[Landroidx/fragment/app/Fragment;

.field pageIndicator:Lcom/join/mgps/customview/TabPageIndicator;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field title_textview:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field viewPager:Lcom/join/mgps/customview/InterceptEventViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "\u63a8\u8350"

    .line 2
    .line 3
    const-string v1, "\u4e2d\u6587"

    .line 4
    .line 5
    const-string v2, "\u7834\u89e3"

    .line 6
    .line 7
    const-string v3, "\u7f8e\u56fd\u699c"

    .line 8
    .line 9
    const-string v4, "\u65e5\u672c\u699c"

    .line 10
    .line 11
    const-string v5, "\u97e9\u56fd\u699c"

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/join/mgps/activity/PaPaStandAloneActivity;->TITLE_PAPA_STANDALONE:[Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/join/mgps/activity/PaPaStandAloneActivity;->TITLE_PAPA_STANDALONE:[Ljava/lang/String;

    .line 5
    .line 6
    array-length v0, v0

    .line 7
    new-array v0, v0, [Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/PaPaStandAloneActivity;->fragments:[Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/PaPaStandAloneActivity;I)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PaPaStandAloneActivity;->newFragment(I)Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private getTypeByPosition(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    return v2

    :cond_1
    return v1

    :cond_2
    return v0

    :cond_3
    const/16 p1, 0xd

    return p1

    :cond_4
    const/16 p1, 0xc

    return p1

    :cond_5
    const/16 p1, 0xb

    return p1
.end method

.method private newFragment(I)Landroidx/fragment/app/Fragment;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PaPaStandAloneActivity;->fragments:[Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PaPaStandAloneActivity;->getTypeByPosition(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-eq p1, v1, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    if-eq p1, v1, :cond_2

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    if-eq p1, v1, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    if-eq p1, v1, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x5

    .line 27
    if-eq p1, v1, :cond_1

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    return-object p1

    .line 31
    :cond_1
    invoke-static {v0}, Lcom/join/mgps/fragment/n4;->O(I)Lcom/join/mgps/fragment/n4;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/join/mgps/activity/PaPaStandAloneActivity;->fragments:[Landroidx/fragment/app/Fragment;

    .line 36
    .line 37
    aput-object v0, v1, p1

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_2
    invoke-static {v0}, Lcom/join/mgps/fragment/k4;->b0(I)Lcom/join/mgps/fragment/k4;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/join/mgps/activity/PaPaStandAloneActivity;->fragments:[Landroidx/fragment/app/Fragment;

    .line 45
    .line 46
    aput-object v0, v1, p1

    .line 47
    .line 48
    return-object v0
.end method


# virtual methods
.method afterViews()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PaPaStandAloneActivity;->title_textview:Landroid/widget/TextView;

    .line 2
    .line 3
    const-string v1, "\u609f\u996d\u5355\u673a"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/join/mgps/activity/PaPaStandAloneActivity$a;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/activity/PaPaStandAloneActivity$a;-><init>(Lcom/join/mgps/activity/PaPaStandAloneActivity;Landroidx/fragment/app/FragmentManager;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/PaPaStandAloneActivity;->viewPager:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/InterceptEventViewPager;->setIsAsParentViewPager(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/PaPaStandAloneActivity;->viewPager:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/PaPaStandAloneActivity;->viewPager:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 29
    .line 30
    const/4 v1, 0x6

    .line 31
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/PaPaStandAloneActivity;->viewPager:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/InterceptEventViewPager;->setCurrentItem(I)V

    .line 38
    .line 39
    .line 40
    const-string v0, "2308"

    .line 41
    .line 42
    sget-object v1, Lcom/MApplication;->B:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    const-string v0, "750"

    .line 51
    .line 52
    sget-object v1, Lcom/MApplication;->B:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_0

    .line 59
    .line 60
    const-string v0, "753"

    .line 61
    .line 62
    sget-object v1, Lcom/MApplication;->B:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    :cond_0
    const-string v1, "\u63a8\u8350"

    .line 71
    .line 72
    const-string v2, "\u4e2d\u6587"

    .line 73
    .line 74
    const-string v3, "\u7ecf\u5178"

    .line 75
    .line 76
    const-string v4, "\u7f8e\u56fd\u699c"

    .line 77
    .line 78
    const-string v5, "\u65e5\u672c\u699c"

    .line 79
    .line 80
    const-string v6, "\u97e9\u56fd\u699c"

    .line 81
    .line 82
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sput-object v0, Lcom/join/mgps/activity/PaPaStandAloneActivity;->TITLE_PAPA_STANDALONE:[Ljava/lang/String;

    .line 87
    .line 88
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/PaPaStandAloneActivity;->pageIndicator:Lcom/join/mgps/customview/TabPageIndicator;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/join/mgps/activity/PaPaStandAloneActivity;->viewPager:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/TabPageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getViewPager()Lcom/join/mgps/customview/InterceptEventViewPager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PaPaStandAloneActivity;->viewPager:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 2
    .line 3
    return-object v0
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

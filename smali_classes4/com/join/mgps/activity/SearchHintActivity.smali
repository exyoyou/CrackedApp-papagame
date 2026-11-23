.class public Lcom/join/mgps/activity/SearchHintActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/SearchHintActivity$q;,
        Lcom/join/mgps/activity/SearchHintActivity$p;,
        Lcom/join/mgps/activity/SearchHintActivity$r;,
        Lcom/join/mgps/activity/SearchHintActivity$s;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0821
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "key"

.field public static popKeyboard:Z


# instance fields
.field private SCROLLING:Z

.field ad:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field autoListView:Landroid/widget/ListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field banner:Lcom/youth/banner/Banner;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field bean:Lcom/join/mgps/activity/search/SearchIndexData;

.field clearLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private count:I

.field private defaultHint:Ljava/lang/String;

.field private firstVisiblePosition:I

.field flag:I

.field from:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gameDownLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field guessLickFlow:Lcom/join/mgps/customview/FlowLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field guessliketext:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private hasShowHint:Z

.field historyFlow:Lcom/join/mgps/customview/FlowLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private historyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field img_iconback:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field img_search:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field interval:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field isNeedRecommend:Z

.field ivClearHistory:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a03a2
    .end annotation
.end field

.field keyword:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field keywords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/SScrollingTxtBeanV2;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field lLayout_search:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private lastVisibleIndex:I

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/h0$a;",
            ">;"
        }
    .end annotation
.end field

.field llRecent:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loadingView:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private msg:Ljava/lang/String;

.field netConnectExcption:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "connect_server_excption"
    .end annotation
.end field

.field netExcption:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "net_excption"
    .end annotation
.end field

.field private pagerAdapter:Lcom/join/mgps/activity/SearchHintActivity$p;

.field private pc:I

.field private pn:I

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field private final rankingPageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field recommend:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field requestLayout:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcClient:Lcom/join/mgps/rpc/e;

.field private searchAutoBean:Lcom/join/mgps/dto/ResponseModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/search/SearchAutoDataV1;",
            ">;"
        }
    .end annotation
.end field

.field private searchAutoDataBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private searchBarStyle:I

.field searchClear:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private searchClearInProgress:Z

.field searchEditText:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private searchHistoryDataBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchAutoDataBean;",
            ">;"
        }
    .end annotation
.end field

.field searchKey:Ljava/lang/String;

.field private searchPageBean:Lcom/join/mgps/dto/ResponseModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/search/SearchIndexData;",
            ">;"
        }
    .end annotation
.end field

.field private searchRankingPagerStamp:J

.field private searchSimpleAdapter:Lcom/join/mgps/activity/SearchHintActivity$q;

.field search_bar_layout:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field statubar:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private suppressSearchTextListenerForClear:Z

.field tabLayout:Lcom/google/android/material/tabs/TabLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private tabLayoutMediator:Lcom/google/android/material/tabs/d;

.field private title:[Ljava/lang/String;

.field tv_search:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field vf:Landroidx/viewpager2/widget/ViewPager2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field viewPager:Landroidx/viewpager2/widget/ViewPager2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->keywords:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->pn:I

    .line 13
    .line 14
    const/16 v0, 0x32

    .line 15
    .line 16
    iput v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->pc:I

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->count:I

    .line 20
    .line 21
    iput v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->flag:I

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->isNeedRecommend:Z

    .line 24
    .line 25
    const-string v1, "\u641c\u7d22\u6e38\u620f\u3001\u5382\u5546\u3001\u5e16\u5b50"

    .line 26
    .line 27
    iput-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->defaultHint:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v1, Lcom/join/mgps/activity/SearchHintActivity$n;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchHintActivity$n;-><init>(Lcom/join/mgps/activity/SearchHintActivity;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->rankingPageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 35
    .line 36
    const-string v1, "\u6a21\u62df\u5668\u699c"

    .line 37
    .line 38
    const-string v2, "\u5355\u673a\u699c"

    .line 39
    .line 40
    const-string v3, "\u70ed\u641c\u699c"

    .line 41
    .line 42
    const-string v4, "\u7f51\u6e38\u699c"

    .line 43
    .line 44
    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->title:[Ljava/lang/String;

    .line 49
    .line 50
    const-string v1, ""

    .line 51
    .line 52
    iput-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchKey:Ljava/lang/String;

    .line 53
    .line 54
    new-instance v1, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->list:Ljava/util/List;

    .line 60
    .line 61
    new-instance v1, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->gameDownLists:Ljava/util/List;

    .line 67
    .line 68
    iput v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->lastVisibleIndex:I

    .line 69
    .line 70
    iput v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->firstVisiblePosition:I

    .line 71
    .line 72
    iput-boolean v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->SCROLLING:Z

    .line 73
    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/SearchHintActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchClearInProgress:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/SearchHintActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/SearchHintActivity;->suppressSearchTextListenerForClear:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1200(Lcom/join/mgps/activity/SearchHintActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SearchHintActivity;->updateDownStateList(Ljava/util/List;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$1300(Lcom/join/mgps/activity/SearchHintActivity;)Lcom/join/mgps/activity/SearchHintActivity$q;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchSimpleAdapter:Lcom/join/mgps/activity/SearchHintActivity$q;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/SearchHintActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchAutoDataBeanList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/SearchHintActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/SearchHintActivity;->saveRecordBean(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/SearchHintActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/SearchHintActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/join/mgps/activity/SearchHintActivity;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/mgps/activity/SearchHintActivity;->sendAutoListPoint(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/join/mgps/activity/SearchHintActivity;Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SearchHintActivity;->setStatus(Lcom/google/android/material/tabs/TabLayout$g;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$700(Lcom/join/mgps/activity/SearchHintActivity;Lcom/papa/sim/statistic/Event;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/SearchHintActivity;->sendBannerPoint(Lcom/papa/sim/statistic/Event;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$800(Lcom/join/mgps/activity/SearchHintActivity;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchRankingPagerStamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private getView()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const v3, 0x7f0a183f

    .line 19
    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    if-ge v1, v2, :cond_2

    .line 23
    .line 24
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const v6, 0x7f0d082b

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Landroid/widget/TextView;

    .line 49
    .line 50
    iget-object v5, p0, Lcom/join/mgps/activity/SearchHintActivity;->title:[Ljava/lang/String;

    .line 51
    .line 52
    aget-object v5, v5, v1

    .line 53
    .line 54
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v4}, Lcom/google/android/material/tabs/TabLayout$g;->v(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$g;

    .line 58
    .line 59
    .line 60
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    :cond_3
    if-nez v4, :cond_4

    .line 76
    .line 77
    return-void

    .line 78
    :cond_4
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Landroid/widget/TextView;

    .line 83
    .line 84
    if-nez v1, :cond_5

    .line 85
    .line 86
    return-void

    .line 87
    :cond_5
    const/high16 v2, -0x1000000

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    const v3, 0x7f0713c2

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    int-to-float v2, v2

    .line 104
    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    const/4 v3, 0x1

    .line 112
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 113
    .line 114
    .line 115
    const v1, 0x7f0a09af

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    if-eqz v1, :cond_6

    .line 123
    .line 124
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    :cond_6
    return-void
.end method

.method private initBanner()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->keywords:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gtz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/MApplication;->L1:Ljava/util/ArrayList;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->keywords:Ljava/util/ArrayList;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->keywords:Ljava/util/ArrayList;

    .line 16
    .line 17
    if-eqz v0, :cond_8

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-lez v0, :cond_8

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->banner:Lcom/youth/banner/Banner;

    .line 26
    .line 27
    if-eqz v0, :cond_8

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->keywords:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/4 v3, 0x0

    .line 46
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_4

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Lcom/join/mgps/dto/SScrollingTxtBeanV2;

    .line 57
    .line 58
    if-eqz v4, :cond_2

    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/join/mgps/dto/SScrollingTxtBeanV2;->getJumpModelDto()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    if-eqz v5, :cond_2

    .line 65
    .line 66
    invoke-virtual {v4}, Lcom/join/mgps/dto/SScrollingTxtBeanV2;->getJumpModelDto()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v5}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    if-eqz v5, :cond_2

    .line 75
    .line 76
    invoke-virtual {v4}, Lcom/join/mgps/dto/SScrollingTxtBeanV2;->getJumpModelDto()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    if-eqz v4, :cond_3

    .line 88
    .line 89
    invoke-virtual {v4}, Lcom/join/mgps/dto/SScrollingTxtBeanV2;->getWord()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    const-string v4, ""

    .line 98
    .line 99
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    const/4 v2, 0x0

    .line 104
    const/4 v4, 0x0

    .line 105
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-ge v4, v5, :cond_7

    .line 110
    .line 111
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    if-nez v5, :cond_6

    .line 116
    .line 117
    if-nez v3, :cond_5

    .line 118
    .line 119
    const v5, 0x7f080caf

    .line 120
    .line 121
    .line 122
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    goto :goto_2

    .line 127
    :cond_5
    move-object v5, v3

    .line 128
    :goto_2
    invoke-virtual {v0, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_7
    iget-object v3, p0, Lcom/join/mgps/activity/SearchHintActivity;->vf:Landroidx/viewpager2/widget/ViewPager2;

    .line 135
    .line 136
    const/4 v4, 0x1

    .line 137
    invoke-virtual {v3, v4}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V

    .line 138
    .line 139
    .line 140
    iget-object v3, p0, Lcom/join/mgps/activity/SearchHintActivity;->vf:Landroidx/viewpager2/widget/ViewPager2;

    .line 141
    .line 142
    new-instance v4, Lcom/join/mgps/activity/SearchHintActivity$r;

    .line 143
    .line 144
    invoke-direct {v4, p0, v1}, Lcom/join/mgps/activity/SearchHintActivity$r;-><init>(Lcom/join/mgps/activity/SearchHintActivity;Ljava/util/List;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, v4}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 148
    .line 149
    .line 150
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->vf:Landroidx/viewpager2/widget/ViewPager2;

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 153
    .line 154
    .line 155
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->banner:Lcom/youth/banner/Banner;

    .line 156
    .line 157
    invoke-virtual {v1, v0}, Lcom/youth/banner/Banner;->z(Ljava/util/List;)Lcom/youth/banner/Banner;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    iget v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->interval:I

    .line 162
    .line 163
    mul-int/lit16 v1, v1, 0x3e8

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->x(I)Lcom/youth/banner/Banner;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    new-instance v1, Lcom/papa91/arc/view/GlideImageLoader;

    .line 170
    .line 171
    invoke-direct {v1}, Lcom/papa91/arc/view/GlideImageLoader;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->y(Lcom/youth/banner/loader/ImageLoaderInterface;)Lcom/youth/banner/Banner;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    new-instance v1, Lcom/join/mgps/activity/SearchHintActivity$m;

    .line 179
    .line 180
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchHintActivity$m;-><init>(Lcom/join/mgps/activity/SearchHintActivity;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->D(Lya/b;)Lcom/youth/banner/Banner;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lcom/youth/banner/Banner;->I()Lcom/youth/banner/Banner;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    new-instance v1, Lcom/join/mgps/activity/SearchHintActivity$l;

    .line 192
    .line 193
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchHintActivity$l;-><init>(Lcom/join/mgps/activity/SearchHintActivity;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 197
    .line 198
    .line 199
    sget-object v0, Lcom/papa/sim/statistic/Event;->searchReturnExpGamePic:Lcom/papa/sim/statistic/Event;

    .line 200
    .line 201
    invoke-direct {p0, v0, v2}, Lcom/join/mgps/activity/SearchHintActivity;->sendBannerPoint(Lcom/papa/sim/statistic/Event;I)V

    .line 202
    .line 203
    .line 204
    :cond_8
    return-void
.end method

.method private initStatusBar()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/high16 v1, 0x4000000

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/16 v2, 0x500

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 17
    .line 18
    .line 19
    const/high16 v1, -0x80000000

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Lcom/join/android/app/common/utils/q;->v(Landroid/content/Context;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->statubar:Landroid/view/View;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 41
    .line 42
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->statubar:Landroid/view/View;

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const v2, 0x7f071693

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    float-to-int v1, v1

    .line 59
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->search_bar_layout:Landroid/view/View;

    .line 60
    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 68
    .line 69
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->search_bar_layout:Landroid/view/View;

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->autoListView:Landroid/widget/ListView;

    .line 77
    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 85
    .line 86
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 87
    .line 88
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->autoListView:Landroid/widget/ListView;

    .line 89
    .line 90
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    new-instance v1, Lcom/join/mgps/activity/z8;

    .line 102
    .line 103
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/z8;-><init>(Lcom/join/mgps/activity/SearchHintActivity;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public static synthetic j(Lcom/join/mgps/activity/SearchHintActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/SearchHintActivity;->lambda$searchClear$2()V

    return-void
.end method

.method public static synthetic k(Lcom/join/mgps/activity/SearchHintActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/SearchHintActivity;->lambda$initStatusBar$1(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/join/mgps/activity/SearchHintActivity;Lcom/google/android/material/tabs/TabLayout$g;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/SearchHintActivity;->lambda$afterViews$0(Lcom/google/android/material/tabs/TabLayout$g;I)V

    return-void
.end method

.method private synthetic lambda$afterViews$0(Lcom/google/android/material/tabs/TabLayout$g;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const v3, 0x7f0d082b

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x7f0a183f

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/widget/TextView;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->title:[Ljava/lang/String;

    .line 27
    .line 28
    aget-object p2, v2, p2

    .line 29
    .line 30
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$g;->v(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$g;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private synthetic lambda$initStatusBar$1(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 1
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->autoListView:Landroid/widget/ListView;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->autoListView:Landroid/widget/ListView;

    .line 21
    .line 22
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    .line 23
    .line 24
    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->autoListView:Landroid/widget/ListView;

    .line 29
    .line 30
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-object p2
.end method

.method private synthetic lambda$searchClear$2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->autoListView:Landroid/widget/ListView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchClearInProgress:Z

    .line 12
    .line 13
    return-void
.end method

.method private synthetic lambda$updateHint$3(Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const-string v0, "22-99-1"

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/ExtBean;->setRecPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 12
    .line 13
    .line 14
    const-string v0, "113"

    .line 15
    .line 16
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p2, p0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static synthetic m(Lcom/join/mgps/activity/SearchHintActivity;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/SearchHintActivity;->lambda$updateHint$3(Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V

    return-void
.end method

.method private makeFlawLayoutItem(Landroid/content/Context;Lcom/join/mgps/dto/GameInfoBean;)Landroid/view/View;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "mContext",
            "tag"
        }
    .end annotation

    const v0, 0x7f0d0274

    const/4 v1, 0x0

    .line 14
    :try_start_0
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 15
    :try_start_1
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 16
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f0a167a

    .line 17
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    const v3, 0x7f081008

    .line 18
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v3, "#777777"

    .line 19
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameInfoBean;->getGame_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07137f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 22
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameInfoBean;->isThe_hot()Z

    move-result v3

    const v5, 0x7f0715d6

    if-eqz v3, :cond_1

    .line 23
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f080a96

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 24
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v7

    invoke-virtual {v3, v4, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 25
    invoke-virtual {v2, v3, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 26
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameInfoBean;->isThe_score()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 28
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f080ab1

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 29
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v7

    invoke-virtual {v3, v4, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 30
    invoke-virtual {v2, v3, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 31
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 32
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0712fa

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f071310

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 34
    invoke-virtual {v2, p1, v1, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 35
    new-instance p1, Lcom/join/mgps/activity/SearchHintActivity$a;

    invoke-direct {p1, p0, p2}, Lcom/join/mgps/activity/SearchHintActivity$a;-><init>(Lcom/join/mgps/activity/SearchHintActivity;Lcom/join/mgps/dto/GameInfoBean;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception p1

    .line 36
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    :goto_2
    return-object v0
.end method

.method private makeFlawLayoutItem(Landroid/content/Context;Lcom/join/mgps/dto/SearchAutoDataBean;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "mContext",
            "tag"
        }
    .end annotation

    const v0, 0x7f0d0274

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f0a167a

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    const v1, 0x7f081008

    .line 5
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v1, "#777777"

    .line 6
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchAutoDataBean;->getGame_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07137f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0712fa

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f071369

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 11
    invoke-virtual {v2, p1, v1, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 12
    new-instance p1, Lcom/join/mgps/activity/SearchHintActivity$o;

    invoke-direct {p1, p0, p2}, Lcom/join/mgps/activity/SearchHintActivity$o;-><init>(Lcom/join/mgps/activity/SearchHintActivity;Lcom/join/mgps/dto/SearchAutoDataBean;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception p1

    .line 13
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method private makeFlawLayoutItem(Landroid/content/Context;Lcom/join/mgps/dto/SearchGameZoneBean;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "mContext",
            "tag"
        }
    .end annotation

    const v0, 0x7f0d0274

    const/4 v1, 0x0

    .line 37
    :try_start_0
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 38
    :try_start_1
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 39
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f0a167a

    .line 40
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    const v1, 0x7f081008

    .line 41
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v1, "#777777"

    .line 42
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchGameZoneBean;->getZone_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07137f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0712fa

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f071310

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 47
    invoke-virtual {v2, p1, v1, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 48
    new-instance p1, Lcom/join/mgps/activity/SearchHintActivity$b;

    invoke-direct {p1, p0, p2}, Lcom/join/mgps/activity/SearchHintActivity$b;-><init>(Lcom/join/mgps/activity/SearchHintActivity;Lcom/join/mgps/dto/SearchGameZoneBean;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception p1

    .line 49
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method private saveRecordBean(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "gameId"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    invoke-static {}, Lt6/h0;->n()Lt6/h0;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p2}, Lq5/b;->d()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-eqz p2, :cond_5

    .line 24
    .line 25
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/16 v1, 0x64

    .line 37
    .line 38
    if-le v0, v1, :cond_2

    .line 39
    .line 40
    invoke-static {}, Lt6/h0;->n()Lt6/h0;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {}, Lt6/h0;->n()Lt6/h0;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-wide/16 v1, 0xa

    .line 49
    .line 50
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    int-to-long v3, p2

    .line 55
    const-string v5, "create_time"

    .line 56
    .line 57
    const/4 v6, 0x0

    .line 58
    invoke-virtual/range {v0 .. v6}, Lq5/b;->i(JJLjava/lang/String;Z)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p1, p2}, Lq5/b;->delete(Ljava/util/Collection;)I

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lcom/join/mgps/db/tables/SearchRecordTable;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/SearchRecordTable;->getName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    invoke-static {}, Lt6/h0;->n()Lt6/h0;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1, v0}, Lq5/b;->delete(Ljava/lang/Object;)I

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    new-instance p2, Lcom/join/mgps/db/tables/SearchRecordTable;

    .line 101
    .line 102
    invoke-direct {p2}, Lcom/join/mgps/db/tables/SearchRecordTable;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2, p1}, Lcom/join/mgps/db/tables/SearchRecordTable;->setName(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 109
    .line 110
    .line 111
    move-result-wide v0

    .line 112
    invoke-virtual {p2, v0, v1}, Lcom/join/mgps/db/tables/SearchRecordTable;->setCreate_time(J)V

    .line 113
    .line 114
    .line 115
    invoke-static {}, Lt6/h0;->n()Lt6/h0;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1, p2}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_5
    :goto_1
    new-instance p2, Lcom/join/mgps/db/tables/SearchRecordTable;

    .line 124
    .line 125
    invoke-direct {p2}, Lcom/join/mgps/db/tables/SearchRecordTable;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, p1}, Lcom/join/mgps/db/tables/SearchRecordTable;->setName(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 132
    .line 133
    .line 134
    move-result-wide v0

    .line 135
    invoke-virtual {p2, v0, v1}, Lcom/join/mgps/db/tables/SearchRecordTable;->setCreate_time(J)V

    .line 136
    .line 137
    .line 138
    invoke-static {}, Lt6/h0;->n()Lt6/h0;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1, p2}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :catch_0
    move-exception p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 148
    .line 149
    .line 150
    :cond_6
    :goto_2
    return-void
.end method

.method private sendAutoListPoint(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "event",
            "isJoin",
            "where",
            "remarks"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/Ext;->setIsJoin(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p4}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 10
    .line 11
    .line 12
    new-instance p2, Lcom/papa/sim/statistic/Data;

    .line 13
    .line 14
    invoke-direct {p2}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 18
    .line 19
    .line 20
    iget-object p3, p0, Lcom/join/mgps/activity/SearchHintActivity;->context:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {p3}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    invoke-virtual {p3, p1, v0, p2}, Lcom/papa/sim/statistic/t;->W1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private sendBannerPoint(Lcom/papa/sim/statistic/Event;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->keywords:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lt p2, v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->keywords:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    check-cast p2, Lcom/join/mgps/dto/SScrollingTxtBeanV2;

    .line 19
    .line 20
    if-eqz p2, :cond_4

    .line 21
    .line 22
    sget-object v0, Lcom/papa/sim/statistic/Event;->searchReturnExpGamePic:Lcom/papa/sim/statistic/Event;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/join/mgps/dto/SScrollingTxtBeanV2;->isHasExposure()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 v0, 0x1

    .line 46
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/SScrollingTxtBeanV2;->setHasExposure(Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/join/mgps/dto/SScrollingTxtBeanV2;->getJumpModelDto()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/join/mgps/dto/SScrollingTxtBeanV2;->getJumpModelDto()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/join/mgps/dto/SScrollingTxtBeanV2;->getJumpModelDto()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    const/4 v0, 0x0

    .line 79
    :goto_0
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 80
    .line 81
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v0}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 85
    .line 86
    .line 87
    new-instance v0, Lcom/papa/sim/statistic/Data;

    .line 88
    .line 89
    invoke-direct {v0}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Lcom/join/mgps/dto/SScrollingTxtBeanV2;->getJumpModelDto()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    if-eqz v2, :cond_3

    .line 97
    .line 98
    invoke-virtual {p2}, Lcom/join/mgps/dto/SScrollingTxtBeanV2;->getJumpModelDto()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {p2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 111
    .line 112
    .line 113
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->context:Landroid/content/Context;

    .line 114
    .line 115
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {p2, p1, v1, v0}, Lcom/papa/sim/statistic/t;->W1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 120
    .line 121
    .line 122
    :cond_4
    :goto_1
    return-void
.end method

.method private setStatus(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ge v1, v2, :cond_3

    .line 19
    .line 20
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/4 v4, 0x0

    .line 38
    const v5, 0x7f0a183f

    .line 39
    .line 40
    .line 41
    const v6, 0x7f0a09af

    .line 42
    .line 43
    .line 44
    if-ne v1, v3, :cond_2

    .line 45
    .line 46
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroid/widget/TextView;

    .line 58
    .line 59
    const/high16 v3, -0x1000000

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const v4, 0x7f0713c2

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    int-to-float v3, v3

    .line 80
    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    const/4 v6, 0x4

    .line 89
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Landroid/widget/TextView;

    .line 97
    .line 98
    const-string v3, "#535353"

    .line 99
    .line 100
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    const v4, 0x7f071395

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    int-to-float v3, v3

    .line 122
    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 123
    .line 124
    .line 125
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    return-void
.end method

.method private showFargment(Lcom/join/mgps/activity/search/SearchIndexData;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->bean:Lcom/join/mgps/activity/search/SearchIndexData;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->list:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->list:Ljava/util/List;

    .line 9
    .line 10
    new-instance v0, Lcom/join/mgps/adapter/h0$a;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->title:[Ljava/lang/String;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aget-object v1, v1, v2

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-static {v2}, Lcom/join/mgps/activity/search/SearchRankingFragment;->getInstance(I)Lcom/join/mgps/activity/search/SearchRankingFragment;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-direct {v0, v1, v3}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->list:Ljava/util/List;

    .line 29
    .line 30
    new-instance v0, Lcom/join/mgps/adapter/h0$a;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->title:[Ljava/lang/String;

    .line 33
    .line 34
    aget-object v1, v1, v2

    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    invoke-static {v2}, Lcom/join/mgps/activity/search/SearchRankingFragment;->getInstance(I)Lcom/join/mgps/activity/search/SearchRankingFragment;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-direct {v0, v1, v3}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->list:Ljava/util/List;

    .line 48
    .line 49
    new-instance v0, Lcom/join/mgps/adapter/h0$a;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->title:[Ljava/lang/String;

    .line 52
    .line 53
    aget-object v1, v1, v2

    .line 54
    .line 55
    const/4 v2, 0x3

    .line 56
    invoke-static {v2}, Lcom/join/mgps/activity/search/SearchRankingFragment;->getInstance(I)Lcom/join/mgps/activity/search/SearchRankingFragment;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-direct {v0, v1, v3}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->list:Ljava/util/List;

    .line 67
    .line 68
    new-instance v0, Lcom/join/mgps/adapter/h0$a;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->title:[Ljava/lang/String;

    .line 71
    .line 72
    aget-object v1, v1, v2

    .line 73
    .line 74
    const/4 v2, 0x4

    .line 75
    invoke-static {v2}, Lcom/join/mgps/activity/search/SearchRankingFragment;->getInstance(I)Lcom/join/mgps/activity/search/SearchRankingFragment;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    iget-wide v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchRankingPagerStamp:J

    .line 86
    .line 87
    const-wide/16 v2, 0x1

    .line 88
    .line 89
    add-long/2addr v0, v2

    .line 90
    iput-wide v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchRankingPagerStamp:J

    .line 91
    .line 92
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->pagerAdapter:Lcom/join/mgps/activity/SearchHintActivity$p;

    .line 93
    .line 94
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 95
    .line 96
    .line 97
    invoke-direct {p0}, Lcom/join/mgps/activity/SearchHintActivity;->getView()V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method private updateDownStateList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collectionBeanSubList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 16
    .line 17
    sget-object v2, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-object p1
.end method

.method private updateProgressPartly()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->firstVisiblePosition:I

    .line 2
    .line 3
    :goto_0
    iget v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->lastVisibleIndex:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_7

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->autoListView:Landroid/widget/ListView;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    instance-of v1, v1, Lcom/join/mgps/dto/SearchAutoDataBean;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->autoListView:Landroid/widget/ListView;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_1
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_6

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/16 v3, 0xc

    .line 41
    .line 42
    const/4 v4, 0x2

    .line 43
    if-eq v2, v4, :cond_2

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-ne v2, v3, :cond_6

    .line 50
    .line 51
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->autoListView:Landroid/widget/ListView;

    .line 52
    .line 53
    iget v5, p0, Lcom/join/mgps/activity/SearchHintActivity;->firstVisiblePosition:I

    .line 54
    .line 55
    sub-int v5, v0, v5

    .line 56
    .line 57
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    instance-of v5, v5, Lcom/join/mgps/activity/SearchHintActivity$s;

    .line 66
    .line 67
    if-eqz v5, :cond_6

    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lcom/join/mgps/activity/SearchHintActivity$s;

    .line 74
    .line 75
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-virtual {v5, v6}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    if-nez v5, :cond_3

    .line 88
    .line 89
    return-void

    .line 90
    :cond_3
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 95
    .line 96
    .line 97
    move-result-wide v6

    .line 98
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 99
    .line 100
    mul-double v6, v6, v8

    .line 101
    .line 102
    mul-double v6, v6, v8

    .line 103
    .line 104
    double-to-long v6, v6

    .line 105
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 106
    .line 107
    .line 108
    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    const-wide/16 v10, 0x0

    .line 110
    .line 111
    const-string v12, "/"

    .line 112
    .line 113
    cmp-long v13, v8, v10

    .line 114
    .line 115
    if-nez v13, :cond_4

    .line 116
    .line 117
    :try_start_1
    iget-object v8, v2, Lcom/join/mgps/activity/SearchHintActivity$s;->i:Landroid/widget/TextView;

    .line 118
    .line 119
    new-instance v9, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 125
    .line 126
    .line 127
    move-result-wide v10

    .line 128
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_4
    iget-object v8, v2, Lcom/join/mgps/activity/SearchHintActivity$s;->i:Landroid/widget/TextView;

    .line 154
    .line 155
    new-instance v9, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 161
    .line 162
    .line 163
    move-result-wide v10

    .line 164
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v10

    .line 168
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    .line 187
    .line 188
    :goto_1
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    if-ne v6, v3, :cond_5

    .line 193
    .line 194
    iget-object v3, v2, Lcom/join/mgps/activity/SearchHintActivity$s;->m:Landroid/widget/ProgressBar;

    .line 195
    .line 196
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 197
    .line 198
    .line 199
    move-result-wide v6

    .line 200
    long-to-int v7, v6

    .line 201
    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_5
    iget-object v3, v2, Lcom/join/mgps/activity/SearchHintActivity$s;->l:Landroid/widget/ProgressBar;

    .line 206
    .line 207
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 208
    .line 209
    .line 210
    move-result-wide v6

    .line 211
    long-to-int v7, v6

    .line 212
    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 213
    .line 214
    .line 215
    :goto_2
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-ne v1, v4, :cond_6

    .line 220
    .line 221
    iget-object v1, v2, Lcom/join/mgps/activity/SearchHintActivity$s;->k:Landroid/widget/TextView;

    .line 222
    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string v3, "/S"

    .line 236
    .line 237
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 245
    .line 246
    .line 247
    goto :goto_3

    .line 248
    :catch_0
    move-exception v1

    .line 249
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 250
    .line 251
    .line 252
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 253
    .line 254
    goto/16 :goto_0

    .line 255
    .line 256
    :cond_7
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/join/mgps/activity/SearchHintActivity;->initStatusBar()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->keywords:Ljava/util/ArrayList;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-gtz v0, :cond_1

    .line 26
    .line 27
    :cond_0
    sget-object v0, Lcom/MApplication;->L1:Ljava/util/ArrayList;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-lez v0, :cond_1

    .line 36
    .line 37
    sget-object v0, Lcom/MApplication;->L1:Ljava/util/ArrayList;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->keywords:Ljava/util/ArrayList;

    .line 40
    .line 41
    :cond_1
    iget v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->from:I

    .line 42
    .line 43
    const/4 v1, 0x4

    .line 44
    const/4 v2, 0x1

    .line 45
    if-ne v0, v1, :cond_2

    .line 46
    .line 47
    sput-boolean v2, Lcom/join/mgps/activity/SearchHintActivity;->popKeyboard:Z

    .line 48
    .line 49
    :cond_2
    iget v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->interval:I

    .line 50
    .line 51
    if-gtz v0, :cond_3

    .line 52
    .line 53
    sget v0, Lcom/MApplication;->R1:I

    .line 54
    .line 55
    iput v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->interval:I

    .line 56
    .line 57
    :cond_3
    iget v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->interval:I

    .line 58
    .line 59
    if-ge v0, v2, :cond_4

    .line 60
    .line 61
    iput v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->interval:I

    .line 62
    .line 63
    :cond_4
    :try_start_0
    iput-object p0, p0, Lcom/join/mgps/activity/SearchHintActivity;->context:Landroid/content/Context;

    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 66
    .line 67
    new-instance v2, Lcom/join/mgps/activity/SearchHintActivity$g;

    .line 68
    .line 69
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/SearchHintActivity$g;-><init>(Lcom/join/mgps/activity/SearchHintActivity;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 76
    .line 77
    new-instance v2, Lcom/join/mgps/activity/SearchHintActivity$h;

    .line 78
    .line 79
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/SearchHintActivity$h;-><init>(Lcom/join/mgps/activity/SearchHintActivity;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 86
    .line 87
    new-instance v2, Lcom/join/mgps/activity/SearchHintActivity$i;

    .line 88
    .line 89
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/SearchHintActivity$i;-><init>(Lcom/join/mgps/activity/SearchHintActivity;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 93
    .line 94
    .line 95
    new-instance v0, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchAutoDataBeanList:Ljava/util/List;

    .line 101
    .line 102
    new-instance v0, Lcom/join/mgps/activity/SearchHintActivity$q;

    .line 103
    .line 104
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->context:Landroid/content/Context;

    .line 105
    .line 106
    iget-object v3, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchAutoDataBeanList:Ljava/util/List;

    .line 107
    .line 108
    invoke-direct {v0, p0, v2, v3}, Lcom/join/mgps/activity/SearchHintActivity$q;-><init>(Lcom/join/mgps/activity/SearchHintActivity;Landroid/content/Context;Ljava/util/List;)V

    .line 109
    .line 110
    .line 111
    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchSimpleAdapter:Lcom/join/mgps/activity/SearchHintActivity$q;

    .line 112
    .line 113
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->autoListView:Landroid/widget/ListView;

    .line 114
    .line 115
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->autoListView:Landroid/widget/ListView;

    .line 119
    .line 120
    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->autoListView:Landroid/widget/ListView;

    .line 124
    .line 125
    new-instance v2, Lcom/join/mgps/activity/SearchHintActivity$j;

    .line 126
    .line 127
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/SearchHintActivity$j;-><init>(Lcom/join/mgps/activity/SearchHintActivity;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 131
    .line 132
    .line 133
    new-instance v0, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .line 137
    .line 138
    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchHistoryDataBeanList:Ljava/util/List;

    .line 139
    .line 140
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->keywords:Ljava/util/ArrayList;

    .line 141
    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-gtz v0, :cond_7

    .line 149
    .line 150
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->keyword:Ljava/lang/String;

    .line 151
    .line 152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-nez v0, :cond_6

    .line 157
    .line 158
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->keyword:Ljava/lang/String;

    .line 159
    .line 160
    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->defaultHint:Ljava/lang/String;

    .line 161
    .line 162
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 163
    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string v3, " "

    .line 170
    .line 171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    iget-object v3, p0, Lcom/join/mgps/activity/SearchHintActivity;->defaultHint:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 184
    .line 185
    .line 186
    :cond_7
    new-instance v0, Lcom/join/mgps/activity/SearchHintActivity$p;

    .line 187
    .line 188
    invoke-direct {v0, p0, p0}, Lcom/join/mgps/activity/SearchHintActivity$p;-><init>(Lcom/join/mgps/activity/SearchHintActivity;Landroidx/fragment/app/FragmentActivity;)V

    .line 189
    .line 190
    .line 191
    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->pagerAdapter:Lcom/join/mgps/activity/SearchHintActivity$p;

    .line 192
    .line 193
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 194
    .line 195
    invoke-virtual {v2, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 199
    .line 200
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 201
    .line 202
    .line 203
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->tabLayoutMediator:Lcom/google/android/material/tabs/d;

    .line 204
    .line 205
    if-eqz v0, :cond_8

    .line 206
    .line 207
    invoke-virtual {v0}, Lcom/google/android/material/tabs/d;->b()V

    .line 208
    .line 209
    .line 210
    :cond_8
    new-instance v0, Lcom/google/android/material/tabs/d;

    .line 211
    .line 212
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 213
    .line 214
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 215
    .line 216
    new-instance v3, Lcom/join/mgps/activity/a9;

    .line 217
    .line 218
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/a9;-><init>(Lcom/join/mgps/activity/SearchHintActivity;)V

    .line 219
    .line 220
    .line 221
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/material/tabs/d;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/d$b;)V

    .line 222
    .line 223
    .line 224
    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->tabLayoutMediator:Lcom/google/android/material/tabs/d;

    .line 225
    .line 226
    invoke-virtual {v0}, Lcom/google/android/material/tabs/d;->a()V

    .line 227
    .line 228
    .line 229
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 230
    .line 231
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->rankingPageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 234
    .line 235
    .line 236
    invoke-direct {p0}, Lcom/join/mgps/activity/SearchHintActivity;->getView()V

    .line 237
    .line 238
    .line 239
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 240
    .line 241
    new-instance v1, Lcom/join/mgps/activity/SearchHintActivity$k;

    .line 242
    .line 243
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchHintActivity$k;-><init>(Lcom/join/mgps/activity/SearchHintActivity;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->h(Lcom/google/android/material/tabs/TabLayout$d;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->loadingDB()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->loading()V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->getHistoryFromDb()V

    .line 256
    .line 257
    .line 258
    sget-boolean v0, Lcom/join/mgps/activity/SearchHintActivity;->popKeyboard:Z

    .line 259
    .line 260
    if-eqz v0, :cond_9

    .line 261
    .line 262
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->showKeyBorad()V

    .line 263
    .line 264
    .line 265
    goto :goto_0

    .line 266
    :cond_9
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->clearEditFocus()V

    .line 267
    .line 268
    .line 269
    :goto_0
    invoke-direct {p0}, Lcom/join/mgps/activity/SearchHintActivity;->initBanner()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .line 271
    .line 272
    goto :goto_1

    .line 273
    :catch_0
    move-exception v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 275
    .line 276
    .line 277
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->context:Landroid/content/Context;

    .line 278
    .line 279
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    sget-object v1, Lcom/papa/sim/statistic/Event;->visitTopSearchPage:Lcom/papa/sim/statistic/Event;

    .line 284
    .line 285
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 286
    .line 287
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 291
    .line 292
    .line 293
    return-void
.end method

.method changeLoadingState(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    if-eq p1, v1, :cond_6

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq p1, v1, :cond_5

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq p1, v1, :cond_4

    .line 14
    .line 15
    const/16 v1, 0x10

    .line 16
    .line 17
    if-eq p1, v1, :cond_3

    .line 18
    .line 19
    const/16 v1, 0x9

    .line 20
    .line 21
    if-eq p1, v1, :cond_2

    .line 22
    .line 23
    const/16 v1, 0xa

    .line 24
    .line 25
    if-eq p1, v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string p1, "\u6ca1\u6709\u66f4\u591a\u5185\u5bb9\u54e6~"

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 34
    .line 35
    new-instance v0, Lcom/join/mgps/activity/SearchHintActivity$d;

    .line 36
    .line 37
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SearchHintActivity$d;-><init>(Lcom/join/mgps/activity/SearchHintActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance p1, Lcom/join/mgps/activity/SearchHintActivity$c;

    .line 56
    .line 57
    invoke-direct {p1, p0, v0}, Lcom/join/mgps/activity/SearchHintActivity$c;-><init>(Lcom/join/mgps/activity/SearchHintActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const-string p1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 75
    .line 76
    new-instance v0, Lcom/join/mgps/activity/SearchHintActivity$e;

    .line 77
    .line 78
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SearchHintActivity$e;-><init>(Lcom/join/mgps/activity/SearchHintActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_5
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->updateUi()V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 102
    .line 103
    .line 104
    :goto_0
    return-void
.end method

.method changeSearchBarLayout(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->img_iconback:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const v1, 0x7f080964

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const v1, 0x7f08017e

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->search_bar_layout:Landroid/view/View;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const v2, 0x7f080ef4

    .line 23
    .line 24
    .line 25
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->lLayout_search:Landroid/widget/RelativeLayout;

    .line 29
    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    const v2, 0x7f081006

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    const v2, 0x7f081005

    .line 37
    .line 38
    .line 39
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 43
    .line 44
    const-string v2, "#8A8A8A"

    .line 45
    .line 46
    const/4 v3, -0x1

    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    const/4 v4, -0x1

    .line 50
    goto :goto_3

    .line 51
    :cond_3
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 59
    .line 60
    if-nez p1, :cond_4

    .line 61
    .line 62
    const/4 v2, -0x1

    .line 63
    goto :goto_4

    .line 64
    :cond_4
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->tv_search:Landroid/widget/TextView;

    .line 72
    .line 73
    if-nez p1, :cond_5

    .line 74
    .line 75
    goto :goto_5

    .line 76
    :cond_5
    const-string v2, "#AAAAAA"

    .line 77
    .line 78
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    .line 84
    .line 85
    iput p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchBarStyle:I

    .line 86
    .line 87
    if-nez p1, :cond_7

    .line 88
    .line 89
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->banner:Lcom/youth/banner/Banner;

    .line 90
    .line 91
    if-eqz p1, :cond_7

    .line 92
    .line 93
    const/4 v0, 0x1

    .line 94
    invoke-virtual {p1, v0}, Lcom/youth/banner/Banner;->q(Z)Lcom/youth/banner/Banner;

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->vf:Landroidx/viewpager2/widget/ViewPager2;

    .line 98
    .line 99
    if-eqz p1, :cond_7

    .line 100
    .line 101
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 102
    .line 103
    if-eqz p1, :cond_6

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_7

    .line 110
    .line 111
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->vf:Landroidx/viewpager2/widget/ViewPager2;

    .line 112
    .line 113
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    :cond_7
    return-void
.end method

.method clearEditFocus()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->requestLayout:Landroid/view/View;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->requestLayout:Landroid/view/View;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->requestLayout:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->requestLayout:Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->hideKeyboard()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method clearHistory()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lt6/h0;->n()Lt6/h0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lq5/b;->a()I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->updateUi()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method clearHistoryx()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->historyList:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->historyFlow:Lcom/join/mgps/customview/FlowLayout;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->clearHistory()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->showHint()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method deleteRecordBean(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lt6/h0;->n()Lt6/h0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lq5/b;->d()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/join/mgps/db/tables/SearchRecordTable;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/SearchRecordTable;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-static {}, Lt6/h0;->n()Lt6/h0;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1, v1}, Lq5/b;->delete(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    return-void
.end method

.method fromSearch(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/Util/IntentDateBean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 10
    .line 11
    .line 12
    :cond_0
    const-string v1, "112"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setLocation(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setWhere(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 46
    .line 47
    .line 48
    return-object p1
.end method

.method getAutoSearchList(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyword"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :try_start_0
    new-instance v2, Lcom/join/mgps/dto/RequestModel;

    .line 16
    .line 17
    invoke-direct {v2}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Lcom/join/mgps/activity/SearchHintActivity;->context:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 23
    .line 24
    .line 25
    new-instance v3, Lcom/join/mgps/dto/RequestKeywordArgs;

    .line 26
    .line 27
    iget v6, p0, Lcom/join/mgps/activity/SearchHintActivity;->pn:I

    .line 28
    .line 29
    iget v7, p0, Lcom/join/mgps/activity/SearchHintActivity;->pc:I

    .line 30
    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v9, 0x0

    .line 33
    move-object v4, v3

    .line 34
    move-object v5, p1

    .line 35
    invoke-direct/range {v4 .. v9}, Lcom/join/mgps/dto/RequestKeywordArgs;-><init>(Ljava/lang/String;IIII)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->Q0()Lcom/join/mgps/rpc/impl/i;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v2}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-interface {p1, v2}, Lb7/i;->Z0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 66
    .line 67
    iput-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchAutoBean:Lcom/join/mgps/dto/ResponseModel;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lcom/join/mgps/activity/search/SearchAutoDataV1;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/join/mgps/activity/search/SearchAutoDataV1;->getSearch_list()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-virtual {p0, p1, v1}, Lcom/join/mgps/activity/SearchHintActivity;->updateUI(Ljava/util/List;I)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-exception p1

    .line 86
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->serverConnectionException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->updateUI(Ljava/util/List;I)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->updateUI(Ljava/util/List;I)V

    .line 97
    .line 98
    .line 99
    throw p1

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->netWorkException()V

    .line 101
    .line 102
    .line 103
    :goto_1
    return-void
.end method

.method getHint()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->context:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 18
    .line 19
    .line 20
    new-instance v2, Lcom/join/mgps/dto/RequestUidtagidTagdes;

    .line 21
    .line 22
    invoke-direct {v2}, Lcom/join/mgps/dto/RequestUidtagidTagdes;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Lcom/join/mgps/activity/SearchHintActivity;->context:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/RequestUidtagidTagdes;->setUid(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestUidtagidTagdes;->setToken(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->Q0()Lcom/join/mgps/rpc/impl/i;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-interface {v2, v1}, Lb7/i;->l1(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lcom/join/mgps/dto/ResponseModel;

    .line 73
    .line 74
    iput-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchPageBean:Lcom/join/mgps/dto/ResponseModel;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Lcom/join/mgps/activity/search/SearchIndexData;

    .line 81
    .line 82
    if-eqz v1, :cond_1

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/join/mgps/activity/search/SearchIndexData;->getHot_search_ranking()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    if-nez v2, :cond_0

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/join/mgps/activity/search/SearchIndexData;->getSearch_key()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    if-nez v2, :cond_0

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    const/4 v2, 0x1

    .line 98
    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/activity/SearchHintActivity;->updateHint(Lcom/join/mgps/activity/search/SearchIndexData;Z)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->updateUi()V

    .line 102
    .line 103
    .line 104
    const/4 v1, 0x2

    .line 105
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->changeLoadingState(I)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchHintActivity;->changeLoadingState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :catch_0
    move-exception v1

    .line 114
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->serverConnectionException()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchHintActivity;->changeLoadingState(I)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->netWorkException()V

    .line 125
    .line 126
    .line 127
    const/16 v0, 0x9

    .line 128
    .line 129
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchHintActivity;->changeLoadingState(I)V

    .line 130
    .line 131
    .line 132
    :goto_1
    return-void
.end method

.method public getHintRequestBean()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->context:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->context:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {v2, v0, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getSearchPageRequestBean(ILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method getHistoryFromDb()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lt6/h0;->n()Lt6/h0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    const/16 v4, 0x14

    .line 13
    .line 14
    int-to-long v4, v4

    .line 15
    const-string v6, "create_time"

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    invoke-virtual/range {v1 .. v7}, Lq5/b;->i(JJLjava/lang/String;Z)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->historyList:Ljava/util/ArrayList;

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    new-instance v2, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->historyList:Ljava/util/ArrayList;

    .line 32
    .line 33
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->historyList:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 36
    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lcom/join/mgps/db/tables/SearchRecordTable;

    .line 53
    .line 54
    iget-object v3, p0, Lcom/join/mgps/activity/SearchHintActivity;->historyList:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/SearchRecordTable;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->historyList:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-lez v1, :cond_4

    .line 71
    .line 72
    const/4 v1, 0x0

    .line 73
    :goto_1
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->historyList:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-ge v1, v2, :cond_3

    .line 80
    .line 81
    new-instance v2, Lcom/join/mgps/dto/SearchAutoDataBean;

    .line 82
    .line 83
    invoke-direct {v2}, Lcom/join/mgps/dto/SearchAutoDataBean;-><init>()V

    .line 84
    .line 85
    .line 86
    iget-object v3, p0, Lcom/join/mgps/activity/SearchHintActivity;->historyList:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-lt v1, v3, :cond_2

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    iget-object v3, p0, Lcom/join/mgps/activity/SearchHintActivity;->historyList:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    check-cast v3, Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/SearchAutoDataBean;->setGame_name(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string v3, ""

    .line 107
    .line 108
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/SearchAutoDataBean;->setCrc_sign_id(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const/4 v3, 0x1

    .line 112
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/SearchAutoDataBean;->setIsHistory(Z)V

    .line 113
    .line 114
    .line 115
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    add-int/lit8 v1, v1, 0x1

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->showHistory()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchHintActivity;->updateHistoryList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    .line 131
    .line 132
    :cond_4
    :goto_3
    return-void
.end method

.method public getHotAdInfo(I)Lcom/join/mgps/activity/search/SearchHotAdInfo;
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
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->bean:Lcom/join/mgps/activity/search/SearchIndexData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/activity/search/SearchIndexData;->getHot_search_ad_info()Lcom/join/mgps/activity/search/SearchHotAdInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return-object p1
.end method

.method public getItemData(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->bean:Lcom/join/mgps/activity/search/SearchIndexData;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/activity/search/SearchIndexData;->getHot_search_ranking()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :cond_0
    const/4 v1, 0x2

    .line 14
    if-ne p1, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/activity/search/SearchIndexData;->getNet_search_ranking()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_1
    const/4 v1, 0x3

    .line 22
    if-ne p1, v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/activity/search/SearchIndexData;->getSimulator_search_ranking()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_2
    const/4 v1, 0x4

    .line 30
    if-ne p1, v1, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/join/mgps/activity/search/SearchIndexData;->getStandalone_search_ranking()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    return-object p1
.end method

.method public getRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/RequestBeanUtil;->getSearchRecommendBean(I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    return-object p1
.end method

.method public getRequestBean(Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "KEYWORD"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    const-string v2, "searchAuto"

    iget v4, p0, Lcom/join/mgps/activity/SearchHintActivity;->pn:I

    iget v5, p0, Lcom/join/mgps/activity/SearchHintActivity;->pc:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/join/mgps/Util/RequestBeanUtil;->getSearchAutoRequestBean(Ljava/lang/String;Ljava/lang/String;IIII)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    return-object p1
.end method

.method getSearchAutoData(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "type"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    if-eq p2, p1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->getHistoryFromDb()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SearchHintActivity;->getAutoSearchList(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public goSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyword",
            "gameid"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/join/mgps/activity/SearchHintActivity;->goSearch(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public goSearch(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyword",
            "gameid",
            "way"
        }
    .end annotation

    const-string v0, ""

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/activity/SearchHintActivity;->saveRecordBean(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->clearEditFocus()V

    .line 5
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/SearchListActivity1_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/SearchListActivity1_$q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/SearchListActivity1_$q;->e(Ljava/lang/String;)Lcom/join/mgps/activity/SearchListActivity1_$q;

    move-result-object v0

    iget-boolean v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->isNeedRecommend:Z

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/SearchListActivity1_$q;->d(Z)Lcom/join/mgps/activity/SearchListActivity1_$q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/SearchListActivity1_$q;->a(I)Lcom/join/mgps/activity/SearchListActivity1_$q;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/join/mgps/activity/SearchListActivity1_$q;->c(Ljava/lang/String;)Lcom/join/mgps/activity/SearchListActivity1_$q;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/join/mgps/activity/SearchListActivity1_$q;->b(I)Lcom/join/mgps/activity/SearchListActivity1_$q;

    move-result-object p2

    invoke-virtual {p2}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    .line 7
    :cond_0
    iget p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->from:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 8
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/join/mgps/activity/SearchListActivity1_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/SearchListActivity1_$q;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/SearchListActivity1_$q;->e(Ljava/lang/String;)Lcom/join/mgps/activity/SearchListActivity1_$q;

    move-result-object p2

    iget-boolean v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->isNeedRecommend:Z

    invoke-virtual {p2, v0}, Lcom/join/mgps/activity/SearchListActivity1_$q;->d(Z)Lcom/join/mgps/activity/SearchListActivity1_$q;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/join/mgps/activity/SearchListActivity1_$q;->a(I)Lcom/join/mgps/activity/SearchListActivity1_$q;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/join/mgps/activity/SearchListActivity1_$q;->b(I)Lcom/join/mgps/activity/SearchListActivity1_$q;

    move-result-object p2

    invoke-virtual {p2}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    .line 9
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/join/mgps/activity/SearchListActivity1_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/SearchListActivity1_$q;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/SearchListActivity1_$q;->e(Ljava/lang/String;)Lcom/join/mgps/activity/SearchListActivity1_$q;

    move-result-object p2

    iget-boolean v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->isNeedRecommend:Z

    invoke-virtual {p2, v0}, Lcom/join/mgps/activity/SearchListActivity1_$q;->d(Z)Lcom/join/mgps/activity/SearchListActivity1_$q;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/join/mgps/activity/SearchListActivity1_$q;->b(I)Lcom/join/mgps/activity/SearchListActivity1_$q;

    move-result-object p2

    invoke-virtual {p2}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 10
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 11
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    move-result-object p2

    sget-object p3, Lcom/papa/sim/statistic/Event;->clickSearchButton:Lcom/papa/sim/statistic/Event;

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p1, v0}, Lcom/papa/sim/statistic/t;->n1(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->showHint()V

    return-void
.end method

.method hideKeyboard()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-static {v0}, Lr7/a;->b(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v1, "input_method"

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v2, 0x2

    .line 25
    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method img_iconback()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "input_method"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x2

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    :cond_0
    :goto_0
    iget v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchBarStyle:I

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 41
    .line 42
    const-string v1, ""

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->clearEditFocus()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->showHint()V

    .line 51
    .line 52
    .line 53
    :goto_1
    return-void
.end method

.method img_search()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, ""

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->goSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->keyword:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->keyword:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->goSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->vf:Landroidx/viewpager2/widget/ViewPager2;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->keywords:Ljava/util/ArrayList;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-lez v0, :cond_2

    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->vf:Landroidx/viewpager2/widget/ViewPager2;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->keywords:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    rem-int/2addr v0, v3

    .line 70
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lcom/join/mgps/dto/SScrollingTxtBeanV2;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/join/mgps/dto/SScrollingTxtBeanV2;->getWord()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->goSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_0
    return-void
.end method

.method loading()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchHintActivity;->changeLoadingState(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->getHint()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->updateUi()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method loadingDB()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->searchHintCache()Lorg/androidannotations/api/sharedpreferences/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-class v2, Lcom/join/mgps/activity/search/SearchIndexData;

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/join/mgps/activity/search/SearchIndexData;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/activity/search/SearchIndexData;->getHot_search_ranking()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/activity/search/SearchIndexData;->getSearch_key()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v1, 0x0

    .line 47
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->updateHint(Lcom/join/mgps/activity/search/SearchIndexData;Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->updateUi()V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x2

    .line 54
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchHintActivity;->changeLoadingState(I)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    return-void
.end method

.method netWorkException()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/manager/a;->h()Lcom/join/android/app/common/manager/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->context:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->netExcption:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/android/app/common/manager/a;->j(Landroid/content/Context;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method notifyAdapter()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchSimpleAdapter:Lcom/join/mgps/activity/SearchHintActivity$q;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/SearchHintActivity$q;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->rankingPageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->tabLayoutMediator:Lcom/google/android/material/tabs/d;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/material/tabs/d;->b()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->tabLayoutMediator:Lcom/google/android/material/tabs/d;

    .line 19
    .line 20
    :cond_1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTaskEvent"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/activity/SearchHintActivity$f;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchHintActivity$f;-><init>(Lcom/join/mgps/activity/SearchHintActivity;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/join/kotlin/utils/DlTaskManager;->onNotifyDataSet(Lcom/join/mgps/event/r;Lkotlin/jvm/functions/Function0;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/16 v0, 0x8

    .line 16
    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    iget-boolean p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->SCROLLING:Z

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/join/mgps/activity/SearchHintActivity;->updateProgressPartly()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->banner:Lcom/youth/banner/Banner;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->q(Z)Lcom/youth/banner/Banner;

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 13
    .line 14
    invoke-static {v0}, Lr7/a;->b(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->banner:Lcom/youth/banner/Banner;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->banner:Lcom/youth/banner/Banner;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->q(Z)Lcom/youth/banner/Banner;

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N4(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->getHistoryFromDb()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "firstVisibleItem",
            "visibleItemCount",
            "totalItemCount"
        }
    .end annotation

    .line 1
    add-int/2addr p3, p2

    .line 2
    add-int/lit8 p3, p3, -0x1

    .line 3
    .line 4
    iput p3, p0, Lcom/join/mgps/activity/SearchHintActivity;->lastVisibleIndex:I

    .line 5
    .line 6
    iput p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->firstVisiblePosition:I

    .line 7
    .line 8
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "scrollState"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iput-boolean p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->SCROLLING:Z

    .line 7
    .line 8
    return-void
.end method

.method recviedBespeak(Landroid/content/Intent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.broadcast.bespeak.sussess"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const-string v0, "gameid"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "game_book"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const-string v2, "message"

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "pd_info"

    .line 23
    .line 24
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/join/mgps/dto/DomainInfoBean;

    .line 29
    .line 30
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->updateBespeak(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    if-ne v1, v0, :cond_1

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->context:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/dto/DomainInfoBean;->getInfo()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v3, "game_search_subscribe"

    .line 45
    .line 46
    invoke-static {v0, v1, v3}, Lcom/join/mgps/Util/UtilsMy;->D4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->context:Landroid/content/Context;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->context:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {v0, v1, p1, v2}, Lcom/join/mgps/Util/g0;->J(Landroid/content/Context;Lcom/join/mgps/dto/DomainInfoBean;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method requestEditFocus()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 12
    .line 13
    invoke-static {v0}, Lr7/a;->c(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method searchClear()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchClearInProgress:Z

    .line 3
    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-lez v1, :cond_0

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->suppressSearchTextListenerForClear:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 17
    .line 18
    const-string v1, ""

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->suppressSearchTextListenerForClear:Z

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchAutoDataBeanList:Ljava/util/List;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchSimpleAdapter:Lcom/join/mgps/activity/SearchHintActivity$q;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/activity/SearchHintActivity$q;->notifyDataSetChanged()V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->autoListView:Landroid/widget/ListView;

    .line 41
    .line 42
    const/16 v1, 0x8

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchClear:Landroid/widget/ImageView;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :goto_0
    new-instance v1, Lcom/join/mgps/activity/x8;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/x8;-><init>(Lcom/join/mgps/activity/SearchHintActivity;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 76
    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    :goto_1
    new-instance v2, Lcom/join/mgps/activity/x8;

    .line 89
    .line 90
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/x8;-><init>(Lcom/join/mgps/activity/SearchHintActivity;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 94
    .line 95
    .line 96
    throw v0
.end method

.method searchEditText(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "textView",
            "actionId",
            "keyEvent"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/EditorAction;
    .end annotation

    .line 1
    const/4 p1, 0x6

    .line 2
    if-ne p2, p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SearchHintActivity;->getAutoSearchList(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string p2, ""

    .line 28
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/SearchHintActivity;->saveRecordBean(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    return p1
.end method

.method sendGameCount(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    return-void
.end method

.method serverConnectionException()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/manager/a;->h()Lcom/join/android/app/common/manager/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->context:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->netConnectExcption:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/android/app/common/manager/a;->j(Landroid/content/Context;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showHint()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "keyword="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "showHint"

    .line 29
    .line 30
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-boolean v0, Lcom/join/mgps/activity/SearchHintActivity;->popKeyboard:Z

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    const/16 v2, 0x8

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->recommend:Landroid/view/View;

    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->autoListView:Landroid/widget/ListView;

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->clearLayout:Landroid/widget/LinearLayout;

    .line 83
    .line 84
    iget-object v3, p0, Lcom/join/mgps/activity/SearchHintActivity;->historyList:Ljava/util/ArrayList;

    .line 85
    .line 86
    if-eqz v3, :cond_2

    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-nez v3, :cond_2

    .line 93
    .line 94
    const/4 v2, 0x0

    .line 95
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->changeSearchBarLayout(I)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->recommend:Landroid/view/View;

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method showHistory()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_5

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "keyword="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "showHistory"

    .line 40
    .line 41
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->recommend:Landroid/view/View;

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->autoListView:Landroid/widget/ListView;

    .line 57
    .line 58
    const/16 v2, 0x8

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->clearLayout:Landroid/widget/LinearLayout;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->ivClearHistory:Landroid/widget/ImageView;

    .line 73
    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    iget-object v3, p0, Lcom/join/mgps/activity/SearchHintActivity;->historyList:Ljava/util/ArrayList;

    .line 77
    .line 78
    if-eqz v3, :cond_4

    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-lez v3, :cond_4

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    const/16 v1, 0x8

    .line 88
    .line 89
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    :cond_5
    :goto_1
    return-void
.end method

.method showKeyBorad()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x12cL
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchClear:Landroid/widget/ImageView;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->autoListView:Landroid/widget/ListView;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->requestEditFocus()V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    sput-boolean v0, Lcom/join/mgps/activity/SearchHintActivity;->popKeyboard:Z

    .line 25
    .line 26
    return-void
.end method

.method showRecommend()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "keyword="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "showRecommend"

    .line 40
    .line 41
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->recommend:Landroid/view/View;

    .line 49
    .line 50
    const/16 v1, 0x8

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->autoListView:Landroid/widget/ListView;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->clearLayout:Landroid/widget/LinearLayout;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    :cond_3
    const/4 v0, 0x1

    .line 73
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchHintActivity;->changeSearchBarLayout(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 85
    .line 86
    .line 87
    :cond_4
    :goto_0
    return-void
.end method

.method tv_search()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, ""

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->goSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->keyword:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->keyword:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->goSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->vf:Landroidx/viewpager2/widget/ViewPager2;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->keywords:Ljava/util/ArrayList;

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-lez v0, :cond_3

    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->vf:Landroidx/viewpager2/widget/ViewPager2;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->keywords:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    rem-int/2addr v0, v3

    .line 70
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lcom/join/mgps/dto/SScrollingTxtBeanV2;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/join/mgps/dto/SScrollingTxtBeanV2;->getJumpModelDto()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->isGame()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_2

    .line 87
    .line 88
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getGameId()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/SScrollingTxtBeanV2;->getWord()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->goSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    :goto_0
    return-void
.end method

.method updateAutoList(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "autoBeanList",
            "from"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchAutoDataBean;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchAutoDataBeanList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez p2, :cond_3

    .line 9
    .line 10
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchAutoBean:Lcom/join/mgps/dto/ResponseModel;

    .line 11
    .line 12
    if-eqz p2, :cond_3

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    if-eqz p2, :cond_3

    .line 19
    .line 20
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchAutoBean:Lcom/join/mgps/dto/ResponseModel;

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Lcom/join/mgps/activity/search/SearchAutoDataV1;

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/join/mgps/activity/search/SearchAutoDataV1;->getGame_list()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    if-eqz p2, :cond_3

    .line 33
    .line 34
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->gameDownLists:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchAutoBean:Lcom/join/mgps/dto/ResponseModel;

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Lcom/join/mgps/activity/search/SearchAutoDataV1;

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/join/mgps/activity/search/SearchAutoDataV1;->getGame_list()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_0

    .line 60
    .line 61
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 66
    .line 67
    const/16 v3, 0x67

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 70
    .line 71
    .line 72
    const/16 v3, 0x70

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 75
    .line 76
    .line 77
    const-string v3, "0"

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v3, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchAutoDataBeanList:Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    iget-object v3, p0, Lcom/join/mgps/activity/SearchHintActivity;->gameDownLists:Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchAutoBean:Lcom/join/mgps/dto/ResponseModel;

    .line 94
    .line 95
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    check-cast p2, Lcom/join/mgps/activity/search/SearchAutoDataV1;

    .line 100
    .line 101
    invoke-virtual {p2}, Lcom/join/mgps/activity/search/SearchAutoDataV1;->getAd_info()Lcom/join/mgps/activity/search/SearchAutoAdData;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    if-eqz p2, :cond_2

    .line 106
    .line 107
    invoke-virtual {p2}, Lcom/join/mgps/activity/search/SearchAutoAdData;->getFirstAd()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    if-eqz v2, :cond_1

    .line 112
    .line 113
    invoke-virtual {p2}, Lcom/join/mgps/activity/search/SearchAutoAdData;->getFirstAd()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->setAdInfo(Z)V

    .line 118
    .line 119
    .line 120
    iget-object v3, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchAutoDataBeanList:Ljava/util/List;

    .line 121
    .line 122
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    sget-object v3, Lcom/papa/sim/statistic/Event;->searchThinkAdWordExp:Lcom/papa/sim/statistic/Event;

    .line 126
    .line 127
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v4}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    const-string v5, "1"

    .line 140
    .line 141
    invoke-direct {p0, v3, v5, v4, v2}, Lcom/join/mgps/activity/SearchHintActivity;->sendAutoListPoint(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_1
    invoke-virtual {p2}, Lcom/join/mgps/activity/search/SearchAutoAdData;->getSecondAd()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    if-eqz v2, :cond_2

    .line 149
    .line 150
    invoke-virtual {p2}, Lcom/join/mgps/activity/search/SearchAutoAdData;->getSecondAd()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {p2, v1}, Lcom/join/mgps/dto/CommonGameInfoBean;->setAdInfo(Z)V

    .line 155
    .line 156
    .line 157
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchAutoDataBeanList:Ljava/util/List;

    .line 158
    .line 159
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    sget-object v2, Lcom/papa/sim/statistic/Event;->searchThinkAdWordExp:Lcom/papa/sim/statistic/Event;

    .line 163
    .line 164
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-virtual {v3}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    const-string v4, "2"

    .line 177
    .line 178
    invoke-direct {p0, v2, v4, v3, p2}, Lcom/join/mgps/activity/SearchHintActivity;->sendAutoListPoint(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->gameDownLists:Ljava/util/List;

    .line 182
    .line 183
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/SearchHintActivity;->updateDownStateList(Ljava/util/List;)Ljava/util/List;

    .line 184
    .line 185
    .line 186
    :cond_3
    if-eqz p1, :cond_4

    .line 187
    .line 188
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 189
    .line 190
    .line 191
    move-result p2

    .line 192
    if-lez p2, :cond_4

    .line 193
    .line 194
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchAutoDataBeanList:Ljava/util/List;

    .line 195
    .line 196
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 197
    .line 198
    .line 199
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchAutoDataBeanList:Ljava/util/List;

    .line 200
    .line 201
    if-eqz p1, :cond_5

    .line 202
    .line 203
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-gtz p1, :cond_6

    .line 208
    .line 209
    :cond_5
    const/4 v0, 0x1

    .line 210
    :cond_6
    iput-boolean v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->isNeedRecommend:Z

    .line 211
    .line 212
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchSimpleAdapter:Lcom/join/mgps/activity/SearchHintActivity$q;

    .line 213
    .line 214
    invoke-virtual {p1}, Lcom/join/mgps/activity/SearchHintActivity$q;->notifyDataSetChanged()V

    .line 215
    .line 216
    .line 217
    return-void
.end method

.method updateBespeak(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameId",
            "game_book"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchAutoDataBeanList:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    instance-of v2, v1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    check-cast v1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getGameId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/GInfoBean;->setGame_book(I)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchSimpleAdapter:Lcom/join/mgps/activity/SearchHintActivity$q;

    .line 48
    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/join/mgps/activity/SearchHintActivity$q;->notifyDataSetChanged()V

    .line 52
    .line 53
    .line 54
    :cond_3
    return-void
.end method

.method updateHint(Lcom/join/mgps/activity/search/SearchIndexData;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bean",
            "isFromNet"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->searchHintCache()Lorg/androidannotations/api/sharedpreferences/p;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p2, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/activity/search/SearchIndexData;->getSearch_key()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/activity/search/SearchIndexData;->getSearch_key()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    iput-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchKey:Ljava/lang/String;

    .line 36
    .line 37
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v1, " "

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchKey:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->showHint()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/join/mgps/activity/search/SearchIndexData;->getAd_info_v2()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    const/4 v0, 0x0

    .line 69
    const/4 v1, 0x1

    .line 70
    if-eqz p2, :cond_2

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/join/mgps/activity/search/SearchIndexData;->getAd_info_v2()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getAd_switch()Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-ne p2, v1, :cond_2

    .line 85
    .line 86
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->llRecent:Landroid/view/View;

    .line 87
    .line 88
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/join/mgps/activity/search/SearchIndexData;->getAd_info_v2()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->ad:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 96
    .line 97
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    sget-object v4, Lcom/facebook/drawee/drawable/s$c;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 102
    .line 103
    invoke-static {v2, v3, v4}, Lcom/join/android/app/common/utils/l;->q(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 104
    .line 105
    .line 106
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->ad:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 107
    .line 108
    new-instance v3, Lcom/join/mgps/activity/y8;

    .line 109
    .line 110
    invoke-direct {v3, p0, p2}, Lcom/join/mgps/activity/y8;-><init>(Lcom/join/mgps/activity/SearchHintActivity;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    .line 115
    .line 116
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .line 120
    .line 121
    new-instance v2, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/join/mgps/activity/search/SearchIndexData;->getGuess_you_like_info()Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    if-eqz v3, :cond_3

    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/join/mgps/activity/search/SearchIndexData;->getGuess_you_like_info()Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-gtz v3, :cond_4

    .line 141
    .line 142
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/activity/search/SearchIndexData;->getGame_zone_entry()Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    if-eqz v3, :cond_5

    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/join/mgps/activity/search/SearchIndexData;->getGame_zone_entry()Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-lez v3, :cond_5

    .line 157
    .line 158
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/activity/search/SearchIndexData;->getGame_zone_entry()Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {p1}, Lcom/join/mgps/activity/search/SearchIndexData;->getGuess_you_like_info()Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    iget-object v3, p0, Lcom/join/mgps/activity/SearchHintActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 167
    .line 168
    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->searchguesslikeData()Lorg/androidannotations/api/sharedpreferences/p;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-virtual {v4, p1}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    invoke-virtual {v3, v4}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_5
    iget-object v3, p0, Lcom/join/mgps/activity/SearchHintActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 185
    .line 186
    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->searchguesslikeData()Lorg/androidannotations/api/sharedpreferences/p;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    check-cast v3, Ljava/lang/String;

    .line 195
    .line 196
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    if-eqz v4, :cond_6

    .line 201
    .line 202
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    const-class v5, Lcom/join/mgps/activity/search/SearchIndexData;

    .line 207
    .line 208
    invoke-virtual {v4, v3, v5}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    check-cast v3, Lcom/join/mgps/activity/search/SearchIndexData;

    .line 213
    .line 214
    if-eqz v3, :cond_6

    .line 215
    .line 216
    invoke-virtual {v3}, Lcom/join/mgps/activity/search/SearchIndexData;->getGame_zone_entry()Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    invoke-virtual {v3}, Lcom/join/mgps/activity/search/SearchIndexData;->getGuess_you_like_info()Ljava/util/List;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    :cond_6
    :goto_0
    if-eqz p2, :cond_7

    .line 225
    .line 226
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    if-gtz v3, :cond_8

    .line 231
    .line 232
    :cond_7
    if-eqz v2, :cond_e

    .line 233
    .line 234
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    if-gtz v3, :cond_8

    .line 239
    .line 240
    goto/16 :goto_5

    .line 241
    .line 242
    :cond_8
    iget-object v3, p0, Lcom/join/mgps/activity/SearchHintActivity;->guessliketext:Landroid/view/View;

    .line 243
    .line 244
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 245
    .line 246
    .line 247
    iget-object v3, p0, Lcom/join/mgps/activity/SearchHintActivity;->guessLickFlow:Lcom/join/mgps/customview/FlowLayout;

    .line 248
    .line 249
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 250
    .line 251
    .line 252
    if-eqz p2, :cond_9

    .line 253
    .line 254
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    if-lez v3, :cond_9

    .line 259
    .line 260
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    check-cast v3, Lcom/join/mgps/dto/SearchGameZoneBean;

    .line 265
    .line 266
    invoke-direct {p0, p0, v3}, Lcom/join/mgps/activity/SearchHintActivity;->makeFlawLayoutItem(Landroid/content/Context;Lcom/join/mgps/dto/SearchGameZoneBean;)Landroid/view/View;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    if-eqz v3, :cond_9

    .line 271
    .line 272
    iget-object v4, p0, Lcom/join/mgps/activity/SearchHintActivity;->guessLickFlow:Lcom/join/mgps/customview/FlowLayout;

    .line 273
    .line 274
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 275
    .line 276
    .line 277
    :cond_9
    if-eqz v2, :cond_b

    .line 278
    .line 279
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    if-ge v0, v3, :cond_b

    .line 284
    .line 285
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    check-cast v3, Lcom/join/mgps/dto/GameInfoBean;

    .line 290
    .line 291
    invoke-direct {p0, p0, v3}, Lcom/join/mgps/activity/SearchHintActivity;->makeFlawLayoutItem(Landroid/content/Context;Lcom/join/mgps/dto/GameInfoBean;)Landroid/view/View;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    if-nez v3, :cond_a

    .line 296
    .line 297
    goto :goto_2

    .line 298
    :cond_a
    iget-object v4, p0, Lcom/join/mgps/activity/SearchHintActivity;->guessLickFlow:Lcom/join/mgps/customview/FlowLayout;

    .line 299
    .line 300
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 301
    .line 302
    .line 303
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 304
    .line 305
    goto :goto_1

    .line 306
    :cond_b
    if-eqz p2, :cond_d

    .line 307
    .line 308
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    if-le v0, v1, :cond_d

    .line 313
    .line 314
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-ge v1, v0, :cond_d

    .line 319
    .line 320
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    check-cast v0, Lcom/join/mgps/dto/SearchGameZoneBean;

    .line 325
    .line 326
    invoke-direct {p0, p0, v0}, Lcom/join/mgps/activity/SearchHintActivity;->makeFlawLayoutItem(Landroid/content/Context;Lcom/join/mgps/dto/SearchGameZoneBean;)Landroid/view/View;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    if-nez v0, :cond_c

    .line 331
    .line 332
    goto :goto_4

    .line 333
    :cond_c
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->guessLickFlow:Lcom/join/mgps/customview/FlowLayout;

    .line 334
    .line 335
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 336
    .line 337
    .line 338
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 339
    .line 340
    goto :goto_3

    .line 341
    :cond_d
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->guessLickFlow:Lcom/join/mgps/customview/FlowLayout;

    .line 342
    .line 343
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    const v1, 0x7f0713ac

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    invoke-virtual {p2, v0}, Lcom/join/mgps/customview/FlowLayout;->setHorizontalDivider(I)V

    .line 355
    .line 356
    .line 357
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->guessLickFlow:Lcom/join/mgps/customview/FlowLayout;

    .line 358
    .line 359
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    const v1, 0x7f071326

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    invoke-virtual {p2, v0}, Lcom/join/mgps/customview/FlowLayout;->setVerticalDivider(I)V

    .line 371
    .line 372
    .line 373
    goto :goto_6

    .line 374
    :cond_e
    :goto_5
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->guessLickFlow:Lcom/join/mgps/customview/FlowLayout;

    .line 375
    .line 376
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 377
    .line 378
    .line 379
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->guessliketext:Landroid/view/View;

    .line 380
    .line 381
    const/16 v0, 0x8

    .line 382
    .line 383
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 384
    .line 385
    .line 386
    :goto_6
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SearchHintActivity;->showFargment(Lcom/join/mgps/activity/search/SearchIndexData;)V

    .line 387
    .line 388
    .line 389
    return-void
.end method

.method updateHistoryList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoBeanList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchAutoDataBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchHistoryDataBeanList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->gameDownLists:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchHistoryDataBeanList:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->historyFlow:Lcom/join/mgps/customview/FlowLayout;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->historyFlow:Lcom/join/mgps/customview/FlowLayout;

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/FlowLayout;->setNumberRows(I)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->historyFlow:Lcom/join/mgps/customview/FlowLayout;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const v1, 0x7f0713ac

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/FlowLayout;->setHorizontalDivider(I)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->historyFlow:Lcom/join/mgps/customview/FlowLayout;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const v1, 0x7f071326

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/FlowLayout;->setVerticalDivider(I)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->ivClearHistory:Landroid/widget/ImageView;

    .line 62
    .line 63
    const/16 v0, 0x8

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchHistoryDataBeanList:Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    const/16 v2, 0x8

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    const/4 v2, 0x0

    .line 80
    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchHistoryDataBeanList:Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_4

    .line 90
    .line 91
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->clearLayout:Landroid/widget/LinearLayout;

    .line 92
    .line 93
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchHistoryDataBeanList:Ljava/util/List;

    .line 97
    .line 98
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-ge v1, p1, :cond_5

    .line 103
    .line 104
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchHistoryDataBeanList:Ljava/util/List;

    .line 105
    .line 106
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Lcom/join/mgps/dto/SearchAutoDataBean;

    .line 111
    .line 112
    invoke-direct {p0, p0, p1}, Lcom/join/mgps/activity/SearchHintActivity;->makeFlawLayoutItem(Landroid/content/Context;Lcom/join/mgps/dto/SearchAutoDataBean;)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-nez p1, :cond_3

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->historyFlow:Lcom/join/mgps/customview/FlowLayout;

    .line 120
    .line 121
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    .line 123
    .line 124
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity;->clearLayout:Landroid/widget/LinearLayout;

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :catch_0
    move-exception p1

    .line 134
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 135
    .line 136
    .line 137
    :cond_5
    :goto_3
    return-void
.end method

.method updateUI(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "searchAutoDataBeans",
            "i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchAutoDataBean;",
            ">;I)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 5
    .line 6
    if-eqz p2, :cond_2

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p2, 0x0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/SearchHintActivity;->updateAutoList(Ljava/util/List;I)V

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_0
    return-void
.end method

.method updateUi()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->showRecommend()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchHintActivity;->getAutoSearchList(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchClear:Landroid/widget/ImageView;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchKey:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 39
    .line 40
    const-string v1, ""

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchHintActivity;->showHint()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v2, " "

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchKey:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->searchClear:Landroid/widget/ImageView;

    .line 73
    .line 74
    const/16 v1, 0x8

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity;->autoListView:Landroid/widget/ListView;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    :goto_0
    return-void
.end method

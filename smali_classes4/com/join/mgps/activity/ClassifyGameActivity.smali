.class public Lcom/join/mgps/activity/ClassifyGameActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/join/mgps/dialog/u$a;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d002b
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClassifyGameActivity"


# instance fields
.field appbar:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field classifyGameTagBean:Lcom/join/mgps/dto/ClassifyGameTagBean;

.field classifyHotFragment:Lcom/join/mgps/activity/m;

.field private classifyLayout:Lcom/join/mgps/customview/FlowLayout;

.field private classifyLayout2:Lcom/join/mgps/customview/FlowLayout;

.field private classifySortBt:Landroid/widget/Button;

.field downloadView:Lcom/join/mgps/customview/CustomerDownloadView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f0a178b
    .end annotation
.end field

.field downloadedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field downloadingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private fragmentsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field gameTagBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ClassifyGameTagBean;",
            ">;"
        }
    .end annotation
.end field

.field gameTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ClassifyGameTagBean;",
            ">;"
        }
    .end annotation
.end field

.field gameTypeId:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field loading_none:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field protected mLoadingLayout:Lcom/join/mgps/customview/LoadingLayout;

.field mRpcClient:Lcom/join/mgps/rpc/e;

.field mViewpagerV4:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private popupWindow:Lcom/join/mgps/dialog/u;

.field refreshx:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field romTypeId:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private rootLl:Landroid/widget/LinearLayout;

.field selectedType:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field simulatorTagBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ClassifyGameTagBean;",
            ">;"
        }
    .end annotation
.end field

.field private simulatorstringList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sortPoint:Ljava/lang/String;

.field private stringList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field table1:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field table2:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field table3:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field title:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field title_normal_search_img:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field title_textview:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field topTitle:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private viewpageIndex:I

.field private windowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

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
    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->fragmentsList:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->stringList:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->simulatorstringList:Ljava/util/List;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->downloadedMap:Ljava/util/Map;

    .line 31
    .line 32
    new-instance v0, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->downloadingMap:Ljava/util/Map;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->windowWidth:I

    .line 41
    .line 42
    new-instance v1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->gameTagBeanList:Ljava/util/List;

    .line 48
    .line 49
    new-instance v1, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->simulatorTagBeanList:Ljava/util/List;

    .line 55
    .line 56
    iput v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->viewpageIndex:I

    .line 57
    .line 58
    const-string v0, "default"

    .line 59
    .line 60
    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->sortPoint:Ljava/lang/String;

    .line 61
    .line 62
    return-void
.end method

.method static synthetic access$002(Lcom/join/mgps/activity/ClassifyGameActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->sortPoint:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/ClassifyGameActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->stringList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method private hidePopupWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->popupWindow:Lcom/join/mgps/dialog/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dialog/u;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic j(Lcom/join/mgps/activity/ClassifyGameActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->lambda$onEventMainThread$0()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onEventMainThread$0()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->updateDownloadView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    return-object v0
.end method


# virtual methods
.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->mRpcClient:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    iput-object p0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const v0, 0x7f0a0fdf

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/join/mgps/customview/LoadingLayout;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->mLoadingLayout:Lcom/join/mgps/customview/LoadingLayout;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->getDownloadTaskInfo()V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->v(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->downloadView:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->title_normal_search_img:Landroid/widget/ImageView;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->title_textview:Landroid/widget/TextView;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->title:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    const-string v1, "window"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/view/WindowManager;

    .line 57
    .line 58
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iput v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->windowWidth:I

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->loadData()V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->refreshx:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    .line 72
    .line 73
    new-instance v1, Lcom/join/mgps/activity/ClassifyGameActivity$a;

    .line 74
    .line 75
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ClassifyGameActivity$a;-><init>(Lcom/join/mgps/activity/ClassifyGameActivity;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->setOnRefreshListener(Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$j;)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->gameTags:Ljava/util/List;

    .line 87
    .line 88
    if-eqz v1, :cond_0

    .line 89
    .line 90
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_1

    .line 99
    .line 100
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Lcom/join/mgps/dto/ClassifyGameTagBean;

    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .line 118
    .line 119
    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->gameTags:Ljava/util/List;

    .line 120
    .line 121
    :cond_1
    const-string v0, "\u6700\u65b0"

    .line 122
    .line 123
    const-string v1, "\u8bc4\u5206"

    .line 124
    .line 125
    const-string v2, "\u7efc\u5408"

    .line 126
    .line 127
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->table1:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    .line 132
    .line 133
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->setmTitles([Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->table1:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    .line 137
    .line 138
    new-instance v1, Lcom/join/mgps/activity/ClassifyGameActivity$b;

    .line 139
    .line 140
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ClassifyGameActivity$b;-><init>(Lcom/join/mgps/activity/ClassifyGameActivity;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->setOnTabSelectListener(Ls4/b;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->appbar:Lcom/google/android/material/appbar/AppBarLayout;

    .line 147
    .line 148
    new-instance v1, Lcom/join/mgps/activity/ClassifyGameActivity$c;

    .line 149
    .line 150
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ClassifyGameActivity$c;-><init>(Lcom/join/mgps/activity/ClassifyGameActivity;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 154
    .line 155
    .line 156
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

.method changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "task",
            "from"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq p2, v1, :cond_9

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq p2, v1, :cond_8

    .line 13
    .line 14
    const/4 v1, 0x5

    .line 15
    if-eq p2, v1, :cond_6

    .line 16
    .line 17
    const/4 v1, 0x6

    .line 18
    if-eq p2, v1, :cond_5

    .line 19
    .line 20
    const/4 v1, 0x7

    .line 21
    if-eq p2, v1, :cond_3

    .line 22
    .line 23
    const/16 v1, 0xa

    .line 24
    .line 25
    if-eq p2, v1, :cond_1

    .line 26
    .line 27
    const/16 p1, 0xb

    .line 28
    .line 29
    if-eq p2, p1, :cond_7

    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->downloadedMap:Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-nez p2, :cond_2

    .line 40
    .line 41
    iget-object p2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->downloadedMap:Ljava/util/Map;

    .line 42
    .line 43
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->downloadingMap:Ljava/util/Map;

    .line 47
    .line 48
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-nez p2, :cond_b

    .line 53
    .line 54
    iget-object p2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->downloadingMap:Ljava/util/Map;

    .line 55
    .line 56
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->downloadedMap:Ljava/util/Map;

    .line 61
    .line 62
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->downloadedMap:Ljava/util/Map;

    .line 69
    .line 70
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->downloadingMap:Ljava/util/Map;

    .line 74
    .line 75
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_b

    .line 80
    .line 81
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->downloadingMap:Ljava/util/Map;

    .line 82
    .line 83
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->downloadingMap:Ljava/util/Map;

    .line 88
    .line 89
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_b

    .line 94
    .line 95
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->downloadingMap:Ljava/util/Map;

    .line 96
    .line 97
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->downloadedMap:Ljava/util/Map;

    .line 102
    .line 103
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_7

    .line 108
    .line 109
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->downloadedMap:Ljava/util/Map;

    .line 110
    .line 111
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->downloadingMap:Ljava/util/Map;

    .line 115
    .line 116
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_b

    .line 121
    .line 122
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->downloadingMap:Ljava/util/Map;

    .line 123
    .line 124
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->downloadingMap:Ljava/util/Map;

    .line 129
    .line 130
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_b

    .line 135
    .line 136
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->downloadingMap:Ljava/util/Map;

    .line 137
    .line 138
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_9
    iget-object p2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->downloadedMap:Ljava/util/Map;

    .line 143
    .line 144
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    if-nez p2, :cond_a

    .line 149
    .line 150
    iget-object p2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->downloadedMap:Ljava/util/Map;

    .line 151
    .line 152
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    :cond_a
    iget-object p2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->downloadingMap:Ljava/util/Map;

    .line 156
    .line 157
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    if-nez p2, :cond_b

    .line 162
    .line 163
    iget-object p2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->downloadingMap:Ljava/util/Map;

    .line 164
    .line 165
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    :cond_b
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->updateDownloadView()V

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method changeViewPageByTitle()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->topTitle:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->stringList:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ge v0, v1, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->topTitle:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->stringList:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    :goto_1
    return-void
.end method

.method public cloesCallBack()V
    .locals 0

    return-void
.end method

.method getDownloadTaskInfo()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lq5/f;->r()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lq5/f;->q()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-lez v2, :cond_0

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->downloadedMap:Ljava/util/Map;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-lez v1, :cond_1

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 74
    .line 75
    iget-object v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->downloadingMap:Ljava/util/Map;

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->updateDownloadView()V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public getSortPoint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->sortPoint:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected hideLoadingLayout()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/join/mgps/activity/ClassifyGameActivity$h;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ClassifyGameActivity$h;-><init>(Lcom/join/mgps/activity/ClassifyGameActivity;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public loadData()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->mRpcClient:Lcom/join/mgps/rpc/e;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->gameTypeId:I

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v4, 0x2

    .line 21
    :goto_0
    iget v5, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->romTypeId:I

    .line 22
    .line 23
    if-nez v5, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move v2, v5

    .line 27
    :goto_1
    invoke-virtual {v1, v4, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getClassifyGameBean(II)Lcom/join/mgps/dto/CommonRequestBean;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/e;->h1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_6

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-ne v1, v3, :cond_6

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_6

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lcom/join/mgps/dto/ClassfyTypeBean;

    .line 58
    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    new-instance v1, Lcom/join/mgps/dto/ClassifyGameTagBean;

    .line 62
    .line 63
    invoke-direct {v1}, Lcom/join/mgps/dto/ClassifyGameTagBean;-><init>()V

    .line 64
    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ClassifyGameTagBean;->setId(I)V

    .line 68
    .line 69
    .line 70
    const-string v2, "\u5168\u90e8"

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ClassifyGameTagBean;->setTitle(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->gameTagBeanList:Ljava/util/List;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/join/mgps/dto/ClassfyTypeBean;->getGame_type()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->simulatorTagBeanList:Ljava/util/List;

    .line 85
    .line 86
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->simulatorTagBeanList:Ljava/util/List;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/join/mgps/dto/ClassfyTypeBean;->getSimulator_type()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->gameTagBeanList:Ljava/util/List;

    .line 99
    .line 100
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_2

    .line 109
    .line 110
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Lcom/join/mgps/dto/ClassifyGameTagBean;

    .line 115
    .line 116
    iget-object v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->stringList:Ljava/util/List;

    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getTitle()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->simulatorTagBeanList:Ljava/util/List;

    .line 127
    .line 128
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_3

    .line 137
    .line 138
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    check-cast v1, Lcom/join/mgps/dto/ClassifyGameTagBean;

    .line 143
    .line 144
    iget-object v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->simulatorstringList:Ljava/util/List;

    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getTitle()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->stringList:Ljava/util/List;

    .line 155
    .line 156
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-lez v0, :cond_4

    .line 161
    .line 162
    const/4 v0, 0x0

    .line 163
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ClassifyGameActivity;->showDataF(Lcom/join/mgps/dto/ClassifyGameTagBean;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->notifyDataSetChanged()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->changeViewPageByTitle()V

    .line 170
    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->showNoData()V

    .line 174
    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->showFailLayout()V

    .line 178
    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->showFailLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .line 183
    .line 184
    goto :goto_4

    .line 185
    :catch_0
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->showFailLayout()V

    .line 190
    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->showFailLayout()V

    .line 194
    .line 195
    .line 196
    :goto_4
    return-void
.end method

.method notifyDataSetChanged()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->loading_none:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->mViewpagerV4:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->hideLoadingLayout()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->popupWindow:Lcom/join/mgps/dialog/u;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dialog/u;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->A(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
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
    new-instance v1, Lcom/join/mgps/activity/g;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/g;-><init>(Lcom/join/mgps/activity/ClassifyGameActivity;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/join/kotlin/utils/DlTaskManager;->onNotifyDataSet(Lcom/join/mgps/event/r;Lkotlin/jvm/functions/Function0;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->updateDownloadView()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method selectedType()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->appbar:Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->appbar:Lcom/google/android/material/appbar/AppBarLayout;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    neg-int v2, v2

    .line 30
    if-ne v1, v2, :cond_0

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 37
    .line 38
    const/16 v1, 0x8

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method setAll()V
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

.method public setShowRefresh(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->refreshx:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->setRefreshing(Z)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->refreshx:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->setRefreshing(Z)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method showDataF(Lcom/join/mgps/dto/ClassifyGameTagBean;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classifyGameTagBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->classifyGameTagBean:Lcom/join/mgps/dto/ClassifyGameTagBean;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->classifyHotFragment:Lcom/join/mgps/activity/m;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    const-string v2, "10001"

    .line 14
    .line 15
    const-string v3, ""

    .line 16
    .line 17
    if-nez v1, :cond_9

    .line 18
    .line 19
    if-nez p1, :cond_6

    .line 20
    .line 21
    :try_start_1
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->table2:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->stringList:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    new-array v4, v4, [Ljava/lang/String;

    .line 30
    .line 31
    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, [Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->setmTitles([Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    const/4 v1, 0x0

    .line 42
    :goto_0
    iget-object v4, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->gameTagBeanList:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-ge v1, v4, :cond_1

    .line 49
    .line 50
    iget-object v4, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->gameTagBeanList:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Lcom/join/mgps/dto/ClassifyGameTagBean;

    .line 57
    .line 58
    invoke-virtual {v4}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getId()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    iget v5, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->romTypeId:I

    .line 63
    .line 64
    if-ne v4, v5, :cond_0

    .line 65
    .line 66
    iget-object v4, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->table2:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    .line 67
    .line 68
    invoke-virtual {p0, v4, v1}, Lcom/join/mgps/activity/ClassifyGameActivity;->updateTable(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;I)V

    .line 69
    .line 70
    .line 71
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->table2:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    .line 75
    .line 76
    new-instance v4, Lcom/join/mgps/activity/ClassifyGameActivity$d;

    .line 77
    .line 78
    invoke-direct {v4, p0}, Lcom/join/mgps/activity/ClassifyGameActivity$d;-><init>(Lcom/join/mgps/activity/ClassifyGameActivity;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v4}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->setOnTabSelectListener(Ls4/b;)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->table3:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    .line 85
    .line 86
    iget-object v4, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->simulatorstringList:Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    new-array v5, v5, [Ljava/lang/String;

    .line 93
    .line 94
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    check-cast v4, [Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v1, v4}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->setmTitles([Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->simulatorTagBeanList:Ljava/util/List;

    .line 104
    .line 105
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-ge p1, v1, :cond_3

    .line 110
    .line 111
    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->simulatorTagBeanList:Ljava/util/List;

    .line 112
    .line 113
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Lcom/join/mgps/dto/ClassifyGameTagBean;

    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getId()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    iget v4, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->gameTypeId:I

    .line 124
    .line 125
    if-ne v1, v4, :cond_2

    .line 126
    .line 127
    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->table3:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    .line 128
    .line 129
    invoke-virtual {p0, v1, p1}, Lcom/join/mgps/activity/ClassifyGameActivity;->updateTable(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;I)V

    .line 130
    .line 131
    .line 132
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->table3:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    .line 136
    .line 137
    new-instance v1, Lcom/join/mgps/activity/ClassifyGameActivity$e;

    .line 138
    .line 139
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ClassifyGameActivity$e;-><init>(Lcom/join/mgps/activity/ClassifyGameActivity;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->setOnTabSelectListener(Ls4/b;)V

    .line 143
    .line 144
    .line 145
    iget p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->gameTypeId:I

    .line 146
    .line 147
    if-nez p1, :cond_4

    .line 148
    .line 149
    move-object p1, v3

    .line 150
    goto :goto_2

    .line 151
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    iget v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->gameTypeId:I

    .line 157
    .line 158
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    :goto_2
    iget v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->romTypeId:I

    .line 169
    .line 170
    if-nez v1, :cond_5

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    iget v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->romTypeId:I

    .line 179
    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    :goto_3
    invoke-static {p1, v2}, Lcom/join/mgps/activity/m;->W(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/activity/m;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    iput-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->classifyHotFragment:Lcom/join/mgps/activity/m;

    .line 195
    .line 196
    goto :goto_6

    .line 197
    :cond_6
    iget p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->gameTypeId:I

    .line 198
    .line 199
    if-nez p1, :cond_7

    .line 200
    .line 201
    move-object p1, v3

    .line 202
    goto :goto_4

    .line 203
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    iget v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->gameTypeId:I

    .line 209
    .line 210
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    :goto_4
    iget v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->romTypeId:I

    .line 221
    .line 222
    if-nez v1, :cond_8

    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    iget v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->romTypeId:I

    .line 231
    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    :goto_5
    invoke-static {p1, v2}, Lcom/join/mgps/activity/m;->W(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/activity/m;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    iput-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->classifyHotFragment:Lcom/join/mgps/activity/m;

    .line 247
    .line 248
    :goto_6
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->classifyHotFragment:Lcom/join/mgps/activity/m;

    .line 249
    .line 250
    const v1, 0x7f0a0fec

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 257
    .line 258
    .line 259
    goto/16 :goto_b

    .line 260
    .line 261
    :cond_9
    if-nez p1, :cond_c

    .line 262
    .line 263
    iget p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->gameTypeId:I

    .line 264
    .line 265
    if-nez p1, :cond_a

    .line 266
    .line 267
    move-object p1, v3

    .line 268
    goto :goto_7

    .line 269
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    iget v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->gameTypeId:I

    .line 275
    .line 276
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    :goto_7
    iget v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->romTypeId:I

    .line 287
    .line 288
    if-nez v0, :cond_b

    .line 289
    .line 290
    goto :goto_8

    .line 291
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .line 295
    .line 296
    iget v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->romTypeId:I

    .line 297
    .line 298
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    :goto_8
    invoke-virtual {v1, p1, v2}, Lcom/join/mgps/activity/m;->h0(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    goto :goto_b

    .line 312
    :cond_c
    iget p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->gameTypeId:I

    .line 313
    .line 314
    if-nez p1, :cond_d

    .line 315
    .line 316
    move-object p1, v3

    .line 317
    goto :goto_9

    .line 318
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    iget v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->gameTypeId:I

    .line 324
    .line 325
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    :goto_9
    iget v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->romTypeId:I

    .line 336
    .line 337
    if-nez v0, :cond_e

    .line 338
    .line 339
    goto :goto_a

    .line 340
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .line 344
    .line 345
    iget v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->romTypeId:I

    .line 346
    .line 347
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    :goto_a
    invoke-virtual {v1, p1, v2}, Lcom/join/mgps/activity/m;->h0(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 358
    .line 359
    .line 360
    goto :goto_b

    .line 361
    :catch_0
    move-exception p1

    .line 362
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 363
    .line 364
    .line 365
    :goto_b
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->showTitleName()V

    .line 366
    .line 367
    .line 368
    return-void
.end method

.method protected showFailLayout()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/join/mgps/activity/ClassifyGameActivity$f;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ClassifyGameActivity$f;-><init>(Lcom/join/mgps/activity/ClassifyGameActivity;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method protected showLoadingLayout()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/join/mgps/activity/ClassifyGameActivity$g;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ClassifyGameActivity$g;-><init>(Lcom/join/mgps/activity/ClassifyGameActivity;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method showNoData()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->loading_none:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->mViewpagerV4:Landroid/widget/FrameLayout;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->hideLoadingLayout()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public showTitleName()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->selectedType:Landroid/widget/TextView;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->table1:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->getSelectTabName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, " \u00b7 "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->table2:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->getSelectTabName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->table3:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->getSelectTabName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->title_textview:Landroid/widget/TextView;

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->table2:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->getSelectTabName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, "."

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->table3:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->getSelectTabName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method title_normal_download_cdv()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goMyGameManagerActivity(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method title_normal_search_img()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/SearchHintActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/SearchHintActivity_$b0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lcom/papa/sim/statistic/Where;->classGame:Lcom/papa/sim/statistic/Where;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->y2(Lcom/papa/sim/statistic/Where;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method updateDownloadView()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->downloadView:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->setDownloadGameNum()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method updateTable(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "table",
            "postion"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->setItemSelected(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

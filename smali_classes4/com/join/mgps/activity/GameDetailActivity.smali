.class public Lcom/join/mgps/activity/GameDetailActivity;
.super Lcom/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GameDetailActivity$k;,
        Lcom/join/mgps/activity/GameDetailActivity$j;,
        Lcom/join/mgps/activity/GameDetailActivity$m;,
        Lcom/join/mgps/activity/GameDetailActivity$l;,
        Lcom/join/mgps/activity/GameDetailActivity$i;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0059
.end annotation


# instance fields
.field private SCROLLING:Z

.field _from:I

.field accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

.field adapter:Lcom/join/mgps/activity/GameDetailActivity$j;

.field private allDownloadGameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameListItemBean;",
            ">;"
        }
    .end annotation
.end field

.field changeModle:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field commayid:Ljava/lang/String;

.field contentView:Landroid/view/View;

.field context:Landroid/content/Context;

.field data2:Lcom/join/mgps/dto/ForumResponseGame;

.field del_game_list:Ljava/lang/String;

.field detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

.field device_id:Ljava/lang/String;

.field edit:Landroid/widget/EditText;

.field failedMessage:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field filter:[Landroid/text/InputFilter;

.field private firstVisiblePosition:I

.field fromUid:I

.field fromid:Ljava/lang/String;

.field gameid:Ljava/lang/String;

.field gameidlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field group_uid:I

.field private isExposuring:Z

.field isFinish:Z

.field isLookState:Z

.field isShowPoPo:Z

.field isc:Z

.field isloding:Z

.field islogin:Z

.field private isnoMore:Z

.field iv_back:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_nome:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_share:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private lastVisibleIndex:I

.field private linesDefault:I

.field listview:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_gameform_title:Landroid/widget/LinearLayout;

.field ll_gameform_title2:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_sub:Landroid/widget/LinearLayout;

.field loding_faile:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mPopWindow:Landroid/widget/PopupWindow;

.field main:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field manager:Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;

.field modify_game_list:Ljava/lang/String;

.field myswip:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field page:I

.field pageExtBean:Lcom/join/mgps/dto/ExtBean;

.field parentExtBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field recycleAdapter:Lcom/join/mgps/activity/GameDetailActivity$m;

.field relodingimag:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rl_back_title:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rootview:Landroid/view/View;

.field rpcForumClient:Lcom/join/mgps/rpc/b;

.field private searchDataBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameListItemBean;",
            ">;"
        }
    .end annotation
.end field

.field setNetwork:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field smv_icon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field smv_sub:Lcom/facebook/drawee/view/SimpleDraweeView;

.field strss:Ljava/lang/String;

.field textView2:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field textlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field title:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field title_game:Ljava/lang/String;

.field topBack:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_btn:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_game_title:Landroid/widget/TextView;

.field tv_game_title2:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_modify:Landroid/widget/TextView;

.field tv_modify2:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_name:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_sub_sub:Landroid/widget/TextView;

.field tv_sub_title:Landroid/widget/TextView;

.field tv_time:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field uiMode:I

.field version:Ljava/lang/String;

.field view:Landroid/view/View;

.field view2:Landroid/view/View;

.field xrecycleview:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->uiMode:I

    .line 6
    .line 7
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 10
    .line 11
    .line 12
    sget-object v2, Lcom/papa/sim/statistic/EventP$ChatId;->immersiveGameList:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget-object v2, Lcom/papa/sim/statistic/EventP$TypeCode;->page:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 33
    .line 34
    iput v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->page:I

    .line 35
    .line 36
    new-instance v1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->searchDataBeanList:Ljava/util/List;

    .line 42
    .line 43
    new-instance v1, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->allDownloadGameList:Ljava/util/List;

    .line 49
    .line 50
    const-string v1, ""

    .line 51
    .line 52
    iput-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->del_game_list:Ljava/lang/String;

    .line 53
    .line 54
    iput-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->modify_game_list:Ljava/lang/String;

    .line 55
    .line 56
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->isFinish:Z

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    iput-boolean v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->isloding:Z

    .line 60
    .line 61
    iput-boolean v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->isExposuring:Z

    .line 62
    .line 63
    iput-boolean v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->isLookState:Z

    .line 64
    .line 65
    iput-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->title_game:Ljava/lang/String;

    .line 66
    .line 67
    iput-boolean v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->isnoMore:Z

    .line 68
    .line 69
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->islogin:Z

    .line 70
    .line 71
    iput-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->strss:Ljava/lang/String;

    .line 72
    .line 73
    iput-boolean v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->isc:Z

    .line 74
    .line 75
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->isShowPoPo:Z

    .line 76
    .line 77
    iput v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->lastVisibleIndex:I

    .line 78
    .line 79
    iput v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->firstVisiblePosition:I

    .line 80
    .line 81
    iput-boolean v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->SCROLLING:Z

    .line 82
    .line 83
    iput v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->linesDefault:I

    .line 84
    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/GameDetailActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameDetailActivity;->updateBackground(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/GameDetailActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameDetailActivity;->searchDataBeanList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lcom/join/mgps/activity/GameDetailActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/GameDetailActivity;->isnoMore:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1100(Lcom/join/mgps/activity/GameDetailActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/GameDetailActivity;->linesDefault:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1102(Lcom/join/mgps/activity/GameDetailActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->linesDefault:I

    .line 2
    .line 3
    return p1
.end method

.method private expDiscountGame()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->isExposuring:Z

    .line 3
    .line 4
    if-nez v1, :cond_2

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->isExposuring:Z

    .line 8
    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-gt v3, v2, :cond_2

    .line 17
    .line 18
    iget-object v4, p0, Lcom/join/mgps/activity/GameDetailActivity;->searchDataBeanList:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Lcom/join/mgps/dto/GameListItemBean;

    .line 25
    .line 26
    invoke-virtual {v4}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExposure()Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-nez v5, :cond_1

    .line 31
    .line 32
    invoke-virtual {v4, v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setExposure(Z)V

    .line 33
    .line 34
    .line 35
    invoke-static {v4}, Lcom/join/mgps/Util/UtilsMy;->o2(Lcom/join/mgps/dto/CollectionBeanSub;)Z

    .line 36
    .line 37
    .line 38
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    :try_start_1
    new-instance v5, Lcom/papa/sim/statistic/Ext;

    .line 42
    .line 43
    invoke-direct {v5}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v6, "discount_game"

    .line 47
    .line 48
    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/Ext;->setResultCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/Ext;->setScenesCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 60
    .line 61
    .line 62
    new-instance v6, Lcom/papa/sim/statistic/Data;

    .line 63
    .line 64
    invoke-direct {v6}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-virtual {v6, v7}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 72
    .line 73
    .line 74
    iget-object v7, p0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 75
    .line 76
    invoke-static {v7}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    sget-object v8, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 81
    .line 82
    invoke-virtual {v7, v8, v5, v6}, Lcom/papa/sim/statistic/t;->Y(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catch_0
    move-exception v5

    .line 87
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    .line 89
    .line 90
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 91
    .line 92
    invoke-static {v5}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    sget-object v6, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 97
    .line 98
    invoke-virtual {v4}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v5, v6, v4}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    .line 112
    .line 113
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catchall_0
    move-exception v1

    .line 117
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->isExposuring:Z

    .line 118
    .line 119
    throw v1

    .line 120
    :catch_1
    :cond_2
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->isExposuring:Z

    .line 121
    .line 122
    return-void
.end method

.method private getStateBar3()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "dimen"

    .line 6
    .line 7
    const-string v2, "android"

    .line 8
    .line 9
    const-string v3, "status_bar_height"

    .line 10
    .line 11
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0
.end method

.method public static synthetic k(Lcom/join/mgps/activity/GameDetailActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameDetailActivity;->expDiscountGame()V

    return-void
.end method

.method public static synthetic l(Lcom/join/mgps/activity/GameDetailActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameDetailActivity;->lambda$onEventMainThread$0()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onEventMainThread$0()Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->allDownloadGameList:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GameDetailActivity;->updateDownStateList(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->adapter:Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->recycleAdapter:Lcom/join/mgps/activity/GameDetailActivity$m;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return-object v0
.end method

.method private showPopmenu(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootview"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->mPopWindow:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    const/16 v1, 0x51

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static toUtf8(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    return-object v1
.end method

.method private updateBackground(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->searchDataBeanList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->searchDataBeanList:Ljava/util/List;

    .line 10
    .line 11
    mul-int/lit8 p1, p1, 0x2

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/join/mgps/dto/GameListItemBean;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListItemBean;->getBg_color_tag_type()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    packed-switch v0, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :pswitch_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->main:Landroid/widget/LinearLayout;

    .line 28
    .line 29
    const v1, 0x7f08062a

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->main:Landroid/widget/LinearLayout;

    .line 37
    .line 38
    const v1, 0x7f08062d

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :pswitch_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->main:Landroid/widget/LinearLayout;

    .line 46
    .line 47
    const v1, 0x7f080629

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->main:Landroid/widget/LinearLayout;

    .line 55
    .line 56
    const v1, 0x7f080627

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :pswitch_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->main:Landroid/widget/LinearLayout;

    .line 64
    .line 65
    const v1, 0x7f080628

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :pswitch_5
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->main:Landroid/widget/LinearLayout;

    .line 73
    .line 74
    const v1, 0x7f080626

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :pswitch_6
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->main:Landroid/widget/LinearLayout;

    .line 82
    .line 83
    const v1, 0x7f08062b

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :pswitch_7
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->main:Landroid/widget/LinearLayout;

    .line 91
    .line 92
    const v1, 0x7f08062c

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :pswitch_8
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->main:Landroid/widget/LinearLayout;

    .line 100
    .line 101
    const v1, 0x7f080625

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 105
    .line 106
    .line 107
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-lez v0, :cond_0

    .line 122
    .line 123
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->topBack:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Lcom/facebook/drawee/generic/a;

    .line 130
    .line 131
    sget-object v1, Lcom/facebook/drawee/drawable/s$c;->j:Lcom/facebook/drawee/drawable/s$c;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/a;->y(Lcom/facebook/drawee/drawable/s$c;)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->topBack:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    check-cast v0, Lcom/facebook/drawee/generic/a;

    .line 143
    .line 144
    new-instance v1, Landroid/graphics/PointF;

    .line 145
    .line 146
    const/high16 v2, 0x3f000000    # 0.5f

    .line 147
    .line 148
    const/4 v3, 0x0

    .line 149
    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/a;->x(Landroid/graphics/PointF;)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->topBack:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    const/4 v1, 0x0

    .line 162
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    check-cast p1, Lcom/join/mgps/dto/DetialShowImageBean;

    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 181
    .line 182
    .line 183
    :cond_0
    return-void

    .line 184
    nop

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
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

.method private updateDownStateList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "SearchDataBeanList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameListItemBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/join/mgps/dto/GameListItemBean;

    .line 25
    .line 26
    sget-object v1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    :goto_1
    return-void
.end method

.method private updateProgressPartly()V
    .locals 14

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    :try_start_0
    iget v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->firstVisiblePosition:I

    .line 5
    .line 6
    if-ltz v2, :cond_6

    .line 7
    .line 8
    iget v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->lastVisibleIndex:I

    .line 9
    .line 10
    iget-object v3, p0, Lcom/join/mgps/activity/GameDetailActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 11
    .line 12
    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v2, v3, :cond_6

    .line 17
    .line 18
    iget v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->firstVisiblePosition:I

    .line 19
    .line 20
    :goto_0
    iget v3, p0, Lcom/join/mgps/activity/GameDetailActivity;->lastVisibleIndex:I

    .line 21
    .line 22
    if-gt v2, v3, :cond_6

    .line 23
    .line 24
    iget-object v3, p0, Lcom/join/mgps/activity/GameDetailActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/join/mgps/dto/GameListItemBean;

    .line 31
    .line 32
    if-nez v3, :cond_0

    .line 33
    .line 34
    goto/16 :goto_3

    .line 35
    .line 36
    :cond_0
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameListItemBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-eqz v3, :cond_5

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eq v4, v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-ne v4, v0, :cond_5

    .line 53
    .line 54
    :cond_1
    iget-object v4, p0, Lcom/join/mgps/activity/GameDetailActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 55
    .line 56
    iget v5, p0, Lcom/join/mgps/activity/GameDetailActivity;->firstVisiblePosition:I

    .line 57
    .line 58
    sub-int v5, v2, v5

    .line 59
    .line 60
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    instance-of v5, v5, Lcom/join/mgps/activity/GameDetailActivity$k;

    .line 69
    .line 70
    if-eqz v5, :cond_5

    .line 71
    .line 72
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Lcom/join/mgps/activity/GameDetailActivity$k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    .line 78
    :try_start_1
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {v5, v6}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    if-nez v5, :cond_2

    .line 91
    .line 92
    return-void

    .line 93
    :cond_2
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 98
    .line 99
    .line 100
    move-result-wide v6

    .line 101
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 102
    .line 103
    mul-double v6, v6, v8

    .line 104
    .line 105
    mul-double v6, v6, v8

    .line 106
    .line 107
    double-to-long v6, v6

    .line 108
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 109
    .line 110
    .line 111
    move-result-wide v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    const-wide/16 v10, 0x0

    .line 113
    .line 114
    const-string v12, "/"

    .line 115
    .line 116
    cmp-long v13, v8, v10

    .line 117
    .line 118
    if-nez v13, :cond_3

    .line 119
    .line 120
    :try_start_2
    iget-object v8, v4, Lcom/join/mgps/activity/GameDetailActivity$k;->k:Landroid/widget/TextView;

    .line 121
    .line 122
    new-instance v9, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 128
    .line 129
    .line 130
    move-result-wide v10

    .line 131
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_3
    iget-object v8, v4, Lcom/join/mgps/activity/GameDetailActivity$k;->k:Landroid/widget/TextView;

    .line 157
    .line 158
    new-instance v9, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 164
    .line 165
    .line 166
    move-result-wide v10

    .line 167
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    :goto_1
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    if-ne v6, v0, :cond_4

    .line 196
    .line 197
    iget-object v6, v4, Lcom/join/mgps/activity/GameDetailActivity$k;->c:Landroid/widget/ProgressBar;

    .line 198
    .line 199
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 200
    .line 201
    .line 202
    move-result-wide v7

    .line 203
    long-to-int v8, v7

    .line 204
    invoke-virtual {v6, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_4
    iget-object v6, v4, Lcom/join/mgps/activity/GameDetailActivity$k;->d:Landroid/widget/ProgressBar;

    .line 209
    .line 210
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 211
    .line 212
    .line 213
    move-result-wide v7

    .line 214
    long-to-int v8, v7

    .line 215
    invoke-virtual {v6, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 216
    .line 217
    .line 218
    :goto_2
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    if-ne v3, v1, :cond_5

    .line 223
    .line 224
    iget-object v3, v4, Lcom/join/mgps/activity/GameDetailActivity$k;->n:Landroid/widget/TextView;

    .line 225
    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v5, "/S"

    .line 239
    .line 240
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 248
    .line 249
    .line 250
    goto :goto_3

    .line 251
    :catch_0
    move-exception v3

    .line 252
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 253
    .line 254
    .line 255
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 256
    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    :catch_1
    move-exception v2

    .line 260
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 261
    .line 262
    .line 263
    :cond_6
    :try_start_4
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->xrecycleview:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 264
    .line 265
    if-eqz v2, :cond_9

    .line 266
    .line 267
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->manager:Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;

    .line 268
    .line 269
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    if-gez v2, :cond_7

    .line 274
    .line 275
    return-void

    .line 276
    :cond_7
    iget-object v3, p0, Lcom/join/mgps/activity/GameDetailActivity;->searchDataBeanList:Ljava/util/List;

    .line 277
    .line 278
    mul-int/lit8 v2, v2, 0x2

    .line 279
    .line 280
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    check-cast v2, Lcom/join/mgps/dto/GameListItemBean;

    .line 285
    .line 286
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameListItemBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    if-eqz v2, :cond_9

    .line 291
    .line 292
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 293
    .line 294
    .line 295
    move-result v3

    .line 296
    if-eq v3, v1, :cond_8

    .line 297
    .line 298
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    if-ne v1, v0, :cond_9

    .line 303
    .line 304
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->xrecycleview:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 305
    .line 306
    const/4 v1, 0x0

    .line 307
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    if-eqz v0, :cond_9

    .line 312
    .line 313
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->xrecycleview:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 314
    .line 315
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    if-eqz v1, :cond_9

    .line 320
    .line 321
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->xrecycleview:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 322
    .line 323
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    check-cast v0, Lcom/join/mgps/activity/GameDetailActivity$l;

    .line 328
    .line 329
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    invoke-virtual {v1, v2}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    iget-object v2, v0, Lcom/join/mgps/activity/GameDetailActivity$l;->h:Landroid/widget/TextView;

    .line 342
    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 349
    .line 350
    .line 351
    move-result-wide v4

    .line 352
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    const-string v1, "%"

    .line 356
    .line 357
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    .line 366
    .line 367
    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity$l;->p:Landroid/widget/ImageView;

    .line 368
    .line 369
    const v1, 0x7f08049d

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 373
    .line 374
    .line 375
    goto :goto_4

    .line 376
    :catch_2
    move-exception v0

    .line 377
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 378
    .line 379
    .line 380
    :cond_9
    :goto_4
    return-void
.end method


# virtual methods
.method AfterView()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

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
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->main:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/join/mgps/activity/GameDetailActivity;->getStateBar3()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 18
    .line 19
    .line 20
    iput-object p0, p0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "fromid"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->fromid:Ljava/lang/String;

    .line 33
    .line 34
    const-string v1, "_from"

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iput v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->_from:I

    .line 41
    .line 42
    const-string v1, "groupuid"

    .line 43
    .line 44
    const/16 v3, 0x6f

    .line 45
    .line 46
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    iput v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->group_uid:I

    .line 51
    .line 52
    const-string v1, "gameid"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iput-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->gameid:Ljava/lang/String;

    .line 59
    .line 60
    const-string v1, "company_id"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->commayid:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->c0()Lcom/join/mgps/rpc/b;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->rpcForumClient:Lcom/join/mgps/rpc/b;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 75
    .line 76
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 85
    .line 86
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->textView2:Landroid/widget/TextView;

    .line 94
    .line 95
    const/4 v1, -0x1

    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->failedMessage:Landroid/widget/TextView;

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    .line 103
    .line 104
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 105
    .line 106
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetailActivity$j;-><init>(Lcom/join/mgps/activity/GameDetailActivity;)V

    .line 107
    .line 108
    .line 109
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->adapter:Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 110
    .line 111
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 112
    .line 113
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 117
    .line 118
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 122
    .line 123
    const/4 v1, 0x6

    .line 124
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetailActivity;->GetData()V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 131
    .line 132
    new-instance v1, Lcom/join/mgps/activity/GameDetailActivity$a;

    .line 133
    .line 134
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameDetailActivity$a;-><init>(Lcom/join/mgps/activity/GameDetailActivity;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 138
    .line 139
    .line 140
    new-instance v0, Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .line 144
    .line 145
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->textlist:Ljava/util/List;

    .line 146
    .line 147
    new-instance v0, Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .line 151
    .line 152
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->gameidlist:Ljava/util/List;

    .line 153
    .line 154
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_modify2:Landroid/widget/TextView;

    .line 155
    .line 156
    new-instance v1, Lcom/join/mgps/activity/GameDetailActivity$b;

    .line 157
    .line 158
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameDetailActivity$b;-><init>(Lcom/join/mgps/activity/GameDetailActivity;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    .line 163
    .line 164
    new-instance v0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;

    .line 165
    .line 166
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 167
    .line 168
    const/4 v3, 0x1

    .line 169
    invoke-direct {v0, v1, v3}, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 170
    .line 171
    .line 172
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->manager:Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;

    .line 173
    .line 174
    new-instance v1, Lcom/join/mgps/activity/GameDetailActivity$c;

    .line 175
    .line 176
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameDetailActivity$c;-><init>(Lcom/join/mgps/activity/GameDetailActivity;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v1}, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->f(Lcom/dingmouren/layoutmanagergroup/viewpager/a;)V

    .line 180
    .line 181
    .line 182
    new-instance v0, Lcom/join/mgps/activity/GameDetailActivity$m;

    .line 183
    .line 184
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GameDetailActivity$m;-><init>(Lcom/join/mgps/activity/GameDetailActivity;)V

    .line 185
    .line 186
    .line 187
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->recycleAdapter:Lcom/join/mgps/activity/GameDetailActivity$m;

    .line 188
    .line 189
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->xrecycleview:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 190
    .line 191
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->manager:Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->xrecycleview:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 197
    .line 198
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->recycleAdapter:Lcom/join/mgps/activity/GameDetailActivity$m;

    .line 199
    .line 200
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 201
    .line 202
    .line 203
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->xrecycleview:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 204
    .line 205
    invoke-virtual {v0, v3}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingMoreEnabled(Z)V

    .line 206
    .line 207
    .line 208
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->xrecycleview:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 209
    .line 210
    invoke-virtual {v0, v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setPullRefreshEnabled(Z)V

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->xrecycleview:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 214
    .line 215
    const/16 v1, 0xa

    .line 216
    .line 217
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setPreLoadCount(I)V

    .line 218
    .line 219
    .line 220
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->xrecycleview:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 221
    .line 222
    new-instance v1, Lcom/join/mgps/activity/GameDetailActivity$d;

    .line 223
    .line 224
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameDetailActivity$d;-><init>(Lcom/join/mgps/activity/GameDetailActivity;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->main:Landroid/widget/LinearLayout;

    .line 231
    .line 232
    const v1, 0x7f080625

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 236
    .line 237
    .line 238
    return-void
.end method

.method DelectLocaleGame(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->searchDataBeanList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->searchDataBeanList:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->searchDataBeanList:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->adapter:Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method GetCopyData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collectionBeanSubs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameListItemBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->page:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->searchDataBeanList:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->searchDataBeanList:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->allDownloadGameList:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->adapter:Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/join/mgps/dto/GameListItemBean;

    .line 46
    .line 47
    iget v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->_from:I

    .line 48
    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    const/16 v2, 0x66

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 54
    .line 55
    .line 56
    const/16 v2, 0x6f

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 59
    .line 60
    .line 61
    iput v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->_from:I

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 65
    .line 66
    .line 67
    iget v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->_from:I

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 70
    .line 71
    .line 72
    :goto_1
    invoke-virtual {v0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    iget-object v3, p0, Lcom/join/mgps/activity/GameDetailActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 79
    .line 80
    .line 81
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->searchDataBeanList:Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->allDownloadGameList:Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    new-instance v2, Lcom/join/mgps/dto/GameListItemBean;

    .line 92
    .line 93
    invoke-direct {v2}, Lcom/join/mgps/dto/GameListItemBean;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CollectionBeanSub;->setPic_info(Ljava/util/List;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_position()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/CollectionBeanSub;->setPic_position(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/GameListItemBean;->setItemType(I)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->searchDataBeanList:Ljava/util/List;

    .line 114
    .line 115
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    const/4 p1, 0x0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->title:Landroid/widget/TextView;

    .line 121
    .line 122
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 123
    .line 124
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getTitle()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->topBack:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 132
    .line 133
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->searchDataBeanList:Ljava/util/List;

    .line 134
    .line 135
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    check-cast v2, Lcom/join/mgps/dto/GameListItemBean;

    .line 140
    .line 141
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    check-cast v2, Lcom/join/mgps/dto/DetialShowImageBean;

    .line 150
    .line 151
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    sget-object v3, Lcom/facebook/drawee/drawable/s$c;->j:Lcom/facebook/drawee/drawable/s$c;

    .line 160
    .line 161
    invoke-static {v0, v2, v3}, Lcom/join/android/app/common/utils/l;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :catch_0
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 167
    .line 168
    .line 169
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->adapter:Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 170
    .line 171
    if-eqz v0, :cond_3

    .line 172
    .line 173
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 174
    .line 175
    .line 176
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->recycleAdapter:Lcom/join/mgps/activity/GameDetailActivity$m;

    .line 177
    .line 178
    if-eqz v0, :cond_4

    .line 179
    .line 180
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 181
    .line 182
    .line 183
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->xrecycleview:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->loadMoreComplete()V

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->allDownloadGameList:Ljava/util/List;

    .line 189
    .line 190
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GameDetailActivity;->updateDownStateList(Ljava/util/List;)V

    .line 191
    .line 192
    .line 193
    iget v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->page:I

    .line 194
    .line 195
    if-ne v0, v1, :cond_5

    .line 196
    .line 197
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameDetailActivity;->updateBackground(I)V

    .line 198
    .line 199
    .line 200
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->xrecycleview:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 201
    .line 202
    new-instance v0, Lcom/join/mgps/activity/u1;

    .line 203
    .line 204
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/u1;-><init>(Lcom/join/mgps/activity/GameDetailActivity;)V

    .line 205
    .line 206
    .line 207
    const-wide/16 v1, 0x1f4

    .line 208
    .line 209
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    .line 211
    .line 212
    return-void
.end method

.method GetData()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "gamelist  "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "loadmore 3333"

    .line 5
    .line 6
    invoke-static {v0, v2}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iput-boolean v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->isloding:Z

    .line 11
    .line 12
    iget-object v3, p0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v3}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_9

    .line 19
    .line 20
    iget v3, p0, Lcom/join/mgps/activity/GameDetailActivity;->page:I

    .line 21
    .line 22
    if-ne v3, v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetailActivity;->showLoding()V

    .line 25
    .line 26
    .line 27
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v4, p0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {v4}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const/4 v5, 0x2

    .line 39
    if-eqz v4, :cond_7

    .line 40
    .line 41
    const-string v4, ""

    .line 42
    .line 43
    iput-object v4, p0, Lcom/join/mgps/activity/GameDetailActivity;->device_id:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v4, p0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lcom/join/mgps/Util/RequestBeanUtil;->getVersionAndVersionName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    iput-object v4, p0, Lcom/join/mgps/activity/GameDetailActivity;->version:Ljava/lang/String;

    .line 55
    .line 56
    new-instance v4, Lorg/springframework/util/LinkedMultiValueMap;

    .line 57
    .line 58
    invoke-direct {v4}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v6, "uid"

    .line 62
    .line 63
    iget-object v7, p0, Lcom/join/mgps/activity/GameDetailActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 64
    .line 65
    invoke-virtual {v7}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-virtual {v4, v6, v7}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    const-string v6, "token"

    .line 77
    .line 78
    iget-object v7, p0, Lcom/join/mgps/activity/GameDetailActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 79
    .line 80
    invoke-virtual {v7}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-virtual {v4, v6, v7}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    const-string v6, "group_id"

    .line 88
    .line 89
    iget-object v7, p0, Lcom/join/mgps/activity/GameDetailActivity;->fromid:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v4, v6, v7}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    const-string v6, "group_uid"

    .line 95
    .line 96
    iget v7, p0, Lcom/join/mgps/activity/GameDetailActivity;->group_uid:I

    .line 97
    .line 98
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-virtual {v4, v6, v7}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    const-string v6, "page"

    .line 106
    .line 107
    iget v7, p0, Lcom/join/mgps/activity/GameDetailActivity;->page:I

    .line 108
    .line 109
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    invoke-virtual {v4, v6, v7}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    const-string v6, "device_id"

    .line 117
    .line 118
    iget-object v7, p0, Lcom/join/mgps/activity/GameDetailActivity;->device_id:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v4, v6, v7}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    const-string v6, "version"

    .line 124
    .line 125
    iget-object v7, p0, Lcom/join/mgps/activity/GameDetailActivity;->version:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v4, v6, v7}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    new-instance v6, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v7, "loadmore 44444  page="

    .line 136
    .line 137
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget v7, p0, Lcom/join/mgps/activity/GameDetailActivity;->page:I

    .line 141
    .line 142
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-static {v0, v6}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object v6, p0, Lcom/join/mgps/activity/GameDetailActivity;->rpcForumClient:Lcom/join/mgps/rpc/b;

    .line 160
    .line 161
    invoke-interface {v6, v4}, Lcom/join/mgps/rpc/b;->u(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponseGame;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumResponseGame;->getData()Lcom/join/mgps/dto/ForumResponseGame$DataBean;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    if-eqz v6, :cond_1

    .line 170
    .line 171
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumResponseGame;->getData()Lcom/join/mgps/dto/ForumResponseGame$DataBean;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumResponseGame$DataBean;->getDetails()Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    if-eqz v6, :cond_1

    .line 180
    .line 181
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumResponseGame;->getData()Lcom/join/mgps/dto/ForumResponseGame$DataBean;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumResponseGame$DataBean;->getDetails()Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    iput-object v6, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 190
    .line 191
    iget-object v6, p0, Lcom/join/mgps/activity/GameDetailActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 192
    .line 193
    invoke-virtual {v6}, Lcom/join/mgps/dto/ExtBean;->hasExplore()Z

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    if-nez v6, :cond_1

    .line 198
    .line 199
    iget-object v6, p0, Lcom/join/mgps/activity/GameDetailActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 200
    .line 201
    iget-object v7, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 202
    .line 203
    invoke-virtual {v7}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getTitle()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v7

    .line 207
    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/ExtBean;->setKeyword(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    const-string v7, "10011"

    .line 212
    .line 213
    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 214
    .line 215
    .line 216
    iget-object v6, p0, Lcom/join/mgps/activity/GameDetailActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 217
    .line 218
    iget-object v7, p0, Lcom/join/mgps/activity/GameDetailActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 219
    .line 220
    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 221
    .line 222
    .line 223
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    sget-object v7, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 228
    .line 229
    iget-object v8, p0, Lcom/join/mgps/activity/GameDetailActivity;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 230
    .line 231
    invoke-virtual {v8}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    invoke-virtual {v8}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 236
    .line 237
    .line 238
    move-result-object v8

    .line 239
    invoke-virtual {v8}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    invoke-virtual {v6, v7, v8}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 244
    .line 245
    .line 246
    :cond_1
    iget v6, p0, Lcom/join/mgps/activity/GameDetailActivity;->page:I

    .line 247
    .line 248
    add-int/2addr v6, v2

    .line 249
    iput v6, p0, Lcom/join/mgps/activity/GameDetailActivity;->page:I

    .line 250
    .line 251
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumResponseGame;->getError()I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-nez v2, :cond_5

    .line 256
    .line 257
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumResponseGame;->getData()Lcom/join/mgps/dto/ForumResponseGame$DataBean;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    if-eqz v2, :cond_5

    .line 262
    .line 263
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumResponseGame;->getData()Lcom/join/mgps/dto/ForumResponseGame$DataBean;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    if-eqz v2, :cond_5

    .line 268
    .line 269
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumResponseGame;->getData()Lcom/join/mgps/dto/ForumResponseGame$DataBean;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponseGame$DataBean;->getGame_list()Ljava/util/List;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    if-lez v2, :cond_5

    .line 282
    .line 283
    iget v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->page:I

    .line 284
    .line 285
    if-ne v2, v5, :cond_2

    .line 286
    .line 287
    iput-object v4, p0, Lcom/join/mgps/activity/GameDetailActivity;->data2:Lcom/join/mgps/dto/ForumResponseGame;

    .line 288
    .line 289
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetailActivity;->setHeadView()V

    .line 290
    .line 291
    .line 292
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetailActivity;->hideLoadingView()V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetailActivity;->updateListHeadAndFoot()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetailActivity;->setRlModify()V

    .line 299
    .line 300
    .line 301
    const/4 v2, 0x0

    .line 302
    :goto_0
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumResponseGame;->getData()Lcom/join/mgps/dto/ForumResponseGame$DataBean;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumResponseGame$DataBean;->getGame_list()Ljava/util/List;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 311
    .line 312
    .line 313
    move-result v5

    .line 314
    if-ge v2, v5, :cond_3

    .line 315
    .line 316
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumResponseGame;->getData()Lcom/join/mgps/dto/ForumResponseGame$DataBean;

    .line 317
    .line 318
    .line 319
    move-result-object v5

    .line 320
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumResponseGame$DataBean;->getGame_list()Ljava/util/List;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v5

    .line 328
    check-cast v5, Lcom/join/mgps/dto/GameListItemBean;

    .line 329
    .line 330
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    add-int/lit8 v2, v2, 0x1

    .line 334
    .line 335
    goto :goto_0

    .line 336
    :cond_3
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumResponseGame;->getData()Lcom/join/mgps/dto/ForumResponseGame$DataBean;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponseGame$DataBean;->getGame_list()Ljava/util/List;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    if-nez v2, :cond_4

    .line 349
    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .line 354
    .line 355
    const-string v5, "nomore 5555  page="

    .line 356
    .line 357
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    iget v5, p0, Lcom/join/mgps/activity/GameDetailActivity;->page:I

    .line 361
    .line 362
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    invoke-static {v0, v2}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/GameDetailActivity;->upNomore(Lcom/join/mgps/dto/ForumResponseGame;)V

    .line 373
    .line 374
    .line 375
    :cond_4
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/GameDetailActivity;->GetCopyData(Ljava/util/List;)V

    .line 376
    .line 377
    .line 378
    goto :goto_1

    .line 379
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    .line 383
    .line 384
    const-string v3, "nomore 666666  json="

    .line 385
    .line 386
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    invoke-virtual {v3, v4}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    invoke-static {v0, v2}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    iget v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->page:I

    .line 408
    .line 409
    if-ne v0, v5, :cond_6

    .line 410
    .line 411
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetailActivity;->ShowNoData()V

    .line 412
    .line 413
    .line 414
    goto :goto_1

    .line 415
    :cond_6
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/GameDetailActivity;->NoDataValue(Lcom/join/mgps/dto/ForumResponseGame;)V

    .line 416
    .line 417
    .line 418
    goto :goto_1

    .line 419
    :cond_7
    iget v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->page:I

    .line 420
    .line 421
    if-ne v0, v5, :cond_8

    .line 422
    .line 423
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetailActivity;->showLodingFailed()V

    .line 424
    .line 425
    .line 426
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetailActivity;->upNomore2()V

    .line 427
    .line 428
    .line 429
    goto :goto_1

    .line 430
    :cond_9
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetailActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    .line 432
    .line 433
    goto :goto_1

    .line 434
    :catchall_0
    move-exception v0

    .line 435
    goto :goto_2

    .line 436
    :catch_0
    move-exception v0

    .line 437
    :try_start_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetailActivity;->showLodingFailed()V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    .line 442
    .line 443
    :goto_1
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->isloding:Z

    .line 444
    .line 445
    return-void

    .line 446
    :goto_2
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->isloding:Z

    .line 447
    .line 448
    throw v0
.end method

.method NoDataValue(Lcom/join/mgps/dto/ForumResponseGame;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->isnoMore:Z

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponseGame;->getData()Lcom/join/mgps/dto/ForumResponseGame$DataBean;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponseGame$DataBean;->getDetails()Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getIs_self()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v1, "0"

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->g()V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 40
    .line 41
    const-string v1, "\u7f16\u8f91"

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 47
    .line 48
    const v1, 0x7f0805e2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->setTv_btn(I)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->view:Landroid/view/View;

    .line 60
    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 66
    .line 67
    .line 68
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->recycleAdapter:Lcom/join/mgps/activity/GameDetailActivity$m;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    :goto_1
    return-void
.end method

.method Refresh()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    return-void
.end method

.method ShowNoData()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_name:Landroid/widget/TextView;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getNick_name()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_time:Landroid/widget/TextView;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getBook_count()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, "\u8ba2\u9605"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->title:Landroid/widget/TextView;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->title:Landroid/widget/TextView;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getTitle()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->ll_gameform_title2:Landroid/widget/LinearLayout;

    .line 67
    .line 68
    const/16 v2, 0x8

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->smv_icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 76
    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    iget-object v3, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getPortrait()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-static {v0, v3}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->iv_nome:Landroid/widget/LinearLayout;

    .line 89
    .line 90
    if-eqz v0, :cond_6

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->myswip:Landroid/widget/LinearLayout;

    .line 96
    .line 97
    if-eqz v0, :cond_7

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->xrecycleview:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 103
    .line 104
    if-eqz v0, :cond_8

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetailActivity;->hideLoadingView()V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 113
    .line 114
    const/4 v1, -0x1

    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getIs_self()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const-string v1, "1"

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_9

    .line 131
    .line 132
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 133
    .line 134
    const-string v1, "\u7f16\u8f91"

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 140
    .line 141
    const v1, 0x7f0805e2

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 148
    .line 149
    const/4 v1, 0x1

    .line 150
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->setTv_btn(I)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getBook_state()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_a

    .line 165
    .line 166
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 167
    .line 168
    const-string v1, "\u5df2\u8ba2\u9605"

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 174
    .line 175
    const v1, 0x7f0805e3

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 179
    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 183
    .line 184
    const/high16 v1, -0x1000000

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 190
    .line 191
    const-string v1, "+  \u8ba2\u9605"

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 197
    .line 198
    const v1, 0x7f0805e5

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 202
    .line 203
    .line 204
    :goto_0
    return-void
.end method

.method Toast(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameDetailActivity;->showToastSystem(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method UpdateData()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetailActivity;->getStringContent()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_5

    .line 13
    .line 14
    new-instance v1, Lorg/springframework/util/LinkedMultiValueMap;

    .line 15
    .line 16
    invoke-direct {v1}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "uid"

    .line 20
    .line 21
    iget-object v3, p0, Lcom/join/mgps/activity/GameDetailActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v1, v2, v3}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    const-string v2, "token"

    .line 35
    .line 36
    iget-object v3, p0, Lcom/join/mgps/activity/GameDetailActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v1, v2, v3}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    const-string v2, "group_id"

    .line 46
    .line 47
    iget-object v3, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v1, v2, v3}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->title_game:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getTitle()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->title_game:Ljava/lang/String;

    .line 72
    .line 73
    :goto_0
    const-string v3, "group_title"

    .line 74
    .line 75
    invoke-virtual {v1, v3, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->del_game_list:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_2

    .line 85
    .line 86
    move-object v2, v0

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->del_game_list:Ljava/lang/String;

    .line 89
    .line 90
    :goto_1
    iput-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->del_game_list:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->modify_game_list:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_3

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->modify_game_list:Ljava/lang/String;

    .line 102
    .line 103
    :goto_2
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->modify_game_list:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->del_game_list:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v0}, Lcom/join/mgps/activity/GameDetailActivity;->toUtf8(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->del_game_list:Ljava/lang/String;

    .line 112
    .line 113
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->modify_game_list:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {v0}, Lcom/join/mgps/activity/GameDetailActivity;->toUtf8(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->modify_game_list:Ljava/lang/String;

    .line 120
    .line 121
    const-string v0, "del_game_list"

    .line 122
    .line 123
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->del_game_list:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v1, v0, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    const-string v0, "modify_game_list"

    .line 129
    .line 130
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->modify_game_list:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v1, v0, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    const-string v0, "device_id"

    .line 136
    .line 137
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->device_id:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v1, v0, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    const-string v0, "version"

    .line 143
    .line 144
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->version:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v1, v0, v2}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->rpcForumClient:Lcom/join/mgps/rpc/b;

    .line 150
    .line 151
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/b;->b0(Ljava/util/Map;)Lcom/join/mgps/dto/GameFromBooleanBean;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromBooleanBean;->getError()I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-nez v1, :cond_4

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromBooleanBean;->getData()Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;->isState()Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    const/4 v1, 0x1

    .line 170
    if-ne v0, v1, :cond_4

    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetailActivity;->setTv_btn()V

    .line 173
    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_4
    const-string v0, "\u4fee\u6539\u5931\u8d25"

    .line 177
    .line 178
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameDetailActivity;->showToastSystem(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .line 180
    .line 181
    goto :goto_3

    .line 182
    :catch_0
    move-exception v0

    .line 183
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 184
    .line 185
    .line 186
    :cond_5
    :goto_3
    return-void
.end method

.method changeModle()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getIs_self()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "1"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getTv_btn()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->title:Landroid/widget/TextView;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-string v4, ""

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v6, 0x1

    .line 45
    const/4 v7, 0x0

    .line 46
    move-object v1, p0

    .line 47
    invoke-virtual/range {v1 .. v7}, Lcom/join/mgps/activity/GameDetailActivity;->showPopupWindow(Lcom/join/mgps/activity/GameDetailActivity$k;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/GameListItemBean;II)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->searchDataBeanList:Ljava/util/List;

    .line 52
    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->myswip:Landroid/widget/LinearLayout;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const/16 v1, 0x8

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->myswip:Landroid/widget/LinearLayout;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->xrecycleview:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->changeModle:Landroid/widget/TextView;

    .line 84
    .line 85
    const-string v1, "\u5217\u8868\u6a21\u5f0f"

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    const/4 v0, 0x1

    .line 91
    iput v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->uiMode:I

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->myswip:Landroid/widget/LinearLayout;

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->xrecycleview:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->changeModle:Landroid/widget/TextView;

    .line 105
    .line 106
    const-string v1, "\u5927\u56fe\u6a21\u5f0f"

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    const/4 v0, 0x2

    .line 112
    iput v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->uiMode:I

    .line 113
    .line 114
    :cond_4
    :goto_0
    return-void
.end method

.method cleanData()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method delectUi(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->searchDataBeanList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->searchDataBeanList:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->adapter:Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method getStringContent()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->textlist:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const-string v3, ","

    .line 10
    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v4, p0, Lcom/join/mgps/activity/GameDetailActivity;->modify_game_list:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v4, p0, Lcom/join/mgps/activity/GameDetailActivity;->textlist:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iput-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->modify_game_list:Ljava/lang/String;

    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->gameidlist:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-ge v0, v1, :cond_1

    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->del_game_list:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->gameidlist:Ljava/util/List;

    .line 65
    .line 66
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iput-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->del_game_list:Ljava/lang/String;

    .line 83
    .line 84
    add-int/lit8 v0, v0, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    const/4 v0, 0x1

    .line 88
    return v0
.end method

.method hideLoadingView()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    return-void
.end method

.method iv_back()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->isFinish:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v0, "\u8bf7\u5148\u70b9\u51fb\u5b8c\u6210"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameDetailActivity;->showToastSystem(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method iv_share()V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->isFinish:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    :try_start_0
    const-string v0, "http://anv3cjapi.5fun.com/static/game_favorites/index.html?share_id="

    .line 6
    .line 7
    new-instance v1, Lcom/join/mgps/dto/ShareToBaseBean;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/join/mgps/dto/ShareToBaseBean;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ShareToBaseBean;->setUid(I)V

    .line 19
    .line 20
    .line 21
    const-string v2, ""

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ShareToBaseBean;->setToken(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->device_id:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ShareToBaseBean;->setDevice_id(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->page:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-le v2, v3, :cond_0

    .line 35
    .line 36
    add-int/lit8 v3, v2, -0x1

    .line 37
    .line 38
    :cond_0
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ShareToBaseBean;->setPage(I)V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->version:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ShareToBaseBean;->setVersion(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->fromid:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ShareToBaseBean;->setGroup_id(I)V

    .line 57
    .line 58
    .line 59
    iget v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->group_uid:I

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ShareToBaseBean;->setGroup_uid(I)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2, v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const/4 v2, 0x2

    .line 81
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    new-instance v1, Lcom/join/mgps/dto/ShareBean;

    .line 101
    .line 102
    invoke-direct {v1}, Lcom/join/mgps/dto/ShareBean;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/ShareBean;->setQqUrl(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/ShareBean;->setqZoneShareUrl(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/ShareBean;->setWeiboShareUrl(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/ShareBean;->setWechatFriendUrl(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/ShareBean;->setWechatShareUrl(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string v0, "\u8fd9\u662f\u6211\u73cd\u85cf\u7684\u597d\u6e38\u620f\uff0c\u4e00\u8d77\u6765\u73a9\u554a~"

    .line 121
    .line 122
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/ShareBean;->setText(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 126
    .line 127
    if-eqz v0, :cond_1

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getTitle()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/ShareBean;->setTitle(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->searchDataBeanList:Ljava/util/List;

    .line 137
    .line 138
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_2

    .line 143
    .line 144
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->searchDataBeanList:Ljava/util/List;

    .line 145
    .line 146
    const/4 v2, 0x0

    .line 147
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Lcom/join/mgps/dto/GameListItemBean;

    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/ShareBean;->setImageUrl(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_2
    const-string v0, "http://ctimg.mg3721.com/upload/images/wf_ico.png?ver=2.2"

    .line 162
    .line 163
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/ShareBean;->setImageUrl(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 167
    .line 168
    invoke-static {v0, v1}, Lcom/join/mgps/Util/w;->r(Landroid/content/Context;Lcom/join/mgps/dto/ShareBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_3
    const-string v0, "\u8bf7\u5148\u70b9\u51fb\u5b8c\u6210"

    .line 178
    .line 179
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameDetailActivity;->showToastSystem(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
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
    new-instance v1, Lcom/join/mgps/activity/v1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/v1;-><init>(Lcom/join/mgps/activity/GameDetailActivity;)V

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
    iget-boolean p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->SCROLLING:Z

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/join/mgps/activity/GameDetailActivity;->updateProgressPartly()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->isFinish:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string p1, "\u8bf7\u5148\u70b9\u51fb\u5b8c\u6210"

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameDetailActivity;->showToastSystem(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->islogin:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->page:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->isnoMore:Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetailActivity;->Refresh()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetailActivity;->GetData()V

    .line 30
    .line 31
    .line 32
    :cond_0
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
            "absListView",
            "i",
            "i1",
            "i2"
        }
    .end annotation

    .line 1
    add-int/2addr p3, p2

    .line 2
    add-int/lit8 p3, p3, -0x1

    .line 3
    .line 4
    iput p3, p0, Lcom/join/mgps/activity/GameDetailActivity;->lastVisibleIndex:I

    .line 5
    .line 6
    iput p2, p0, Lcom/join/mgps/activity/GameDetailActivity;->firstVisiblePosition:I

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
            "absListView",
            "scrollState"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/GameDetailActivity;->expDiscountGame()V

    .line 4
    .line 5
    .line 6
    :cond_0
    if-eqz p2, :cond_1

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_1
    const/4 p1, 0x0

    .line 11
    :goto_0
    iput-boolean p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->SCROLLING:Z

    .line 12
    .line 13
    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->page:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->isnoMore:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetailActivity;->Refresh()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetailActivity;->GetData()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method setHeadView()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method setLookState()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->isLookState:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    :try_start_1
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->isLookState:Z

    .line 11
    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v2}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_8

    .line 19
    .line 20
    new-instance v2, Lorg/springframework/util/LinkedMultiValueMap;

    .line 21
    .line 22
    invoke-direct {v2}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Lcom/join/mgps/activity/GameDetailActivity;->gameid:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    const-string v4, ""

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    :try_start_2
    iput-object v4, p0, Lcom/join/mgps/activity/GameDetailActivity;->gameid:Ljava/lang/String;

    .line 36
    .line 37
    :cond_1
    iget-object v3, p0, Lcom/join/mgps/activity/GameDetailActivity;->commayid:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    iput-object v4, p0, Lcom/join/mgps/activity/GameDetailActivity;->commayid:Ljava/lang/String;

    .line 46
    .line 47
    :cond_2
    const-string v3, "uid"

    .line 48
    .line 49
    iget-object v4, p0, Lcom/join/mgps/activity/GameDetailActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 50
    .line 51
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v2, v3, v4}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    const-string v3, "token"

    .line 63
    .line 64
    iget-object v4, p0, Lcom/join/mgps/activity/GameDetailActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 65
    .line 66
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v2, v3, v4}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    const-string v3, "game_id"

    .line 74
    .line 75
    iget-object v4, p0, Lcom/join/mgps/activity/GameDetailActivity;->gameid:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v2, v3, v4}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    const-string v3, "company_id"

    .line 81
    .line 82
    iget-object v4, p0, Lcom/join/mgps/activity/GameDetailActivity;->commayid:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v2, v3, v4}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    const-string v3, "be_book_group_id"

    .line 88
    .line 89
    iget-object v4, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 90
    .line 91
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getId()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v2, v3, v4}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    const-string v3, "be_book_group_uid"

    .line 99
    .line 100
    iget-object v4, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 101
    .line 102
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getUid()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v2, v3, v4}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    const-string v3, "device_id"

    .line 114
    .line 115
    iget-object v4, p0, Lcom/join/mgps/activity/GameDetailActivity;->device_id:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v2, v3, v4}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    const-string v3, "version"

    .line 121
    .line 122
    iget-object v4, p0, Lcom/join/mgps/activity/GameDetailActivity;->version:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v2, v3, v4}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    iget-object v3, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 128
    .line 129
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getBook_state()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    const-string v4, "0"

    .line 134
    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    const-string v4, "Token\u5df2\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    .line 140
    .line 141
    const/16 v5, 0x2bd

    .line 142
    .line 143
    if-eqz v3, :cond_5

    .line 144
    .line 145
    :try_start_3
    iget-object v3, p0, Lcom/join/mgps/activity/GameDetailActivity;->rpcForumClient:Lcom/join/mgps/rpc/b;

    .line 146
    .line 147
    invoke-interface {v3, v2}, Lcom/join/mgps/rpc/b;->z(Ljava/util/Map;)Lcom/join/mgps/dto/GameFromBooleanBean;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromBooleanBean;->getError()I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-nez v3, :cond_3

    .line 156
    .line 157
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromBooleanBean;->getData()Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;->isState()Z

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-ne v3, v1, :cond_3

    .line 166
    .line 167
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameDetailActivity;->setLookUi(I)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_3
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromBooleanBean;->getError()I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-ne v1, v5, :cond_4

    .line 177
    .line 178
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->islogin:Z

    .line 179
    .line 180
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 185
    .line 186
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/GameDetailActivity;->showToastSystem(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 197
    .line 198
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 199
    .line 200
    .line 201
    goto :goto_0

    .line 202
    :cond_4
    const/4 v1, 0x3

    .line 203
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameDetailActivity;->setLookUi(I)V

    .line 204
    .line 205
    .line 206
    goto :goto_0

    .line 207
    :cond_5
    iget-object v3, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 208
    .line 209
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getBook_state()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    const-string v6, "1"

    .line 214
    .line 215
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-eqz v3, :cond_8

    .line 220
    .line 221
    iget-object v3, p0, Lcom/join/mgps/activity/GameDetailActivity;->rpcForumClient:Lcom/join/mgps/rpc/b;

    .line 222
    .line 223
    invoke-interface {v3, v2}, Lcom/join/mgps/rpc/b;->P(Ljava/util/Map;)Lcom/join/mgps/dto/GameFromBooleanBean;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromBooleanBean;->getError()I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    if-nez v3, :cond_6

    .line 232
    .line 233
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromBooleanBean;->getData()Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;->isState()Z

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    if-ne v3, v1, :cond_6

    .line 242
    .line 243
    const/4 v1, 0x2

    .line 244
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameDetailActivity;->setLookUi(I)V

    .line 245
    .line 246
    .line 247
    goto :goto_0

    .line 248
    :cond_6
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromBooleanBean;->getError()I

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-ne v1, v5, :cond_7

    .line 253
    .line 254
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->islogin:Z

    .line 255
    .line 256
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 261
    .line 262
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/GameDetailActivity;->showToastSystem(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 273
    .line 274
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 275
    .line 276
    .line 277
    goto :goto_0

    .line 278
    :cond_7
    const/4 v1, 0x4

    .line 279
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GameDetailActivity;->setLookUi(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 280
    .line 281
    .line 282
    goto :goto_0

    .line 283
    :catchall_0
    move-exception v1

    .line 284
    goto :goto_1

    .line 285
    :catch_0
    move-exception v1

    .line 286
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 287
    .line 288
    .line 289
    :cond_8
    :goto_0
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->isLookState:Z

    .line 290
    .line 291
    return-void

    .line 292
    :goto_1
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->isLookState:Z

    .line 293
    .line 294
    throw v1
.end method

.method setLookUi(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    .line 11
    .line 12
    const-string v0, "\u4eba\u8ba2\u9605\uff0c\u7b2c\u4e00\u65f6\u95f4\u83b7\u53d6\u65b0\u52a8\u6001"

    .line 13
    .line 14
    const-string v1, ""

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne p1, v2, :cond_2

    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 20
    .line 21
    const-string v3, "\u5df2\u8ba2\u9605"

    .line 22
    .line 23
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 27
    .line 28
    const v4, 0x7f0805e3

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 35
    .line 36
    const-string v5, "1"

    .line 37
    .line 38
    invoke-virtual {p1, v5}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->setBook_state(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string p1, "\u8ba2\u9605\u6210\u529f"

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameDetailActivity;->showToastSystem(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_sub_sub:Landroid/widget/TextView;

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_sub_sub:Landroid/widget/TextView;

    .line 54
    .line 55
    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getBook_count()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    add-int/2addr p1, v2

    .line 73
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 74
    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->setBook_count(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_sub_title:Landroid/widget/TextView;

    .line 94
    .line 95
    if-eqz v1, :cond_6

    .line 96
    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_0

    .line 116
    .line 117
    :cond_2
    const/4 v3, 0x2

    .line 118
    if-ne p1, v3, :cond_4

    .line 119
    .line 120
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 121
    .line 122
    const/high16 v3, -0x1000000

    .line 123
    .line 124
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 128
    .line 129
    const-string v4, "+  \u8ba2\u9605"

    .line 130
    .line 131
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 135
    .line 136
    const v5, 0x7f0805e5

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 143
    .line 144
    const-string v6, "0"

    .line 145
    .line 146
    invoke-virtual {p1, v6}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->setBook_state(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const-string p1, "\u53d6\u6d88\u8ba2\u9605\u6210\u529f"

    .line 150
    .line 151
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameDetailActivity;->showToastSystem(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_sub_sub:Landroid/widget/TextView;

    .line 155
    .line 156
    if-eqz p1, :cond_3

    .line 157
    .line 158
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_sub_sub:Landroid/widget/TextView;

    .line 162
    .line 163
    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_sub_sub:Landroid/widget/TextView;

    .line 167
    .line 168
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    .line 170
    .line 171
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getBook_count()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    sub-int/2addr p1, v2

    .line 186
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 187
    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->setBook_count(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_sub_title:Landroid/widget/TextView;

    .line 207
    .line 208
    if-eqz v1, :cond_6

    .line 209
    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    .line 227
    .line 228
    goto :goto_0

    .line 229
    :cond_4
    const/4 v0, 0x3

    .line 230
    if-ne p1, v0, :cond_5

    .line 231
    .line 232
    const-string p1, "\u8ba2\u9605\u5931\u8d25"

    .line 233
    .line 234
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameDetailActivity;->showToastSystem(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    goto :goto_0

    .line 238
    :cond_5
    const-string p1, "\u53d6\u6d88\u8ba2\u9605\u5931\u8d25"

    .line 239
    .line 240
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameDetailActivity;->showToastSystem(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->adapter:Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 244
    .line 245
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 246
    .line 247
    .line 248
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method setRlModify()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->rl_back_title:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->ll_gameform_title2:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->xrecycleview:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ne v0, v2, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->myswip:Landroid/widget/LinearLayout;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-ne v0, v2, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->myswip:Landroid/widget/LinearLayout;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->smv_icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->data2:Lcom/join/mgps/dto/ForumResponseGame;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponseGame;->getData()Lcom/join/mgps/dto/ForumResponseGame$DataBean;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponseGame$DataBean;->getDetails()Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getPortrait()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_name:Landroid/widget/TextView;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getNick_name()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->title:Landroid/widget/TextView;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getTitle()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getAdd_time()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_time:Landroid/widget/TextView;

    .line 86
    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getBook_count()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v2, "\u8ba2\u9605"

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 114
    .line 115
    const/4 v1, -0x1

    .line 116
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getIs_self()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const-string v1, "1"

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_1

    .line 132
    .line 133
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 134
    .line 135
    const-string v1, "\u7f16\u8f91"

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 141
    .line 142
    const v1, 0x7f0805e2

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 149
    .line 150
    const/4 v1, 0x1

    .line 151
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->setTv_btn(I)V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getBook_state()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_2

    .line 166
    .line 167
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 168
    .line 169
    const-string v1, "\u5df2\u8ba2\u9605"

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 175
    .line 176
    const v1, 0x7f0805e3

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 184
    .line 185
    const/high16 v1, -0x1000000

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 191
    .line 192
    const-string v1, "+  \u8ba2\u9605"

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 198
    .line 199
    const v1, 0x7f0805e5

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 203
    .line 204
    .line 205
    :goto_0
    return-void
.end method

.method setTv_btn()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_game_title:Landroid/widget/TextView;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->title:Landroid/widget/TextView;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->title:Landroid/widget/TextView;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getTitle()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const-string v1, ""

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->title:Landroid/widget/TextView;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getTitle()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->del_game_list:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->modify_game_list:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_3

    .line 94
    .line 95
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->textlist:Ljava/util/List;

    .line 96
    .line 97
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->gameidlist:Ljava/util/List;

    .line 101
    .line 102
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 103
    .line 104
    .line 105
    iput-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->del_game_list:Ljava/lang/String;

    .line 106
    .line 107
    iput-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->modify_game_list:Ljava/lang/String;

    .line 108
    .line 109
    const-string v0, "\u4fee\u6539\u6210\u529f"

    .line 110
    .line 111
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameDetailActivity;->showToastSystem(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const/4 v0, 0x1

    .line 115
    iput v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->page:I

    .line 116
    .line 117
    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->isnoMore:Z

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetailActivity;->Refresh()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetailActivity;->GetData()V

    .line 124
    .line 125
    .line 126
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 127
    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 131
    .line 132
    .line 133
    :cond_4
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->myswip:Landroid/widget/LinearLayout;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->xrecycleview:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    :cond_3
    return-void
.end method

.method showPopupWindow(Lcom/join/mgps/activity/GameDetailActivity$k;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/GameListItemBean;II)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "myHolder",
            "text_content",
            "gameid",
            "searchDataBean",
            "type",
            "position"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    move-object v7, p0

    .line 2
    move-object/from16 v3, p2

    .line 3
    .line 4
    const/4 v8, 0x0

    .line 5
    iput-boolean v8, v7, Lcom/join/mgps/activity/GameDetailActivity;->isShowPoPo:Z

    .line 6
    .line 7
    iget-object v0, v7, Lcom/join/mgps/activity/GameDetailActivity;->contentView:Landroid/view/View;

    .line 8
    .line 9
    const-string v1, "  "

    .line 10
    .line 11
    const/16 v2, 0x21

    .line 12
    .line 13
    const/16 v4, 0xf

    .line 14
    .line 15
    const/4 v9, 0x2

    .line 16
    const-string v10, "input_method"

    .line 17
    .line 18
    const/4 v11, 0x1

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, v7, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const v5, 0x7f0d00d3

    .line 28
    .line 29
    .line 30
    const/4 v12, 0x0

    .line 31
    invoke-virtual {v0, v5, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, v7, Lcom/join/mgps/activity/GameDetailActivity;->contentView:Landroid/view/View;

    .line 36
    .line 37
    new-instance v0, Landroid/widget/PopupWindow;

    .line 38
    .line 39
    iget-object v5, v7, Lcom/join/mgps/activity/GameDetailActivity;->contentView:Landroid/view/View;

    .line 40
    .line 41
    const/4 v6, -0x1

    .line 42
    invoke-direct {v0, v5, v6, v6, v11}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 43
    .line 44
    .line 45
    iput-object v0, v7, Lcom/join/mgps/activity/GameDetailActivity;->mPopWindow:Landroid/widget/PopupWindow;

    .line 46
    .line 47
    iget-object v0, v7, Lcom/join/mgps/activity/GameDetailActivity;->contentView:Landroid/view/View;

    .line 48
    .line 49
    const v5, 0x7f0a0558

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/widget/EditText;

    .line 57
    .line 58
    iput-object v0, v7, Lcom/join/mgps/activity/GameDetailActivity;->edit:Landroid/widget/EditText;

    .line 59
    .line 60
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setInputType(I)V

    .line 61
    .line 62
    .line 63
    new-array v0, v11, [Landroid/text/InputFilter;

    .line 64
    .line 65
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    .line 66
    .line 67
    const/16 v6, 0xc

    .line 68
    .line 69
    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 70
    .line 71
    .line 72
    aput-object v5, v0, v8

    .line 73
    .line 74
    iget-object v5, v7, Lcom/join/mgps/activity/GameDetailActivity;->edit:Landroid/widget/EditText;

    .line 75
    .line 76
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, v7, Lcom/join/mgps/activity/GameDetailActivity;->contentView:Landroid/view/View;

    .line 80
    .line 81
    const v5, 0x7f0a0ee9

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroid/widget/LinearLayout;

    .line 89
    .line 90
    new-instance v5, Lcom/join/mgps/activity/GameDetailActivity$e;

    .line 91
    .line 92
    invoke-direct {v5, p0}, Lcom/join/mgps/activity/GameDetailActivity$e;-><init>(Lcom/join/mgps/activity/GameDetailActivity;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, v7, Lcom/join/mgps/activity/GameDetailActivity;->mPopWindow:Landroid/widget/PopupWindow;

    .line 99
    .line 100
    new-instance v5, Lcom/join/mgps/activity/GameDetailActivity$f;

    .line 101
    .line 102
    invoke-direct {v5, p0}, Lcom/join/mgps/activity/GameDetailActivity$f;-><init>(Lcom/join/mgps/activity/GameDetailActivity;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 106
    .line 107
    .line 108
    new-instance v0, Landroid/text/SpannableString;

    .line 109
    .line 110
    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    .line 114
    .line 115
    invoke-direct {v5, v4, v11}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    invoke-virtual {v0, v5, v8, v4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 123
    .line 124
    .line 125
    iget-object v2, v7, Lcom/join/mgps/activity/GameDetailActivity;->edit:Landroid/widget/EditText;

    .line 126
    .line 127
    new-instance v4, Landroid/text/SpannedString;

    .line 128
    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-direct {v4, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, v7, Lcom/join/mgps/activity/GameDetailActivity;->contentView:Landroid/view/View;

    .line 151
    .line 152
    const v1, 0x7f0a028f

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    move-object v13, v0

    .line 160
    check-cast v13, Landroid/widget/Button;

    .line 161
    .line 162
    new-instance v14, Lcom/join/mgps/activity/GameDetailActivity$g;

    .line 163
    .line 164
    move-object v0, v14

    .line 165
    move-object v1, p0

    .line 166
    move/from16 v2, p5

    .line 167
    .line 168
    move-object/from16 v3, p2

    .line 169
    .line 170
    move-object/from16 v4, p3

    .line 171
    .line 172
    move-object/from16 v5, p1

    .line 173
    .line 174
    move-object/from16 v6, p4

    .line 175
    .line 176
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/GameDetailActivity$g;-><init>(Lcom/join/mgps/activity/GameDetailActivity;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/GameDetailActivity$k;Lcom/join/mgps/dto/GameListItemBean;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    .line 181
    .line 182
    iget-object v0, v7, Lcom/join/mgps/activity/GameDetailActivity;->edit:Landroid/widget/EditText;

    .line 183
    .line 184
    invoke-virtual {v0, v11}, Landroid/view/View;->setFocusable(Z)V

    .line 185
    .line 186
    .line 187
    iget-object v0, v7, Lcom/join/mgps/activity/GameDetailActivity;->mPopWindow:Landroid/widget/PopupWindow;

    .line 188
    .line 189
    invoke-virtual {v0, v11}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 190
    .line 191
    .line 192
    iget-object v0, v7, Lcom/join/mgps/activity/GameDetailActivity;->edit:Landroid/widget/EditText;

    .line 193
    .line 194
    invoke-virtual {v0, v11}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 195
    .line 196
    .line 197
    iget-object v0, v7, Lcom/join/mgps/activity/GameDetailActivity;->edit:Landroid/widget/EditText;

    .line 198
    .line 199
    invoke-virtual {v0, v11}, Landroid/view/View;->setFocusable(Z)V

    .line 200
    .line 201
    .line 202
    iget-object v0, v7, Lcom/join/mgps/activity/GameDetailActivity;->edit:Landroid/widget/EditText;

    .line 203
    .line 204
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 205
    .line 206
    .line 207
    iget-object v0, v7, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 208
    .line 209
    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 214
    .line 215
    invoke-virtual {v0, v8, v9}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    new-instance v2, Lcom/join/mgps/activity/GameDetailActivity$h;

    .line 231
    .line 232
    invoke-direct {v2, p0, v0}, Lcom/join/mgps/activity/GameDetailActivity$h;-><init>(Lcom/join/mgps/activity/GameDetailActivity;Landroid/view/View;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 236
    .line 237
    .line 238
    iget-object v0, v7, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 239
    .line 240
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    const v1, 0x7f0d0059

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v1, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    iput-object v0, v7, Lcom/join/mgps/activity/GameDetailActivity;->rootview:Landroid/view/View;

    .line 252
    .line 253
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/GameDetailActivity;->showPopmenu(Landroid/view/View;)V

    .line 254
    .line 255
    .line 256
    goto :goto_0

    .line 257
    :cond_0
    iget-object v0, v7, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 258
    .line 259
    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 264
    .line 265
    invoke-virtual {v0, v8, v9}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 266
    .line 267
    .line 268
    new-instance v0, Landroid/text/SpannableString;

    .line 269
    .line 270
    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 271
    .line 272
    .line 273
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    .line 274
    .line 275
    invoke-direct {v3, v4, v11}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    invoke-virtual {v0, v3, v8, v4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 283
    .line 284
    .line 285
    iget-object v2, v7, Lcom/join/mgps/activity/GameDetailActivity;->edit:Landroid/widget/EditText;

    .line 286
    .line 287
    new-instance v3, Landroid/text/SpannedString;

    .line 288
    .line 289
    new-instance v4, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-direct {v3, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 308
    .line 309
    .line 310
    iget-object v0, v7, Lcom/join/mgps/activity/GameDetailActivity;->mPopWindow:Landroid/widget/PopupWindow;

    .line 311
    .line 312
    iget-object v1, v7, Lcom/join/mgps/activity/GameDetailActivity;->rootview:Landroid/view/View;

    .line 313
    .line 314
    const/16 v2, 0x51

    .line 315
    .line 316
    invoke-virtual {v0, v1, v2, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 317
    .line 318
    .line 319
    :goto_0
    return-void
.end method

.method showToastSystem(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

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
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method smv_icon()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->isFinish:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "brief"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 18
    .line 19
    .line 20
    const-string v1, "0"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->fromid:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    sget-object v2, Lcom/papa/sim/statistic/Event;->clickFromUserGameList:Lcom/papa/sim/statistic/Event;

    .line 37
    .line 38
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/join/mgps/activity/CommentSelfListActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CommentSelfListActivity_$p;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getUid()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentSelfListActivity_$p;->a(I)Lcom/join/mgps/activity/CommentSelfListActivity_$p;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const-string v0, "\u8bf7\u5148\u70b9\u51fb\u5b8c\u6210"

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameDetailActivity;->showToastSystem(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void
.end method

.method public stampToDate(Ljava/lang/Long;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "MM/dd"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/Long;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    new-instance p1, Ljava/util/Date;

    .line 22
    .line 23
    invoke-direct {p1, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method tv_btn()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/f;->f(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameDetailActivity;->showToastSystem(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x0

    .line 31
    if-nez v0, :cond_d

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getIs_self()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v2, "1"

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_a

    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getTv_btn()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v2, 0x1

    .line 54
    const/16 v3, 0x8

    .line 55
    .line 56
    if-ne v0, v2, :cond_5

    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 59
    .line 60
    const-string v2, "\u5b8c\u6210"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 66
    .line 67
    const v2, 0x7f0805e4

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->setTv_btn(I)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->f()V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->g()V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_modify:Landroid/widget/TextView;

    .line 89
    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_modify2:Landroid/widget/TextView;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->isFinish:Z

    .line 101
    .line 102
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->changeModle:Landroid/widget/TextView;

    .line 103
    .line 104
    const-string v2, "\u4fee\u6539"

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->searchDataBeanList:Ljava/util/List;

    .line 110
    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_3

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->xrecycleview:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 121
    .line 122
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->myswip:Landroid/widget/LinearLayout;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_4
    :goto_0
    return-void

    .line 132
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getTv_btn()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-nez v0, :cond_9

    .line 139
    .line 140
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 141
    .line 142
    const-string v4, "\u7f16\u8f91"

    .line 143
    .line 144
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 148
    .line 149
    const v4, 0x7f0805e2

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 156
    .line 157
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->setTv_btn(I)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_modify:Landroid/widget/TextView;

    .line 161
    .line 162
    if-eqz v0, :cond_6

    .line 163
    .line 164
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 165
    .line 166
    .line 167
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_modify2:Landroid/widget/TextView;

    .line 168
    .line 169
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->q()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetailActivity;->UpdateData()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetailActivity;->Refresh()V

    .line 181
    .line 182
    .line 183
    iput-boolean v2, p0, Lcom/join/mgps/activity/GameDetailActivity;->isFinish:Z

    .line 184
    .line 185
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->changeModle:Landroid/widget/TextView;

    .line 186
    .line 187
    const-string v2, "\u5217\u8868\u6a21\u5f0f"

    .line 188
    .line 189
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->searchDataBeanList:Ljava/util/List;

    .line 193
    .line 194
    if-eqz v0, :cond_8

    .line 195
    .line 196
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-nez v0, :cond_7

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->xrecycleview:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 204
    .line 205
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    .line 207
    .line 208
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->myswip:Landroid/widget/LinearLayout;

    .line 209
    .line 210
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_8
    :goto_1
    return-void

    .line 215
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->adapter:Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 216
    .line 217
    if-eqz v0, :cond_e

    .line 218
    .line 219
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 220
    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 224
    .line 225
    const/4 v1, -0x1

    .line 226
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    .line 228
    .line 229
    iget-boolean v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->isLookState:Z

    .line 230
    .line 231
    if-nez v0, :cond_c

    .line 232
    .line 233
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 234
    .line 235
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getBook_state()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-eqz v0, :cond_b

    .line 244
    .line 245
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 246
    .line 247
    const-string v1, "+  \u8ba2\u9605"

    .line 248
    .line 249
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    .line 251
    .line 252
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 253
    .line 254
    const v1, 0x7f0805e3

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 258
    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 262
    .line 263
    const-string v1, "\u5df2\u8ba2\u9605"

    .line 264
    .line 265
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    .line 267
    .line 268
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 269
    .line 270
    const/high16 v1, -0x1000000

    .line 271
    .line 272
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    .line 274
    .line 275
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->tv_btn:Landroid/widget/TextView;

    .line 276
    .line 277
    const v1, 0x7f0805e5

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 281
    .line 282
    .line 283
    :goto_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetailActivity;->setLookState()V

    .line 284
    .line 285
    .line 286
    goto :goto_4

    .line 287
    :cond_c
    const-string v0, "\u4e0a\u6b65\u64cd\u4f5c\u5c1a\u672a\u5b8c\u6210"

    .line 288
    .line 289
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameDetailActivity;->showToastSystem(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    goto :goto_4

    .line 293
    :cond_d
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->islogin:Z

    .line 294
    .line 295
    :cond_e
    :goto_4
    return-void
.end method

.method tv_name()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->isFinish:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "brief"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 18
    .line 19
    .line 20
    const-string v1, "0"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->fromid:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    sget-object v2, Lcom/papa/sim/statistic/Event;->clickFromUserGameList:Lcom/papa/sim/statistic/Event;

    .line 37
    .line 38
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/join/mgps/activity/CommentSelfListActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CommentSelfListActivity_$p;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getUid()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentSelfListActivity_$p;->a(I)Lcom/join/mgps/activity/CommentSelfListActivity_$p;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const-string v0, "\u8bf7\u5148\u70b9\u51fb\u5b8c\u6210"

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameDetailActivity;->showToastSystem(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void
.end method

.method tv_time()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->isFinish:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "brief"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 18
    .line 19
    .line 20
    const-string v1, "0"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->fromid:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    sget-object v2, Lcom/papa/sim/statistic/Event;->clickFromUserGameList:Lcom/papa/sim/statistic/Event;

    .line 37
    .line 38
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/join/mgps/activity/CommentSelfListActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CommentSelfListActivity_$p;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getUid()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentSelfListActivity_$p;->a(I)Lcom/join/mgps/activity/CommentSelfListActivity_$p;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const-string v0, "\u8bf7\u5148\u70b9\u51fb\u5b8c\u6210"

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameDetailActivity;->showToastSystem(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void
.end method

.method upNomore(Lcom/join/mgps/dto/ForumResponseGame;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->isnoMore:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameDetailActivity;->NoDataValue(Lcom/join/mgps/dto/ForumResponseGame;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity;->recycleAdapter:Lcom/join/mgps/activity/GameDetailActivity$m;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method upNomore2()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->isnoMore:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->recycleAdapter:Lcom/join/mgps/activity/GameDetailActivity$m;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method updateListHeadAndFoot()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    iget-boolean v1, p0, Lcom/join/mgps/activity/GameDetailActivity;->isFinish:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity;->listview:Lcom/join/mgps/customview/XListView2;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method updateUi(Lcom/join/mgps/activity/GameDetailActivity$k;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "isNormal",
            "isZip"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lcom/join/mgps/activity/GameDetailActivity$k;->l(Lcom/join/mgps/activity/GameDetailActivity$k;)Landroid/widget/LinearLayout;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p1, Lcom/join/mgps/activity/GameDetailActivity$k;->d:Landroid/widget/ProgressBar;

    .line 18
    .line 19
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p1, Lcom/join/mgps/activity/GameDetailActivity$k;->c:Landroid/widget/ProgressBar;

    .line 23
    .line 24
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/join/mgps/activity/GameDetailActivity$k;->e(Lcom/join/mgps/activity/GameDetailActivity$k;)Landroid/widget/LinearLayout;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$k;->m:Landroid/widget/TextView;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    iget-object p2, p1, Lcom/join/mgps/activity/GameDetailActivity$k;->m:Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lcom/join/mgps/activity/GameDetailActivity$k;->l(Lcom/join/mgps/activity/GameDetailActivity$k;)Landroid/widget/LinearLayout;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-eqz p2, :cond_1

    .line 57
    .line 58
    iget-object p2, p1, Lcom/join/mgps/activity/GameDetailActivity$k;->d:Landroid/widget/ProgressBar;

    .line 59
    .line 60
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object p2, p1, Lcom/join/mgps/activity/GameDetailActivity$k;->c:Landroid/widget/ProgressBar;

    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/activity/GameDetailActivity$k;->c:Landroid/widget/ProgressBar;

    .line 70
    .line 71
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    iget-object p2, p1, Lcom/join/mgps/activity/GameDetailActivity$k;->d:Landroid/widget/ProgressBar;

    .line 75
    .line 76
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    :goto_0
    invoke-static {p1}, Lcom/join/mgps/activity/GameDetailActivity$k;->e(Lcom/join/mgps/activity/GameDetailActivity$k;)Landroid/widget/LinearLayout;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    :goto_1
    return-void
.end method

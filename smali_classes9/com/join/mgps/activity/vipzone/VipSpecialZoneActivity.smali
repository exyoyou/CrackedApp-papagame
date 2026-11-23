.class public Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;,
        Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;,
        Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;,
        Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipHlistHolder;,
        Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipTitleHolder;,
        Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewPagerHolder;,
        Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipHolder;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d08b7
.end annotation


# instance fields
.field private SCROLLING:Z

.field _from:I

.field _from_type:I

.field adapter:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

.field appbar:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field back:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field boardId:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field businessList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field downloadView:Lcom/join/mgps/customview/CustomerDownloadView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field filter:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field filterArr:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field filterGames:Lcom/join/mgps/customview/q0;

.field filterPw:Lcom/join/mgps/customview/s0;

.field private firstVisiblePosition:I

.field private lastVisibleIndex:I

.field loding_faile:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field manager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field page:I

.field pageview:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field screening_condition:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

.field search:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tag1:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

.field tag2:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

.field tag3:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

.field title:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field vipCenterDataMains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
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
    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->vipCenterDataMains:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->_from:I

    .line 13
    .line 14
    iput v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->_from_type:I

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->SCROLLING:Z

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    iput v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->page:I

    .line 20
    .line 21
    new-instance v1, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 22
    .line 23
    invoke-direct {v1}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->tag1:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 27
    .line 28
    new-instance v1, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 29
    .line 30
    invoke-direct {v1}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->tag2:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 34
    .line 35
    new-instance v1, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 36
    .line 37
    invoke-direct {v1}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->tag3:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 41
    .line 42
    new-instance v1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->businessList:Ljava/util/List;

    .line 48
    .line 49
    iput v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->firstVisiblePosition:I

    .line 50
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->pageview:Ljava/util/List;

    .line 57
    .line 58
    new-instance v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$5;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$5;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 64
    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->getGamelist()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$102(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->SCROLLING:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$202(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->firstVisiblePosition:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$302(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->lastVisibleIndex:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->showmainData(Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->addnewDatas(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private addnewDatas(Ljava/util/List;)V
    .locals 3
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
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 16
    .line 17
    iget v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->_from:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->_from_type:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->businessList:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    new-instance v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;

    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    invoke-direct {v1, p0, v2, v0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->vipCenterDataMains:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateDownStateList()V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->adapter:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private getData()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/join/mgps/activity/vipzone/bean/VipCenterRequestBean;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/join/mgps/activity/vipzone/bean/VipCenterRequestBean;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {v1, v3}, Lcom/join/mgps/activity/vipzone/bean/VipCenterRequestBean;->setUid(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v1, v3}, Lcom/join/mgps/activity/vipzone/bean/VipCenterRequestBean;->setUserToken(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getSecretKey()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Lcom/join/mgps/Util/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Lcom/join/mgps/Util/b;->vl(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    const/4 v2, 0x0

    .line 51
    :goto_0
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/vipzone/bean/VipCenterRequestBean;->setVip(I)V

    .line 52
    .line 53
    .line 54
    iget v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->boardId:I

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/vipzone/bean/VipCenterRequestBean;->setBoardId(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-interface {v1, v0}, Lb7/i;->Q0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method private getGamelist()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/join/mgps/activity/vipzone/bean/SpecialgamelistRequestBean;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/join/mgps/activity/vipzone/bean/SpecialgamelistRequestBean;-><init>()V

    .line 9
    .line 10
    .line 11
    iget v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->boardId:I

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/vipzone/bean/SpecialgamelistRequestBean;->setBoardId(I)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->tag1:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->getId()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/vipzone/bean/SpecialgamelistRequestBean;->setSortType(I)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->tag2:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->getId()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/vipzone/bean/SpecialgamelistRequestBean;->setGameType(I)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->tag3:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->getId()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/vipzone/bean/SpecialgamelistRequestBean;->setGameClass(I)V

    .line 41
    .line 42
    .line 43
    iget v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->page:I

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/vipzone/bean/SpecialgamelistRequestBean;->setPage(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v1, v0}, Lb7/i;->O0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    new-instance v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$4;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$4;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public static synthetic j(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->lambda$onEventMainThread$2()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->lambda$filter$1()V

    return-void
.end method

.method public static synthetic l(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->lambda$filter$0(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$filter$0(ILjava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->boardId:I

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateFrom()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->title:Landroid/widget/TextView;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->page:I

    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->reset()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->getData()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->filterGames:Lcom/join/mgps/customview/q0;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->screening_condition:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/q0;->f(Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method private synthetic lambda$filter$1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->filterArr:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private synthetic lambda$onEventMainThread$2()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateDownloadView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    return-object v0
.end method

.method private receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateDownStateList()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updatePartly()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateDownStateList()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updatePartly()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method private receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateDownStateList()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updatePartly()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateDownStateList()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updatePartly()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private showmainData(Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultbean"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->loding_faile:Landroid/view/View;

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->loding_layout:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    iput v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->page:I

    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->vipCenterDataMains:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;->getBanner()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-direct {v1, p0, v2, v3}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->vipCenterDataMains:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    new-instance v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;->getCollection_game_list()Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const/4 v3, 0x3

    .line 52
    invoke-direct {v1, p0, v3, v2}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->vipCenterDataMains:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    new-instance v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;

    .line 61
    .line 62
    const/4 v2, 0x4

    .line 63
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;->getCollection_game_list()Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-direct {v1, p0, v2, v4}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->vipCenterDataMains:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    new-instance v1, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;

    .line 76
    .line 77
    invoke-direct {v1}, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v2, "\u70ed\u95e8\u6e38\u620f"

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;->setTitle(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;

    .line 86
    .line 87
    invoke-direct {v2, p0, v3, v1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->vipCenterDataMains:Ljava/util/List;

    .line 91
    .line 92
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;->getRanking_game_list()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_1

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_1

    .line 110
    .line 111
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 116
    .line 117
    iget v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->_from:I

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 120
    .line 121
    .line 122
    iget v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->_from_type:I

    .line 123
    .line 124
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 125
    .line 126
    .line 127
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->businessList:Ljava/util/List;

    .line 128
    .line 129
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    new-instance v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;

    .line 133
    .line 134
    invoke-direct {v2, p0, v0, v1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->vipCenterDataMains:Ljava/util/List;

    .line 138
    .line 139
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateDownStateList()V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->adapter:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    .line 147
    .line 148
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method private updateDownStateList()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->businessList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 18
    .line 19
    sget-object v2, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method private updateFrom()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->boardId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    const/16 v0, 0x3650

    .line 8
    .line 9
    iput v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->_from:I

    .line 10
    .line 11
    iput v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->_from_type:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :pswitch_1
    const/16 v0, 0x364f

    .line 15
    .line 16
    iput v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->_from:I

    .line 17
    .line 18
    iput v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->_from_type:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_2
    const/16 v0, 0x364e

    .line 22
    .line 23
    iput v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->_from:I

    .line 24
    .line 25
    iput v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->_from_type:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_3
    const/16 v0, 0x364d

    .line 29
    .line 30
    iput v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->_from:I

    .line 31
    .line 32
    iput v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->_from_type:I

    .line 33
    .line 34
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sget-object v1, Lcom/papa/sim/statistic/Event;->visitMemberpre:Lcom/papa/sim/statistic/Event;

    .line 41
    .line 42
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 43
    .line 44
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    iget v4, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->boardId:I

    .line 53
    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v4, ""

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updatePartly()V
    .locals 4

    .line 1
    :try_start_0
    iget v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->firstVisiblePosition:I

    .line 2
    .line 3
    :goto_0
    iget v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->lastVisibleIndex:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_3

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->adapter:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->getItemCount()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    if-gez v0, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->vipCenterDataMains:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;->getType()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x2

    .line 32
    if-ne v2, v3, :cond_2

    .line 33
    .line 34
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 35
    .line 36
    iget v3, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->firstVisiblePosition:I

    .line 37
    .line 38
    sub-int v3, v0, v3

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    iget-object v3, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 47
    .line 48
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    iget-object v3, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 55
    .line 56
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;

    .line 61
    .line 62
    iget-object v3, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->adapter:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;->getObject()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 69
    .line 70
    invoke-virtual {v3, v2, v1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->updateGameUI(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;Lcom/join/mgps/dto/CollectionBeanSub;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    :cond_3
    return-void
.end method

.method private updateProgressPartly()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->firstVisiblePosition:I

    .line 2
    .line 3
    :goto_0
    iget v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->lastVisibleIndex:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_6

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->vipCenterDataMains:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/lit8 v1, v1, -0x1

    .line 14
    .line 15
    if-le v0, v1, :cond_0

    .line 16
    .line 17
    goto/16 :goto_4

    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->vipCenterDataMains:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;

    .line 26
    .line 27
    iget v2, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;->type:I

    .line 28
    .line 29
    const/4 v3, 0x2

    .line 30
    if-ne v2, v3, :cond_5

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;->getObject()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 37
    .line 38
    if-eqz v1, :cond_5

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_5

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/16 v4, 0xc

    .line 51
    .line 52
    if-eq v2, v3, :cond_1

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-ne v2, v4, :cond_5

    .line 59
    .line 60
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 61
    .line 62
    iget v5, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->firstVisiblePosition:I

    .line 63
    .line 64
    sub-int v5, v0, v5

    .line 65
    .line 66
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-eqz v2, :cond_5

    .line 71
    .line 72
    iget-object v5, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 73
    .line 74
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    if-eqz v5, :cond_5

    .line 79
    .line 80
    iget-object v5, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 81
    .line 82
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;

    .line 87
    .line 88
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {v5, v6}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    if-nez v5, :cond_2

    .line 101
    .line 102
    return-void

    .line 103
    :cond_2
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 108
    .line 109
    .line 110
    move-result-wide v6

    .line 111
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 112
    .line 113
    mul-double v6, v6, v8

    .line 114
    .line 115
    mul-double v6, v6, v8

    .line 116
    .line 117
    double-to-long v6, v6

    .line 118
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 119
    .line 120
    .line 121
    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    const-wide/16 v10, 0x0

    .line 123
    .line 124
    const-string v12, "/"

    .line 125
    .line 126
    cmp-long v13, v8, v10

    .line 127
    .line 128
    if-nez v13, :cond_3

    .line 129
    .line 130
    :try_start_1
    iget-object v8, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->appSize:Landroid/widget/TextView;

    .line 131
    .line 132
    new-instance v9, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 138
    .line 139
    .line 140
    move-result-wide v10

    .line 141
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_3
    iget-object v8, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->appSize:Landroid/widget/TextView;

    .line 167
    .line 168
    new-instance v9, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 174
    .line 175
    .line 176
    move-result-wide v10

    .line 177
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v10

    .line 181
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    .line 200
    .line 201
    :goto_1
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    if-ne v6, v4, :cond_4

    .line 206
    .line 207
    iget-object v4, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->progressBarZip:Landroid/widget/ProgressBar;

    .line 208
    .line 209
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 210
    .line 211
    .line 212
    move-result-wide v6

    .line 213
    long-to-int v7, v6

    .line 214
    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 215
    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_4
    iget-object v4, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->progressBar:Landroid/widget/ProgressBar;

    .line 219
    .line 220
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 221
    .line 222
    .line 223
    move-result-wide v6

    .line 224
    long-to-int v7, v6

    .line 225
    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 226
    .line 227
    .line 228
    :goto_2
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-ne v1, v3, :cond_5

    .line 233
    .line 234
    iget-object v1, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->lodingInfo:Landroid/widget/TextView;

    .line 235
    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v3, "/S"

    .line 249
    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 258
    .line 259
    .line 260
    goto :goto_3

    .line 261
    :catch_0
    move-exception v1

    .line 262
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 263
    .line 264
    .line 265
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 266
    .line 267
    goto/16 :goto_0

    .line 268
    .line 269
    :cond_6
    :goto_4
    return-void
.end method


# virtual methods
.method afterview()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->manager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->adapter:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingMoreEnabled(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 43
    .line 44
    new-instance v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$1;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$1;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 53
    .line 54
    new-instance v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->getData()V

    .line 63
    .line 64
    .line 65
    iget v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->boardId:I

    .line 66
    .line 67
    packed-switch v0, :pswitch_data_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :pswitch_0
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->title:Landroid/widget/TextView;

    .line 72
    .line 73
    const-string v1, "\u5feb\u901f\u9009\u5173"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->title:Landroid/widget/TextView;

    .line 80
    .line 81
    const-string v1, "\u4e00\u952e\u6280\u80fd"

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :pswitch_2
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->title:Landroid/widget/TextView;

    .line 88
    .line 89
    const-string v1, "\u91d1\u624b\u6307"

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :pswitch_3
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->title:Landroid/widget/TextView;

    .line 96
    .line 97
    const-string v1, "MOD"

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    :goto_0
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateFrom()V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method back()V
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

.method downloadView()V
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

.method filter()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->filterPw:Lcom/join/mgps/customview/s0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/customview/s0;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/join/mgps/customview/s0;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->filterPw:Lcom/join/mgps/customview/s0;

    .line 13
    .line 14
    new-instance v1, Lcom/join/mgps/activity/vipzone/c;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/vipzone/c;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/s0;->h(Lcom/join/mgps/customview/s0$c;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->filterPw:Lcom/join/mgps/customview/s0;

    .line 23
    .line 24
    new-instance v1, Lcom/join/mgps/activity/vipzone/d;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/vipzone/d;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->filterPw:Lcom/join/mgps/customview/s0;

    .line 33
    .line 34
    const/4 v1, -0x1

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->filterPw:Lcom/join/mgps/customview/s0;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->appbar:Landroid/view/View;

    .line 41
    .line 42
    iget v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->boardId:I

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/s0;->j(Landroid/view/View;I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->filterArr:Landroid/view/View;

    .line 48
    .line 49
    const/high16 v1, 0x43340000    # 180.0f

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

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
    .locals 5
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
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 6
    .line 7
    new-instance v2, Lcom/join/mgps/activity/vipzone/b;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/vipzone/b;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1, v2}, Lcom/join/kotlin/utils/DlTaskManager;->onNotifyDataSet(Lcom/join/mgps/event/r;Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v1, 0x2

    .line 20
    if-eq p1, v1, :cond_5

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    if-eq p1, v2, :cond_4

    .line 24
    .line 25
    const/4 v1, 0x5

    .line 26
    if-eq p1, v1, :cond_3

    .line 27
    .line 28
    const/4 v3, 0x6

    .line 29
    if-eq p1, v3, :cond_2

    .line 30
    .line 31
    const/4 v3, 0x7

    .line 32
    if-eq p1, v3, :cond_1

    .line 33
    .line 34
    const/16 v2, 0x8

    .line 35
    .line 36
    if-eq p1, v2, :cond_0

    .line 37
    .line 38
    const/16 v4, 0x30

    .line 39
    .line 40
    if-eq p1, v4, :cond_3

    .line 41
    .line 42
    packed-switch p1, :pswitch_data_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_0
    const/16 p1, 0x9

    .line 47
    .line 48
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-boolean p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->SCROLLING:Z

    .line 61
    .line 62
    if-nez p1, :cond_6

    .line 63
    .line 64
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateProgressPartly()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    const/4 p1, 0x1

    .line 85
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 86
    .line 87
    .line 88
    :cond_6
    :goto_0
    return-void

    .line 89
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateDownloadView()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method search()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goSearchHintActivity(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method updateDownloadView()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadView:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->setDownloadGameNum()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadTask",
            "from"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    goto :goto_0

    .line 7
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

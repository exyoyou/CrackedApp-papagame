.class public Lcom/join/mgps/activity/login/UsercenterFragmentNew;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d02e5
.end annotation


# instance fields
.field private accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

.field detail:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field downloadTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private downloadTasksMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field downloadView1:Lcom/join/mgps/customview/CustomerDownloadView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field downloadView2:Lcom/join/mgps/customview/CustomerDownloadView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
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

.field everdayGiftIcon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field everdayGiftLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field everdayGiftText:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field fingerIcon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field fingerLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field fingerText:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field isGetViewConfigs:Z

.field volatile isGetingUserInfo:Z

.field iv_arrow:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_user_avatar:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_user_avatar2:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_user_vip:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private lastClickLoginTime:J

.field ll_copperTitle:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_membersNew:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_svip:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_userinfo:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mActivity:Landroid/app/Activity;

.field mAdapter:Lcom/join/mgps/adapter/m8;

.field mAdapter2:Lcom/join/mgps/adapter/m8;

.field mAdapter3:Lcom/join/mgps/adapter/m8;

.field mGridView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mGridView2:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mGridView3:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mRpcClient:Lcom/join/mgps/rpc/e;

.field private mUserCenterDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mUserCenterDatas2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mUserCenterDatas3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;"
        }
    .end annotation
.end field

.field private messagebadge1:Lq/rorbin/badgeview/a;

.field modNotVipView:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field onekeyMessage:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field onekeyTitle:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field onkeyIcon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field onkeyLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field onkeyText:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field rl_members:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcAccountClient:Lcom/join/mgps/rpc/b;

.field rpcAccountClientV2:Lcom/join/mgps/rpc/c;

.field rpcForumClient:Lcom/join/mgps/rpc/i;

.field scroolView:Landroidx/core/widget/NestedScrollView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field statubar:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field svipTitle:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field test:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field titleLayout:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_user_account:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_user_coppers:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_user_member:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_user_nickname:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_user_rank:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_user_svip:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

.field userLayout:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field view:Landroid/view/View;

.field vipModIcon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field vipModLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field vipModText:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field vipTime:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->view:Landroid/view/View;

    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadTasksMap:Ljava/util/Map;

    .line 13
    .line 14
    new-instance v0, Lcom/join/mgps/dto/UserCenterBean;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/join/mgps/dto/UserCenterBean;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetViewConfigs:Z

    .line 23
    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas:Ljava/util/List;

    .line 34
    .line 35
    new-instance v1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iput-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas2:Ljava/util/List;

    .line 45
    .line 46
    new-instance v1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iput-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas3:Ljava/util/List;

    .line 56
    .line 57
    iput-boolean v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetingUserInfo:Z

    .line 58
    .line 59
    new-instance v0, Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadedMap:Ljava/util/Map;

    .line 65
    .line 66
    new-instance v0, Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadingMap:Ljava/util/Map;

    .line 72
    .line 73
    return-void
.end method

.method public static synthetic M(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->lambda$onEventMainThread$0()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$102(Lcom/join/mgps/activity/login/UsercenterFragmentNew;Lcom/wufan/user/service/protobuf/UserInfo;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    return-object p1
.end method

.method private addDivider(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->createItem()Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->createItem()Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->createItem()Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private isLogined()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLogined(Landroid/content/Context;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private synthetic lambda$onEventMainThread$0()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->updateDownloadView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    return-object v0
.end method

.method private setCardData(Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;Landroid/view/View;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "item",
            "layout",
            "imageview",
            "textView"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$11;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew$11;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getMain()Lcom/join/mgps/dto/UserCenterItemBean;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterItemBean;->getPic_remote()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-static {p3, p2}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterItemBean;->getSub_title()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method private setListener(Lcom/join/mgps/adapter/m8;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "adapter",
            "mUserCenterDatas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/adapter/m8;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$d;)Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private showRedPoint(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_praise_surplus_number()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sget-object v1, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_surplus_number()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v0, v1

    .line 18
    sget-object v1, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getNotice_surplus_number()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    sget-object v1, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getPraise_surplus_number()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    add-int/2addr v0, v1

    .line 32
    sget-object v1, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getReplay_surplus_number()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-int/2addr v0, v1

    .line 39
    if-lez v0, :cond_0

    .line 40
    .line 41
    const-wide/16 v1, 0xc8

    .line 42
    .line 43
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->messagebadge1:Lq/rorbin/badgeview/a;

    .line 47
    .line 48
    if-nez v1, :cond_0

    .line 49
    .line 50
    new-instance v1, Lq/rorbin/badgeview/QBadgeView;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 53
    .line 54
    invoke-direct {v1, v2}, Lq/rorbin/badgeview/QBadgeView;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p1}, Lq/rorbin/badgeview/QBadgeView;->n(Landroid/view/View;)Lq/rorbin/badgeview/a;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p1, v0}, Lq/rorbin/badgeview/a;->g(I)Lq/rorbin/badgeview/a;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const/high16 v0, -0x10000

    .line 66
    .line 67
    invoke-interface {p1, v0}, Lq/rorbin/badgeview/a;->d(I)Lq/rorbin/badgeview/a;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const v1, 0x7f071293

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    int-to-float v0, v0

    .line 83
    const/4 v1, 0x0

    .line 84
    invoke-interface {p1, v0, v1}, Lq/rorbin/badgeview/a;->w(FZ)Lq/rorbin/badgeview/a;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const v0, 0x800055

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v0}, Lq/rorbin/badgeview/a;->u(I)Lq/rorbin/badgeview/a;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const/4 v0, -0x1

    .line 96
    invoke-interface {p1, v0}, Lq/rorbin/badgeview/a;->s(I)Lq/rorbin/badgeview/a;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iput-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->messagebadge1:Lq/rorbin/badgeview/a;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catch_0
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    .line 106
    .line 107
    :cond_0
    :goto_0
    return-void
.end method

.method private testAddCommentSelf(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "firstGroups"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method private updateViewH(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mUserCenterDatas",
            "gridView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ")V"
        }
    .end annotation

    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->v(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lq5/f;->d()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadTasks:Ljava/util/List;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-lez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadTasks:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadTasksMap:Ljava/util/Map;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->statubar:Landroid/view/View;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v1}, Lcom/join/android/app/common/utils/q;->v(Landroid/content/Context;)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 71
    .line 72
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->statubar:Landroid/view/View;

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->getDownloadTaskInfo()V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mRpcClient:Lcom/join/mgps/rpc/e;

    .line 85
    .line 86
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->A0()Lcom/join/mgps/rpc/impl/g;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 91
    .line 92
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->userCenterViewConfigsv2()Lorg/androidannotations/api/sharedpreferences/p;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Ljava/lang/String;

    .line 107
    .line 108
    const-class v2, Lcom/join/mgps/dto/UserCenterBean;

    .line 109
    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Lcom/join/mgps/dto/UserCenterBean;

    .line 115
    .line 116
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    .line 117
    .line 118
    const/4 v1, 0x0

    .line 119
    if-eqz v0, :cond_1

    .line 120
    .line 121
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas:Ljava/util/List;

    .line 122
    .line 123
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas2:Ljava/util/List;

    .line 127
    .line 128
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas3:Ljava/util/List;

    .line 132
    .line 133
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas:Ljava/util/List;

    .line 137
    .line 138
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    .line 139
    .line 140
    invoke-virtual {p0, v2, v1}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->wrapDatas(Lcom/join/mgps/dto/UserCenterBean;I)Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas2:Ljava/util/List;

    .line 148
    .line 149
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    .line 150
    .line 151
    const/4 v3, 0x1

    .line 152
    invoke-virtual {p0, v2, v3}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->wrapDatas(Lcom/join/mgps/dto/UserCenterBean;I)Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas3:Ljava/util/List;

    .line 160
    .line 161
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    .line 162
    .line 163
    const/4 v3, 0x2

    .line 164
    invoke-virtual {p0, v2, v3}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->wrapDatas(Lcom/join/mgps/dto/UserCenterBean;I)Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 169
    .line 170
    .line 171
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->scroolView:Landroidx/core/widget/NestedScrollView;

    .line 172
    .line 173
    new-instance v2, Lcom/join/mgps/activity/login/UsercenterFragmentNew$1;

    .line 174
    .line 175
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew$1;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v2}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 179
    .line 180
    .line 181
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 182
    .line 183
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    const/4 v3, 0x5

    .line 188
    invoke-direct {v0, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 189
    .line 190
    .line 191
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 192
    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-direct {v2, v4, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 198
    .line 199
    .line 200
    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 201
    .line 202
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-direct {v4, v5, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 207
    .line 208
    .line 209
    iget-object v3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    .line 210
    .line 211
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 212
    .line 213
    .line 214
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView2:Landroidx/recyclerview/widget/RecyclerView;

    .line 215
    .line 216
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView3:Landroidx/recyclerview/widget/RecyclerView;

    .line 220
    .line 221
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 222
    .line 223
    .line 224
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 227
    .line 228
    .line 229
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView2:Landroidx/recyclerview/widget/RecyclerView;

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 232
    .line 233
    .line 234
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView3:Landroidx/recyclerview/widget/RecyclerView;

    .line 235
    .line 236
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 237
    .line 238
    .line 239
    new-instance v0, Lcom/join/mgps/adapter/m8;

    .line 240
    .line 241
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas:Ljava/util/List;

    .line 242
    .line 243
    invoke-direct {v0, v2}, Lcom/join/mgps/adapter/m8;-><init>(Ljava/util/List;)V

    .line 244
    .line 245
    .line 246
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mAdapter:Lcom/join/mgps/adapter/m8;

    .line 247
    .line 248
    new-instance v0, Lcom/join/mgps/adapter/m8;

    .line 249
    .line 250
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas2:Ljava/util/List;

    .line 251
    .line 252
    invoke-direct {v0, v2}, Lcom/join/mgps/adapter/m8;-><init>(Ljava/util/List;)V

    .line 253
    .line 254
    .line 255
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mAdapter2:Lcom/join/mgps/adapter/m8;

    .line 256
    .line 257
    new-instance v0, Lcom/join/mgps/adapter/m8;

    .line 258
    .line 259
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas3:Ljava/util/List;

    .line 260
    .line 261
    invoke-direct {v0, v2}, Lcom/join/mgps/adapter/m8;-><init>(Ljava/util/List;)V

    .line 262
    .line 263
    .line 264
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mAdapter3:Lcom/join/mgps/adapter/m8;

    .line 265
    .line 266
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    .line 267
    .line 268
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mAdapter:Lcom/join/mgps/adapter/m8;

    .line 269
    .line 270
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 271
    .line 272
    .line 273
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView2:Landroidx/recyclerview/widget/RecyclerView;

    .line 274
    .line 275
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mAdapter2:Lcom/join/mgps/adapter/m8;

    .line 276
    .line 277
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 278
    .line 279
    .line 280
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView3:Landroidx/recyclerview/widget/RecyclerView;

    .line 281
    .line 282
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mAdapter3:Lcom/join/mgps/adapter/m8;

    .line 283
    .line 284
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 285
    .line 286
    .line 287
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mAdapter:Lcom/join/mgps/adapter/m8;

    .line 288
    .line 289
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas:Ljava/util/List;

    .line 290
    .line 291
    invoke-direct {p0, v0, v2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->setListener(Lcom/join/mgps/adapter/m8;Ljava/util/List;)V

    .line 292
    .line 293
    .line 294
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mAdapter2:Lcom/join/mgps/adapter/m8;

    .line 295
    .line 296
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas2:Ljava/util/List;

    .line 297
    .line 298
    invoke-direct {p0, v0, v2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->setListener(Lcom/join/mgps/adapter/m8;Ljava/util/List;)V

    .line 299
    .line 300
    .line 301
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mAdapter3:Lcom/join/mgps/adapter/m8;

    .line 302
    .line 303
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas3:Ljava/util/List;

    .line 304
    .line 305
    invoke-direct {p0, v0, v2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->setListener(Lcom/join/mgps/adapter/m8;Ljava/util/List;)V

    .line 306
    .line 307
    .line 308
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mAdapter:Lcom/join/mgps/adapter/m8;

    .line 309
    .line 310
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->pullMyProfileInfo()V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->showNotifUi()V

    .line 317
    .line 318
    .line 319
    sget-boolean v0, Lcom/join/android/app/common/http/c;->c:Z

    .line 320
    .line 321
    if-nez v0, :cond_2

    .line 322
    .line 323
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->test:Landroid/view/View;

    .line 324
    .line 325
    const/16 v1, 0x8

    .line 326
    .line 327
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 328
    .line 329
    .line 330
    goto :goto_1

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->test:Landroid/view/View;

    .line 332
    .line 333
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 334
    .line 335
    .line 336
    :goto_1
    return-void
.end method

.method calculateVIPExpTime()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getVipExpTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x3e8

    .line 8
    .line 9
    mul-long v0, v0, v2

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    sub-long v4, v0, v2

    .line 16
    .line 17
    const-wide/32 v6, 0x5265c00

    .line 18
    .line 19
    .line 20
    div-long/2addr v4, v6

    .line 21
    iget-object v6, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_member:Landroid/widget/TextView;

    .line 22
    .line 23
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 28
    .line 29
    cmp-long v7, v0, v2

    .line 30
    .line 31
    if-lez v7, :cond_2

    .line 32
    .line 33
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_member:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_vip:Landroid/widget/ImageView;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v6, "\u6709\u6548\u671f\u81f3"

    .line 50
    .line 51
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v1}, Lcom/join/mgps/Util/e0;->s(J)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    :try_start_1
    invoke-static {v0, v1}, Lcom/join/mgps/Util/e0;->w(J)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    goto :goto_0

    .line 74
    :catch_0
    nop

    .line 75
    :goto_0
    const-wide/16 v0, 0x1e

    .line 76
    .line 77
    cmp-long v6, v4, v0

    .line 78
    .line 79
    if-gtz v6, :cond_0

    .line 80
    .line 81
    :try_start_2
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_member:Landroid/widget/TextView;

    .line 82
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v2, "\n<font color=#FFFFFF>\u5269\u4f59"

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v2, "\u5929</font>"

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_0
    const/16 v0, 0x7f5

    .line 117
    .line 118
    if-le v3, v0, :cond_1

    .line 119
    .line 120
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_member:Landroid/widget/TextView;

    .line 121
    .line 122
    const-string v1, "\u6709\u6548\u671f\u81f32099-05-12"

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_member:Landroid/widget/TextView;

    .line 129
    .line 130
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_member:Landroid/widget/TextView;

    .line 135
    .line 136
    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_vip:Landroid/widget/ImageView;

    .line 140
    .line 141
    const/16 v1, 0x8

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_member:Landroid/widget/TextView;

    .line 147
    .line 148
    const-string v1, "\u53bb\u5f00\u901a"

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->rl_members:Landroid/widget/RelativeLayout;

    .line 154
    .line 155
    new-instance v1, Lcom/join/mgps/activity/login/UsercenterFragmentNew$9;

    .line 156
    .line 157
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew$9;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :catch_1
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 166
    .line 167
    .line 168
    :goto_1
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
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadedMap:Ljava/util/Map;

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
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadedMap:Ljava/util/Map;

    .line 42
    .line 43
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadingMap:Ljava/util/Map;

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
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadingMap:Ljava/util/Map;

    .line 55
    .line 56
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadedMap:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadedMap:Ljava/util/Map;

    .line 69
    .line 70
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadingMap:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadingMap:Ljava/util/Map;

    .line 82
    .line 83
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadingMap:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadingMap:Ljava/util/Map;

    .line 96
    .line 97
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadedMap:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadedMap:Ljava/util/Map;

    .line 110
    .line 111
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadingMap:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadingMap:Ljava/util/Map;

    .line 123
    .line 124
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadingMap:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadingMap:Ljava/util/Map;

    .line 137
    .line 138
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_9
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadedMap:Ljava/util/Map;

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
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadedMap:Ljava/util/Map;

    .line 151
    .line 152
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    :cond_a
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadingMap:Ljava/util/Map;

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
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadingMap:Ljava/util/Map;

    .line 164
    .line 165
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    :cond_b
    :goto_0
    return-void
.end method

.method changeMgState(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "content",
            "tag_id"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isOfficialAccount()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {v0, v1, p1, p2}, Lcom/join/mgps/Util/RequestBeanUtil;->getRequestMsgState(ILjava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mRpcClient:Lcom/join/mgps/rpc/e;

    .line 48
    .line 49
    invoke-interface {p2, p1}, Lcom/join/mgps/rpc/e;->C(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Ljava/util/List;

    .line 62
    .line 63
    const/4 p2, 0x0

    .line 64
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lcom/join/mgps/dto/ResultValbean;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultValbean;->isVal()Z

    .line 71
    .line 72
    .line 73
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    const-string p2, "UserCenter"

    .line 75
    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    :try_start_1
    const-string p1, "changeMgState success"

    .line 79
    .line 80
    invoke-static {p2, p1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    const-string p1, "changeMgState failure"

    .line 85
    .line 86
    invoke-static {p2, p1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    .line 93
    .line 94
    :cond_3
    :goto_0
    return-void
.end method

.method createItem()Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->setEmpty(Z)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method detail()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/UserCenterBean;->getDetail_entrance()Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getSub()Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/join/mgps/dto/JumpInfoBean;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/dto/JumpInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/join/mgps/Util/b;->piv(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 46
    .line 47
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 48
    .line 49
    .line 50
    const/4 v1, 0x3

    .line 51
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 52
    .line 53
    .line 54
    const/16 v1, 0x38

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 64
    .line 65
    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goVip(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    return-void
.end method

.method downloadView1()V
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
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goMyGameManagerActivity(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method downloadView2()V
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
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goMyGameManagerActivity(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
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
    iget-object v3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadedMap:Ljava/util/Map;

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
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadingMap:Ljava/util/Map;

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->updateDownloadView()V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method getUserInfo()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetingUserInfo:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetingUserInfo:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_7

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 31
    .line 32
    if-eqz v0, :cond_6

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters;->newBuilder()Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-virtual {v0, v2}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v0, v2}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->setToken(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v2}, Lg8/b;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v0, v2}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;

    .line 77
    .line 78
    .line 79
    new-instance v2, Ljava/util/HashMap;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v3, "uid"

    .line 85
    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->getUid()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v5, ""

    .line 99
    .line 100
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    const-string v3, "token"

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->getToken()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    const-string v3, "appVersion"

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->getAppVersion()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    invoke-static {v2}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v0, v2}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;

    .line 133
    .line 134
    .line 135
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->rpcAccountClientV2:Lcom/join/mgps/rpc/c;

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->build()Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-interface {v2, v0}, Lcom/join/mgps/rpc/c;->A(Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters;)Lcom/wufan/user/service/protobuf/ResponseResult;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    if-eqz v0, :cond_5

    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getError()I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    const/16 v3, 0xc8

    .line 152
    .line 153
    if-ne v2, v3, :cond_3

    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    if-eqz v0, :cond_2

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-eqz v2, :cond_2

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->toBuilder()Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo$b;->build()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 176
    .line 177
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 178
    .line 179
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 184
    .line 185
    iget-object v3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 186
    .line 187
    invoke-virtual {v0, v2, v3}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 188
    .line 189
    .line 190
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 191
    .line 192
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->a3(Landroid/content/Context;)V

    .line 193
    .line 194
    .line 195
    iput-boolean v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetingUserInfo:Z

    .line 196
    .line 197
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->refreshViews()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->getViewConfigs()V

    .line 201
    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_3
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getError()I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    const/16 v2, 0x2bd

    .line 209
    .line 210
    if-ne v0, v2, :cond_4

    .line 211
    .line 212
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tokenFailure()V

    .line 213
    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_4
    iput-boolean v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetingUserInfo:Z

    .line 217
    .line 218
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->getViewConfigs()V

    .line 219
    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_5
    iput-boolean v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetingUserInfo:Z

    .line 223
    .line 224
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->getViewConfigs()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .line 226
    .line 227
    goto :goto_1

    .line 228
    :catch_0
    move-exception v0

    .line 229
    iput-boolean v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetingUserInfo:Z

    .line 230
    .line 231
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->getViewConfigs()V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 235
    .line 236
    .line 237
    goto :goto_1

    .line 238
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->touristLogin()V

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    :cond_7
    iput-boolean v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetingUserInfo:Z

    .line 243
    .line 244
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->loadViewConfigsFromLocal()V

    .line 245
    .line 246
    .line 247
    :goto_1
    return-void
.end method

.method getViewConfigs()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 21
    .line 22
    if-eqz v1, :cond_4

    .line 23
    .line 24
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_0
    iget-boolean v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetViewConfigs:Z

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    const/4 v2, 0x1

    .line 35
    iput-boolean v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetViewConfigs:Z

    .line 36
    .line 37
    new-instance v3, Lcom/join/mgps/dto/RequestModel;

    .line 38
    .line 39
    invoke-direct {v3, v1}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lcom/join/mgps/dto/RequestUserCenterArgs;

    .line 43
    .line 44
    iget-object v4, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 45
    .line 46
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    iget-object v5, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 51
    .line 52
    invoke-virtual {v5}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    iget-object v6, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 57
    .line 58
    invoke-static {v6}, Lcom/join/mgps/Util/b;->piv(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 v2, 0x0

    .line 66
    :goto_0
    invoke-direct {v1, v4, v5, v2}, Lcom/join/mgps/dto/RequestUserCenterArgs;-><init>(ILjava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-interface {v1, v3}, Lb7/i;->a1(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Lcom/join/mgps/dto/ResponseModel;

    .line 93
    .line 94
    if-eqz v1, :cond_3

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    const/16 v3, 0x258

    .line 101
    .line 102
    if-ne v2, v3, :cond_3

    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 113
    .line 114
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->userCenterViewConfigsv2()Lorg/androidannotations/api/sharedpreferences/p;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v2, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->loadViewConfigsFromLocal()V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->loadViewConfigsFromLocal()V

    .line 126
    .line 127
    .line 128
    :goto_1
    iput-boolean v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetViewConfigs:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_4
    :goto_2
    return-void

    .line 132
    :catch_0
    move-exception v1

    .line 133
    iput-boolean v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetViewConfigs:Z

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->loadViewConfigsFromLocal()V

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->loadViewConfigsFromLocal()V

    .line 143
    .line 144
    .line 145
    :goto_3
    return-void
.end method

.method goLogin()Z
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->lastClickLoginTime:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x3e8

    .line 9
    .line 10
    cmp-long v4, v0, v2

    .line 11
    .line 12
    if-gez v4, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iput-wide v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->lastClickLoginTime:J

    .line 21
    .line 22
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    return v0
.end method

.method gotoTargetActivity(Lcom/join/mgps/dto/JumpInfoBean;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "jumpInfoBean",
            "linkType"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/JumpInfoBean;->getTpl_type()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/JumpInfoBean;->getJump_type()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/dto/JumpInfoBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/dto/JumpInfoBean;->getLink_type_val()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 46
    .line 47
    invoke-virtual {p1, p2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method hideRedPoint()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->messagebadge1:Lq/rorbin/badgeview/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0, v1}, Lq/rorbin/badgeview/a;->hide(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    sput v1, Lcom/MApplication;->T:I

    .line 10
    .line 11
    return-void
.end method

.method isActivityFinish()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method isOfficialAccount()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return v0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    xor-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    return v0
.end method

.method ll_copper()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean;->getMember_func()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-lez v2, :cond_1

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getJumpUrl()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/activity/ShareWebActivity_;->intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/ShareWebActivity_$g0;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ShareWebActivity_$g0;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/ShareWebActivity_$g0;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method loadViewConfigsFromLocal()V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->userCenterViewConfigsv2()Lorg/androidannotations/api/sharedpreferences/p;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/String;

    .line 16
    .line 17
    const-class v2, Lcom/join/mgps/dto/UserCenterBean;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/join/mgps/dto/UserCenterBean;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    .line 26
    .line 27
    if-eqz v0, :cond_f

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    goto/16 :goto_5

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas:Ljava/util/List;

    .line 36
    .line 37
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 38
    :try_start_1
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas2:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas3:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas:Ljava/util/List;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-virtual {p0, v2, v3}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->wrapDatas(Lcom/join/mgps/dto/UserCenterBean;I)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas2:Ljava/util/List;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    .line 68
    .line 69
    const/4 v4, 0x1

    .line 70
    invoke-virtual {p0, v2, v4}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->wrapDatas(Lcom/join/mgps/dto/UserCenterBean;I)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas3:Ljava/util/List;

    .line 78
    .line 79
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    .line 80
    .line 81
    const/4 v5, 0x2

    .line 82
    invoke-virtual {p0, v2, v5}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->wrapDatas(Lcom/join/mgps/dto/UserCenterBean;I)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas:Ljava/util/List;

    .line 90
    .line 91
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    .line 93
    invoke-direct {p0, v1, v2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->updateViewH(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas2:Ljava/util/List;

    .line 97
    .line 98
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView2:Landroidx/recyclerview/widget/RecyclerView;

    .line 99
    .line 100
    invoke-direct {p0, v1, v2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->updateViewH(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas3:Ljava/util/List;

    .line 104
    .line 105
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mGridView3:Landroidx/recyclerview/widget/RecyclerView;

    .line 106
    .line 107
    invoke-direct {p0, v1, v2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->updateViewH(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mAdapter:Lcom/join/mgps/adapter/m8;

    .line 111
    .line 112
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mAdapter2:Lcom/join/mgps/adapter/m8;

    .line 116
    .line 117
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 118
    .line 119
    .line 120
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mAdapter3:Lcom/join/mgps/adapter/m8;

    .line 121
    .line 122
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 123
    .line 124
    .line 125
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas2:Ljava/util/List;

    .line 126
    .line 127
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_3

    .line 136
    .line 137
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    check-cast v2, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    .line 142
    .line 143
    if-eqz v2, :cond_1

    .line 144
    .line 145
    invoke-virtual {v2}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->isPlaceHolder()Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-nez v6, :cond_1

    .line 150
    .line 151
    invoke-virtual {v2}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getMain()Lcom/join/mgps/dto/UserCenterItemBean;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    if-nez v6, :cond_2

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_2
    new-instance v6, Lcom/join/mgps/dto/ExtBean;

    .line 159
    .line 160
    invoke-direct {v6}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 161
    .line 162
    .line 163
    sget-object v7, Lcom/papa/sim/statistic/EventP$FirstModel;->home:Lcom/papa/sim/statistic/EventP$FirstModel;

    .line 164
    .line 165
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    sget-object v7, Lcom/papa/sim/statistic/EventP$SecondModel;->meTab:Lcom/papa/sim/statistic/EventP$SecondModel;

    .line 174
    .line 175
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    invoke-virtual {v2}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getMain()Lcom/join/mgps/dto/UserCenterItemBean;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    invoke-virtual {v7}, Lcom/join/mgps/dto/UserCenterItemBean;->getSub_title()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    invoke-virtual {v2, v6}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    invoke-virtual {v6}, Lcom/join/mgps/dto/ExtBean;->hasExplore()Z

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    if-nez v6, :cond_1

    .line 207
    .line 208
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    invoke-static {v6}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    sget-object v7, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 217
    .line 218
    invoke-virtual {v2}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    invoke-virtual {v8}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    invoke-virtual {v8}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 227
    .line 228
    .line 229
    move-result-object v8

    .line 230
    invoke-virtual {v6, v7, v8}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/ExtBean;->setHasExplore(Z)V

    .line 238
    .line 239
    .line 240
    goto :goto_0

    .line 241
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    .line 242
    .line 243
    if-eqz v1, :cond_e

    .line 244
    .line 245
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean;->getMember_func()Ljava/util/List;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    if-eqz v1, :cond_6

    .line 250
    .line 251
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-ltz v2, :cond_4

    .line 256
    .line 257
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    check-cast v2, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;

    .line 262
    .line 263
    iget-object v6, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_copperTitle:Landroid/widget/TextView;

    .line 264
    .line 265
    invoke-virtual {v2}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getTitle()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    .line 271
    .line 272
    iget-object v6, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_coppers:Landroid/widget/TextView;

    .line 273
    .line 274
    invoke-virtual {v2}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getSubTitle()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    .line 280
    .line 281
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    if-lt v2, v4, :cond_5

    .line 286
    .line 287
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    check-cast v2, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;

    .line 292
    .line 293
    iget-object v6, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onekeyTitle:Landroid/widget/TextView;

    .line 294
    .line 295
    invoke-virtual {v2}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getTitle()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v7

    .line 299
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    .line 301
    .line 302
    iget-object v6, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onekeyMessage:Landroid/widget/TextView;

    .line 303
    .line 304
    invoke-virtual {v2}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getSubTitle()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    .line 310
    .line 311
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    if-lt v2, v5, :cond_6

    .line 316
    .line 317
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    check-cast v1, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;

    .line 322
    .line 323
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->svipTitle:Landroid/widget/TextView;

    .line 324
    .line 325
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getTitle()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v6

    .line 329
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    .line 331
    .line 332
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_svip:Landroid/widget/TextView;

    .line 333
    .line 334
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getSubTitle()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    .line 340
    .line 341
    :cond_6
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 342
    .line 343
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    iput-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 352
    .line 353
    invoke-static {v1}, Lcom/join/mgps/Util/b;->piv(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    const/16 v2, 0x8

    .line 358
    .line 359
    if-eqz v1, :cond_d

    .line 360
    .line 361
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->modNotVipView:Landroid/view/View;

    .line 362
    .line 363
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 364
    .line 365
    .line 366
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->rl_members:Landroid/widget/RelativeLayout;

    .line 367
    .line 368
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 369
    .line 370
    .line 371
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_membersNew:Landroid/view/View;

    .line 372
    .line 373
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 374
    .line 375
    .line 376
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 377
    .line 378
    invoke-static {v1}, Lcom/join/mgps/Util/b;->piv(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    if-eqz v1, :cond_9

    .line 383
    .line 384
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 385
    .line 386
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getVipExpTime()J

    .line 387
    .line 388
    .line 389
    move-result-wide v1

    .line 390
    const-wide/16 v6, 0x3e8

    .line 391
    .line 392
    mul-long v1, v1, v6

    .line 393
    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 395
    .line 396
    .line 397
    move-result-wide v6

    .line 398
    sub-long v6, v1, v6

    .line 399
    .line 400
    const-wide/32 v8, 0x5265c00

    .line 401
    .line 402
    .line 403
    div-long/2addr v6, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    :try_start_2
    invoke-static {v1, v2}, Lcom/join/mgps/Util/e0;->w(J)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 409
    .line 410
    .line 411
    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 412
    goto :goto_1

    .line 413
    :catch_0
    nop

    .line 414
    const/4 v1, 0x0

    .line 415
    :goto_1
    const-wide/16 v8, 0x1e

    .line 416
    .line 417
    cmp-long v2, v6, v8

    .line 418
    .line 419
    if-gtz v2, :cond_7

    .line 420
    .line 421
    :try_start_3
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipTime:Landroid/widget/TextView;

    .line 422
    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    .line 427
    .line 428
    const-string v8, "\u4f1a\u5458\u5269\u4f59\uff1a"

    .line 429
    .line 430
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    const-string v6, "\u5929"

    .line 437
    .line 438
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    .line 447
    .line 448
    goto :goto_2

    .line 449
    :cond_7
    const/16 v2, 0x7f5

    .line 450
    .line 451
    if-lt v1, v2, :cond_8

    .line 452
    .line 453
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipTime:Landroid/widget/TextView;

    .line 454
    .line 455
    const-string v2, "\u7ec8\u751f\u4f1a\u5458"

    .line 456
    .line 457
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    .line 459
    .line 460
    goto :goto_2

    .line 461
    :cond_8
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipTime:Landroid/widget/TextView;

    .line 462
    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    .line 464
    .line 465
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    .line 467
    .line 468
    const-string v8, "\u4f1a\u5458\u5269\u4f59\uff1a"

    .line 469
    .line 470
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    const-string v6, "\u5929"

    .line 477
    .line 478
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    .line 487
    .line 488
    :goto_2
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->detail:Landroid/widget/TextView;

    .line 489
    .line 490
    const-string v2, "\u8be6\u60c5"

    .line 491
    .line 492
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    .line 494
    .line 495
    goto :goto_3

    .line 496
    :cond_9
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->detail:Landroid/widget/TextView;

    .line 497
    .line 498
    const-string v2, "\u5f00\u901a\u4f1a\u5458"

    .line 499
    .line 500
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    .line 502
    .line 503
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    .line 504
    .line 505
    if-eqz v1, :cond_a

    .line 506
    .line 507
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean;->getJoin_member()Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    if-eqz v1, :cond_a

    .line 512
    .line 513
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_member:Landroid/widget/TextView;

    .line 514
    .line 515
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getSubTitle()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v6

    .line 519
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    .line 521
    .line 522
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipTime:Landroid/widget/TextView;

    .line 523
    .line 524
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getSubTitle()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v1

    .line 528
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    .line 530
    .line 531
    :cond_a
    :goto_3
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_membersNew:Landroid/view/View;

    .line 532
    .line 533
    new-instance v2, Lcom/join/mgps/activity/login/UsercenterFragmentNew$10;

    .line 534
    .line 535
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew$10;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    .line 540
    .line 541
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    .line 542
    .line 543
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean;->getModule_entrance_list()Ljava/util/List;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    if-eqz v1, :cond_e

    .line 548
    .line 549
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 550
    .line 551
    .line 552
    move-result v2

    .line 553
    if-lez v2, :cond_e

    .line 554
    .line 555
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    check-cast v2, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    .line 560
    .line 561
    iget-object v3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipModLayout:Landroid/widget/LinearLayout;

    .line 562
    .line 563
    iget-object v6, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipModIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 564
    .line 565
    iget-object v7, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipModText:Landroid/widget/TextView;

    .line 566
    .line 567
    invoke-direct {p0, v2, v3, v6, v7}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->setCardData(Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;Landroid/view/View;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;)V

    .line 568
    .line 569
    .line 570
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 571
    .line 572
    .line 573
    move-result v2

    .line 574
    if-le v2, v4, :cond_b

    .line 575
    .line 576
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v2

    .line 580
    check-cast v2, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    .line 581
    .line 582
    iget-object v3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->fingerLayout:Landroid/widget/LinearLayout;

    .line 583
    .line 584
    iget-object v4, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->fingerIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 585
    .line 586
    iget-object v6, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->fingerText:Landroid/widget/TextView;

    .line 587
    .line 588
    invoke-direct {p0, v2, v3, v4, v6}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->setCardData(Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;Landroid/view/View;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;)V

    .line 589
    .line 590
    .line 591
    :cond_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 592
    .line 593
    .line 594
    move-result v2

    .line 595
    if-le v2, v5, :cond_c

    .line 596
    .line 597
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v2

    .line 601
    check-cast v2, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    .line 602
    .line 603
    iget-object v3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onkeyLayout:Landroid/widget/LinearLayout;

    .line 604
    .line 605
    iget-object v4, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onkeyIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 606
    .line 607
    iget-object v5, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onkeyText:Landroid/widget/TextView;

    .line 608
    .line 609
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->setCardData(Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;Landroid/view/View;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;)V

    .line 610
    .line 611
    .line 612
    :cond_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 613
    .line 614
    .line 615
    move-result v2

    .line 616
    const/4 v3, 0x3

    .line 617
    if-le v2, v3, :cond_e

    .line 618
    .line 619
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v1

    .line 623
    check-cast v1, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    .line 624
    .line 625
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->everdayGiftLayout:Landroid/widget/LinearLayout;

    .line 626
    .line 627
    iget-object v3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->everdayGiftIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 628
    .line 629
    iget-object v4, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->everdayGiftText:Landroid/widget/TextView;

    .line 630
    .line 631
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->setCardData(Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;Landroid/view/View;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;)V

    .line 632
    .line 633
    .line 634
    goto :goto_4

    .line 635
    :cond_d
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->modNotVipView:Landroid/view/View;

    .line 636
    .line 637
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 638
    .line 639
    .line 640
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    .line 641
    .line 642
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean;->getJoin_member()Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;

    .line 643
    .line 644
    .line 645
    move-result-object v1

    .line 646
    if-eqz v1, :cond_e

    .line 647
    .line 648
    iget-object v4, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_member:Landroid/widget/TextView;

    .line 649
    .line 650
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getSubTitle()Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v1

    .line 654
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    .line 656
    .line 657
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->rl_members:Landroid/widget/RelativeLayout;

    .line 658
    .line 659
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 660
    .line 661
    .line 662
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_membersNew:Landroid/view/View;

    .line 663
    .line 664
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 665
    .line 666
    .line 667
    :cond_e
    :goto_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->pullMyProfileInfo()V

    .line 668
    .line 669
    .line 670
    monitor-exit v0

    .line 671
    goto :goto_6

    .line 672
    :catchall_0
    move-exception v1

    .line 673
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 674
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 675
    :cond_f
    :goto_5
    return-void

    .line 676
    :catch_1
    move-exception v0

    .line 677
    const-string v1, "UserCenter"

    .line 678
    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    .line 680
    .line 681
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 682
    .line 683
    .line 684
    const-string v3, "loadViewConfigsFromLocal exception:"

    .line 685
    .line 686
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v0

    .line 693
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    .line 695
    .line 696
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    invoke-static {v1, v0}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    :goto_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->showNotifUi()V

    .line 704
    .line 705
    .line 706
    return-void
.end method

.method public loginOut(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.action_login_out"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->touristLogin()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    check-cast p1, Landroid/app/Activity;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 7
    .line 8
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->c0()Lcom/join/mgps/rpc/b;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 13
    .line 14
    invoke-static {}, Lcom/join/mgps/rpc/impl/b;->C()Lcom/join/mgps/rpc/c;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->rpcAccountClientV2:Lcom/join/mgps/rpc/c;

    .line 19
    .line 20
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->A(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 13
    .line 14
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

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 5
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    new-instance v1, Lcom/join/mgps/activity/login/g;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/g;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)V

    invoke-virtual {v0, p1, v1}, Lcom/join/kotlin/utils/DlTaskManager;->onNotifyDataSet(Lcom/join/mgps/event/r;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jPushNotifEvent"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/MGMainActivity;->getPositionNum()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->pullMyProfileInfo()V

    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hidden"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->refreshUserCenter()V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_praise_surplus_number()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sget-object v1, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_surplus_number()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/2addr v0, v1

    .line 22
    sget-object v1, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getNotice_surplus_number()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v0, v1

    .line 29
    sget-object v1, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getPraise_surplus_number()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v0, v1

    .line 36
    sget-object v1, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getReplay_surplus_number()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    sput v0, Lcom/MApplication;->T:I

    .line 44
    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->hideRedPoint()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->showNotifUi()V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->updateDownloadView()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method onekey()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean;->getMember_func()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x1

    .line 28
    if-le v2, v3, :cond_1

    .line 29
    .line 30
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getJumpUrl()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 44
    .line 45
    invoke-static {v1}, Lcom/join/mgps/activity/ShareWebActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ShareWebActivity_$g0;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ShareWebActivity_$g0;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/ShareWebActivity_$g0;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method pullMyProfileInfo()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

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
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const/4 v5, 0x1

    .line 39
    const/4 v6, 0x0

    .line 40
    const-string v7, ""

    .line 41
    .line 42
    invoke-interface/range {v2 .. v7}, Lcom/join/mgps/rpc/i;->h(ILjava/lang/String;IILjava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/join/mgps/dto/ForumData$ForumProfilePostsData;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumProfilePostsData;->getUser_info()Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumProfilePostUserInfoBean;->getUnread_message()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->updateAdapterByNewMsgCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_1
    return-void
.end method

.method public refreshUserCenter()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->refreshViews()V

    .line 7
    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetingUserInfo:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->getUserInfo()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method refreshViews()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const-string v0, "--"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iput-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_nickname:Landroid/widget/TextView;

    .line 21
    .line 22
    const-string v3, "\u672a\u767b\u5f55"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/facebook/drawee/generic/a;

    .line 34
    .line 35
    new-instance v3, Lcom/facebook/drawee/drawable/o;

    .line 36
    .line 37
    const-string v4, "#99BDC9"

    .line 38
    .line 39
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-direct {v3, v4}, Lcom/facebook/drawee/drawable/o;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3}, Lcom/facebook/drawee/generic/a;->z(Landroid/graphics/drawable/Drawable;)V

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 50
    .line 51
    const v3, 0x7f081323

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_account:Landroid/widget/TextView;

    .line 58
    .line 59
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_coppers:Landroid/widget/TextView;

    .line 63
    .line 64
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_member:Landroid/widget/TextView;

    .line 68
    .line 69
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_svip:Landroid/widget/TextView;

    .line 73
    .line 74
    const-string v2, "---"

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_rank:Landroid/widget/TextView;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_rank:Landroid/widget/TextView;

    .line 85
    .line 86
    const/16 v1, 0x8

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->rl_members:Landroid/widget/RelativeLayout;

    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_svip:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 103
    .line 104
    const/4 v3, 0x2

    .line 105
    const/4 v4, 0x0

    .line 106
    if-eqz v0, :cond_5

    .line 107
    .line 108
    iget-object v5, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_nickname:Landroid/widget/TextView;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 118
    .line 119
    iget-object v5, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 120
    .line 121
    invoke-virtual {v5}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-static {v0, v5}, Lcom/join/android/app/common/utils/l;->u(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_avatar2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 129
    .line 130
    iget-object v5, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 131
    .line 132
    invoke-virtual {v5}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-static {v0, v5}, Lcom/join/android/app/common/utils/l;->u(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 140
    .line 141
    invoke-static {v0}, Lcom/join/mgps/Util/b;->piv(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_1

    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->calculateVIPExpTime()V

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    .line 152
    .line 153
    if-eqz v0, :cond_2

    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/join/mgps/dto/UserCenterBean;->getJoin_member()Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    if-eqz v0, :cond_2

    .line 160
    .line 161
    iget-object v5, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_member:Landroid/widget/TextView;

    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getSubTitle()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    iget-object v5, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->vipTime:Landroid/widget/TextView;

    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getSubTitle()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    .line 178
    .line 179
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_vip:Landroid/widget/ImageView;

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    .line 183
    .line 184
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 185
    .line 186
    invoke-static {v0}, Lcom/join/mgps/Util/b;->piv(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_3

    .line 191
    .line 192
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMemberTitle()Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    if-eqz v0, :cond_3

    .line 199
    .line 200
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 201
    .line 202
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMemberTitle()Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MemberTitleInfo;->getBattleTitle()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-nez v0, :cond_3

    .line 215
    .line 216
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_rank:Landroid/widget/TextView;

    .line 217
    .line 218
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 219
    .line 220
    .line 221
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_rank:Landroid/widget/TextView;

    .line 222
    .line 223
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 224
    .line 225
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getMemberTitle()Lcom/wufan/user/service/protobuf/MemberTitleInfo;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MemberTitleInfo;->getBattleTitle()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    .line 235
    .line 236
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 237
    .line 238
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccountType()I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-ne v0, v3, :cond_4

    .line 243
    .line 244
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_account:Landroid/widget/TextView;

    .line 245
    .line 246
    const-string v1, "#FF8809"

    .line 247
    .line 248
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    .line 254
    .line 255
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_account:Landroid/widget/TextView;

    .line 256
    .line 257
    const-string v1, "\u5b8c\u5584\u8d44\u6599/\u9886\u793c\u5305/\u62a2\u7ea2\u5305"

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    .line 261
    .line 262
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_account:Landroid/widget/TextView;

    .line 263
    .line 264
    const v1, 0x7f08008a

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 268
    .line 269
    .line 270
    goto :goto_1

    .line 271
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_account:Landroid/widget/TextView;

    .line 272
    .line 273
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 274
    .line 275
    .line 276
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_account:Landroid/widget/TextView;

    .line 277
    .line 278
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    .line 280
    .line 281
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_account:Landroid/widget/TextView;

    .line 282
    .line 283
    const-string v1, "#A9A9A9"

    .line 284
    .line 285
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 290
    .line 291
    .line 292
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_account:Landroid/widget/TextView;

    .line 293
    .line 294
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 295
    .line 296
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    .line 302
    .line 303
    goto :goto_1

    .line 304
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_vip:Landroid/widget/ImageView;

    .line 305
    .line 306
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    .line 308
    .line 309
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->userCenterBeans:Lcom/join/mgps/dto/UserCenterBean;

    .line 310
    .line 311
    if-eqz v0, :cond_8

    .line 312
    .line 313
    invoke-virtual {v0}, Lcom/join/mgps/dto/UserCenterBean;->getMember_func()Ljava/util/List;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    if-eqz v0, :cond_8

    .line 318
    .line 319
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    if-ltz v1, :cond_6

    .line 324
    .line 325
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    check-cast v1, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;

    .line 330
    .line 331
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_copperTitle:Landroid/widget/TextView;

    .line 332
    .line 333
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getTitle()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    .line 339
    .line 340
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_coppers:Landroid/widget/TextView;

    .line 341
    .line 342
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getSubTitle()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    .line 348
    .line 349
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    const/4 v2, 0x1

    .line 354
    if-lt v1, v2, :cond_7

    .line 355
    .line 356
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    check-cast v1, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;

    .line 361
    .line 362
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onekeyTitle:Landroid/widget/TextView;

    .line 363
    .line 364
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getTitle()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    .line 370
    .line 371
    iget-object v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->onekeyMessage:Landroid/widget/TextView;

    .line 372
    .line 373
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getSubTitle()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    .line 379
    .line 380
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    if-lt v1, v3, :cond_8

    .line 385
    .line 386
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    check-cast v0, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;

    .line 391
    .line 392
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->svipTitle:Landroid/widget/TextView;

    .line 393
    .line 394
    invoke-virtual {v0}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getTitle()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    .line 400
    .line 401
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->tv_user_svip:Landroid/widget/TextView;

    .line 402
    .line 403
    invoke-virtual {v0}, Lcom/join/mgps/dto/UserCenterBean$TitleItemBean;->getSubTitle()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    .line 409
    .line 410
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->rl_members:Landroid/widget/RelativeLayout;

    .line 411
    .line 412
    new-instance v1, Lcom/join/mgps/activity/login/UsercenterFragmentNew$3;

    .line 413
    .line 414
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew$3;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    .line 419
    .line 420
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_svip:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 421
    .line 422
    new-instance v1, Lcom/join/mgps/activity/login/UsercenterFragmentNew$4;

    .line 423
    .line 424
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew$4;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    .line 429
    .line 430
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 431
    .line 432
    new-instance v1, Lcom/join/mgps/activity/login/UsercenterFragmentNew$5;

    .line 433
    .line 434
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew$5;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    .line 439
    .line 440
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_user_avatar2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 441
    .line 442
    new-instance v1, Lcom/join/mgps/activity/login/UsercenterFragmentNew$6;

    .line 443
    .line 444
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew$6;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    .line 449
    .line 450
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->iv_arrow:Landroid/widget/ImageView;

    .line 451
    .line 452
    new-instance v1, Lcom/join/mgps/activity/login/UsercenterFragmentNew$7;

    .line 453
    .line 454
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew$7;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    .line 459
    .line 460
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->ll_userinfo:Landroid/widget/LinearLayout;

    .line 461
    .line 462
    new-instance v1, Lcom/join/mgps/activity/login/UsercenterFragmentNew$8;

    .line 463
    .line 464
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew$8;-><init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    .line 469
    .line 470
    goto :goto_2

    .line 471
    :catch_0
    move-exception v0

    .line 472
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 473
    .line 474
    .line 475
    :goto_2
    return-void
.end method

.method public showNotif()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->showNotifUi()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method showNotifUi()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mAdapter:Lcom/join/mgps/adapter/m8;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v1, Lcom/MApplication;->T:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/m8;->l(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mAdapter:Lcom/join/mgps/adapter/m8;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :cond_0
    :goto_0
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method test()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    sget-boolean v0, Lcom/join/android/app/common/http/c;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "http://apphd.5fun.net/static/papa_url_demo/index.html"

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method tokenFailure()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const v0, 0x7f120382

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->showToast(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/b;->accountLoginOut(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->touristLogin()V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method touristLogin()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_4

    .line 13
    .line 14
    sput v2, Lcom/MApplication;->T:I

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isLogined()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/TouristLoginRequestBean;

    .line 24
    .line 25
    invoke-direct {v1}, Lcom/join/mgps/dto/TouristLoginRequestBean;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "2"

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-static {v4}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4}, Lcom/join/android/app/common/utils/q;->A()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setVersion(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setMac(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setSource(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 55
    .line 56
    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->touriseTUID()Lorg/androidannotations/api/sharedpreferences/k;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Ljava/lang/Long;

    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 67
    .line 68
    .line 69
    move-result-wide v3

    .line 70
    invoke-virtual {v1, v3, v4}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setTuid(J)V

    .line 71
    .line 72
    .line 73
    invoke-static {v1}, Lcom/join/mgps/Util/k2;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/TouristLoginRequestBean;->setSign(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v3, v0}, Lcom/join/mgps/Util/b;->setLocalUserIcon(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/join/mgps/dto/TouristLoginRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/b;->I(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    if-eqz v0, :cond_3

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-nez v1, :cond_3

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_2

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    if-eqz v0, :cond_1

    .line 132
    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {v0}, Lg8/a;->a(Lcom/join/mgps/dto/AccountBean;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {v1, v0, v3}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 150
    .line 151
    .line 152
    :cond_1
    iput-boolean v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetingUserInfo:Z

    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->refreshViews()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->getUserInfo()V

    .line 158
    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_2
    iput-boolean v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetingUserInfo:Z

    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->showToast(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->loadViewConfigsFromLocal()V

    .line 177
    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_3
    iput-boolean v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetingUserInfo:Z

    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->loadViewConfigsFromLocal()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .line 184
    .line 185
    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    iput-boolean v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetingUserInfo:Z

    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->loadViewConfigsFromLocal()V

    .line 193
    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_4
    iput-boolean v2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->isGetingUserInfo:Z

    .line 197
    .line 198
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->loadViewConfigsFromLocal()V

    .line 199
    .line 200
    .line 201
    :goto_0
    return-void
.end method

.method updateAdapterByNewMsgCount(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p1, v0, :cond_6

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_3

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas:Ljava/util/List;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas:Ljava/util/List;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_0
    if-ge v3, v1, :cond_4

    .line 25
    .line 26
    iget-object v4, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    .line 33
    .line 34
    invoke-virtual {v4}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getSub()Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    if-nez v5, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {v4}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getSub()Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Lcom/join/mgps/dto/JumpInfoBean;

    .line 50
    .line 51
    invoke-virtual {v4}, Lcom/join/mgps/dto/JumpInfoBean;->getJump_type()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    invoke-virtual {v4}, Lcom/join/mgps/dto/JumpInfoBean;->getLink_type()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    const/4 v6, 0x3

    .line 68
    if-ne v4, v6, :cond_3

    .line 69
    .line 70
    const/16 v4, 0xf

    .line 71
    .line 72
    if-ne v5, v4, :cond_3

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    const/4 v3, -0x1

    .line 79
    :goto_2
    if-ltz v3, :cond_5

    .line 80
    .line 81
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mUserCenterDatas:Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    .line 88
    .line 89
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->setUnReadCount(I)V

    .line 90
    .line 91
    .line 92
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mAdapter:Lcom/join/mgps/adapter/m8;

    .line 93
    .line 94
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->showNotifUi()V

    .line 98
    .line 99
    .line 100
    monitor-exit v0

    .line 101
    return-void

    .line 102
    :catchall_0
    move-exception p1

    .line 103
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    throw p1

    .line 105
    :cond_6
    :goto_3
    return-void
.end method

.method updateDownloadView()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadingMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadView1:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/customview/CustomerDownloadView;->setDownloadGameNum()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadView2:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/join/mgps/customview/CustomerDownloadView;->setDownloadGameNum()V

    .line 19
    .line 20
    .line 21
    :cond_1
    if-lez v0, :cond_3

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadView1:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->d()V

    .line 28
    .line 29
    .line 30
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadView2:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 31
    .line 32
    if-eqz v0, :cond_5

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->d()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadView1:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->g()V

    .line 43
    .line 44
    .line 45
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->downloadView2:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 46
    .line 47
    if-eqz v0, :cond_5

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->g()V

    .line 50
    .line 51
    .line 52
    :cond_5
    :goto_0
    return-void
.end method

.method public updateInfo(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->refreshUserCenter()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method wrapDatas(Lcom/join/mgps/dto/UserCenterBean;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userCenterBean",
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/UserCenterBean;",
            "I)",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterBean;->getFirst_group()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterBean;->getSecond_group()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-ne p2, v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterBean;->getThird_group()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    const/4 v1, 0x2

    .line 36
    if-ne p2, v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/join/mgps/dto/UserCenterBean;->getThird_group()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    :cond_2
    return-object v0

    .line 46
    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    return-object v0
.end method

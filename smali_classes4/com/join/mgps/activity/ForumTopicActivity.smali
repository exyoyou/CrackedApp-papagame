.class public Lcom/join/mgps/activity/ForumTopicActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ForumTopicActivity$MediaCmd;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d069e
.end annotation


# static fields
.field public static final KEY_FORUM_TOPIC_BEAN:Ljava/lang/String; = "key_forum_topic_bean"

.field public static final KEY_MEDIACMD:Ljava/lang/String; = "key_mediacmd"

.field public static final KEY_MEDIACMDPARAMS:Ljava/lang/String; = "key_mediacmd_params"


# instance fields
.field private TAG:Ljava/lang/String;

.field actionbarLayout:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field adapter:Lcom/join/mgps/adapter/ForumTopicAdapter;

.field bottom:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field cover:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field coverUrl:Ljava/lang/String;

.field currentPlayPosition:I

.field extBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field extFuncPopWindow:Lcom/join/mgps/customview/e;

.field helper:Lcom/join/android/app/component/video/c;

.field isActive:Z

.field layout_title:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field volatile listData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumTopicAdapter$t;",
            ">;"
        }
    .end annotation
.end field

.field listView:Lcom/join/mgps/customview/XListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field listViewRefreshListener:Lcom/join/mgps/customview/j;

.field loadingLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loadingView:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mDialog:Lcom/join/mgps/customview/t;

.field mForumPostsOnClickListener:Lcom/join/mgps/adapter/ForumTopicAdapter$k;

.field mFullScreenFlag:Z

.field mGestureDetector:Landroid/view/GestureDetector;

.field mHandler:Landroid/os/Handler;

.field mOffsetY:I

.field mTop:I

.field mediaController:Lcom/join/android/app/component/video/MediaController;

.field pageCount:I

.field pageLoading:I

.field play:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field posts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;"
        }
    .end annotation
.end field

.field rpcForumClient:Lcom/join/mgps/rpc/i;

.field topicBean:Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

.field video:Lcom/join/android/app/component/video/MyVideoView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field videoContainer:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field videoDefaultHeight:I

.field videoIndex:I

.field videoLayout:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v0, Lcom/join/mgps/activity/ForumTopicActivity$k;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumTopicActivity$k;-><init>(Lcom/join/mgps/activity/ForumTopicActivity;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->currentPlayPosition:I

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->isActive:Z

    .line 26
    .line 27
    iput v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->mTop:I

    .line 28
    .line 29
    iput v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->mOffsetY:I

    .line 30
    .line 31
    iput v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->videoDefaultHeight:I

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 35
    .line 36
    new-instance v0, Landroid/view/GestureDetector;

    .line 37
    .line 38
    new-instance v1, Lcom/join/mgps/activity/ForumTopicActivity$f;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumTopicActivity$f;-><init>(Lcom/join/mgps/activity/ForumTopicActivity;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 47
    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/ForumTopicActivity;Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity;->isLogined(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/ForumTopicActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->loading()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
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
    return-object p1
.end method

.method private clearMemory()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->listData:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->listData:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->posts:Ljava/util/List;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 15
    .line 16
    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->topicBean:Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->mHandler:Landroid/os/Handler;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->listViewRefreshListener:Lcom/join/mgps/customview/j;

    .line 25
    .line 26
    return-void
.end method

.method private dialogDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->mDialog:Lcom/join/mgps/customview/t;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private hideUserUi()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->actionbarLayout:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->listView:Lcom/join/mgps/customview/XListView;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private initActionBar()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->topicBean:Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumTopicBean;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->layout_title:Landroid/widget/TextView;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->topicBean:Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumTopicBean;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->layout_title:Landroid/widget/TextView;

    .line 28
    .line 29
    const-string v1, "\u8bdd\u9898\u4e13\u533a"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method private initListView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->listView:Lcom/join/mgps/customview/XListView;

    .line 2
    .line 3
    sget v1, Lcom/join/mgps/Util/r0;->e:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView;->setPreLoadCount(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->listView:Lcom/join/mgps/customview/XListView;

    .line 9
    .line 10
    new-instance v1, Lcom/join/mgps/activity/ForumTopicActivity$g;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumTopicActivity$g;-><init>(Lcom/join/mgps/activity/ForumTopicActivity;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/join/mgps/activity/ForumTopicActivity$h;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumTopicActivity$h;-><init>(Lcom/join/mgps/activity/ForumTopicActivity;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->listViewRefreshListener:Lcom/join/mgps/customview/j;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->listView:Lcom/join/mgps/customview/XListView;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->listData:Ljava/util/List;

    .line 36
    .line 37
    new-instance v0, Lcom/join/android/app/component/video/c;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    invoke-direct {v0, p0, v1}, Lcom/join/android/app/component/video/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->helper:Lcom/join/android/app/component/video/c;

    .line 45
    .line 46
    new-instance v0, Lcom/join/mgps/adapter/ForumTopicAdapter;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->helper:Lcom/join/android/app/component/video/c;

    .line 49
    .line 50
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/adapter/ForumTopicAdapter;-><init>(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->adapter:Lcom/join/mgps/adapter/ForumTopicAdapter;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->listView:Lcom/join/mgps/customview/XListView;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->listView:Lcom/join/mgps/customview/XListView;

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Lcom/join/mgps/activity/ForumTopicActivity$i;

    .line 66
    .line 67
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumTopicActivity$i;-><init>(Lcom/join/mgps/activity/ForumTopicActivity;)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->mForumPostsOnClickListener:Lcom/join/mgps/adapter/ForumTopicAdapter$k;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->adapter:Lcom/join/mgps/adapter/ForumTopicAdapter;

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Lcom/join/mgps/adapter/ForumTopicAdapter;->x(Lcom/join/mgps/adapter/ForumTopicAdapter$k;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->listView:Lcom/join/mgps/customview/XListView;

    .line 78
    .line 79
    new-instance v1, Lcom/join/mgps/activity/ForumTopicActivity$j;

    .line 80
    .line 81
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumTopicActivity$j;-><init>(Lcom/join/mgps/activity/ForumTopicActivity;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method private initViews()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumTopicActivity;->changeLoadingState(I)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->initListView()V

    .line 6
    .line 7
    .line 8
    return-void
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
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity;->accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method private loadSrvData()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumTopicActivity;->loadForumPostsData(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private loading()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumTopicActivity;->changeLoadingState(I)V

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->loadSrvData()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const v0, 0x7f12031e

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumTopicActivity;->showToast(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/16 v0, 0x9

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumTopicActivity;->changeLoadingState(I)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method private playVideo()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->videoUrl:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->coverUrl:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 12
    .line 13
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 14
    .line 15
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 19
    .line 20
    invoke-static {v2, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->loadingLayout:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->mediaController:Lcom/join/android/app/component/video/MediaController;

    .line 26
    .line 27
    const/16 v4, 0x8

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    new-instance v2, Lcom/join/android/app/component/video/MediaController;

    .line 32
    .line 33
    invoke-direct {v2, p0}, Lcom/join/android/app/component/video/MediaController;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->mediaController:Lcom/join/android/app/component/video/MediaController;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/join/android/app/component/video/MediaController;->q()V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->mediaController:Lcom/join/android/app/component/video/MediaController;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/join/android/app/component/video/MediaController;->hide()V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->mediaController:Lcom/join/android/app/component/video/MediaController;

    .line 47
    .line 48
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/join/android/app/component/video/MyVideoView;->isPlaying()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 60
    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/join/android/app/component/video/MyVideoView;->I()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->mediaController:Lcom/join/android/app/component/video/MediaController;

    .line 70
    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->mediaController:Lcom/join/android/app/component/video/MediaController;

    .line 82
    .line 83
    iget-object v4, p0, Lcom/join/mgps/activity/ForumTopicActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 84
    .line 85
    invoke-virtual {v2, v4}, Lcom/join/android/app/component/video/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 86
    .line 87
    .line 88
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->mediaController:Lcom/join/android/app/component/video/MediaController;

    .line 89
    .line 90
    iget-object v4, p0, Lcom/join/mgps/activity/ForumTopicActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 91
    .line 92
    invoke-virtual {v2, v4}, Lcom/join/android/app/component/video/MediaController;->setMediaPlayer(Lcom/join/android/app/component/video/MediaController$e;)V

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 96
    .line 97
    iget-object v4, p0, Lcom/join/mgps/activity/ForumTopicActivity;->mediaController:Lcom/join/android/app/component/video/MediaController;

    .line 98
    .line 99
    invoke-virtual {v2, v4}, Lcom/join/android/app/component/video/MyVideoView;->setMediaController(Lcom/join/android/app/component/video/MediaController;)V

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 103
    .line 104
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/join/android/app/component/video/MyVideoView;->E()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_3

    .line 117
    .line 118
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/join/android/app/component/video/MyVideoView;->isPlaying()Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-nez v1, :cond_3

    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->resume()V

    .line 127
    .line 128
    .line 129
    const-string v0, "play a last video ..."

    .line 130
    .line 131
    filled-new-array {v0}, [Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 140
    .line 141
    invoke-virtual {v1, v0}, Lcom/join/android/app/component/video/MyVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const-string v0, "play a new video ..."

    .line 145
    .line 146
    filled-new-array {v0}, [Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 154
    .line 155
    new-instance v1, Lcom/join/mgps/activity/ForumTopicActivity$a;

    .line 156
    .line 157
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumTopicActivity$a;-><init>(Lcom/join/mgps/activity/ForumTopicActivity;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 164
    .line 165
    new-instance v1, Lcom/join/mgps/activity/ForumTopicActivity$b;

    .line 166
    .line 167
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumTopicActivity$b;-><init>(Lcom/join/mgps/activity/ForumTopicActivity;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 174
    .line 175
    new-instance v1, Lcom/join/mgps/activity/ForumTopicActivity$c;

    .line 176
    .line 177
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumTopicActivity$c;-><init>(Lcom/join/mgps/activity/ForumTopicActivity;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 184
    .line 185
    new-instance v1, Lcom/join/mgps/activity/ForumTopicActivity$d;

    .line 186
    .line 187
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumTopicActivity$d;-><init>(Lcom/join/mgps/activity/ForumTopicActivity;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->setScreenChangedListener(Lcom/join/android/app/component/video/MyVideoView$h;)V

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->play:Landroid/widget/ImageView;

    .line 194
    .line 195
    new-instance v1, Lcom/join/mgps/activity/ForumTopicActivity$e;

    .line 196
    .line 197
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumTopicActivity$e;-><init>(Lcom/join/mgps/activity/ForumTopicActivity;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    .line 202
    .line 203
    return-void
.end method

.method private processPost(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "page",
            "obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->posts:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->posts:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    if-eqz p2, :cond_2

    .line 13
    .line 14
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    if-ne p1, v0, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->posts:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 26
    .line 27
    .line 28
    iput v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->pageCount:I

    .line 29
    .line 30
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->posts:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->stopXlistRefreshAndLoadMore()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->notifyAdapterDataChanged()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private processTopic(Lcom/join/mgps/dto/ForumBean$ForumTopicBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forumTopicBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->topicBean:Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    .line 2
    .line 3
    return-void
.end method

.method private setForumPostViewsData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
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
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v0, v1, :cond_1

    .line 16
    .line 17
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 22
    .line 23
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/ForumTopicActivity;->setPostViewData(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    :goto_1
    return-void
.end method

.method private setPostViewData(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posts"
        }
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

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
    new-instance v1, Lcom/join/mgps/adapter/ForumTopicAdapter$t;

    .line 12
    .line 13
    sget-object v2, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->POST_HEADER:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    .line 14
    .line 15
    new-instance v3, Lcom/join/mgps/adapter/ForumTopicAdapter$t$g;

    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getAvatar_src()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v9

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getNickname()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v10

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getAdd_time()J

    .line 27
    .line 28
    .line 29
    move-result-wide v11

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const/16 v24, 0x0

    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    if-lez v4, :cond_0

    .line 38
    .line 39
    const/4 v13, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v13, 0x0

    .line 42
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 43
    .line 44
    .line 45
    move-result v14

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    .line 47
    .line 48
    .line 49
    move-result v15

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getUid()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-ne v4, v0, :cond_1

    .line 61
    .line 62
    const/16 v16, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const/16 v16, 0x0

    .line 66
    .line 67
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getForum_auth()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-ne v0, v5, :cond_2

    .line 72
    .line 73
    const/16 v17, 0x1

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    const/16 v17, 0x0

    .line 77
    .line 78
    :goto_2
    const/16 v18, 0x0

    .line 79
    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getVip_level()I

    .line 81
    .line 82
    .line 83
    move-result v19

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSvip_level()I

    .line 85
    .line 86
    .line 87
    move-result v20

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-string v4, ""

    .line 93
    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;->getBattleTitle()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    move-object/from16 v21, v0

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_3
    move-object/from16 v21, v4

    .line 108
    .line 109
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-eqz v0, :cond_4

    .line 114
    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCopper_title()Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;->getBattleColor()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    move-object/from16 v22, v0

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_4
    move-object/from16 v22, v4

    .line 127
    .line 128
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getUid()I

    .line 129
    .line 130
    .line 131
    move-result v23

    .line 132
    move-object v7, v3

    .line 133
    invoke-direct/range {v7 .. v23}, Lcom/join/mgps/adapter/ForumTopicAdapter$t$g;-><init>(ZLjava/lang/String;Ljava/lang/String;JZIIZZIIILjava/lang/String;Ljava/lang/String;I)V

    .line 134
    .line 135
    .line 136
    invoke-direct {v1, v2, v3}, Lcom/join/mgps/adapter/ForumTopicAdapter$t;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, v6, Lcom/join/mgps/activity/ForumTopicActivity;->listData:Ljava/util/List;

    .line 140
    .line 141
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    if-eqz v0, :cond_7

    .line 149
    .line 150
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-nez v0, :cond_7

    .line 163
    .line 164
    new-instance v0, Lcom/join/mgps/adapter/ForumTopicAdapter$t;

    .line 165
    .line 166
    sget-object v1, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->POST_SUBJECT:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    .line 167
    .line 168
    new-instance v2, Lcom/join/mgps/adapter/ForumTopicAdapter$t$j;

    .line 169
    .line 170
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    if-lez v3, :cond_5

    .line 175
    .line 176
    const/4 v8, 0x1

    .line 177
    goto :goto_5

    .line 178
    :cond_5
    const/4 v8, 0x0

    .line 179
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    .line 188
    .line 189
    .line 190
    move-result v11

    .line 191
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    if-lez v3, :cond_6

    .line 196
    .line 197
    const/4 v12, 0x1

    .line 198
    goto :goto_6

    .line 199
    :cond_6
    const/4 v12, 0x0

    .line 200
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    .line 206
    .line 207
    .line 208
    move-result v7

    .line 209
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v13

    .line 219
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    .line 220
    .line 221
    .line 222
    move-result-object v14

    .line 223
    move-object v7, v2

    .line 224
    invoke-direct/range {v7 .. v14}, Lcom/join/mgps/adapter/ForumTopicAdapter$t$j;-><init>(ZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;)V

    .line 225
    .line 226
    .line 227
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumTopicAdapter$t;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    iget-object v1, v6, Lcom/join/mgps/activity/ForumTopicActivity;->listData:Ljava/util/List;

    .line 231
    .line 232
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    if-eqz v0, :cond_9

    .line 240
    .line 241
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_8

    .line 254
    .line 255
    goto :goto_7

    .line 256
    :cond_8
    const/4 v7, 0x0

    .line 257
    goto :goto_8

    .line 258
    :cond_9
    :goto_7
    const/4 v7, 0x1

    .line 259
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-nez v0, :cond_e

    .line 268
    .line 269
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-nez v0, :cond_e

    .line 282
    .line 283
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-lez v0, :cond_a

    .line 292
    .line 293
    const/4 v3, 0x1

    .line 294
    goto :goto_9

    .line 295
    :cond_a
    const/4 v3, 0x0

    .line 296
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .line 300
    .line 301
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    .line 302
    .line 303
    .line 304
    move-result v2

    .line 305
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v8

    .line 315
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    .line 316
    .line 317
    .line 318
    move-result-object v9

    .line 319
    move-object/from16 v0, p0

    .line 320
    .line 321
    move v2, v7

    .line 322
    move-object v10, v4

    .line 323
    move-object v4, v8

    .line 324
    const/4 v8, 0x1

    .line 325
    move-object v5, v9

    .line 326
    invoke-static/range {v0 .. v5}, Lcom/join/mgps/Util/r0;->m0(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    .line 327
    .line 328
    .line 329
    move-result-object v19

    .line 330
    new-instance v0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$i;

    .line 331
    .line 332
    if-eqz v7, :cond_b

    .line 333
    .line 334
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    if-lez v1, :cond_b

    .line 339
    .line 340
    const/4 v12, 0x1

    .line 341
    goto :goto_a

    .line 342
    :cond_b
    const/4 v12, 0x0

    .line 343
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v13

    .line 347
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 348
    .line 349
    .line 350
    move-result v14

    .line 351
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    .line 352
    .line 353
    .line 354
    move-result v15

    .line 355
    if-eqz v7, :cond_c

    .line 356
    .line 357
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    if-lez v1, :cond_c

    .line 362
    .line 363
    const/16 v16, 0x1

    .line 364
    .line 365
    goto :goto_b

    .line 366
    :cond_c
    const/16 v16, 0x0

    .line 367
    .line 368
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    .line 369
    .line 370
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    .line 372
    .line 373
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    .line 374
    .line 375
    .line 376
    move-result v2

    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v17

    .line 387
    if-eqz v7, :cond_d

    .line 388
    .line 389
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    goto :goto_c

    .line 394
    :cond_d
    const/4 v1, 0x0

    .line 395
    :goto_c
    move-object/from16 v18, v1

    .line 396
    .line 397
    move-object v11, v0

    .line 398
    invoke-direct/range {v11 .. v19}, Lcom/join/mgps/adapter/ForumTopicAdapter$t$i;-><init>(ZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;Landroid/text/SpannableStringBuilder;)V

    .line 399
    .line 400
    .line 401
    new-instance v1, Lcom/join/mgps/adapter/ForumTopicAdapter$t;

    .line 402
    .line 403
    sget-object v2, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->POST_MESSAGE:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    .line 404
    .line 405
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumTopicAdapter$t;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;Ljava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    iget-object v2, v6, Lcom/join/mgps/activity/ForumTopicActivity;->listData:Ljava/util/List;

    .line 409
    .line 410
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    iget-object v1, v6, Lcom/join/mgps/activity/ForumTopicActivity;->adapter:Lcom/join/mgps/adapter/ForumTopicAdapter;

    .line 414
    .line 415
    invoke-virtual {v1}, Lcom/join/mgps/adapter/ForumTopicAdapter;->g()Lcom/join/android/app/component/optimizetext/b;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    invoke-virtual {v1, v0}, Lcom/join/android/app/component/optimizetext/b;->e(Lcom/join/android/app/component/optimizetext/c;)V

    .line 420
    .line 421
    .line 422
    goto :goto_d

    .line 423
    :cond_e
    move-object v10, v4

    .line 424
    :goto_d
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRs_list()Ljava/util/List;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    new-instance v1, Ljava/util/ArrayList;

    .line 429
    .line 430
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .line 432
    .line 433
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->isAttach_video()Z

    .line 434
    .line 435
    .line 436
    move-result v2

    .line 437
    move-object v3, v10

    .line 438
    move-object v4, v3

    .line 439
    const/4 v5, 0x0

    .line 440
    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 441
    .line 442
    .line 443
    move-result v7

    .line 444
    if-ge v5, v7, :cond_11

    .line 445
    .line 446
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v7

    .line 450
    check-cast v7, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;

    .line 451
    .line 452
    invoke-virtual {v7}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v8

    .line 456
    const-string v9, "pic"

    .line 457
    .line 458
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 459
    .line 460
    .line 461
    move-result v8

    .line 462
    if-eqz v8, :cond_f

    .line 463
    .line 464
    invoke-virtual {v7}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v7

    .line 468
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    goto :goto_f

    .line 472
    :cond_f
    invoke-virtual {v7}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v8

    .line 476
    const-string v9, "video"

    .line 477
    .line 478
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    move-result v8

    .line 482
    if-eqz v8, :cond_10

    .line 483
    .line 484
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 485
    .line 486
    .line 487
    move-result v8

    .line 488
    if-eqz v8, :cond_10

    .line 489
    .line 490
    invoke-virtual {v7}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    invoke-virtual {v7}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v4

    .line 498
    :cond_10
    :goto_f
    add-int/lit8 v5, v5, 0x1

    .line 499
    .line 500
    goto :goto_e

    .line 501
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v5

    .line 505
    invoke-static {v5}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 506
    .line 507
    .line 508
    move-result v5

    .line 509
    if-eqz v5, :cond_12

    .line 510
    .line 511
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v5

    .line 515
    goto :goto_10

    .line 516
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v5

    .line 520
    invoke-static {v5}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 521
    .line 522
    .line 523
    move-result v5

    .line 524
    if-eqz v5, :cond_13

    .line 525
    .line 526
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v5

    .line 530
    goto :goto_10

    .line 531
    :cond_13
    move-object v5, v10

    .line 532
    :goto_10
    if-eqz v2, :cond_14

    .line 533
    .line 534
    new-instance v0, Lcom/join/mgps/adapter/ForumTopicAdapter$t;

    .line 535
    .line 536
    sget-object v1, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->POST_VIDEO_THUMBNAIL:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    .line 537
    .line 538
    new-instance v2, Lcom/join/mgps/adapter/ForumTopicAdapter$t$l;

    .line 539
    .line 540
    invoke-direct {v2, v3, v4, v5}, Lcom/join/mgps/adapter/ForumTopicAdapter$t$l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumTopicAdapter$t;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;Ljava/lang/Object;)V

    .line 544
    .line 545
    .line 546
    iget-object v1, v6, Lcom/join/mgps/activity/ForumTopicActivity;->listData:Ljava/util/List;

    .line 547
    .line 548
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    .line 550
    .line 551
    goto :goto_11

    .line 552
    :cond_14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 553
    .line 554
    .line 555
    move-result v2

    .line 556
    if-eqz v2, :cond_15

    .line 557
    .line 558
    new-instance v2, Lcom/join/mgps/adapter/ForumTopicAdapter$t;

    .line 559
    .line 560
    sget-object v3, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->POST_IMAGE_THUMBNAIL:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    .line 561
    .line 562
    new-instance v4, Lcom/join/mgps/adapter/ForumTopicAdapter$t$h;

    .line 563
    .line 564
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 565
    .line 566
    .line 567
    move-result v5

    .line 568
    invoke-direct {v4, v0, v1, v5}, Lcom/join/mgps/adapter/ForumTopicAdapter$t$h;-><init>(Ljava/util/List;Ljava/util/List;I)V

    .line 569
    .line 570
    .line 571
    invoke-direct {v2, v3, v4}, Lcom/join/mgps/adapter/ForumTopicAdapter$t;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;Ljava/lang/Object;)V

    .line 572
    .line 573
    .line 574
    iget-object v0, v6, Lcom/join/mgps/activity/ForumTopicActivity;->listData:Ljava/util/List;

    .line 575
    .line 576
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    .line 578
    .line 579
    :cond_15
    :goto_11
    new-instance v0, Lcom/join/mgps/adapter/ForumTopicAdapter$t;

    .line 580
    .line 581
    sget-object v1, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->POST_FOOTER:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    .line 582
    .line 583
    new-instance v2, Lcom/join/mgps/adapter/ForumTopicAdapter$t$f;

    .line 584
    .line 585
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 586
    .line 587
    .line 588
    move-result v8

    .line 589
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    .line 590
    .line 591
    .line 592
    move-result v9

    .line 593
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFname()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v10

    .line 597
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getView()I

    .line 598
    .line 599
    .line 600
    move-result v11

    .line 601
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCommit()I

    .line 602
    .line 603
    .line 604
    move-result v12

    .line 605
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    .line 606
    .line 607
    .line 608
    move-result v13

    .line 609
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    .line 610
    .line 611
    .line 612
    move-result v14

    .line 613
    const/4 v15, 0x0

    .line 614
    move-object v7, v2

    .line 615
    invoke-direct/range {v7 .. v15}, Lcom/join/mgps/adapter/ForumTopicAdapter$t$f;-><init>(IILjava/lang/String;IIIZZ)V

    .line 616
    .line 617
    .line 618
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumTopicAdapter$t;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;Ljava/lang/Object;)V

    .line 619
    .line 620
    .line 621
    iget-object v1, v6, Lcom/join/mgps/activity/ForumTopicActivity;->listData:Ljava/util/List;

    .line 622
    .line 623
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    .line 625
    .line 626
    return-void
.end method

.method private showUserUi()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->actionbarLayout:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->listView:Lcom/join/mgps/customview/XListView;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->A0()Lcom/join/mgps/rpc/impl/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->getIntentInfo()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->initActionBar()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->initViews()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->loading()V

    .line 22
    .line 23
    .line 24
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

.method public callbackPlayVideo(Landroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "key_mediacmd"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "key_mediacmd_params"

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, [Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "cmd="

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v3, "params="

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const-string v3, "callbackPlayVideo"

    .line 57
    .line 58
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    sget-object v1, Lcom/join/mgps/activity/ForumTopicActivity$MediaCmd;->CMD_PLAY:Lcom/join/mgps/activity/ForumTopicActivity$MediaCmd;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    const/4 v2, 0x1

    .line 76
    const/4 v3, 0x0

    .line 77
    if-eqz v1, :cond_6

    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    move-object v1, v0

    .line 81
    const/4 v4, 0x0

    .line 82
    :goto_0
    array-length v5, p1

    .line 83
    if-ge v4, v5, :cond_5

    .line 84
    .line 85
    aget-object v5, p1, v4

    .line 86
    .line 87
    check-cast v5, Ljava/lang/String;

    .line 88
    .line 89
    if-eqz v4, :cond_3

    .line 90
    .line 91
    if-eq v4, v2, :cond_2

    .line 92
    .line 93
    const/4 v6, 0x2

    .line 94
    if-eq v4, v6, :cond_1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    move-object v1, v5

    .line 98
    goto :goto_1

    .line 99
    :cond_2
    move-object v0, v5

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    iget v6, p0, Lcom/join/mgps/activity/ForumTopicActivity;->videoIndex:I

    .line 106
    .line 107
    if-ne v5, v6, :cond_4

    .line 108
    .line 109
    return-void

    .line 110
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->stop()V

    .line 111
    .line 112
    .line 113
    iput v5, p0, Lcom/join/mgps/activity/ForumTopicActivity;->videoIndex:I

    .line 114
    .line 115
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v4, "videoUrl="

    .line 124
    .line 125
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v5, "coverUrl="

    .line 141
    .line 142
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    const-string v5, "CMD_PLAY"

    .line 153
    .line 154
    filled-new-array {v5, p1, v4}, [Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->videoContainer:Landroid/widget/FrameLayout;

    .line 162
    .line 163
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 167
    .line 168
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->isActive:Z

    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->setVideoContainerParams()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumTopicActivity;->play(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_4

    .line 180
    .line 181
    :cond_6
    sget-object v1, Lcom/join/mgps/activity/ForumTopicActivity$MediaCmd;->CMD_PLAY_BACKGROUND:Lcom/join/mgps/activity/ForumTopicActivity$MediaCmd;

    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-eqz v1, :cond_a

    .line 192
    .line 193
    iget v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->videoIndex:I

    .line 194
    .line 195
    const/4 v1, -0x1

    .line 196
    if-ne v0, v1, :cond_7

    .line 197
    .line 198
    return-void

    .line 199
    :cond_7
    aget-object p1, p1, v3

    .line 200
    .line 201
    check-cast p1, Ljava/lang/String;

    .line 202
    .line 203
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-eqz p1, :cond_8

    .line 208
    .line 209
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->videoContainer:Landroid/widget/FrameLayout;

    .line 210
    .line 211
    const/16 v0, 0x8

    .line 212
    .line 213
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 214
    .line 215
    .line 216
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 217
    .line 218
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 219
    .line 220
    .line 221
    iput-boolean v3, p0, Lcom/join/mgps/activity/ForumTopicActivity;->isActive:Z

    .line 222
    .line 223
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->stop()V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_4

    .line 227
    .line 228
    :cond_8
    iget p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->videoIndex:I

    .line 229
    .line 230
    if-ne p1, v1, :cond_9

    .line 231
    .line 232
    return-void

    .line 233
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->videoContainer:Landroid/widget/FrameLayout;

    .line 234
    .line 235
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 236
    .line 237
    .line 238
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 239
    .line 240
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 241
    .line 242
    .line 243
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->isActive:Z

    .line 244
    .line 245
    goto/16 :goto_4

    .line 246
    .line 247
    :cond_a
    sget-object v1, Lcom/join/mgps/activity/ForumTopicActivity$MediaCmd;->CMD_PAUSE:Lcom/join/mgps/activity/ForumTopicActivity$MediaCmd;

    .line 248
    .line 249
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    if-eqz v1, :cond_b

    .line 258
    .line 259
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->pause()V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_4

    .line 263
    .line 264
    :cond_b
    sget-object v1, Lcom/join/mgps/activity/ForumTopicActivity$MediaCmd;->CMD_STOP:Lcom/join/mgps/activity/ForumTopicActivity$MediaCmd;

    .line 265
    .line 266
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    if-eqz v1, :cond_c

    .line 275
    .line 276
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->stop()V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_4

    .line 280
    .line 281
    :cond_c
    sget-object v1, Lcom/join/mgps/activity/ForumTopicActivity$MediaCmd;->CMD_FULLSCREEN:Lcom/join/mgps/activity/ForumTopicActivity$MediaCmd;

    .line 282
    .line 283
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    if-eqz v1, :cond_10

    .line 292
    .line 293
    const-string v0, "false"

    .line 294
    .line 295
    const/4 v1, 0x0

    .line 296
    :goto_2
    array-length v4, p1

    .line 297
    if-ge v1, v4, :cond_f

    .line 298
    .line 299
    if-nez v1, :cond_d

    .line 300
    .line 301
    aget-object v0, p1, v3

    .line 302
    .line 303
    check-cast v0, Ljava/lang/String;

    .line 304
    .line 305
    :cond_d
    if-ne v1, v2, :cond_e

    .line 306
    .line 307
    aget-object v4, p1, v2

    .line 308
    .line 309
    check-cast v4, Ljava/lang/String;

    .line 310
    .line 311
    :cond_e
    add-int/lit8 v1, v1, 0x1

    .line 312
    .line 313
    goto :goto_2

    .line 314
    :cond_f
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->fullscreen()V

    .line 318
    .line 319
    .line 320
    goto :goto_4

    .line 321
    :cond_10
    sget-object v1, Lcom/join/mgps/activity/ForumTopicActivity$MediaCmd;->CMD_TRANSLATE_Y:Lcom/join/mgps/activity/ForumTopicActivity$MediaCmd;

    .line 322
    .line 323
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    if-eqz v0, :cond_14

    .line 332
    .line 333
    const-string v0, "0"

    .line 334
    .line 335
    move-object v1, v0

    .line 336
    const/4 v4, 0x0

    .line 337
    :goto_3
    array-length v5, p1

    .line 338
    if-ge v4, v5, :cond_13

    .line 339
    .line 340
    if-nez v4, :cond_11

    .line 341
    .line 342
    aget-object v0, p1, v3

    .line 343
    .line 344
    check-cast v0, Ljava/lang/String;

    .line 345
    .line 346
    :cond_11
    if-ne v4, v2, :cond_12

    .line 347
    .line 348
    aget-object v1, p1, v2

    .line 349
    .line 350
    check-cast v1, Ljava/lang/String;

    .line 351
    .line 352
    :cond_12
    add-int/lit8 v4, v4, 0x1

    .line 353
    .line 354
    goto :goto_3

    .line 355
    :cond_13
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 356
    .line 357
    .line 358
    move-result p1

    .line 359
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    .line 364
    .line 365
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .line 367
    .line 368
    const-string v2, "top="

    .line 369
    .line 370
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .line 384
    .line 385
    const-string v3, "offset="

    .line 386
    .line 387
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    const-string v3, "CMD_TRANSLATE_Y"

    .line 398
    .line 399
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    invoke-static {v1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/ForumTopicActivity;->offsetContainer(II)V

    .line 407
    .line 408
    .line 409
    :cond_14
    :goto_4
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
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_4

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_3

    .line 6
    .line 7
    const/16 v0, 0x9

    .line 8
    .line 9
    if-eq p1, v0, :cond_2

    .line 10
    .line 11
    const/16 v0, 0xa

    .line 12
    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x10

    .line 16
    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 21
    .line 22
    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 28
    .line 29
    new-instance v1, Lcom/join/mgps/activity/ForumTopicActivity$n;

    .line 30
    .line 31
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity$n;-><init>(Lcom/join/mgps/activity/ForumTopicActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 44
    .line 45
    const-string v1, "\u6ca1\u6709\u66f4\u591a\u8bdd\u9898\u54e6~"

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 51
    .line 52
    new-instance v1, Lcom/join/mgps/activity/ForumTopicActivity$m;

    .line 53
    .line 54
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity$m;-><init>(Lcom/join/mgps/activity/ForumTopicActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 73
    .line 74
    new-instance v1, Lcom/join/mgps/activity/ForumTopicActivity$l;

    .line 75
    .line 76
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity$l;-><init>(Lcom/join/mgps/activity/ForumTopicActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 97
    .line 98
    .line 99
    :goto_0
    return-void
.end method

.method clearPostPopWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->extFuncPopWindow:Lcom/join/mgps/customview/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->extFuncPopWindow:Lcom/join/mgps/customview/e;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/customview/e;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->extFuncPopWindow:Lcom/join/mgps/customview/e;

    .line 18
    .line 19
    return-void
.end method

.method fullscreen()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iput-boolean v3, p0, Lcom/join/mgps/activity/ForumTopicActivity;->mFullScreenFlag:Z

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->showUserUi()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->setVideoContainerParams()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v3, v3}, Lcom/join/mgps/activity/ForumTopicActivity;->offsetContainer(II)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iput-boolean v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->mFullScreenFlag:Z

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->hideUserUi()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->resetVideoContainerParams()Landroid/widget/RelativeLayout$LayoutParams;

    .line 39
    .line 40
    .line 41
    :goto_1
    return-void
.end method

.method getForumPostsBeanByPid(I)Lcom/join/mgps/dto/ForumBean$ForumPostsBean;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->posts:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-ne p1, v2, :cond_1

    .line 28
    .line 29
    :cond_2
    return-object v1
.end method

.method public getIntentInfo()V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumTopicBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->topicBean:Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "key_forum_topic_bean"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-class v3, Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    new-array v4, v4, [Ljava/lang/Class;

    .line 42
    .line 43
    invoke-virtual {v2, v3, v4}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->topicBean:Lcom/join/mgps/dto/ForumBean$ForumTopicBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method getVideoDefaultHeight(Landroid/content/Context;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->videoDefaultHeight:I

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 18
    .line 19
    const v1, 0x7f070ed4

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    mul-int/lit8 p1, p1, 0x2

    .line 27
    .line 28
    sub-int/2addr v0, p1

    .line 29
    const/high16 p1, 0x3f800000    # 1.0f

    .line 30
    .line 31
    int-to-float v0, v0

    .line 32
    mul-float v0, v0, p1

    .line 33
    .line 34
    const p1, 0x3fe66666    # 1.8f

    .line 35
    .line 36
    .line 37
    div-float/2addr v0, p1

    .line 38
    float-to-int p1, v0

    .line 39
    iput p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->videoDefaultHeight:I

    .line 40
    .line 41
    :cond_1
    iget p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->videoDefaultHeight:I

    .line 42
    .line 43
    return p1
.end method

.method isNetWorkConnected()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const v0, 0x7f12031e

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumTopicActivity;->showToast(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/16 v0, 0x9

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumTopicActivity;->changeLoadingState(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->stopXlistRefreshAndLoadMore()V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x1

    .line 32
    :goto_0
    return v0
.end method

.method isNotMore(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;)Z"
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
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 13
    :goto_1
    if-eqz p1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->stopXlistRefreshAndLoadMore()V

    .line 16
    .line 17
    .line 18
    :cond_2
    return p1
.end method

.method isPlayPositionVisible()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->currentPlayPosition:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return v2

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->listView:Lcom/join/mgps/customview/XListView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->listView:Lcom/join/mgps/customview/XListView;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget v3, p0, Lcom/join/mgps/activity/ForumTopicActivity;->currentPlayPosition:I

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    sub-int/2addr v0, v4

    .line 24
    if-lt v3, v0, :cond_1

    .line 25
    .line 26
    if-gt v3, v1, :cond_1

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    :cond_1
    return v2
.end method

.method loadForumPostsData(I)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "page"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity;->validate(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x4

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, -0x1

    .line 17
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->T(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v10, ""

    .line 22
    .line 23
    const-string v4, ""

    .line 24
    .line 25
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    move-object v7, v3

    .line 40
    move v6, v4

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-object v7, v4

    .line 43
    const/4 v6, 0x0

    .line 44
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/activity/ForumTopicActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lcom/join/mgps/activity/ForumTopicActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->getPosition()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object v4, p0, Lcom/join/mgps/activity/ForumTopicActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 57
    .line 58
    iget-object v3, p0, Lcom/join/mgps/activity/ForumTopicActivity;->topicBean:Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumTopicBean;->getTid()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    sget v9, Lcom/join/mgps/Util/r0;->d:I

    .line 65
    .line 66
    move v8, p1

    .line 67
    invoke-interface/range {v4 .. v10}, Lcom/join/mgps/rpc/i;->f(IILjava/lang/String;IILjava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    if-eqz v3, :cond_8

    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Lcom/join/mgps/dto/ForumData$ForumForumTopicData;

    .line 78
    .line 79
    if-eqz v3, :cond_3

    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$ForumForumTopicData;->getTopic()Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$ForumForumTopicData;->getPosts_list()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-direct {p0, v4}, Lcom/join/mgps/activity/ForumTopicActivity;->processTopic(Lcom/join/mgps/dto/ForumBean$ForumTopicBean;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, p1, v5}, Lcom/join/mgps/activity/ForumTopicActivity;->processPost(ILjava/util/List;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    const/4 v5, 0x0

    .line 97
    :goto_1
    if-eqz v3, :cond_5

    .line 98
    .line 99
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/ForumTopicActivity;->isNotMore(Ljava/util/List;)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_4

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_4
    iput p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->pageCount:I

    .line 107
    .line 108
    const/4 p1, 0x2

    .line 109
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity;->changeLoadingState(I)V

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_5
    :goto_2
    iput v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->pageLoading:I

    .line 114
    .line 115
    const/4 v3, 0x1

    .line 116
    if-ne p1, v3, :cond_6

    .line 117
    .line 118
    const/16 p1, 0xa

    .line 119
    .line 120
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity;->changeLoadingState(I)V

    .line 121
    .line 122
    .line 123
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->stopXlistRefreshAndLoadMore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    .line 126
    iget p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->pageLoading:I

    .line 127
    .line 128
    if-eq p1, v2, :cond_7

    .line 129
    .line 130
    iput v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->pageLoading:I

    .line 131
    .line 132
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->stopXlistRefreshAndLoadMore()V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_8
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumTopicActivity;->changeLoadingState(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    .line 138
    .line 139
    :goto_3
    iget p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->pageLoading:I

    .line 140
    .line 141
    if-eq p1, v2, :cond_9

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :catchall_0
    move-exception p1

    .line 145
    goto :goto_5

    .line 146
    :catch_0
    move-exception p1

    .line 147
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumTopicActivity;->changeLoadingState(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    .line 152
    .line 153
    iget p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->pageLoading:I

    .line 154
    .line 155
    if-eq p1, v2, :cond_9

    .line 156
    .line 157
    :goto_4
    iput v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->pageLoading:I

    .line 158
    .line 159
    :cond_9
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->stopXlistRefreshAndLoadMore()V

    .line 160
    .line 161
    .line 162
    goto :goto_6

    .line 163
    :goto_5
    iget v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->pageLoading:I

    .line 164
    .line 165
    if-eq v0, v2, :cond_a

    .line 166
    .line 167
    iput v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->pageLoading:I

    .line 168
    .line 169
    :cond_a
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->stopXlistRefreshAndLoadMore()V

    .line 170
    .line 171
    .line 172
    throw p1

    .line 173
    :cond_b
    const p1, 0x7f12031e

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity;->showToast(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    const/16 p1, 0x9

    .line 184
    .line 185
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity;->changeLoadingState(I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->stopXlistRefreshAndLoadMore()V

    .line 189
    .line 190
    .line 191
    :goto_6
    return-void
.end method

.method notifyAdapter()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->adapter:Lcom/join/mgps/adapter/ForumTopicAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->listData:Ljava/util/List;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumTopicAdapter;->z(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->adapter:Lcom/join/mgps/adapter/ForumTopicAdapter;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumTopicAdapter;->notifyDataSetChanged()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method declared-synchronized notifyAdapterDataChanged()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->listData:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->listData:Ljava/util/List;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->listData:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->setForumTopicTop()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->setNormalPost()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->notifyAdapter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    monitor-exit p0

    .line 31
    throw v0
.end method

.method notifyPlayViewOffset()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->currentPlayPosition:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->listView:Lcom/join/mgps/customview/XListView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->listView:Lcom/join/mgps/customview/XListView;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget v3, p0, Lcom/join/mgps/activity/ForumTopicActivity;->currentPlayPosition:I

    .line 20
    .line 21
    add-int/lit8 v4, v1, -0x1

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    if-lt v3, v4, :cond_1

    .line 25
    .line 26
    if-gt v3, v2, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumTopicActivity;->playBackground(Z)V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->currentPlayPosition:I

    .line 33
    .line 34
    sub-int/2addr v0, v1

    .line 35
    add-int/2addr v0, v5

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/ForumTopicActivity;->playBackground(Z)V

    .line 38
    .line 39
    .line 40
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->listView:Lcom/join/mgps/customview/XListView;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->actionbarLayout:Landroid/widget/RelativeLayout;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->listView:Lcom/join/mgps/customview/XListView;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    add-int/2addr v0, v2

    .line 65
    new-instance v2, Landroid/os/Bundle;

    .line 66
    .line 67
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 68
    .line 69
    .line 70
    sget-object v3, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;->CMD_TRANSLATE_Y:Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    const-string v4, "key_mediacmd"

    .line 77
    .line 78
    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v1, ""

    .line 90
    .line 91
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    filled-new-array {v3, v0}, [Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const-string v1, "key_mediacmd_params"

    .line 118
    .line 119
    invoke-virtual {v2, v1, v0}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumTopicActivity;->callbackPlayVideo(Landroid/os/Bundle;)V

    .line 123
    .line 124
    .line 125
    :cond_2
    return-void
.end method

.method offsetContainer(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "top",
            "offsetY"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->videoContainer:Landroid/widget/FrameLayout;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget-object p2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->videoContainer:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    neg-int p1, p1

    .line 28
    int-to-float p1, p1

    .line 29
    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iput p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->mTop:I

    .line 34
    .line 35
    iput p2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->mOffsetY:I

    .line 36
    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string p2, "mTop="

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget p2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->mTop:I

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v0, "mOffsetY="

    .line 62
    .line 63
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->mOffsetY:I

    .line 67
    .line 68
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    const-string v0, "offsetContainer"

    .line 76
    .line 77
    filled-new-array {v0, p1, p2}, [Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->videoContainer:Landroid/widget/FrameLayout;

    .line 85
    .line 86
    iget p2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->mOffsetY:I

    .line 87
    .line 88
    int-to-float p2, p2

    .line 89
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity;->videoConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->clearPostPopWindow()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->clearMemory()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->helper:Lcom/join/android/app/component/video/c;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->F()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onFavoriteChanged(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pid",
            "isFavorite"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/BaseAppCompatActivity;->onFavoriteChanged(IZ)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->posts:Ljava/util/List;

    .line 5
    .line 6
    invoke-static {p1, p2, v0}, Lcom/join/mgps/Util/r0;->j(IZLjava/util/List;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->notifyAdapterDataChanged()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
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
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->mFullScreenFlag:Z

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->toggleFullScreen()V

    .line 27
    .line 28
    .line 29
    return p1

    .line 30
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->stop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->helper:Lcom/join/android/app/component/video/c;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->G()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onPause()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->helper:Lcom/join/android/app/component/video/c;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->H()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
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
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/join/mgps/activity/ForumTopicActivity;->videoScroll(Landroid/widget/AbsListView;III)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->helper:Lcom/join/android/app/component/video/c;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/join/android/app/component/video/c;->e(Landroid/widget/AbsListView;III)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
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
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/ForumTopicActivity;->videoScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->helper:Lcom/join/android/app/component/video/c;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/join/android/app/component/video/c;->i(Landroid/widget/AbsListView;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method pause()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 9
    :goto_0
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->isPlaying()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    and-int/2addr v0, v2

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->pause()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->play:Landroid/widget/ImageView;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method play(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "videoUrl",
            "coverUrl"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->videoUrl:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->isPlaying()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->pause()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->E()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->videoUrl:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->seekTo(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->resume()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->G()V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->videoUrl:Ljava/lang/String;

    .line 57
    .line 58
    iput-object p2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->coverUrl:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->stop()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 71
    .line 72
    const/16 p2, 0x8

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->play:Landroid/widget/ImageView;

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->playVideo()V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method playBackground(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;->CMD_PLAY_BACKGROUND:Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "key_mediacmd"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    filled-new-array {p1}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v1, "key_mediacmd_params"

    .line 26
    .line 27
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumTopicActivity;->callbackPlayVideo(Landroid/os/Bundle;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method praisePosts(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->L0(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "\u5c1a\u672a\u767b\u5f55\uff0c\u8bf7\u5148\u767b\u5f55\uff01"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-static {p0, p1}, Lcom/join/mgps/Util/r0;->e0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, ""

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v1, v2}, Lcom/join/mgps/rpc/i;->R(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/16 v3, 0x2c2

    .line 47
    .line 48
    if-ne v2, v3, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity;->refreshPraiseChanged(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->showDialog()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;

    .line 62
    .line 63
    invoke-static {v0, p1}, Lcom/join/mgps/Util/r0;->m1(Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method

.method pullLoadCurrentTabData()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->pageLoading:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->stopXlistRefreshAndLoadMore()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->pageCount:I

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumTopicActivity;->loadForumPostsData(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method refreshActive()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->isActive:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->videoContainer:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->videoContainer:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method refreshCurrentTabData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->topicBean:Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumTopicActivity;->loadForumPostsData(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method refreshPraiseChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->posts:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-ne v2, p1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    add-int/lit8 p1, p1, -0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    add-int/lit8 p1, p1, 0x1

    .line 51
    .line 52
    :goto_0
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPraise(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    xor-int/lit8 p1, p1, 0x1

    .line 60
    .line 61
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setIs_praise(Z)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->notifyAdapterDataChanged()V

    .line 65
    .line 66
    .line 67
    :cond_2
    return-void
.end method

.method refreshTitle()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->topicBean:Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumTopicBean;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->layout_title:Landroid/widget/TextView;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->topicBean:Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumTopicBean;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method resetVideoContainerParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->videoContainer:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, -0x1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 14
    .line 15
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 16
    .line 17
    iget-object v3, p0, Lcom/join/mgps/activity/ForumTopicActivity;->videoContainer:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/activity/ForumTopicActivity;->videoLayout:Landroid/widget/RelativeLayout;

    .line 23
    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 36
    .line 37
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/ForumTopicActivity;->videoContainer:Landroid/widget/FrameLayout;

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Landroid/view/View;->setTop(I)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->videoContainer:Landroid/widget/FrameLayout;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    .line 45
    .line 46
    .line 47
    return-object v0
.end method

.method resume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->E()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    and-int/2addr v0, v1

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->loadingLayout:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->play:Landroid/widget/ImageView;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->start()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->mediaController:Lcom/join/android/app/component/video/MediaController;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->playVideo()V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_1
    return-void
.end method

.method setForumTopicTop()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->refreshTitle()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/adapter/ForumTopicAdapter$t;

    .line 12
    .line 13
    sget-object v1, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->FORUM_TOPIC_TOP:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    .line 14
    .line 15
    new-instance v2, Lcom/join/mgps/adapter/ForumTopicAdapter$t$a;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/join/mgps/activity/ForumTopicActivity;->topicBean:Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumTopicBean;->getIcon_src()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-direct {v2, v3}, Lcom/join/mgps/adapter/ForumTopicAdapter$t$a;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumTopicAdapter$t;-><init>(Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->listData:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method setNormalPost()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->posts:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/ForumTopicActivity;->setForumPostViewsData(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method setVideoContainerParams()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->videoLayout:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, p0}, Lcom/join/mgps/activity/ForumTopicActivity;->getVideoDefaultHeight(Landroid/content/Context;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->videoContainer:Landroid/widget/FrameLayout;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const v2, 0x7f070ed4

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const v3, 0x7f070ed0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const v4, 0x7f070ecf

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    const/4 v4, -0x2

    .line 64
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->videoContainer:Landroid/widget/FrameLayout;

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 69
    .line 70
    .line 71
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->videoLayout:Landroid/widget/RelativeLayout;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method showDialog()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/g0;->m(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method showExtPopWindow(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
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
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->extFuncPopWindow:Lcom/join/mgps/customview/e;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p0}, Lcom/join/mgps/customview/f;->z(Landroid/content/Context;)Lcom/join/mgps/customview/f;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->extFuncPopWindow:Lcom/join/mgps/customview/e;

    .line 13
    .line 14
    new-instance v1, Lcom/join/mgps/activity/ForumTopicActivity$o;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumTopicActivity$o;-><init>(Lcom/join/mgps/activity/ForumTopicActivity;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/e;->m(Lcom/join/mgps/customview/e$d;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->extFuncPopWindow:Lcom/join/mgps/customview/e;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->bottom:Landroid/view/View;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    new-array v2, v2, [Ljava/lang/Object;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    aput-object p1, v2, v3

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/e;->p(Landroid/view/View;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method showToast(Ljava/lang/String;)V
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
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method stop()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->seekTo(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->I()V

    .line 12
    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->videoIndex:I

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MyVideoView;->G()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->loadingLayout:Landroid/widget/LinearLayout;

    .line 23
    .line 24
    const/16 v2, 0x8

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->mediaController:Lcom/join/android/app/component/video/MediaController;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->play:Landroid/widget/ImageView;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 50
    .line 51
    const/4 v3, 0x1

    .line 52
    if-ne v0, v3, :cond_1

    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->videoContainer:Landroid/widget/FrameLayout;

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iput-boolean v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->isActive:Z

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->toggleFullScreen()V

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_0
    return-void
.end method

.method stopXlistRefreshAndLoadMore()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    const-wide/16 v2, 0x7d0

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method toggleFullScreen()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->video:Lcom/join/android/app/component/video/MyVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->mFullScreenFlag:Z

    .line 6
    .line 7
    xor-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MyVideoView;->setFullScreen(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method validAccount()Z
    .locals 1

    .line 1
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/ForumTopicActivity;->accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    xor-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    return v0
.end method

.method validate(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "page"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumTopicActivity;->pageLoading:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->stopXlistRefreshAndLoadMore()V

    .line 8
    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    return v2

    .line 14
    :cond_1
    iput p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->pageLoading:I

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public videoConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->listView:Lcom/join/mgps/customview/XListView;

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity;->listView:Lcom/join/mgps/customview/XListView;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method videoScroll(Landroid/widget/AbsListView;III)V
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

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->notifyPlayViewOffset()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method videoScrollStateChanged(Landroid/widget/AbsListView;I)V
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

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumTopicActivity;->isPlayPositionVisible()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    xor-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumTopicActivity;->playBackground(Z)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/h;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/h;->P()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/h;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/h;->c0()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

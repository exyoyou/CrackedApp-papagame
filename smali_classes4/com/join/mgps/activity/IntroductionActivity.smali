.class public Lcom/join/mgps/activity/IntroductionActivity;
.super Lcom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/mgsim/common/fragment/a;
.implements Lcom/join/mgps/callbacks/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/IntroductionActivity$f;,
        Lcom/join/mgps/activity/IntroductionActivity$e;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d03b0
.end annotation


# instance fields
.field TAG:Ljava/lang/String;

.field activityQueue:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private appCaceDir:Ljava/lang/String;

.field app_bar:Lcom/google/android/material/appbar/AppBarLayout;

.field private chromeClient:Landroid/webkit/WebChromeClient;

.field contentType:I

.field currentFragment:Landroidx/fragment/app/Fragment;

.field detailBean:Lcom/join/mgps/dto/BbsDetailBean;

.field dialog:Lcom/join/mgps/dialog/f1;

.field failedMessage:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private firstLoad:Z

.field fl_content:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field fl_front_view:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field fragmentManager:Landroidx/fragment/app/FragmentManager;

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field intentDataMain:Lcom/join/mgps/dto/IntentDataMain;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field introductionCommentListFragment:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

.field introductionProgressFragment:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;

.field isCollection:Ljava/lang/Boolean;

.field isRequestDisPraise:Z

.field isRequestPraise:Z

.field iv_praise:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field layout_share:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field liveTime:J

.field ll_progress:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_faile:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mBackHandedFragment:Lcom/mgsim/common/fragment/BackHandledFragment;

.field private mHandler:Landroid/os/Handler;

.field moreIntroductionFragment:Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;

.field ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

.field params:Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field pb_progress:Landroid/widget/ProgressBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field postId:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field rpcGameClient:Lcom/join/mgps/rpc/k;

.field tagId:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private time_key:Ljava/lang/String;

.field title_textview:Landroid/widget/TextView;

.field tv_comment_num:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_praise_num:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_type:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field video_view:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field webData:Ljava/lang/String;

.field weblayout:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field window:Landroid/widget/PopupWindow;

.field private xCustomView:Landroid/view/View;

.field private xprogressvideo:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "IntroductionActivity"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lcom/join/mgps/activity/IntroductionActivity$a;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/IntroductionActivity$a;-><init>(Lcom/join/mgps/activity/IntroductionActivity;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->xprogressvideo:Landroid/view/View;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->firstLoad:Z

    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->isRequestPraise:Z

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->isRequestDisPraise:Z

    .line 29
    .line 30
    const-wide/16 v0, 0x0

    .line 31
    .line 32
    iput-wide v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->liveTime:J

    .line 33
    .line 34
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->activityQueue:Ljava/util/LinkedHashMap;

    .line 40
    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/IntroductionActivity;Landroid/view/View;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/activity/IntroductionActivity;->simulateTouchEvent(Landroid/view/View;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$102(Lcom/join/mgps/activity/IntroductionActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->firstLoad:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/IntroductionActivity;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/IntroductionActivity;->xCustomView:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$202(Lcom/join/mgps/activity/IntroductionActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->xCustomView:Landroid/view/View;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/IntroductionActivity;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/IntroductionActivity;->xprogressvideo:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$302(Lcom/join/mgps/activity/IntroductionActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->xprogressvideo:Landroid/view/View;

    .line 2
    .line 3
    return-object p1
.end method

.method private getUid()I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method private init()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->initWebSet()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 5
    .line 6
    new-instance v1, Lcom/join/mgps/activity/IntroductionActivity$b;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/IntroductionActivity$b;-><init>(Lcom/join/mgps/activity/IntroductionActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private lodeWebView(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/IntroductionActivity;->loadData(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method private quitFullScreen()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->video_view:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->weblayout:Landroid/widget/RelativeLayout;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private setFullScreen()V
    .locals 0

    return-void
.end method

.method private simulateTouchEvent(Landroid/view/View;II)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "x",
            "y"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v9

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    const-wide/16 v3, 0x64

    .line 12
    .line 13
    add-long v11, v1, v3

    .line 14
    .line 15
    const/4 v13, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    move/from16 v1, p2

    .line 18
    .line 19
    int-to-float v14, v1

    .line 20
    move/from16 v1, p3

    .line 21
    .line 22
    int-to-float v15, v1

    .line 23
    const/4 v8, 0x0

    .line 24
    move-wide v1, v9

    .line 25
    move-wide v3, v11

    .line 26
    move v6, v14

    .line 27
    move v7, v15

    .line 28
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 33
    .line 34
    .line 35
    const-wide/16 v1, 0x3e8

    .line 36
    .line 37
    add-long v3, v9, v1

    .line 38
    .line 39
    add-long v5, v11, v1

    .line 40
    .line 41
    const/4 v7, 0x1

    .line 42
    move-wide v1, v3

    .line 43
    move-wide v3, v5

    .line 44
    move v5, v7

    .line 45
    move v6, v14

    .line 46
    move v7, v15

    .line 47
    move v8, v13

    .line 48
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private wrapVideoUrl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "time"
        }
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
    const-string p1, ""

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    const-string v0, "?"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, "&t="

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p1, "?t="

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :goto_0
    return-object p1
.end method


# virtual methods
.method afterview()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "afterView() called."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->failedMessage:Landroid/widget/TextView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v1, "\u7f51\u9875\u52a0\u8f7d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/g0;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/f1;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v1, "TIME_"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->postId:I

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->time_key:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->loadData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method attachSwitchStyle(Landroidx/fragment/app/FragmentTransaction;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transaction"
        }
    .end annotation

    .line 1
    const v0, 0x7f010064

    .line 2
    .line 3
    .line 4
    const v1, 0x7f01007d

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method dialogZ()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dialog/f1;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 7
    .line 8
    const-string v1, "\u6b63\u5728\u4e0a\u4f20\u56fe\u7247\u8bf7\u7a0d\u5019"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/f1;->a(Ljava/lang/String;)Landroid/app/Dialog;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method dismissLoadingDialog()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method finishView(Landroid/content/Intent;)V
    .locals 0
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
            "com.wufun.finish.activity"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method gameDestroy()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getType()Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :cond_0
    monitor-enter p0

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->activityQueue:Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->time_key:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-wide/16 v1, 0x0

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->activityQueue:Ljava/util/LinkedHashMap;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/join/mgps/activity/IntroductionActivity;->time_key:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/Long;

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    cmp-long v5, v3, v1

    .line 52
    .line 53
    if-lez v5, :cond_2

    .line 54
    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 60
    .line 61
    .line 62
    move-result-wide v5

    .line 63
    sub-long/2addr v3, v5

    .line 64
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->activityQueue:Ljava/util/LinkedHashMap;

    .line 65
    .line 66
    iget-object v5, p0, Lcom/join/mgps/activity/IntroductionActivity;->time_key:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v5}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    iget-wide v5, p0, Lcom/join/mgps/activity/IntroductionActivity;->liveTime:J

    .line 72
    .line 73
    add-long/2addr v5, v3

    .line 74
    iput-wide v5, p0, Lcom/join/mgps/activity/IntroductionActivity;->liveTime:J

    .line 75
    .line 76
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->activityQueue:Ljava/util/LinkedHashMap;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    iget-wide v3, p0, Lcom/join/mgps/activity/IntroductionActivity;->liveTime:J

    .line 85
    .line 86
    cmp-long v0, v3, v1

    .line 87
    .line 88
    if-lez v0, :cond_3

    .line 89
    .line 90
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    sget-object v4, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    .line 95
    .line 96
    sget-object v5, Lcom/papa/sim/statistic/Event;->videoLookTimes:Lcom/papa/sim/statistic/Event;

    .line 97
    .line 98
    const-string v6, ""

    .line 99
    .line 100
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 101
    .line 102
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 103
    .line 104
    .line 105
    iget v7, p0, Lcom/join/mgps/activity/IntroductionActivity;->postId:I

    .line 106
    .line 107
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-virtual {v0, v7}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-wide v7, p0, Lcom/join/mgps/activity/IntroductionActivity;->liveTime:J

    .line 116
    .line 117
    const-wide/16 v9, 0x3e8

    .line 118
    .line 119
    div-long/2addr v7, v9

    .line 120
    invoke-virtual {v0, v7, v8}, Lcom/papa/sim/statistic/Ext;->setLiveTime(J)Lcom/papa/sim/statistic/Ext;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const-string v7, "1"

    .line 125
    .line 126
    invoke-virtual {v0, v7}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    new-instance v0, Lcom/papa/sim/statistic/Data;

    .line 131
    .line 132
    invoke-direct {v0}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 133
    .line 134
    .line 135
    iget-object v8, p0, Lcom/join/mgps/activity/IntroductionActivity;->gameId:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v0, v8}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    invoke-virtual/range {v3 .. v8}, Lcom/papa/sim/statistic/t;->s1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 142
    .line 143
    .line 144
    :cond_3
    iput-wide v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->liveTime:J

    .line 145
    .line 146
    monitor-exit p0

    .line 147
    return-void

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    throw v0

    .line 151
    :cond_4
    :goto_0
    return-void
.end method

.method gamePause()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getType()Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    monitor-enter p0

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->activityQueue:Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->time_key:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->activityQueue:Ljava/util/LinkedHashMap;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->time_key:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/Long;

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    const-wide/16 v0, 0x0

    .line 43
    .line 44
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 53
    .line 54
    .line 55
    move-result-wide v3

    .line 56
    sub-long/2addr v1, v3

    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->activityQueue:Ljava/util/LinkedHashMap;

    .line 58
    .line 59
    iget-object v3, p0, Lcom/join/mgps/activity/IntroductionActivity;->time_key:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v3}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->activityQueue:Ljava/util/LinkedHashMap;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    iget-wide v3, p0, Lcom/join/mgps/activity/IntroductionActivity;->liveTime:J

    .line 73
    .line 74
    add-long/2addr v3, v1

    .line 75
    iput-wide v3, p0, Lcom/join/mgps/activity/IntroductionActivity;->liveTime:J

    .line 76
    .line 77
    :cond_3
    monitor-exit p0

    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw v0

    .line 82
    :cond_4
    :goto_0
    return-void
.end method

.method gameResume()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getType()Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->activityQueue:Ljava/util/LinkedHashMap;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->time_key:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method getReportUrl()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getReportUrl()Ljava/lang/String;

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
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getReportUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "?"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-string v1, "&resourceId="

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/join/mgps/dto/BbsDetailBean;->getReportUrl()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, "&resourceType=POST&ruid="

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/join/mgps/dto/BbsDetailBean;->getPosterId()Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->postId:I

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/join/mgps/dto/BbsDetailBean;->getReportUrl()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v2, "?resourceType=POST&ruid="

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/join/mgps/dto/BbsDetailBean;->getPosterId()Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->postId:I

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    goto :goto_0

    .line 113
    :cond_1
    const-string v0, ""

    .line 114
    .line 115
    :goto_0
    return-object v0
.end method

.method public hideCustomView()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->xCustomView:Landroid/view/View;

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/IntroductionActivity;->quitFullScreen()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method hideLoading()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public inCustomView()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->xCustomView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public initWebSet()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v2, "cacheH5"

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->appCaceDir:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v2, -0x1

    .line 55
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sget-object v4, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    .line 65
    .line 66
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 85
    .line 86
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const/16 v4, 0x64

    .line 105
    .line 106
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 119
    .line 120
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 137
    .line 138
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 146
    .line 147
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 155
    .line 156
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    const-string v1, "UTF-8"

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 166
    .line 167
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 175
    .line 176
    new-instance v1, Lcom/join/mgps/activity/IntroductionActivity$f;

    .line 177
    .line 178
    invoke-direct {v1, p0, p0}, Lcom/join/mgps/activity/IntroductionActivity$f;-><init>(Lcom/join/mgps/activity/IntroductionActivity;Landroid/content/Context;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 185
    .line 186
    new-instance v1, Lcom/join/mgps/activity/IntroductionActivity$e;

    .line 187
    .line 188
    invoke-direct {v1, p0, p0}, Lcom/join/mgps/activity/IntroductionActivity$e;-><init>(Lcom/join/mgps/activity/IntroductionActivity;Landroid/content/Context;)V

    .line 189
    .line 190
    .line 191
    const-string v2, "papa"

    .line 192
    .line 193
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 197
    .line 198
    const/16 v1, 0x1b

    .line 199
    .line 200
    if-le v0, v1, :cond_0

    .line 201
    .line 202
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 203
    .line 204
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-static {v0, v3}, Lcom/aggmoread/sdk/z/a/u/v;->a(Landroid/webkit/WebSettings;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .line 210
    .line 211
    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 214
    .line 215
    .line 216
    :cond_0
    :goto_0
    return-void
.end method

.method loadData()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->showLoding()V

    .line 6
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->showLoding()V

    .line 8
    new-instance v0, Lcom/join/mgps/dto/RequestBbsDetailArgs;

    invoke-direct {v0}, Lcom/join/mgps/dto/RequestBbsDetailArgs;-><init>()V

    .line 9
    iget v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->postId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsDetailArgs;->setPostId(Ljava/lang/Integer;)V

    .line 10
    invoke-direct {p0}, Lcom/join/mgps/activity/IntroductionActivity;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsDetailArgs;->setUid(Ljava/lang/Integer;)V

    .line 11
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v1, p0}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->rpcGameClient:Lcom/join/mgps/rpc/k;

    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/k;->B0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 14
    :try_start_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/BbsDetailBean;

    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 16
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/IntroductionActivity;->showMain(Lcom/join/mgps/dto/BbsDetailBean;)V

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->gameResume()V

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->showLodingFailed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->showLodingFailed()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->showLodingFailed()V

    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->showLodingFailed()V

    :goto_0
    return-void
.end method

.method public loadData(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    const-string v1, "text/html"

    const-string v2, "utf-8"

    invoke-virtual {v0, p1, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x514

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method loding_faile()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "loding_faile() called."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->webData:Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/IntroductionActivity;->lodeWebView(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->mBackHandedFragment:Lcom/mgsim/common/fragment/BackHandledFragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mgsim/common/fragment/BackHandledFragment;->a()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    return-void
.end method

.method onBbsDisPraise(Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->isRequestDisPraise:Z

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const-string p1, "\u60a8\u8fd8\u672a\u767b\u5f55\u8bf7\u5148\u767b\u5f55\u5e10\u53f7\uff01"

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/IntroductionActivity;->showTost(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->isRequestDisPraise:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    const/4 v1, 0x1

    .line 32
    :try_start_1
    iput-boolean v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->isRequestDisPraise:Z

    .line 33
    .line 34
    new-instance v1, Lcom/join/mgps/dto/RequestBbsDispraiseArgs;

    .line 35
    .line 36
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestBbsDispraiseArgs;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v2, "POST"

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestBbsDispraiseArgs;->setResourceType(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestBbsDispraiseArgs;->setResourceId(Ljava/lang/Integer;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/join/mgps/activity/IntroductionActivity;->getUid()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestBbsDispraiseArgs;->setUid(Ljava/lang/Integer;)V

    .line 56
    .line 57
    .line 58
    new-instance p1, Lcom/join/mgps/dto/RequestModel;

    .line 59
    .line 60
    invoke-direct {p1, p0}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-interface {v1, p1}, Lcom/join/mgps/rpc/k;->i0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-boolean v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->isRequestDisPraise:Z

    .line 77
    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Ljava/lang/Boolean;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_3

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/IntroductionActivity;->updatePraise(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catch_0
    move-exception p1

    .line 97
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    iput-boolean v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->isRequestDisPraise:Z

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    iput-boolean v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->isRequestDisPraise:Z

    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const v1, 0x7f12031e

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/IntroductionActivity;->showTost(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :catch_1
    move-exception p1

    .line 121
    iput-boolean v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->isRequestDisPraise:Z

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 124
    .line 125
    .line 126
    :cond_3
    :goto_0
    return-void
.end method

.method onBbsPraise(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ruid",
            "resourceId"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->isRequestPraise:Z

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const-string p1, "\u60a8\u8fd8\u672a\u767b\u5f55\u8bf7\u5148\u767b\u5f55\u5e10\u53f7\uff01"

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/IntroductionActivity;->showTost(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->isRequestPraise:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    const/4 v1, 0x1

    .line 32
    :try_start_1
    iput-boolean v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->isRequestPraise:Z

    .line 33
    .line 34
    new-instance v2, Lcom/join/mgps/dto/RequestBbsPraiseArgs;

    .line 35
    .line 36
    invoke-direct {v2}, Lcom/join/mgps/dto/RequestBbsPraiseArgs;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v3, "POST"

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestBbsPraiseArgs;->setResourceType(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p2}, Lcom/join/mgps/dto/RequestBbsPraiseArgs;->setResourceId(Ljava/lang/Integer;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestBbsPraiseArgs;->setRuid(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lcom/join/mgps/activity/IntroductionActivity;->getUid()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/RequestBbsPraiseArgs;->setUid(Ljava/lang/Integer;)V

    .line 59
    .line 60
    .line 61
    new-instance p1, Lcom/join/mgps/dto/RequestModel;

    .line 62
    .line 63
    invoke-direct {p1, p0}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-object p2, p0, Lcom/join/mgps/activity/IntroductionActivity;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {p2, p1}, Lcom/join/mgps/rpc/k;->K(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iput-boolean v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->isRequestPraise:Z

    .line 80
    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Ljava/lang/Boolean;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_3

    .line 94
    .line 95
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/IntroductionActivity;->updatePraise(Z)V

    .line 96
    .line 97
    .line 98
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    sget-object v3, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    .line 103
    .line 104
    sget-object v4, Lcom/papa/sim/statistic/Event;->ClickLike:Lcom/papa/sim/statistic/Event;

    .line 105
    .line 106
    const-string v5, ""

    .line 107
    .line 108
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 109
    .line 110
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string p2, "1"

    .line 114
    .line 115
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iget-object p2, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 120
    .line 121
    invoke-virtual {p2}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iget p2, p0, Lcom/join/mgps/activity/IntroductionActivity;->tagId:I

    .line 134
    .line 135
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    new-instance p1, Lcom/papa/sim/statistic/Data;

    .line 144
    .line 145
    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 146
    .line 147
    .line 148
    iget-object p2, p0, Lcom/join/mgps/activity/IntroductionActivity;->gameId:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    invoke-virtual/range {v2 .. v7}, Lcom/papa/sim/statistic/t;->s1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :catch_0
    move-exception p1

    .line 159
    :try_start_2
    iput-boolean v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->isRequestPraise:Z

    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_2
    iput-boolean v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->isRequestPraise:Z

    .line 166
    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    const p2, 0x7f12031e

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/IntroductionActivity;->showTost(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 179
    .line 180
    .line 181
    goto :goto_0

    .line 182
    :catch_1
    move-exception p1

    .line 183
    iput-boolean v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->isRequestPraise:Z

    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 186
    .line 187
    .line 188
    :cond_3
    :goto_0
    return-void
.end method

.method onClickMore()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0f14
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0d03b1

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const v1, 0x7f0a19f6

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/widget/TextView;

    .line 21
    .line 22
    const v2, 0x7f0a19f7

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroid/widget/TextView;

    .line 30
    .line 31
    new-instance v3, Landroid/widget/PopupWindow;

    .line 32
    .line 33
    const/4 v4, -0x2

    .line 34
    invoke-direct {v3, v0, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 35
    .line 36
    .line 37
    iput-object v3, p0, Lcom/join/mgps/activity/IntroductionActivity;->window:Landroid/widget/PopupWindow;

    .line 38
    .line 39
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 40
    .line 41
    const-string v4, "#00000000"

    .line 42
    .line 43
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->window:Landroid/widget/PopupWindow;

    .line 54
    .line 55
    const/4 v3, 0x1

    .line 56
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->window:Landroid/widget/PopupWindow;

    .line 60
    .line 61
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->window:Landroid/widget/PopupWindow;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 67
    .line 68
    .line 69
    new-instance v0, Landroid/graphics/Rect;

    .line 70
    .line 71
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 72
    .line 73
    .line 74
    const v3, 0x7f0a0f14

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v4, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 82
    .line 83
    .line 84
    iget-object v5, p0, Lcom/join/mgps/activity/IntroductionActivity;->window:Landroid/widget/PopupWindow;

    .line 85
    .line 86
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 91
    .line 92
    int-to-float v6, v6

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    const v8, 0x7f07132e

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    sub-float/2addr v6, v7

    .line 105
    float-to-int v6, v6

    .line 106
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 107
    .line 108
    int-to-float v0, v0

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    const v8, 0x7f071300

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    sub-float/2addr v0, v7

    .line 121
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    div-int/lit8 v4, v4, 0x2

    .line 126
    .line 127
    int-to-float v4, v4

    .line 128
    sub-float/2addr v0, v4

    .line 129
    float-to-int v0, v0

    .line 130
    const/4 v4, 0x0

    .line 131
    invoke-virtual {v5, v3, v4, v6, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 132
    .line 133
    .line 134
    new-instance v0, Lcom/join/mgps/activity/IntroductionActivity$c;

    .line 135
    .line 136
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/IntroductionActivity$c;-><init>(Lcom/join/mgps/activity/IntroductionActivity;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    .line 141
    .line 142
    new-instance v0, Lcom/join/mgps/activity/IntroductionActivity$d;

    .line 143
    .line 144
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/IntroductionActivity$d;-><init>(Lcom/join/mgps/activity/IntroductionActivity;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 151
    .line 152
    if-eqz v0, :cond_0

    .line 153
    .line 154
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    sget-object v2, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    .line 159
    .line 160
    sget-object v3, Lcom/papa/sim/statistic/Event;->ClickMoreButton:Lcom/papa/sim/statistic/Event;

    .line 161
    .line 162
    const-string v4, ""

    .line 163
    .line 164
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 165
    .line 166
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string v5, "1"

    .line 170
    .line 171
    invoke-virtual {v0, v5}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    iget-object v5, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 176
    .line 177
    invoke-virtual {v5}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    invoke-virtual {v0, v5}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    iget v5, p0, Lcom/join/mgps/activity/IntroductionActivity;->tagId:I

    .line 190
    .line 191
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    invoke-virtual {v0, v5}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    new-instance v0, Lcom/papa/sim/statistic/Data;

    .line 200
    .line 201
    invoke-direct {v0}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 202
    .line 203
    .line 204
    iget-object v6, p0, Lcom/join/mgps/activity/IntroductionActivity;->gameId:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v0, v6}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/t;->s1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 211
    .line 212
    .line 213
    :cond_0
    return-void
.end method

.method onClose()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0ee1
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->window:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onCommentCommitSuccess()V
    .locals 7

    .line 1
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    .line 6
    .line 7
    sget-object v2, Lcom/papa/sim/statistic/Event;->PostComment:Lcom/papa/sim/statistic/Event;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/join/mgps/activity/IntroductionActivity;->getUid()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    new-instance v4, Lcom/papa/sim/statistic/Ext;

    .line 18
    .line 19
    invoke-direct {v4}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v5, "1"

    .line 23
    .line 24
    invoke-virtual {v4, v5}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    iget-object v5, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 29
    .line 30
    invoke-virtual {v5}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v4, v5}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    iget v5, p0, Lcom/join/mgps/activity/IntroductionActivity;->tagId:I

    .line 43
    .line 44
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v4, v5}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    new-instance v5, Lcom/papa/sim/statistic/Data;

    .line 53
    .line 54
    invoke-direct {v5}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-object v6, p0, Lcom/join/mgps/activity/IntroductionActivity;->gameId:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/t;->s1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 64
    .line 65
    .line 66
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
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 9
    .line 10
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->intentDataMain:Lcom/join/mgps/dto/IntentDataMain;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onDestroy()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->gameDestroy()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onHide(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragment"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->introductionProgressFragment:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;

    .line 20
    .line 21
    if-ne p1, v0, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->mHandler:Landroid/os/Handler;

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public onItemClick(IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "postId",
            "contentType",
            "isCollection"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->postId:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->gameDestroy()V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->postId:I

    .line 10
    .line 11
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    iput-object p3, p0, Lcom/join/mgps/activity/IntroductionActivity;->isCollection:Ljava/lang/Boolean;

    .line 16
    .line 17
    iput p2, p0, Lcom/join/mgps/activity/IntroductionActivity;->contentType:I

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    iput-object p2, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 21
    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string p3, "TIME_"

    .line 28
    .line 29
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->time_key:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->loadData()V

    .line 42
    .line 43
    .line 44
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
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "onKeyDown() called."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->inCustomView()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->chromeClient:Landroid/webkit/WebChromeClient;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1
.end method

.method onOpenComment()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0ee3
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->introductionCommentListFragment:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment_;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->introductionCommentListFragment:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->setFragmentCallback(Lcom/join/mgps/callbacks/i;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/activity/IntroductionActivity;->introductionCommentListFragment:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 25
    .line 26
    iget-object v4, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/join/mgps/dto/BbsDetailBean;->getType()Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-ne v4, v2, :cond_1

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    :cond_1
    invoke-virtual {v3, v1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->setVideo(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->introductionCommentListFragment:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/join/mgps/dto/BbsDetailBean;->getDuration()Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-virtual {v1, v2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->setDuration(I)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->introductionCommentListFragment:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    iget-object v3, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 70
    .line 71
    invoke-virtual {v3}, Lcom/join/mgps/dto/BbsDetailBean;->getPosterId()Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    iget-object v4, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 80
    .line 81
    invoke-virtual {v4}, Lcom/join/mgps/dto/BbsDetailBean;->getReportUrl()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    iget-object v5, p0, Lcom/join/mgps/activity/IntroductionActivity;->gameId:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->setParams(IILjava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->params:Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;

    .line 91
    .line 92
    if-eqz v1, :cond_2

    .line 93
    .line 94
    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->introductionCommentListFragment:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;->getParent_comment_id()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-virtual {v2, v1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->setCommentId(I)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->introductionCommentListFragment:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 104
    .line 105
    iget-boolean v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->firstLoad:Z

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->setFromNotice(Z)V

    .line 108
    .line 109
    .line 110
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->introductionCommentListFragment:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 111
    .line 112
    if-eqz v1, :cond_3

    .line 113
    .line 114
    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 115
    .line 116
    invoke-virtual {v2}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    invoke-virtual {v1, v2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->notifyDataChanged(I)V

    .line 125
    .line 126
    .line 127
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 128
    .line 129
    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->introductionCommentListFragment:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    .line 130
    .line 131
    invoke-virtual {p0, v1, v2, v0}, Lcom/join/mgps/activity/IntroductionActivity;->showFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)V

    .line 132
    .line 133
    .line 134
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    sget-object v4, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    .line 139
    .line 140
    sget-object v5, Lcom/papa/sim/statistic/Event;->ClickComment:Lcom/papa/sim/statistic/Event;

    .line 141
    .line 142
    const-string v6, ""

    .line 143
    .line 144
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 145
    .line 146
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v1, "1"

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 156
    .line 157
    invoke-virtual {v1}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iget v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->tagId:I

    .line 170
    .line 171
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    new-instance v0, Lcom/papa/sim/statistic/Data;

    .line 180
    .line 181
    invoke-direct {v0}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 182
    .line 183
    .line 184
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->gameId:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    invoke-virtual/range {v3 .. v8}, Lcom/papa/sim/statistic/t;->s1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 191
    .line 192
    .line 193
    :cond_4
    return-void
.end method

.method onOpenProgress()V
    .locals 15
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0f26
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->introductionProgressFragment:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment_;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->introductionProgressFragment:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->setData(Lcom/join/mgps/dto/BbsDetailBean;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->introductionProgressFragment:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iget-object v3, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;->notifyDataChanged(Lcom/join/mgps/dto/BbsDetailBean;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/join/mgps/activity/IntroductionActivity;->introductionProgressFragment:Lcom/join/kotlin/ui/introduction/IntroductionProgressFragment;

    .line 37
    .line 38
    invoke-virtual {p0, v2, v3, v0}, Lcom/join/mgps/activity/IntroductionActivity;->showFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getIsCollection()Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const-string v2, "1"

    .line 52
    .line 53
    if-ne v0, v1, :cond_2

    .line 54
    .line 55
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    sget-object v4, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    .line 60
    .line 61
    sget-object v5, Lcom/papa/sim/statistic/Event;->ClickSeriesButton:Lcom/papa/sim/statistic/Event;

    .line 62
    .line 63
    const-string v6, ""

    .line 64
    .line 65
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 66
    .line 67
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->tagId:I

    .line 89
    .line 90
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    new-instance v0, Lcom/papa/sim/statistic/Data;

    .line 99
    .line 100
    invoke-direct {v0}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->gameId:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    invoke-virtual/range {v3 .. v8}, Lcom/papa/sim/statistic/t;->s1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    sget-object v10, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    .line 118
    .line 119
    sget-object v11, Lcom/papa/sim/statistic/Event;->ClickSpeedButton:Lcom/papa/sim/statistic/Event;

    .line 120
    .line 121
    const-string v12, ""

    .line 122
    .line 123
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 124
    .line 125
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iget v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->tagId:I

    .line 147
    .line 148
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 153
    .line 154
    .line 155
    move-result-object v13

    .line 156
    new-instance v0, Lcom/papa/sim/statistic/Data;

    .line 157
    .line 158
    invoke-direct {v0}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 159
    .line 160
    .line 161
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->gameId:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 164
    .line 165
    .line 166
    move-result-object v14

    .line 167
    invoke-virtual/range {v9 .. v14}, Lcom/papa/sim/statistic/t;->s1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 168
    .line 169
    .line 170
    :cond_3
    :goto_1
    return-void
.end method

.method onOpenRecommend()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0f2a
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->moreIntroductionFragment:Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment_;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment_;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->moreIntroductionFragment:Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;

    .line 15
    .line 16
    new-instance v0, Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const-string v2, "tagId"

    .line 32
    .line 33
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    const-string v1, "gameId"

    .line 37
    .line 38
    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->gameId:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->moreIntroductionFragment:Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 51
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->moreIntroductionFragment:Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-virtual {v1, v2}, Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;->notifyDataChanged(I)V

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->moreIntroductionFragment:Lcom/join/kotlin/ui/introduction/MoreIntroductionFragment;

    .line 71
    .line 72
    invoke-virtual {p0, v1, v2, v0}, Lcom/join/mgps/activity/IntroductionActivity;->showFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)V

    .line 73
    .line 74
    .line 75
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    sget-object v4, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    .line 80
    .line 81
    sget-object v5, Lcom/papa/sim/statistic/Event;->ClickRecommandButton:Lcom/papa/sim/statistic/Event;

    .line 82
    .line 83
    const-string v6, ""

    .line 84
    .line 85
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 86
    .line 87
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v1, "1"

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->tagId:I

    .line 111
    .line 112
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    new-instance v0, Lcom/papa/sim/statistic/Data;

    .line 121
    .line 122
    invoke-direct {v0}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 123
    .line 124
    .line 125
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->gameId:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    invoke-virtual/range {v3 .. v8}, Lcom/papa/sim/statistic/t;->s1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 132
    .line 133
    .line 134
    :cond_2
    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "onPause"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    new-array v2, v2, [Ljava/lang/Class;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

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
    goto :goto_0

    .line 30
    :catch_1
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_2
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onPause()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->gamePause()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method onPraiseClick()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0f25
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getPraise()Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/IntroductionActivity;->onBbsDisPraise(Ljava/lang/Integer;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, ""

    .line 32
    .line 33
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/activity/IntroductionActivity;->onBbsPraise(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method public onProgressItemClick(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/join/mgps/dto/TimingBean;

    .line 2
    .line 3
    const-string v1, "1"

    .line 4
    .line 5
    const-string v2, "_s_"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Lcom/join/mgps/dto/TimingBean;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getVideoH5Tpl()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v3, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/join/mgps/dto/BbsDetailBean;->getContent()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/TimingBean;->getTime()Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-direct {p0, v3, p1}, Lcom/join/mgps/activity/IntroductionActivity;->wrapVideoUrl(Ljava/lang/String;I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->webData:Ljava/lang/String;

    .line 40
    .line 41
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/IntroductionActivity;->lodeWebView(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    sget-object v3, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    .line 49
    .line 50
    sget-object v4, Lcom/papa/sim/statistic/Event;->AjustSpeed:Lcom/papa/sim/statistic/Event;

    .line 51
    .line 52
    const-string v5, ""

    .line 53
    .line 54
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 55
    .line 56
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->tagId:I

    .line 78
    .line 79
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    new-instance p1, Lcom/papa/sim/statistic/Data;

    .line 88
    .line 89
    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->gameId:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-virtual/range {v2 .. v7}, Lcom/papa/sim/statistic/t;->s1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_0
    instance-of v0, p1, Lcom/join/mgps/dto/VideoChaptersBean;

    .line 103
    .line 104
    if-eqz v0, :cond_1

    .line 105
    .line 106
    check-cast p1, Lcom/join/mgps/dto/VideoChaptersBean;

    .line 107
    .line 108
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getVideoH5Tpl()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p1}, Lcom/join/mgps/dto/VideoChaptersBean;->getContent()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iput-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->webData:Ljava/lang/String;

    .line 123
    .line 124
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/IntroductionActivity;->lodeWebView(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    sget-object v3, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    .line 132
    .line 133
    sget-object v4, Lcom/papa/sim/statistic/Event;->AjustSeries:Lcom/papa/sim/statistic/Event;

    .line 134
    .line 135
    const-string v5, ""

    .line 136
    .line 137
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 138
    .line 139
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    iget v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->tagId:I

    .line 161
    .line 162
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    new-instance p1, Lcom/papa/sim/statistic/Data;

    .line 171
    .line 172
    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->gameId:Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    invoke-virtual/range {v2 .. v7}, Lcom/papa/sim/statistic/t;->s1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 182
    .line 183
    .line 184
    :cond_1
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "onResume"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    new-array v2, v2, [Ljava/lang/Class;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

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
    goto :goto_0

    .line 33
    :catch_1
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_2
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->gameResume()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onTimeClick(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getVideoH5Tpl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/join/mgps/dto/BbsDetailBean;->getContent()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, "&t="

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v1, "_s_"

    .line 34
    .line 35
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->webData:Ljava/lang/String;

    .line 40
    .line 41
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/IntroductionActivity;->lodeWebView(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method openSystemWeb(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Landroid/content/Intent;

    .line 6
    .line 7
    const-string v1, "android.intent.action.VIEW"

    .line 8
    .line 9
    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method refresh()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->webData:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/IntroductionActivity;->lodeWebView(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->loadData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method setNetwork()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "setNetwork() called."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setSelectedFragment(Lcom/mgsim/common/fragment/BackHandledFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedFragment"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->mBackHandedFragment:Lcom/mgsim/common/fragment/BackHandledFragment;

    .line 2
    .line 3
    return-void
.end method

.method public showCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;Landroid/webkit/WebChromeClient;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "customViewCallback",
            "chromeClient"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->xCustomView:Landroid/view/View;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p3, p0, Lcom/join/mgps/activity/IntroductionActivity;->chromeClient:Landroid/webkit/WebChromeClient;

    .line 7
    .line 8
    iget-object p2, p0, Lcom/join/mgps/activity/IntroductionActivity;->weblayout:Landroid/widget/RelativeLayout;

    .line 9
    .line 10
    const/16 p3, 0x8

    .line 11
    .line 12
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/activity/IntroductionActivity;->video_view:Landroid/widget/FrameLayout;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Lcom/join/mgps/activity/IntroductionActivity;->video_view:Landroid/widget/FrameLayout;

    .line 21
    .line 22
    const/4 p3, 0x0

    .line 23
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/join/mgps/activity/IntroductionActivity;->video_view:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 29
    .line 30
    const/4 v0, -0x1

    .line 31
    invoke-direct {p3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/join/mgps/activity/IntroductionActivity;->setFullScreen()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method showFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "oldFragment",
            "newFragment",
            "isAdd"
        }
    .end annotation

    .line 1
    if-ne p1, p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/IntroductionActivity;->attachSwitchStyle(Landroidx/fragment/app/FragmentTransaction;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 27
    .line 28
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/IntroductionActivity;->attachSwitchStyle(Landroidx/fragment/app/FragmentTransaction;)V

    .line 35
    .line 36
    .line 37
    if-eqz p3, :cond_2

    .line 38
    .line 39
    const p3, 0x7f0a0659

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p3, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 46
    .line 47
    .line 48
    :try_start_1
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catch_1
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    :goto_1
    iput-object p2, p0, Lcom/join/mgps/activity/IntroductionActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 57
    .line 58
    :cond_3
    return-void
.end method

.method showLoding()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "showLoding() called."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    const/16 v2, 0x8

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "showLodingFailed() called."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    return-void
.end method

.method showMain(Lcom/join/mgps/dto/BbsDetailBean;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detailBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->params:Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->firstLoad:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->fl_content:Landroid/widget/FrameLayout;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->fl_content:Landroid/widget/FrameLayout;

    .line 21
    .line 22
    const v1, 0x7f0d05e1

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const v1, 0x7f0a1170

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/join/mgps/customview/NestedScrollWebView;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getType()Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->contentType:I

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    if-ne v0, v1, :cond_1

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getVideoH5Tpl()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v2, "_s_"

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getContent()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->webData:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->gameResume()V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getContent()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->webData:Ljava/lang/String;

    .line 78
    .line 79
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getTiming()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const/4 v2, 0x0

    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getTiming()Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-gtz v0, :cond_3

    .line 95
    .line 96
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getVideoChapters()Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getVideoChapters()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-lez v0, :cond_5

    .line 111
    .line 112
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ll_progress:Landroid/widget/LinearLayout;

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getIsCollection()Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 122
    .line 123
    .line 124
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    const-string v3, "1"

    .line 126
    .line 127
    if-ne v0, v1, :cond_4

    .line 128
    .line 129
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->tv_type:Landroid/widget/TextView;

    .line 130
    .line 131
    const-string v1, "\u5408\u96c6"

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    sget-object v5, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    .line 141
    .line 142
    sget-object v6, Lcom/papa/sim/statistic/Event;->ShowSeriesButton:Lcom/papa/sim/statistic/Event;

    .line 143
    .line 144
    const-string v7, ""

    .line 145
    .line 146
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 147
    .line 148
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    iget v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->tagId:I

    .line 168
    .line 169
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    new-instance v0, Lcom/papa/sim/statistic/Data;

    .line 178
    .line 179
    invoke-direct {v0}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 180
    .line 181
    .line 182
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->gameId:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    invoke-virtual/range {v4 .. v9}, Lcom/papa/sim/statistic/t;->s1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/IntroductionActivity;->onOpenProgress()V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->mHandler:Landroid/os/Handler;

    .line 196
    .line 197
    const/4 v1, 0x2

    .line 198
    const-wide/16 v4, 0xbb8

    .line 199
    .line 200
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 201
    .line 202
    .line 203
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->tv_type:Landroid/widget/TextView;

    .line 204
    .line 205
    const-string v1, "\u8fdb\u5ea6"

    .line 206
    .line 207
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    .line 209
    .line 210
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    sget-object v5, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    .line 215
    .line 216
    sget-object v6, Lcom/papa/sim/statistic/Event;->ShowSpeedButton:Lcom/papa/sim/statistic/Event;

    .line 217
    .line 218
    const-string v7, ""

    .line 219
    .line 220
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 221
    .line 222
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    iget v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->tagId:I

    .line 242
    .line 243
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 248
    .line 249
    .line 250
    move-result-object v8

    .line 251
    new-instance v0, Lcom/papa/sim/statistic/Data;

    .line 252
    .line 253
    invoke-direct {v0}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 254
    .line 255
    .line 256
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->gameId:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 259
    .line 260
    .line 261
    move-result-object v9

    .line 262
    invoke-virtual/range {v4 .. v9}, Lcom/papa/sim/statistic/t;->s1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 263
    .line 264
    .line 265
    goto :goto_1

    .line 266
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ll_progress:Landroid/widget/LinearLayout;

    .line 267
    .line 268
    const/16 v1, 0x8

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 271
    .line 272
    .line 273
    :goto_1
    invoke-direct {p0}, Lcom/join/mgps/activity/IntroductionActivity;->init()V

    .line 274
    .line 275
    .line 276
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->webData:Ljava/lang/String;

    .line 277
    .line 278
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/IntroductionActivity;->lodeWebView(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->TAG:Ljava/lang/String;

    .line 282
    .line 283
    const-string v1, "showMain() called."

    .line 284
    .line 285
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->ns_web_view:Lcom/join/mgps/customview/NestedScrollWebView;

    .line 289
    .line 290
    if-eqz v0, :cond_6

    .line 291
    .line 292
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 293
    .line 294
    .line 295
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->tv_praise_num:Landroid/widget/TextView;

    .line 296
    .line 297
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getLike()Ljava/lang/Integer;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    .line 307
    .line 308
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->tv_comment_num:Landroid/widget/TextView;

    .line 309
    .line 310
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getComment()Ljava/lang/Integer;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsDetailBean;->getPraise()Ljava/lang/Boolean;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 326
    .line 327
    .line 328
    move-result p1

    .line 329
    if-eqz p1, :cond_7

    .line 330
    .line 331
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->iv_praise:Landroid/widget/ImageView;

    .line 332
    .line 333
    const v0, 0x7f080977

    .line 334
    .line 335
    .line 336
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 337
    .line 338
    .line 339
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->tv_praise_num:Landroid/widget/TextView;

    .line 340
    .line 341
    const-string v0, "#34ACFF"

    .line 342
    .line 343
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 348
    .line 349
    .line 350
    goto :goto_2

    .line 351
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->iv_praise:Landroid/widget/ImageView;

    .line 352
    .line 353
    const v0, 0x7f08097a

    .line 354
    .line 355
    .line 356
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 357
    .line 358
    .line 359
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity;->tv_praise_num:Landroid/widget/TextView;

    .line 360
    .line 361
    const-string v0, "#FFFFFF"

    .line 362
    .line 363
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 368
    .line 369
    .line 370
    goto :goto_2

    .line 371
    :catch_0
    move-exception p1

    .line 372
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 373
    .line 374
    .line 375
    :goto_2
    return-void
.end method

.method showTost(Ljava/lang/String;)V
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

.method updatePraise(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "praise"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->iv_praise:Landroid/widget/ImageView;

    .line 4
    .line 5
    const v1, 0x7f080977

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getLike()Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/BbsDetailBean;->setLike(Ljava/lang/Integer;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->tv_praise_num:Landroid/widget/TextView;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/join/mgps/dto/BbsDetailBean;->getLike()Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->tv_praise_num:Landroid/widget/TextView;

    .line 46
    .line 47
    const-string v1, "#34ACFF"

    .line 48
    .line 49
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->iv_praise:Landroid/widget/ImageView;

    .line 58
    .line 59
    const v1, 0x7f08097a

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getLike()Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    add-int/lit8 v1, v1, -0x1

    .line 76
    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/BbsDetailBean;->setLike(Ljava/lang/Integer;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->tv_praise_num:Landroid/widget/TextView;

    .line 85
    .line 86
    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/join/mgps/dto/BbsDetailBean;->getLike()Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->tv_praise_num:Landroid/widget/TextView;

    .line 100
    .line 101
    const-string v1, "#FFFFFF"

    .line 102
    .line 103
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    .line 109
    .line 110
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 111
    .line 112
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/BbsDetailBean;->setPraise(Ljava/lang/Boolean;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.class public Lcom/join/mgps/activity/OemDetailActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0695
.end annotation


# static fields
.field public static final KEY_OEM_DETAIL:Ljava/lang/String; = "key_oem_detail"

.field public static final RESULT_CODE_OEMDETAIL:I = 0x1


# instance fields
.field final REFRESH_DETAIL:I

.field final SHOW_TOAST:I

.field private TAG:Ljava/lang/String;

.field actionbarLayout:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field back_image:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field bottom:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field cdkNum:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field giftContent:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field giftExpireDate:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field giftIcon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field giftName:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field giftRetain:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field giftRetainLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field giftTip:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field giftTitle:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field giftUseContent:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field giftUseTitle:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field goToOem:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field isLoading:Z

.field layout_title:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loadingView:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field mSvipDialog:Lcom/join/mgps/customview/t;

.field mVipDialog:Lcom/join/mgps/customview/t;

.field myGiftPackage:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field myGiftPackageCount:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;

.field oemTypeLayout1:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field oemTypeLayout2:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field oemTypeLayout3:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field receiveButton:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field receivingCdk:Z

.field rpcOemClient:Lcom/join/mgps/rpc/m;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->isLoading:Z

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    iput v1, p0, Lcom/join/mgps/activity/OemDetailActivity;->SHOW_TOAST:I

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    iput v1, p0, Lcom/join/mgps/activity/OemDetailActivity;->REFRESH_DETAIL:I

    .line 22
    .line 23
    new-instance v1, Lcom/join/mgps/activity/OemDetailActivity$b;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/OemDetailActivity$b;-><init>(Lcom/join/mgps/activity/OemDetailActivity;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/join/mgps/activity/OemDetailActivity;->mHandler:Landroid/os/Handler;

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->receivingCdk:Z

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->mSvipDialog:Lcom/join/mgps/customview/t;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->mVipDialog:Lcom/join/mgps/customview/t;

    .line 36
    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/OemDetailActivity;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/OemDetailActivity;->checkRight(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/OemDetailActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/OemDetailActivity;->loading()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private checkRight(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "finalType"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const v0, 0x7f120544

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v2, "6"

    .line 32
    .line 33
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-static {v0}, Lcom/join/mgps/Util/b;->piv(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/OemDetailActivity;->showVipDialog()V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const-string v2, "7"

    .line 51
    .line 52
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getSVIPLevel()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-lez p1, :cond_3

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/OemDetailActivity;->showSvipDialog()V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    :goto_0
    const/4 v1, 0x1

    .line 70
    :goto_1
    return v1
.end method

.method private dismissSvipDialog()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->mSvipDialog:Lcom/join/mgps/customview/t;

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
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->mSvipDialog:Lcom/join/mgps/customview/t;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private dismissVipDialog()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->mVipDialog:Lcom/join/mgps/customview/t;

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
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->mVipDialog:Lcom/join/mgps/customview/t;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private initActionBar()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->layout_title:Landroid/widget/TextView;

    .line 2
    .line 3
    const-string v1, "\u8be6\u60c5"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private initViews()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/OemDetailActivity;->changeLoadingState(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private loadSrvData()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/OemDetailActivity;->loadForumoemDetailData(I)V

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
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/OemDetailActivity;->changeLoadingState(I)V

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
    invoke-direct {p0}, Lcom/join/mgps/activity/OemDetailActivity;->loadSrvData()V

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
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/OemDetailActivity;->showToast(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/16 v0, 0x9

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/OemDetailActivity;->changeLoadingState(I)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method private processPost(ILcom/join/mgps/dto/OemData$GiftDetailData;)V
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

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 6
    .line 7
    invoke-direct {p1}, Lcom/join/mgps/dto/OemBean$OemDetailBean;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 11
    .line 12
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const-class v0, Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 24
    .line 25
    invoke-virtual {p2, p1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/activity/OemDetailActivity;->refreshDetail()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private processReceiveCdk(Lcom/join/mgps/dto/OemData$GiftGetCdkData;)V
    .locals 2
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
    invoke-virtual {p1}, Lcom/join/mgps/dto/OemData$GiftGetCdkData;->getGift_cdk()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 12
    .line 13
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->setIs_used(Ljava/lang/Boolean;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->setGift_cdk(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->getMy_oem()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->getMy_oem()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, ""

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->setMy_oem(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->getSurplus()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-lez p1, :cond_1

    .line 76
    .line 77
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->getSurplus()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    add-int/lit8 v0, v0, -0x1

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->setSurplus(I)V

    .line 86
    .line 87
    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/OemDetailActivity;->refreshDetail()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    .line 95
    .line 96
    :goto_0
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/OemDetailActivity;->initActionBar()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/OemDetailActivity;->initViews()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/OemDetailActivity;->getIntentInfo()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/join/mgps/rpc/impl/m;->c()Lcom/join/mgps/rpc/impl/m;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->rpcOemClient:Lcom/join/mgps/rpc/m;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/join/mgps/activity/OemDetailActivity;->loading()V

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/OemDetailActivity;->setResult4Request()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method changeLoadingState(I)V
    .locals 5
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 2
    .line 3
    const v1, 0x7f080fbe

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedReloadingRes(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 10
    .line 11
    const v1, 0x7f081033

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedImgRes(I)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    if-eq p1, v0, :cond_4

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    if-eq p1, v0, :cond_3

    .line 22
    .line 23
    const/16 v0, 0x9

    .line 24
    .line 25
    if-eq p1, v0, :cond_2

    .line 26
    .line 27
    const v0, 0x7f080aa5

    .line 28
    .line 29
    .line 30
    const v1, 0x7f0803b5

    .line 31
    .line 32
    .line 33
    const/16 v2, 0xa

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    if-eq p1, v2, :cond_1

    .line 37
    .line 38
    const/16 v4, 0x10

    .line 39
    .line 40
    if-eq p1, v4, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 44
    .line 45
    invoke-virtual {p1, v2}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 49
    .line 50
    const-string v2, "\u52a0\u8f7d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 51
    .line 52
    invoke-virtual {p1, v2}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 56
    .line 57
    new-instance v2, Lcom/join/mgps/activity/OemDetailActivity$a;

    .line 58
    .line 59
    invoke-direct {v2, p0, p1}, Lcom/join/mgps/activity/OemDetailActivity$a;-><init>(Lcom/join/mgps/activity/OemDetailActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v2}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 66
    .line 67
    invoke-virtual {p1, v3}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 71
    .line 72
    invoke-virtual {p1, v3}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedImgVisibility(I)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedImgRes(I)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedReloadingRes(I)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 87
    .line 88
    invoke-virtual {p1, v2}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 92
    .line 93
    const-string v2, "\u6ca1\u6709\u66f4\u591a\u8be6\u60c5\u54e6~"

    .line 94
    .line 95
    invoke-virtual {p1, v2}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 99
    .line 100
    new-instance v2, Lcom/join/mgps/activity/OemDetailActivity$j;

    .line 101
    .line 102
    invoke-direct {v2, p0, p1}, Lcom/join/mgps/activity/OemDetailActivity$j;-><init>(Lcom/join/mgps/activity/OemDetailActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v2}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 109
    .line 110
    invoke-virtual {p1, v3}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 114
    .line 115
    invoke-virtual {p1, v3}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedImgVisibility(I)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 119
    .line 120
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedImgRes(I)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 124
    .line 125
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedReloadingRes(I)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 130
    .line 131
    new-instance v1, Lcom/join/mgps/activity/OemDetailActivity$i;

    .line 132
    .line 133
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/OemDetailActivity$i;-><init>(Lcom/join/mgps/activity/OemDetailActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 146
    .line 147
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity;->loadingView:Lcom/join/mgps/customview/ForumLoadingView;

    .line 152
    .line 153
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 154
    .line 155
    .line 156
    :goto_0
    return-void
.end method

.method public getIntentInfo()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "key_oem_detail"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-class v2, Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 28
    .line 29
    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method hasEnoughMoney()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->getMoney_num()Ljava/lang/String;

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
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->getMoney_num()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getPapaMoney()J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    int-to-long v4, v0

    .line 39
    cmp-long v0, v2, v4

    .line 40
    .line 41
    if-ltz v0, :cond_1

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    :cond_1
    return v1
.end method

.method loadForumoemDetailData(I)V
    .locals 7
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
    if-eqz v0, :cond_6

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->isLoading:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/16 v0, 0x10

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :try_start_0
    new-instance v2, Lcom/join/mgps/dto/OemRequestBean$GetOemDetailRequestBean;

    .line 16
    .line 17
    invoke-direct {v2}, Lcom/join/mgps/dto/OemRequestBean$GetOemDetailRequestBean;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->T(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v4, 0x0

    .line 39
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    const-string v5, ""

    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    :try_start_1
    invoke-virtual {v3}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->getId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move-object v3, v5

    .line 51
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/OemRequestBean$GetOemDetailRequestBean;->setUid(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/OemRequestBean$GetOemDetailRequestBean;->setOid(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Lcom/join/mgps/activity/OemDetailActivity;->rpcOemClient:Lcom/join/mgps/rpc/m;

    .line 73
    .line 74
    invoke-interface {v2, v4, v3}, Lcom/join/mgps/rpc/m;->b(ILjava/lang/String;)Lcom/join/mgps/dto/OemResponse;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    if-eqz v2, :cond_5

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/join/mgps/dto/OemResponse;->getError()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-nez v3, :cond_5

    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/join/mgps/dto/OemResponse;->getData()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    if-eqz v3, :cond_5

    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/join/mgps/dto/OemResponse;->getData()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Lcom/join/mgps/dto/OemData$GiftDetailData;

    .line 97
    .line 98
    if-nez v2, :cond_4

    .line 99
    .line 100
    const/4 v2, 0x1

    .line 101
    if-ne p1, v2, :cond_3

    .line 102
    .line 103
    const/16 p1, 0xa

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/OemDetailActivity;->changeLoadingState(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .line 107
    .line 108
    :cond_3
    iput-boolean v1, p0, Lcom/join/mgps/activity/OemDetailActivity;->isLoading:Z

    .line 109
    .line 110
    return-void

    .line 111
    :cond_4
    :try_start_2
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/activity/OemDetailActivity;->processPost(ILcom/join/mgps/dto/OemData$GiftDetailData;)V

    .line 112
    .line 113
    .line 114
    const/4 p1, 0x2

    .line 115
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/OemDetailActivity;->changeLoadingState(I)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/OemDetailActivity;->changeLoadingState(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :catchall_0
    move-exception p1

    .line 124
    goto :goto_3

    .line 125
    :catch_0
    move-exception p1

    .line 126
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/OemDetailActivity;->changeLoadingState(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    .line 131
    .line 132
    :goto_2
    iput-boolean v1, p0, Lcom/join/mgps/activity/OemDetailActivity;->isLoading:Z

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :goto_3
    iput-boolean v1, p0, Lcom/join/mgps/activity/OemDetailActivity;->isLoading:Z

    .line 136
    .line 137
    throw p1

    .line 138
    :cond_6
    const p1, 0x7f12031e

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/OemDetailActivity;->showToast(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const/16 p1, 0x9

    .line 149
    .line 150
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/OemDetailActivity;->changeLoadingState(I)V

    .line 151
    .line 152
    .line 153
    :goto_4
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/OemDetailActivity;->back_image()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/OemDetailActivity;->dismissVipDialog()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/OemDetailActivity;->dismissSvipDialog()V

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method receveCdk()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->receivingCdk:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :try_start_0
    const-string v1, "\u793c\u5305\u7801\u83b7\u53d6\u5931\u8d25"

    .line 14
    .line 15
    const-string v2, "\u793c\u5305\u7801\u83b7\u53d6\u6210\u529f"

    .line 16
    .line 17
    new-instance v3, Lcom/join/mgps/dto/OemRequestBean$ReceiveCdkRequestBean;

    .line 18
    .line 19
    invoke-direct {v3}, Lcom/join/mgps/dto/OemRequestBean$ReceiveCdkRequestBean;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->T(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 27
    .line 28
    .line 29
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    const-string v6, ""

    .line 31
    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    :try_start_1
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move-object v4, v6

    .line 44
    const/4 v5, 0x0

    .line 45
    :goto_0
    iget-object v7, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 46
    .line 47
    if-eqz v7, :cond_2

    .line 48
    .line 49
    invoke-virtual {v7}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->getId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move-object v7, v6

    .line 55
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    invoke-virtual {v3, v8}, Lcom/join/mgps/dto/OemRequestBean$ReceiveCdkRequestBean;->setUid(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v7}, Lcom/join/mgps/dto/OemRequestBean$ReceiveCdkRequestBean;->setOid(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v3, p0, Lcom/join/mgps/activity/OemDetailActivity;->rpcOemClient:Lcom/join/mgps/rpc/m;

    .line 77
    .line 78
    invoke-interface {v3, v5, v4, v7}, Lcom/join/mgps/rpc/m;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/OemResponse;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    if-eqz v3, :cond_5

    .line 83
    .line 84
    invoke-virtual {v3}, Lcom/join/mgps/dto/OemResponse;->getError()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-nez v4, :cond_5

    .line 89
    .line 90
    invoke-virtual {v3}, Lcom/join/mgps/dto/OemResponse;->getData()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Lcom/join/mgps/dto/OemData$GiftGetCdkData;

    .line 95
    .line 96
    if-eqz v3, :cond_3

    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/join/mgps/dto/OemData$GiftGetCdkData;->getGift_cdk()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_3

    .line 107
    .line 108
    invoke-direct {p0, v3}, Lcom/join/mgps/activity/OemDetailActivity;->processReceiveCdk(Lcom/join/mgps/dto/OemData$GiftGetCdkData;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/OemDetailActivity;->showToast(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_3
    invoke-static {v6}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_4

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_4
    move-object v1, v6

    .line 123
    :goto_2
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/OemDetailActivity;->showToast(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_5
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/OemDetailActivity;->showToast(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :catchall_0
    move-exception v1

    .line 132
    goto :goto_4

    .line 133
    :catch_0
    move-exception v1

    .line 134
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    .line 136
    .line 137
    :goto_3
    iput-boolean v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->receivingCdk:Z

    .line 138
    .line 139
    goto :goto_5

    .line 140
    :goto_4
    iput-boolean v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->receivingCdk:Z

    .line 141
    .line 142
    throw v1

    .line 143
    :cond_6
    const v0, 0x7f12031e

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/OemDetailActivity;->showToast(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :goto_5
    return-void
.end method

.method refreshDetail()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    iput v1, v0, Landroid/os/Message;->what:I

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method refreshDetail1()V
    .locals 7
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->giftName:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->giftExpireDate:Landroid/widget/TextView;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    new-array v2, v1, [Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->getEnd_time()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    const-wide/16 v5, 0x3e8

    .line 24
    .line 25
    mul-long v3, v3, v5

    .line 26
    .line 27
    invoke-static {v3, v4}, Lcom/join/mgps/Util/e0;->I(J)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const/4 v4, 0x0

    .line 32
    aput-object v3, v2, v4

    .line 33
    .line 34
    const v3, 0x7f12009f

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->getContent()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v2, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->getUse_method()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iget-object v3, p0, Lcom/join/mgps/activity/OemDetailActivity;->giftContent:Landroid/widget/TextView;

    .line 57
    .line 58
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Lcom/join/mgps/activity/OemDetailActivity;->giftUseContent:Landroid/widget/TextView;

    .line 62
    .line 63
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/16 v3, 0x8

    .line 71
    .line 72
    if-eqz v0, :cond_0

    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->giftTitle:Landroid/widget/TextView;

    .line 75
    .line 76
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->giftContent:Landroid/widget/TextView;

    .line 80
    .line 81
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->giftTitle:Landroid/widget/TextView;

    .line 86
    .line 87
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->giftContent:Landroid/widget/TextView;

    .line 91
    .line 92
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    :goto_0
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_1

    .line 100
    .line 101
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->giftUseTitle:Landroid/widget/TextView;

    .line 102
    .line 103
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->giftUseContent:Landroid/widget/TextView;

    .line 107
    .line 108
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->giftUseTitle:Landroid/widget/TextView;

    .line 113
    .line 114
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->giftUseContent:Landroid/widget/TextView;

    .line 118
    .line 119
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->myGiftPackage:Landroid/view/View;

    .line 123
    .line 124
    new-instance v2, Lcom/join/mgps/activity/OemDetailActivity$c;

    .line 125
    .line 126
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/OemDetailActivity$c;-><init>(Lcom/join/mgps/activity/OemDetailActivity;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    .line 131
    .line 132
    new-array v0, v1, [Ljava/lang/Object;

    .line 133
    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    iget-object v2, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 140
    .line 141
    invoke-virtual {v2}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->getMy_oem()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v2, ""

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    aput-object v1, v0, v4

    .line 158
    .line 159
    const v1, 0x7f120313

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/join/mgps/activity/OemDetailActivity;->myGiftPackageCount:Landroid/widget/TextView;

    .line 167
    .line 168
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->giftName:Landroid/widget/TextView;

    .line 172
    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    const v2, 0x7f06015f

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 188
    .line 189
    invoke-virtual {v0}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->getType()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemTypeLayout1:Landroid/widget/LinearLayout;

    .line 194
    .line 195
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 196
    .line 197
    .line 198
    iget-object v1, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemTypeLayout2:Landroid/widget/LinearLayout;

    .line 199
    .line 200
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 201
    .line 202
    .line 203
    iget-object v1, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemTypeLayout3:Landroid/widget/LinearLayout;

    .line 204
    .line 205
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 206
    .line 207
    .line 208
    iget-object v1, p0, Lcom/join/mgps/activity/OemDetailActivity;->giftRetainLayout:Landroid/widget/LinearLayout;

    .line 209
    .line 210
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 211
    .line 212
    .line 213
    iget-object v1, p0, Lcom/join/mgps/activity/OemDetailActivity;->giftTip:Landroid/widget/TextView;

    .line 214
    .line 215
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 216
    .line 217
    .line 218
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-eqz v1, :cond_6

    .line 223
    .line 224
    const-string v1, "4"

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eqz v1, :cond_2

    .line 231
    .line 232
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->giftName:Landroid/widget/TextView;

    .line 233
    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    const v2, 0x7f06015d

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0}, Lcom/join/mgps/activity/OemDetailActivity;->refreshOem4()V

    .line 249
    .line 250
    .line 251
    goto :goto_2

    .line 252
    :cond_2
    const-string v1, "3"

    .line 253
    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    if-eqz v1, :cond_3

    .line 259
    .line 260
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->giftName:Landroid/widget/TextView;

    .line 261
    .line 262
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    const v2, 0x7f06015e

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0}, Lcom/join/mgps/activity/OemDetailActivity;->refreshOem3()V

    .line 277
    .line 278
    .line 279
    goto :goto_2

    .line 280
    :cond_3
    const-string v1, "2"

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    if-eqz v1, :cond_4

    .line 287
    .line 288
    invoke-virtual {p0}, Lcom/join/mgps/activity/OemDetailActivity;->refreshOem2()V

    .line 289
    .line 290
    .line 291
    goto :goto_2

    .line 292
    :cond_4
    const-string v1, "1"

    .line 293
    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    if-nez v1, :cond_5

    .line 299
    .line 300
    const-string v1, "5"

    .line 301
    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    if-eqz v0, :cond_6

    .line 307
    .line 308
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/OemDetailActivity;->refreshOem1()V

    .line 309
    .line 310
    .line 311
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->giftIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 312
    .line 313
    iget-object v1, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 314
    .line 315
    invoke-virtual {v1}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->getIcon()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    return-void
.end method

.method refreshOem1()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemTypeLayout1:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->giftRetainLayout:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->receiveButton:Landroid/widget/Button;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v3, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->getSurplus()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v3, ""

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    iget-object v2, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->getSurplus()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const-string v2, "0"

    .line 67
    .line 68
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v2, "\u4e2a"

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const/4 v2, 0x1

    .line 81
    new-array v4, v2, [Ljava/lang/Object;

    .line 82
    .line 83
    aput-object v0, v4, v1

    .line 84
    .line 85
    const v0, 0x7f1200a0

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    iget-object v5, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 98
    .line 99
    invoke-virtual {v5}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->getSurplus()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eqz v4, :cond_1

    .line 118
    .line 119
    const/4 v3, 0x0

    .line 120
    goto :goto_1

    .line 121
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    iget-object v5, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 127
    .line 128
    invoke-virtual {v5}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->getSurplus()I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    :goto_1
    iget-object v4, p0, Lcom/join/mgps/activity/OemDetailActivity;->giftRetain:Landroid/widget/TextView;

    .line 147
    .line 148
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->getIs_used()Ljava/lang/Boolean;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    const v4, 0x7f080f85

    .line 162
    .line 163
    .line 164
    if-eqz v0, :cond_2

    .line 165
    .line 166
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->cdkNum:Landroid/widget/TextView;

    .line 167
    .line 168
    iget-object v1, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->getGift_cdk()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->receiveButton:Landroid/widget/Button;

    .line 178
    .line 179
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->receiveButton:Landroid/widget/Button;

    .line 183
    .line 184
    const-string v1, "\u590d\u5236"

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->receiveButton:Landroid/widget/Button;

    .line 190
    .line 191
    new-instance v1, Lcom/join/mgps/activity/OemDetailActivity$d;

    .line 192
    .line 193
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/OemDetailActivity$d;-><init>(Lcom/join/mgps/activity/OemDetailActivity;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_2
    if-ge v3, v2, :cond_3

    .line 201
    .line 202
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemTypeLayout1:Landroid/widget/LinearLayout;

    .line 203
    .line 204
    const/16 v2, 0x8

    .line 205
    .line 206
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 207
    .line 208
    .line 209
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemTypeLayout3:Landroid/widget/LinearLayout;

    .line 210
    .line 211
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->cdkNum:Landroid/widget/TextView;

    .line 216
    .line 217
    const v1, 0x7f1203af

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    .line 226
    .line 227
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->receiveButton:Landroid/widget/Button;

    .line 228
    .line 229
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 230
    .line 231
    .line 232
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->receiveButton:Landroid/widget/Button;

    .line 233
    .line 234
    const-string v1, "\u9886\u53d6"

    .line 235
    .line 236
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->receiveButton:Landroid/widget/Button;

    .line 240
    .line 241
    new-instance v1, Lcom/join/mgps/activity/OemDetailActivity$e;

    .line 242
    .line 243
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/OemDetailActivity$e;-><init>(Lcom/join/mgps/activity/OemDetailActivity;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    .line 248
    .line 249
    :goto_2
    return-void
.end method

.method refreshOem2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemTypeLayout2:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->goToOem:Landroid/widget/Button;

    .line 8
    .line 9
    const v1, 0x7f1203ab

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->goToOem:Landroid/widget/Button;

    .line 20
    .line 21
    new-instance v1, Lcom/join/mgps/activity/OemDetailActivity$f;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/OemDetailActivity$f;-><init>(Lcom/join/mgps/activity/OemDetailActivity;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method refreshOem3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemTypeLayout2:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->giftTip:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->goToOem:Landroid/widget/Button;

    .line 13
    .line 14
    const v1, 0x7f1203ac

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->goToOem:Landroid/widget/Button;

    .line 25
    .line 26
    new-instance v1, Lcom/join/mgps/activity/OemDetailActivity$g;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/OemDetailActivity$g;-><init>(Lcom/join/mgps/activity/OemDetailActivity;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method refreshOem4()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemTypeLayout2:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->giftTip:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->goToOem:Landroid/widget/Button;

    .line 13
    .line 14
    const v1, 0x7f1203ad

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->goToOem:Landroid/widget/Button;

    .line 25
    .line 26
    new-instance v1, Lcom/join/mgps/activity/OemDetailActivity$h;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/OemDetailActivity$h;-><init>(Lcom/join/mgps/activity/OemDetailActivity;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method setResult4Request()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->getIs_used()Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/join/mgps/activity/OemDetailActivity;->oemDetail:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "receivedOemDetail"

    .line 33
    .line 34
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method showSvipDialog()V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->mSvipDialog:Lcom/join/mgps/customview/t;

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
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/g0;->e0(Landroid/content/Context;)Lcom/join/mgps/customview/t;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->mSvipDialog:Lcom/join/mgps/customview/t;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->mSvipDialog:Lcom/join/mgps/customview/t;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    iput v1, v0, Landroid/os/Message;->what:I

    .line 9
    .line 10
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method showToast1(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
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

.method showVipDialog()V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->mVipDialog:Lcom/join/mgps/customview/t;

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
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/g0;->g0(Landroid/content/Context;)Lcom/join/mgps/customview/t;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->mVipDialog:Lcom/join/mgps/customview/t;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->mVipDialog:Lcom/join/mgps/customview/t;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

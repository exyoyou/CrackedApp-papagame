.class public Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;
.super Lcom/join/mgps/fragment/e;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/adapter/i4$e;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d02ce
.end annotation


# instance fields
.field private SCROLLING:Z

.field private accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

.field private accountClientV2:Lcom/join/mgps/rpc/c;

.field adapter:Lcom/join/mgps/adapter/i4;

.field private allDownloadAppHomeBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field birthDay:Z

.field private checkingProactiveSign:Z

.field cloudGameConfigBean:Lcom/join/mgps/dto/CloudGameConfigBean;

.field private cloudRecGames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionSevenListBean;",
            ">;"
        }
    .end annotation
.end field

.field day:I

.field private entryDialogsHandled:Z

.field filterPw:Lcom/join/mgps/customview/a0;

.field private firstVisiblePosition:I

.field g_1:Landroidx/constraintlayout/widget/Group;

.field private gameIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private games:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private hasExposureAd:Z

.field private headView:Landroid/view/View;

.field private isCreate:Z

.field isNotShowIconAppMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field isSign:Z

.field iv_7:Landroid/view/View;

.field private lastGamesCount:I

.field lastTime:J

.field private lastVisibleIndex:I

.field listView:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHanler:Landroid/os/Handler;

.field mRpcClient:Lcom/join/mgps/rpc/e;

.field month:I

.field private noGameAdIndex:I

.field pageExtBean:Lcom/join/mgps/dto/ExtBean;

.field parentExtBean:Lcom/join/mgps/dto/ExtBean;

.field private pendingSignData:Ljava/lang/String;

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field root:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcAccountClient:Lcom/join/mgps/rpc/b;

.field sdv_head:Lcom/facebook/drawee/view/SimpleDraweeView;

.field shortCutMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field templateId:Ljava/lang/String;

.field tv_btn_1:Landroid/widget/TextView;

.field tv_label_3:Landroid/widget/TextView;

.field tv_text_1:Landroid/widget/TextView;

.field tv_text_2:Landroid/widget/TextView;

.field tv_text_3:Landroid/widget/TextView;

.field tv_text_4:Landroid/widget/TextView;

.field tv_text_5:Landroid/widget/TextView;

.field tv_text_6:Landroid/widget/TextView;

.field tv_text_7:Landroid/widget/TextView;

.field v_1:Landroid/view/View;

.field v_2:Landroid/view/View;

.field v_3:Landroid/view/View;

.field v_4:Landroid/view/View;

.field v_5:Landroid/view/View;

.field v_6:Landroid/view/View;

.field v_7:Landroid/view/View;

.field v_8:Landroid/view/View;

.field v_head:Landroid/view/View;

.field vipBirthday:Z

.field vipDays:Z

.field year:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/e;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->shortCutMap:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->isNotShowIconAppMaps:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->games:Ljava/util/List;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->lastGamesCount:I

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->hasExposureAd:Z

    .line 29
    .line 30
    iput v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->noGameAdIndex:I

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->isCreate:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->checkingProactiveSign:Z

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->entryDialogsHandled:Z

    .line 37
    .line 38
    new-instance v1, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->allDownloadAppHomeBeans:Ljava/util/List;

    .line 44
    .line 45
    new-instance v1, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->gameIds:Ljava/util/List;

    .line 51
    .line 52
    new-instance v1, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->cloudRecGames:Ljava/util/List;

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    iput-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->cloudGameConfigBean:Lcom/join/mgps/dto/CloudGameConfigBean;

    .line 61
    .line 62
    new-instance v2, Landroid/os/Handler;

    .line 63
    .line 64
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->mHanler:Landroid/os/Handler;

    .line 68
    .line 69
    new-instance v2, Lcom/join/mgps/dto/ExtBean;

    .line 70
    .line 71
    invoke-direct {v2}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 72
    .line 73
    .line 74
    sget-object v3, Lcom/papa/sim/statistic/EventP$FirstModel;->meTab:Lcom/papa/sim/statistic/EventP$FirstModel;

    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    sget-object v3, Lcom/papa/sim/statistic/EventP$SecondModel;->myCloudGame:Lcom/papa/sim/statistic/EventP$SecondModel;

    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    iput-object v2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 95
    .line 96
    iput-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->headView:Landroid/view/View;

    .line 97
    .line 98
    iput-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 99
    .line 100
    iput-boolean v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->isSign:Z

    .line 101
    .line 102
    iput v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->year:I

    .line 103
    .line 104
    iput v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->month:I

    .line 105
    .line 106
    iput v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->day:I

    .line 107
    .line 108
    iput-boolean v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->birthDay:Z

    .line 109
    .line 110
    iput-boolean v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->vipDays:Z

    .line 111
    .line 112
    iput-boolean v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->vipBirthday:Z

    .line 113
    .line 114
    iput v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->lastVisibleIndex:I

    .line 115
    .line 116
    iput v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->firstVisiblePosition:I

    .line 117
    .line 118
    iput-boolean v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->SCROLLING:Z

    .line 119
    .line 120
    return-void
.end method

.method public static synthetic O(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;Lcom/kongzue/dialogx/dialogs/CustomDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->lambda$showSetBirthday$16(Lcom/kongzue/dialogx/dialogs/CustomDialog;)V

    return-void
.end method

.method public static synthetic P(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->lambda$afterviews$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->lambda$afterviews$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->lambda$onEventMainThread$19()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->lambda$afterviews$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic U(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->lambda$afterviews$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic V(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->lambda$afterviews$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic W(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->lambda$showSignDialog$11(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;Lcom/kongzue/dialogx/dialogs/CustomDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->lambda$onVipDaysUI$17(Lcom/kongzue/dialogx/dialogs/CustomDialog;)V

    return-void
.end method

.method public static synthetic Y(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->lambda$afterviews$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Z(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->lambda$afterviews$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a0(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;ILcom/wufan/user/service/protobuf/NewMemberInfo;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->lambda$updateUserInfo$14(ILcom/wufan/user/service/protobuf/NewMemberInfo;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->mHanler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private addShortcut(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "s:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-static {}, Lcom/join/android/app/component/album/lib/ImageLoader;->q()Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Lcom/join/android/app/component/album/lib/ImageLoader;->m(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {p0, v1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->returnBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v2, v0, p1, v1}, Lcom/join/mgps/Util/j2;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method public static synthetic b0(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->lambda$afterviews$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c0(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->lambda$showSignDialog$12()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d0(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->lambda$afterviews$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e0(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;Lcom/kongzue/dialogx/dialogs/CustomDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->lambda$showSetBirthday$15(Lcom/kongzue/dialogx/dialogs/CustomDialog;)V

    return-void
.end method

.method public static synthetic f0()Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->lambda$showSignDialog$13()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g0(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->lambda$afterviews$0(Landroid/view/View;)V

    return-void
.end method

.method private getCurrentTypeGames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->games:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic h0(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->lambda$afterviews$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i0(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;Lcom/kongzue/dialogx/dialogs/CustomDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->lambda$onVipBirthdayUI$18(Lcom/kongzue/dialogx/dialogs/CustomDialog;)V

    return-void
.end method

.method private isLogined()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method private synthetic lambda$afterviews$0(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->v_head()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$afterviews$1(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->onTimeClick()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$afterviews$10(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->onYBClick()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$afterviews$2(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->v_3()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$afterviews$3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->v_3()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$afterviews$4(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->v_4()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$afterviews$5(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->v_5()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$afterviews$6(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->v_6()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$afterviews$7(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->iv_7()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$afterviews$8(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->onDJClick()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$afterviews$9(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->onYZClick()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$onEventMainThread$19()Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->allDownloadAppHomeBeans:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->updateDownStateList(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    return-object v0
.end method

.method private synthetic lambda$onVipBirthdayUI$18(Lcom/kongzue/dialogx/dialogs/CustomDialog;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->refreshUserCenter()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$onVipDaysUI$17(Lcom/kongzue/dialogx/dialogs/CustomDialog;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->refreshUserCenter()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$showSetBirthday$15(Lcom/kongzue/dialogx/dialogs/CustomDialog;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameSetVipBtnPop:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget-object v0, Lcom/papa/sim/statistic/EventP$TypeCode;->popup:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget-object v1, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private synthetic lambda$showSetBirthday$16(Lcom/kongzue/dialogx/dialogs/CustomDialog;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->refreshUserCenter()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$showSignDialog$11(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/Boolean;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameVipDailySignPop:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 29
    .line 30
    .line 31
    sget-object v1, Lcom/papa/sim/statistic/EventP$TypeCode;->cloudGame:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "cld_"

    .line 45
    .line 46
    const-string v3, ""

    .line 47
    .line 48
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-nez v1, :cond_1

    .line 71
    .line 72
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_1
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    sget-object v3, Lcom/papa/sim/statistic/Event;->gameStart:Lcom/papa/sim/statistic/Event;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v2, v3, v4}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lcom/join/mgps/Util/w0;->h()Lcom/join/mgps/Util/w0;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {v2, v1, p1, v0}, Lcom/join/mgps/Util/w0;->s(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)V

    .line 101
    .line 102
    .line 103
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 104
    .line 105
    return-object p1
.end method

.method private synthetic lambda$showSignDialog$12()Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->refreshUserCenter()V

    .line 11
    .line 12
    .line 13
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 14
    .line 15
    return-object v0
.end method

.method private static synthetic lambda$showSignDialog$13()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method private synthetic lambda$updateUserInfo$14(ILcom/wufan/user/service/protobuf/NewMemberInfo;Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 p3, 0x1

    .line 2
    if-ne p1, p3, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->showSetBirthday()V

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p3, 0x2

    .line 9
    if-ne p1, p3, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->vipBirthdayClick(Lcom/wufan/user/service/protobuf/NewMemberInfo;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p3, 0x3

    .line 16
    if-ne p1, p3, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0, p2}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->vipDaysClick(Lcom/wufan/user/service/protobuf/NewMemberInfo;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const/4 p2, 0x4

    .line 23
    if-ne p1, p2, :cond_3

    .line 24
    .line 25
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    sget-object p3, Lcom/join/mgps/rpc/h;->O:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 36
    .line 37
    invoke-virtual {p1, p2, p3, v0}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)V

    .line 38
    .line 39
    .line 40
    :cond_3
    :goto_0
    return-void
.end method

.method private openWebPage(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adCfgInfo"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/join/mgps/Util/IntentDateBean;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v2, Lcom/join/mgps/rpc/h;->U:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v3, 0x4

    .line 14
    invoke-virtual {v1, v3}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string v4, "isVip"

    .line 30
    .line 31
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_1

    .line 36
    .line 37
    const-string v4, "?"

    .line 38
    .line 39
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    const-string v5, "&currentDay="

    .line 44
    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    const-string v4, "="

    .line 48
    .line 49
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_0

    .line 54
    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v2, "&isVip="

    .line 64
    .line 65
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-static {v3}, Lcom/join/mgps/Util/b;->pivc(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;->getSignDay()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    goto :goto_0

    .line 90
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v2, "?isVip="

    .line 99
    .line 100
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-static {v3}, Lcom/join/mgps/Util/b;->pivc(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;->getSignDay()I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    :cond_1
    :goto_0
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_2

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string p1, "intentdate"

    .line 134
    .line 135
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 136
    .line 137
    .line 138
    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    .line 139
    .line 140
    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 141
    .line 142
    .line 143
    sget-object v1, Lcom/papa/sim/statistic/EventP$FirstModel;->meTab:Lcom/papa/sim/statistic/EventP$FirstModel;

    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    sget-object v1, Lcom/papa/sim/statistic/EventP$SecondModel;->myCloudGame:Lcom/papa/sim/statistic/EventP$SecondModel;

    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    sget-object v1, Lcom/papa/sim/statistic/EventP$ChatId;->myCloudGame:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    const-string v1, "parentExtBean"

    .line 174
    .line 175
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 180
    .line 181
    .line 182
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    new-instance v2, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$1;

    .line 191
    .line 192
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$1;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;)V

    .line 193
    .line 194
    .line 195
    const-class v3, Lcom/join/mgps/activity/FullShareWebActivity_;

    .line 196
    .line 197
    invoke-virtual {p1, v1, v3, v0, v2}, Lcom/join/mgps/Util/IntentUtil;->startActivityWithCallback(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;)V

    .line 198
    .line 199
    .line 200
    :cond_2
    return-void
.end method

.method private receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->loadData()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->games:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    invoke-virtual {v1, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->notifyDataSetChanged()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->games:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->notifyDataSetChanged()V

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_1
    return-void
.end method

.method private receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v3, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    :goto_0
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->notifyDataSetChanged()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->games:Ljava/util/List;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->X4(Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->games:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_7

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 63
    .line 64
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_6

    .line 73
    .line 74
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    const-class v6, Lcom/join/mgps/dto/ModInfoBean;

    .line 83
    .line 84
    invoke-virtual {v4, v5, v6}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    check-cast v4, Lcom/join/mgps/dto/ModInfoBean;

    .line 89
    .line 90
    if-eqz v4, :cond_5

    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-nez v5, :cond_5

    .line 101
    .line 102
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-nez v5, :cond_4

    .line 115
    .line 116
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_5

    .line 129
    .line 130
    :cond_4
    :goto_1
    const/4 v3, 0x1

    .line 131
    goto :goto_2

    .line 132
    :cond_5
    const/4 v3, 0x0

    .line 133
    goto :goto_2

    .line 134
    :cond_6
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-nez v4, :cond_5

    .line 143
    .line 144
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-eqz v3, :cond_5

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :goto_2
    if-eqz v3, :cond_3

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_7
    const/4 v1, 0x0

    .line 163
    :goto_3
    if-nez v1, :cond_8

    .line 164
    .line 165
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->games:Ljava/util/List;

    .line 166
    .line 167
    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    :cond_8
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->loadData()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->notifyDataSetChanged()V

    .line 174
    .line 175
    .line 176
    return-void
.end method

.method private receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->games:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->w(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_0
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->games:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-ge v0, v1, :cond_3

    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->games:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->games:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->loadData()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->notifyDataSetChanged()V

    .line 83
    .line 84
    .line 85
    :cond_4
    :goto_2
    return-void
.end method

.method private returnBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imgUri"
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
    return-object v1

    .line 9
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :try_start_0
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipelineFactory()Lcom/facebook/imagepipeline/core/k;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/k;->n()Lcom/facebook/cache/disk/h;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v2, Lcom/facebook/cache/common/j;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {v2, p1}, Lcom/facebook/cache/common/j;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v2}, Lcom/facebook/cache/disk/h;->c(Lcom/facebook/cache/common/c;)Ld3/a;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Ld3/c;

    .line 35
    .line 36
    invoke-virtual {p1}, Ld3/c;->d()Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 45
    .line 46
    .line 47
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-object v1
.end method

.method private updateDownStateList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
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
    check-cast v0, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 16
    .line 17
    sget-object v1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private updateProgressPartly()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->listView:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    iget v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->firstVisiblePosition:I

    .line 6
    .line 7
    if-ltz v1, :cond_a

    .line 8
    .line 9
    iget v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->lastVisibleIndex:I

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ge v1, v0, :cond_a

    .line 16
    .line 17
    iget v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->firstVisiblePosition:I

    .line 18
    .line 19
    :goto_0
    iget v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->lastVisibleIndex:I

    .line 20
    .line 21
    if-gt v0, v1, :cond_a

    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->listView:Lcom/join/mgps/customview/XListView2;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1, v0}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iget-object v2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->listView:Lcom/join/mgps/customview/XListView2;

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    goto/16 :goto_4

    .line 42
    .line 43
    :cond_0
    const/16 v2, 0x8

    .line 44
    .line 45
    const-wide/16 v3, 0x0

    .line 46
    .line 47
    const/16 v5, 0xc

    .line 48
    .line 49
    const/4 v6, 0x2

    .line 50
    const-wide/high16 v7, 0x4090000000000000L    # 1024.0

    .line 51
    .line 52
    if-ne v1, v2, :cond_3

    .line 53
    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->adapter:Lcom/join/mgps/adapter/i4;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Lcom/join/mgps/adapter/i4;->getItem(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 61
    .line 62
    iget-object v2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->listView:Lcom/join/mgps/customview/XListView2;

    .line 63
    .line 64
    iget v9, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->firstVisiblePosition:I

    .line 65
    .line 66
    sub-int v9, v0, v9

    .line 67
    .line 68
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    if-eqz v2, :cond_9

    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    if-eqz v9, :cond_9

    .line 79
    .line 80
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    instance-of v9, v9, Lcom/join/mgps/base/b;

    .line 85
    .line 86
    if-eqz v9, :cond_9

    .line 87
    .line 88
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Lcom/join/mgps/base/b;

    .line 93
    .line 94
    instance-of v9, v2, Lcom/join/mgps/base/b;

    .line 95
    .line 96
    if-eqz v9, :cond_9

    .line 97
    .line 98
    if-eqz v1, :cond_9

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    if-eqz v9, :cond_9

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    invoke-virtual {v9, v10}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    if-eqz v9, :cond_9

    .line 123
    .line 124
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 129
    .line 130
    .line 131
    move-result-wide v10

    .line 132
    mul-double v10, v10, v7

    .line 133
    .line 134
    mul-double v10, v10, v7

    .line 135
    .line 136
    double-to-long v7, v10

    .line 137
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 138
    .line 139
    .line 140
    move-result-wide v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    const-string v12, "/"

    .line 142
    .line 143
    const v13, 0x7f0a00f7

    .line 144
    .line 145
    .line 146
    cmp-long v14, v10, v3

    .line 147
    .line 148
    if-nez v14, :cond_1

    .line 149
    .line 150
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 156
    .line 157
    .line 158
    move-result-wide v10

    .line 159
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-virtual {v2, v13, v3}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 190
    .line 191
    .line 192
    move-result-wide v10

    .line 193
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-virtual {v2, v13, v3}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 215
    .line 216
    .line 217
    :goto_1
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    if-ne v3, v5, :cond_2

    .line 222
    .line 223
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 224
    .line 225
    .line 226
    move-result-wide v3

    .line 227
    long-to-int v4, v3

    .line 228
    const v3, 0x7f0a12a5

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2, v3, v4}, Lcom/join/mgps/base/b;->setProgress(II)Lcom/join/mgps/base/b;

    .line 232
    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_2
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 236
    .line 237
    .line 238
    move-result-wide v3

    .line 239
    long-to-int v4, v3

    .line 240
    const v3, 0x7f0a129e

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2, v3, v4}, Lcom/join/mgps/base/b;->setProgress(II)Lcom/join/mgps/base/b;

    .line 244
    .line 245
    .line 246
    :goto_2
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    if-ne v1, v6, :cond_9

    .line 251
    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string v3, "/S"

    .line 265
    .line 266
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    const v3, 0x7f0a0f94

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2, v3, v1}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 277
    .line 278
    .line 279
    goto/16 :goto_4

    .line 280
    .line 281
    :catch_0
    move-exception v1

    .line 282
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 283
    .line 284
    .line 285
    goto/16 :goto_4

    .line 286
    .line 287
    :cond_3
    if-eq v1, v6, :cond_9

    .line 288
    .line 289
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->listView:Lcom/join/mgps/customview/XListView2;

    .line 290
    .line 291
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    instance-of v1, v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 296
    .line 297
    if-eqz v1, :cond_9

    .line 298
    .line 299
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->listView:Lcom/join/mgps/customview/XListView2;

    .line 300
    .line 301
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 306
    .line 307
    if-eqz v1, :cond_9

    .line 308
    .line 309
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    if-eq v2, v6, :cond_4

    .line 314
    .line 315
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    if-ne v2, v5, :cond_9

    .line 320
    .line 321
    :cond_4
    iget-object v2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->listView:Lcom/join/mgps/customview/XListView2;

    .line 322
    .line 323
    iget v6, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->firstVisiblePosition:I

    .line 324
    .line 325
    sub-int v6, v0, v6

    .line 326
    .line 327
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    if-eqz v2, :cond_9

    .line 332
    .line 333
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    if-eqz v6, :cond_9

    .line 338
    .line 339
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v6

    .line 343
    instance-of v6, v6, Lcom/join/mgps/adapter/i4$h;

    .line 344
    .line 345
    if-eqz v6, :cond_9

    .line 346
    .line 347
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    check-cast v2, Lcom/join/mgps/adapter/i4$h;

    .line 352
    .line 353
    :try_start_2
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 354
    .line 355
    .line 356
    move-result-object v6

    .line 357
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v9

    .line 361
    invoke-virtual {v6, v9}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 362
    .line 363
    .line 364
    move-result-object v6

    .line 365
    if-nez v6, :cond_5

    .line 366
    .line 367
    return-void

    .line 368
    :cond_5
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v9

    .line 372
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 373
    .line 374
    .line 375
    move-result v9

    .line 376
    if-nez v9, :cond_7

    .line 377
    .line 378
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v9

    .line 382
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 383
    .line 384
    .line 385
    move-result-wide v9

    .line 386
    mul-double v9, v9, v7

    .line 387
    .line 388
    mul-double v9, v9, v7

    .line 389
    .line 390
    double-to-long v7, v9

    .line 391
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 392
    .line 393
    .line 394
    move-result-wide v9

    .line 395
    cmp-long v11, v9, v3

    .line 396
    .line 397
    if-nez v11, :cond_6

    .line 398
    .line 399
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 400
    .line 401
    .line 402
    move-result-wide v3

    .line 403
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    goto :goto_3

    .line 410
    :cond_6
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 411
    .line 412
    .line 413
    move-result-wide v3

    .line 414
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    :cond_7
    :goto_3
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    if-ne v1, v5, :cond_8

    .line 425
    .line 426
    iget-object v1, v2, Lcom/join/mgps/adapter/i4$h;->h:Lcom/join/mgps/customview/DownloadNormalView;

    .line 427
    .line 428
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 429
    .line 430
    .line 431
    move-result-wide v2

    .line 432
    long-to-int v3, v2

    .line 433
    int-to-long v2, v3

    .line 434
    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/customview/DownloadNormalView;->s(J)V

    .line 435
    .line 436
    .line 437
    goto :goto_4

    .line 438
    :cond_8
    iget-object v1, v2, Lcom/join/mgps/adapter/i4$h;->h:Lcom/join/mgps/customview/DownloadNormalView;

    .line 439
    .line 440
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 441
    .line 442
    .line 443
    move-result-wide v2

    .line 444
    long-to-int v3, v2

    .line 445
    int-to-long v2, v3

    .line 446
    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/customview/DownloadNormalView;->s(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 447
    .line 448
    .line 449
    goto :goto_4

    .line 450
    :catch_1
    move-exception v1

    .line 451
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 452
    .line 453
    .line 454
    :cond_9
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 455
    .line 456
    goto/16 :goto_0

    .line 457
    .line 458
    :cond_a
    return-void
.end method


# virtual methods
.method addShortout(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mContext",
            "name",
            "GameId",
            "bitmap"
        }
    .end annotation

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    const v0, 0x7f080a79

    .line 8
    .line 9
    .line 10
    invoke-static {p4, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 11
    .line 12
    .line 13
    move-result-object p4

    .line 14
    :cond_0
    if-nez p4, :cond_1

    .line 15
    .line 16
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string p2, "\u521b\u5efa\u5931\u8d25\uff01"

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    const/16 v1, 0x1a

    .line 29
    .line 30
    const/high16 v2, 0x4000000

    .line 31
    .line 32
    const-string v3, "shortcutGameId"

    .line 33
    .line 34
    const-class v4, Lcom/join/mgps/activity/MGMainActivity_;

    .line 35
    .line 36
    const-string v5, "android.intent.action.MAIN"

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    if-lt v0, v1, :cond_2

    .line 40
    .line 41
    const-string v0, "shortcut"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Landroidx/core/content/pm/e1;->a(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Landroidx/core/content/pm/v0;->a(Landroid/content/pm/ShortcutManager;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    new-instance v1, Landroid/content/Intent;

    .line 58
    .line 59
    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    invoke-static {p1, p2}, Landroidx/core/content/pm/k;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {p4}, Landroidx/core/graphics/drawable/b;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 76
    .line 77
    .line 78
    move-result-object p4

    .line 79
    invoke-static {v2, p4}, Landroidx/core/content/pm/c;->a(Landroid/content/pm/ShortcutInfo$Builder;Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object p4

    .line 83
    invoke-static {p4, p2}, Landroidx/core/content/pm/p;->a(Landroid/content/pm/ShortcutInfo$Builder;Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-static {p2, v1}, Lcom/join/kotlin/ui/hmcloud/fragment/h;->a(Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-static {p2}, Landroidx/core/content/pm/t;->a(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/pm/ShortcutInfo;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    new-instance p4, Landroid/content/Intent;

    .line 96
    .line 97
    const-class v1, Lcom/join/mgps/receiver/ShortcutReceiver;

    .line 98
    .line 99
    invoke-direct {p4, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .line 101
    .line 102
    const/high16 v1, 0x8000000

    .line 103
    .line 104
    invoke-static {p1, v6, p4, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 105
    .line 106
    .line 107
    move-result-object p4

    .line 108
    invoke-virtual {p4}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 109
    .line 110
    .line 111
    move-result-object p4

    .line 112
    invoke-static {v0, p2, p4}, Landroidx/core/content/pm/u0;->a(Landroid/content/pm/ShortcutManager;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    .line 113
    .line 114
    .line 115
    invoke-static {p1, p3}, Lcom/join/mgps/Util/j2;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .line 120
    .line 121
    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    .line 122
    .line 123
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const-string v1, "duplicate"

    .line 127
    .line 128
    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    .line 130
    .line 131
    const-string v1, "android.intent.extra.shortcut.NAME"

    .line 132
    .line 133
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    .line 135
    .line 136
    const/4 p2, 0x1

    .line 137
    const/16 v1, 0x8e

    .line 138
    .line 139
    invoke-static {p4, v1, v1, p2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    const-string p4, "android.intent.extra.shortcut.ICON"

    .line 144
    .line 145
    invoke-virtual {v0, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 146
    .line 147
    .line 148
    new-instance p2, Landroid/content/Intent;

    .line 149
    .line 150
    invoke-direct {p2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    .line 161
    .line 162
    const-string p4, "android.intent.category.LAUNCHER"

    .line 163
    .line 164
    invoke-virtual {p2, p4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    .line 166
    .line 167
    const-string p4, "android.intent.extra.shortcut.INTENT"

    .line 168
    .line 169
    invoke-virtual {v0, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 173
    .line 174
    .line 175
    invoke-static {p1, p3}, Lcom/join/mgps/Util/j2;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->shortCutMap:Ljava/util/HashMap;

    .line 179
    .line 180
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 181
    .line 182
    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->notifyDataSetChanged()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0, p3}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->showAddShortcutResultDialog(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    return-void
.end method

.method afterviews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->mContext:Landroid/content/Context;

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
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->mRpcClient:Lcom/join/mgps/rpc/e;

    .line 19
    .line 20
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->c0()Lcom/join/mgps/rpc/b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 25
    .line 26
    invoke-static {}, Lcom/join/mgps/rpc/impl/b;->C()Lcom/join/mgps/rpc/c;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->accountClientV2:Lcom/join/mgps/rpc/c;

    .line 31
    .line 32
    new-instance v0, Lcom/join/mgps/adapter/i4;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/i4;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->adapter:Lcom/join/mgps/adapter/i4;

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Lcom/join/mgps/adapter/i4;->r0(Lcom/join/mgps/adapter/i4$e;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->adapter:Lcom/join/mgps/adapter/i4;

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/i4;->s0(I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->listView:Lcom/join/mgps/customview/XListView2;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->adapter:Lcom/join/mgps/adapter/i4;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->listView:Lcom/join/mgps/customview/XListView2;

    .line 60
    .line 61
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->root:Landroid/view/View;

    .line 65
    .line 66
    if-nez v0, :cond_0

    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroid/app/Activity;

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const v1, 0x7f0a1415

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->root:Landroid/view/View;

    .line 90
    .line 91
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->headView:Landroid/view/View;

    .line 92
    .line 93
    if-nez v0, :cond_1

    .line 94
    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const v1, 0x7f0d05eb

    .line 100
    .line 101
    .line 102
    const/4 v2, 0x0

    .line 103
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->headView:Landroid/view/View;

    .line 108
    .line 109
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->listView:Lcom/join/mgps/customview/XListView2;

    .line 110
    .line 111
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->headView:Landroid/view/View;

    .line 115
    .line 116
    const v1, 0x7f0a1a3b

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Landroid/widget/TextView;

    .line 124
    .line 125
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->tv_text_1:Landroid/widget/TextView;

    .line 126
    .line 127
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->headView:Landroid/view/View;

    .line 128
    .line 129
    const v1, 0x7f0a192f

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Landroid/widget/TextView;

    .line 137
    .line 138
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->tv_btn_1:Landroid/widget/TextView;

    .line 139
    .line 140
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->headView:Landroid/view/View;

    .line 141
    .line 142
    const v1, 0x7f0a1b3a

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->v_head:Landroid/view/View;

    .line 150
    .line 151
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->headView:Landroid/view/View;

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->v_head:Landroid/view/View;

    .line 158
    .line 159
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->headView:Landroid/view/View;

    .line 160
    .line 161
    const v1, 0x7f0a149e

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 169
    .line 170
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->sdv_head:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 171
    .line 172
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->headView:Landroid/view/View;

    .line 173
    .line 174
    const v1, 0x7f0a1a3c

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    check-cast v0, Landroid/widget/TextView;

    .line 182
    .line 183
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->tv_text_2:Landroid/widget/TextView;

    .line 184
    .line 185
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->headView:Landroid/view/View;

    .line 186
    .line 187
    const v1, 0x7f0a1a3d

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    check-cast v0, Landroid/widget/TextView;

    .line 195
    .line 196
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->tv_text_3:Landroid/widget/TextView;

    .line 197
    .line 198
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->headView:Landroid/view/View;

    .line 199
    .line 200
    const v1, 0x7f0a1a3e

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    check-cast v0, Landroid/widget/TextView;

    .line 208
    .line 209
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->tv_text_4:Landroid/widget/TextView;

    .line 210
    .line 211
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->headView:Landroid/view/View;

    .line 212
    .line 213
    const v1, 0x7f0a06d8

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    check-cast v0, Landroidx/constraintlayout/widget/Group;

    .line 221
    .line 222
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->g_1:Landroidx/constraintlayout/widget/Group;

    .line 223
    .line 224
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->headView:Landroid/view/View;

    .line 225
    .line 226
    const v1, 0x7f0a1a3f

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    check-cast v0, Landroid/widget/TextView;

    .line 234
    .line 235
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->tv_text_5:Landroid/widget/TextView;

    .line 236
    .line 237
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->headView:Landroid/view/View;

    .line 238
    .line 239
    const v1, 0x7f0a1a40

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    check-cast v0, Landroid/widget/TextView;

    .line 247
    .line 248
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->tv_text_6:Landroid/widget/TextView;

    .line 249
    .line 250
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->headView:Landroid/view/View;

    .line 251
    .line 252
    const v1, 0x7f0a19aa

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    check-cast v0, Landroid/widget/TextView;

    .line 260
    .line 261
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->tv_label_3:Landroid/widget/TextView;

    .line 262
    .line 263
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->headView:Landroid/view/View;

    .line 264
    .line 265
    const v1, 0x7f0a1a41

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    check-cast v0, Landroid/widget/TextView;

    .line 273
    .line 274
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->tv_text_7:Landroid/widget/TextView;

    .line 275
    .line 276
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->headView:Landroid/view/View;

    .line 277
    .line 278
    const v1, 0x7f0a1b25

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->v_1:Landroid/view/View;

    .line 286
    .line 287
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->headView:Landroid/view/View;

    .line 288
    .line 289
    const v1, 0x7f0a1b26

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->v_2:Landroid/view/View;

    .line 297
    .line 298
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->headView:Landroid/view/View;

    .line 299
    .line 300
    const v1, 0x7f0a1b27

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->v_3:Landroid/view/View;

    .line 308
    .line 309
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->headView:Landroid/view/View;

    .line 310
    .line 311
    const v1, 0x7f0a1b28

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->v_4:Landroid/view/View;

    .line 319
    .line 320
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->headView:Landroid/view/View;

    .line 321
    .line 322
    const v1, 0x7f0a1b29

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->v_5:Landroid/view/View;

    .line 330
    .line 331
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->headView:Landroid/view/View;

    .line 332
    .line 333
    const v1, 0x7f0a1b2a

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->v_6:Landroid/view/View;

    .line 341
    .line 342
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->headView:Landroid/view/View;

    .line 343
    .line 344
    const v1, 0x7f0a1b2b

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->v_7:Landroid/view/View;

    .line 352
    .line 353
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->headView:Landroid/view/View;

    .line 354
    .line 355
    const v1, 0x7f0a1b2c

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->v_8:Landroid/view/View;

    .line 363
    .line 364
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->headView:Landroid/view/View;

    .line 365
    .line 366
    const v1, 0x7f0a0a04

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->iv_7:Landroid/view/View;

    .line 374
    .line 375
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->v_head:Landroid/view/View;

    .line 376
    .line 377
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/fragment/s;

    .line 378
    .line 379
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/hmcloud/fragment/s;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    .line 384
    .line 385
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->v_1:Landroid/view/View;

    .line 386
    .line 387
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/fragment/x;

    .line 388
    .line 389
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/hmcloud/fragment/x;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    .line 394
    .line 395
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->v_2:Landroid/view/View;

    .line 396
    .line 397
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/fragment/y;

    .line 398
    .line 399
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/hmcloud/fragment/y;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    .line 404
    .line 405
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->v_3:Landroid/view/View;

    .line 406
    .line 407
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/fragment/z;

    .line 408
    .line 409
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/hmcloud/fragment/z;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    .line 414
    .line 415
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->v_4:Landroid/view/View;

    .line 416
    .line 417
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/fragment/a0;

    .line 418
    .line 419
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/hmcloud/fragment/a0;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    .line 424
    .line 425
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->v_5:Landroid/view/View;

    .line 426
    .line 427
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/fragment/b0;

    .line 428
    .line 429
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/hmcloud/fragment/b0;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    .line 434
    .line 435
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->v_6:Landroid/view/View;

    .line 436
    .line 437
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/fragment/c0;

    .line 438
    .line 439
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/hmcloud/fragment/c0;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    .line 444
    .line 445
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->iv_7:Landroid/view/View;

    .line 446
    .line 447
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/fragment/d0;

    .line 448
    .line 449
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/hmcloud/fragment/d0;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    .line 454
    .line 455
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->v_8:Landroid/view/View;

    .line 456
    .line 457
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/fragment/i;

    .line 458
    .line 459
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/hmcloud/fragment/i;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    .line 464
    .line 465
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->tv_text_2:Landroid/widget/TextView;

    .line 466
    .line 467
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/fragment/j;

    .line 468
    .line 469
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/hmcloud/fragment/j;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    .line 474
    .line 475
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->tv_text_3:Landroid/widget/TextView;

    .line 476
    .line 477
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/fragment/w;

    .line 478
    .line 479
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/hmcloud/fragment/w;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    .line 484
    .line 485
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->loadData()V

    .line 486
    .line 487
    .line 488
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 501
    .line 502
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->updateUserInfo(Lcom/wufan/user/service/protobuf/UserInfo;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    if-eqz v0, :cond_2

    .line 510
    .line 511
    const-string v1, "_sign_data"

    .line 512
    .line 513
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    const-string v2, "prentExtBean"

    .line 518
    .line 519
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    check-cast v0, Lcom/join/mgps/dto/ExtBean;

    .line 524
    .line 525
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 526
    .line 527
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 528
    .line 529
    .line 530
    move-result v0

    .line 531
    if-eqz v0, :cond_2

    .line 532
    .line 533
    iput-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->pendingSignData:Ljava/lang/String;

    .line 534
    .line 535
    :cond_2
    return-void
.end method

.method back()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Landroid/app/Activity;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/app/Activity;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method canShowAddShortcut(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "downloadTask"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method checkCloudSignOnEnter()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->checkingProactiveSign:Z

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
    iput-boolean v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->checkingProactiveSign:Z

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->checkSign(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method checkSign(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proactive"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_5

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    goto/16 :goto_1

    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    :try_start_0
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters;->newBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v3, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-virtual {v0, v3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;

    .line 52
    .line 53
    .line 54
    iget-object v3, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 55
    .line 56
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v0, v3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->setToken(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;

    .line 61
    .line 62
    .line 63
    sget-object v3, Lcom/wufan/user/service/protobuf/enumeration/SceneType;->CLOUD_GAMING_SIGN_BTN:Lcom/wufan/user/service/protobuf/enumeration/SceneType;

    .line 64
    .line 65
    invoke-virtual {v0, v3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->setSceneType(Lcom/wufan/user/service/protobuf/enumeration/SceneType;)Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-static {v3}, Lg8/b;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v0, v3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;

    .line 77
    .line 78
    .line 79
    new-instance v3, Ljava/util/HashMap;

    .line 80
    .line 81
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v4, "uid"

    .line 85
    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->getUid()I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v6, ""

    .line 99
    .line 100
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    const-string v4, "token"

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->getToken()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    const-string v4, "sceneType"

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->getSceneType()Lcom/wufan/user/service/protobuf/enumeration/SceneType;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    const-string v4, "appVersion"

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->getAppVersion()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    invoke-static {v3}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {v0, v3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;

    .line 146
    .line 147
    .line 148
    iget-object v3, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->accountClientV2:Lcom/join/mgps/rpc/c;

    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->build()Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-interface {v3, v0}, Lcom/join/mgps/rpc/c;->n(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters;)Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$MessageCloudGamingAdCfgResponseResult;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    if-eqz v0, :cond_2

    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$MessageCloudGamingAdCfgResponseResult;->getError()I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    const/16 v4, 0xc8

    .line 165
    .line 166
    if-ne v3, v4, :cond_1

    .line 167
    .line 168
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$MessageCloudGamingAdCfgResponseResult;->getData()Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {p0, v0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->showCloudSign(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Z)V

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_1
    if-eqz p1, :cond_4

    .line 177
    .line 178
    invoke-virtual {p0, v2, v1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->showCloudSign(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Z)V

    .line 179
    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_2
    if-eqz p1, :cond_4

    .line 183
    .line 184
    invoke-virtual {p0, v2, v1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->showCloudSign(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .line 186
    .line 187
    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 190
    .line 191
    .line 192
    if-eqz p1, :cond_4

    .line 193
    .line 194
    invoke-virtual {p0, v2, v1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->showCloudSign(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Z)V

    .line 195
    .line 196
    .line 197
    goto :goto_0

    .line 198
    :cond_3
    if-eqz p1, :cond_4

    .line 199
    .line 200
    invoke-virtual {p0, v2, v1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->showCloudSign(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Z)V

    .line 201
    .line 202
    .line 203
    :cond_4
    :goto_0
    return-void

    .line 204
    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    .line 205
    .line 206
    invoke-virtual {p0, v2, v1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->showCloudSign(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Z)V

    .line 207
    .line 208
    .line 209
    :cond_6
    return-void
.end method

.method del(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->games:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return-void
.end method

.method deleteGame(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    sget-object v2, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v1, 0x0

    .line 41
    :goto_0
    if-eqz v1, :cond_5

    .line 42
    .line 43
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    const/4 v2, 0x5

    .line 62
    if-eq v1, v2, :cond_3

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    const/16 v3, 0x9

    .line 69
    .line 70
    if-eq v1, v3, :cond_3

    .line 71
    .line 72
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->L0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v1, v0, v3}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v0, ""

    .line 102
    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_2
    invoke-static {p1, v2}, Lcom/join/mgps/Util/UtilsMy;->i3(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->notifyDataSetChanged()V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {v1, v0, p1}, Lcom/join/android/app/common/utils/APKUtils;->o0(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_4
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->O0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->del(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 136
    .line 137
    .line 138
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->notifyDataSetChanged()V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_5
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->O0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->del(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 149
    .line 150
    .line 151
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->notifyDataSetChanged()V

    .line 155
    .line 156
    .line 157
    :goto_1
    return-void
.end method

.method deleteModGame(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modGameId"
        }
    .end annotation

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x30

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "\u6e38\u620f\u5b89\u88c5\u4e2d\u65e0\u6cd5\u5220\u9664"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->del(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->getCurrentTypeGames()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->notifyDataSetChanged()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public explore()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->listView:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->firstVisiblePosition:I

    .line 6
    .line 7
    if-ltz v1, :cond_1

    .line 8
    .line 9
    iget v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->lastVisibleIndex:I

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ge v1, v0, :cond_1

    .line 16
    .line 17
    iget v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->firstVisiblePosition:I

    .line 18
    .line 19
    :goto_0
    iget v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->lastVisibleIndex:I

    .line 20
    .line 21
    if-gt v0, v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->listView:Lcom/join/mgps/customview/XListView2;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1, v0}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/16 v2, 0x8

    .line 34
    .line 35
    if-ne v1, v2, :cond_0

    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->adapter:Lcom/join/mgps/adapter/i4;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->listView:Lcom/join/mgps/customview/XListView2;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    sub-int v2, v0, v2

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lcom/join/mgps/adapter/i4;->getItem(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/join/mgps/dto/CollectionSevenListBean;

    .line 52
    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItem()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    instance-of v2, v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 60
    .line 61
    if-eqz v2, :cond_0

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItem()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExposure()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-nez v2, :cond_0

    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {v2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    sget-object v3, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getGameId()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v2, v3, v4}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 110
    .line 111
    .line 112
    const/4 v2, 0x1

    .line 113
    invoke-virtual {v1, v2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setExposure(Z)V

    .line 114
    .line 115
    .line 116
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_1
    return-void
.end method

.method getCloudRecGameData()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->cloud_gaming_section_id()Lorg/androidannotations/api/sharedpreferences/p;

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
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->templateId:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    .line 32
    .line 33
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 41
    .line 42
    .line 43
    new-instance v1, Lcom/join/mgps/dto/CollectionModuleSevenArgs;

    .line 44
    .line 45
    invoke-direct {v1}, Lcom/join/mgps/dto/CollectionModuleSevenArgs;-><init>()V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->templateId:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/CollectionModuleSevenArgs;->setTemplateId(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-interface {v1, v0}, Lb7/i;->N(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lcom/join/mgps/dto/ResponseModel;

    .line 81
    .line 82
    if-eqz v0, :cond_0

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    const/16 v2, 0xc8

    .line 89
    .line 90
    if-ne v1, v2, :cond_0

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    if-eqz v1, :cond_0

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lcom/join/mgps/dto/CollectionModuleSevenBean;

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->updateData(Lcom/join/mgps/dto/CollectionModuleSevenBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    .line 111
    .line 112
    :cond_0
    :goto_0
    return-void
.end method

.method isNotShowIconApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "pkgName"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->isNotShowIconAppMaps:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->isNotShowIconAppMaps:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->isNotShowIconAppMaps:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->isNotShowIconAppMaps:Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    return p1

    .line 48
    :cond_1
    return v0

    .line 49
    :cond_2
    :try_start_0
    invoke-static {p1, p2}, Lcom/join/mgps/Util/l;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iget-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->isNotShowIconAppMaps:Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_0
    return v0
.end method

.method isSingleGame(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/join/mgps/dto/TipBean;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->w0(ILjava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-lez v2, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "\u5355\u673a"

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    return p1

    .line 50
    :cond_2
    const/4 p1, 0x0

    .line 51
    return p1
.end method

.method iv_7()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNewMemberInfo()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Landroid/widget/PopupWindow;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const v3, 0x7f0713e2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    float-to-int v2, v2

    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const v4, 0x7f07165c

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    float-to-int v3, v3

    .line 51
    invoke-direct {v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(II)V

    .line 52
    .line 53
    .line 54
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 55
    .line 56
    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const v4, 0x7f0d07dd

    .line 74
    .line 75
    .line 76
    const/4 v5, 0x0

    .line 77
    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const v4, 0x7f0a1a3b

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    check-cast v4, Landroid/widget/TextView;

    .line 89
    .line 90
    const v5, 0x7f0a1a3c

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    check-cast v5, Landroid/widget/TextView;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getVipType()I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    const/4 v7, 0x3

    .line 104
    const-string v8, "\n"

    .line 105
    .line 106
    const-string v9, "\u6708\u5361\u4f1a\u5458\uff1a"

    .line 107
    .line 108
    const-string v10, "\u5b63\u5361\u4f1a\u5458\uff1a"

    .line 109
    .line 110
    const-string v11, "\u5e74\u5361\u4f1a\u5458\uff1a"

    .line 111
    .line 112
    const-string v12, ""

    .line 113
    .line 114
    if-ne v6, v7, :cond_2

    .line 115
    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getYearExpireTime()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getSeasonExpireTime()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-eqz v2, :cond_0

    .line 147
    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getSeasonExpireTime()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    :cond_0
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getMonthExpireTime()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-eqz v2, :cond_8

    .line 179
    .line 180
    invoke-static {v12}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-eqz v2, :cond_1

    .line 185
    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v12

    .line 201
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getMonthExpireTime()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v12

    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :cond_2
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getVipType()I

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    const/4 v7, 0x2

    .line 230
    if-ne v6, v7, :cond_5

    .line 231
    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getSeasonExpireTime()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getYearExpireTime()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-eqz v2, :cond_3

    .line 263
    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getYearExpireTime()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v12

    .line 286
    :cond_3
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getMonthExpireTime()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-eqz v2, :cond_8

    .line 295
    .line 296
    invoke-static {v12}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    if-eqz v2, :cond_4

    .line 301
    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v12

    .line 317
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getMonthExpireTime()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v12

    .line 339
    goto :goto_0

    .line 340
    :cond_5
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getVipType()I

    .line 341
    .line 342
    .line 343
    move-result v6

    .line 344
    if-ne v6, v2, :cond_8

    .line 345
    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getMonthExpireTime()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v6

    .line 358
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getYearExpireTime()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    if-eqz v2, :cond_6

    .line 377
    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    .line 379
    .line 380
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getYearExpireTime()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v4

    .line 393
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v12

    .line 400
    :cond_6
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getSeasonExpireTime()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 405
    .line 406
    .line 407
    move-result v2

    .line 408
    if-eqz v2, :cond_8

    .line 409
    .line 410
    invoke-static {v12}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 411
    .line 412
    .line 413
    move-result v2

    .line 414
    if-eqz v2, :cond_7

    .line 415
    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v12

    .line 431
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getSeasonExpireTime()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v12

    .line 453
    :cond_8
    :goto_0
    invoke-static {v12}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    const/4 v2, 0x0

    .line 458
    if-eqz v0, :cond_9

    .line 459
    .line 460
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    .line 465
    .line 466
    goto :goto_1

    .line 467
    :cond_9
    const/16 v0, 0x8

    .line 468
    .line 469
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 470
    .line 471
    .line 472
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 473
    .line 474
    .line 475
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->iv_7:Landroid/view/View;

    .line 476
    .line 477
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 478
    .line 479
    .line 480
    move-result-object v3

    .line 481
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 482
    .line 483
    .line 484
    move-result-object v3

    .line 485
    const v4, 0x7f071380

    .line 486
    .line 487
    .line 488
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 489
    .line 490
    .line 491
    move-result v3

    .line 492
    float-to-int v3, v3

    .line 493
    neg-int v3, v3

    .line 494
    invoke-virtual {v1, v0, v3, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 495
    .line 496
    .line 497
    return-void
.end method

.method protected lazyLoad()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->adapter:Lcom/join/mgps/adapter/i4;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/i4;->i0(Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->notifyDataSetChanged()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 21
    .line 22
    new-instance v2, Lcom/join/mgps/dto/ExtBean;

    .line 23
    .line 24
    invoke-direct {v2}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 25
    .line 26
    .line 27
    sget-object v3, Lcom/papa/sim/statistic/EventP$TypeCode;->page:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    sget-object v3, Lcom/papa/sim/statistic/EventP$FirstModel;->meTab:Lcom/papa/sim/statistic/EventP$FirstModel;

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    sget-object v3, Lcom/papa/sim/statistic/EventP$SecondModel;->myCloudGame:Lcom/papa/sim/statistic/EventP$SecondModel;

    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->getCloudRecGameData()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method protected loadData()V
    .locals 9

    .line 1
    :try_start_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lq5/f;->A()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->games:Ljava/util/List;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 14
    .line 15
    .line 16
    :cond_0
    if-eqz v0, :cond_b

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_b

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->w(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_9

    .line 64
    .line 65
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const-class v4, Lcom/join/mgps/dto/ModInfoBean;

    .line 74
    .line 75
    invoke-virtual {v2, v3, v4}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Lcom/join/mgps/dto/ModInfoBean;

    .line 80
    .line 81
    if-eqz v2, :cond_1

    .line 82
    .line 83
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v2}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v3, v4}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v2}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v4, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    const/4 v4, 0x1

    .line 108
    const/4 v5, 0x5

    .line 109
    const/4 v6, 0x0

    .line 110
    if-eqz v3, :cond_3

    .line 111
    .line 112
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    if-ne v7, v5, :cond_3

    .line 117
    .line 118
    const/4 v7, 0x1

    .line 119
    goto :goto_1

    .line 120
    :cond_3
    const/4 v7, 0x0

    .line 121
    :goto_1
    if-eqz v2, :cond_5

    .line 122
    .line 123
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    if-ne v8, v5, :cond_4

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_4
    const/4 v4, 0x0

    .line 131
    :goto_2
    move v6, v4

    .line 132
    :cond_5
    if-eqz v7, :cond_6

    .line 133
    .line 134
    if-eqz v6, :cond_6

    .line 135
    .line 136
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->games:Ljava/util/List;

    .line 137
    .line 138
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_1

    .line 143
    .line 144
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->games:Ljava/util/List;

    .line 145
    .line 146
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_6
    if-eqz v7, :cond_7

    .line 151
    .line 152
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->games:Ljava/util/List;

    .line 153
    .line 154
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-nez v1, :cond_1

    .line 159
    .line 160
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->games:Ljava/util/List;

    .line 161
    .line 162
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_7
    if-eqz v6, :cond_8

    .line 168
    .line 169
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->games:Ljava/util/List;

    .line 170
    .line 171
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-nez v1, :cond_1

    .line 176
    .line 177
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->games:Ljava/util/List;

    .line 178
    .line 179
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_8
    iget-object v2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->games:Ljava/util/List;

    .line 185
    .line 186
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    goto/16 :goto_0

    .line 190
    .line 191
    :cond_9
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-eqz v2, :cond_a

    .line 200
    .line 201
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->w(Ljava/lang/String;)Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-nez v2, :cond_a

    .line 210
    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    :cond_a
    iget-object v2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->games:Ljava/util/List;

    .line 214
    .line 215
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :cond_b
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->games:Ljava/util/List;

    .line 221
    .line 222
    if-eqz v0, :cond_c

    .line 223
    .line 224
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    iput v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->lastGamesCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    .line 230
    goto :goto_3

    .line 231
    :catchall_0
    move-exception v0

    .line 232
    throw v0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->showNoData()V

    .line 238
    .line 239
    .line 240
    :cond_c
    :goto_3
    return-void
.end method

.method needUpdate()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/activity/MyGameUpdateManagerActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/MyGameUpdateManagerActivity_$k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method notifyDataSetChanged()V
    .locals 11
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->adapter:Lcom/join/mgps/adapter/i4;

    .line 2
    .line 3
    if-eqz v0, :cond_c

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/adapter/i4;->y()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->adapter:Lcom/join/mgps/adapter/i4;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/adapter/i4;->y()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->gameIds:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 25
    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->getCurrentTypeGames()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :try_start_0
    new-instance v2, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$5;

    .line 37
    .line 38
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$5;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v2

    .line 46
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :goto_0
    new-instance v2, Lcom/join/mgps/adapter/i4$f;

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const/16 v4, 0xb

    .line 60
    .line 61
    invoke-direct {v2, v4, v3}, Lcom/join/mgps/adapter/i4$f;-><init>(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    const/16 v3, 0xc

    .line 72
    .line 73
    const/4 v5, 0x0

    .line 74
    if-lez v2, :cond_4

    .line 75
    .line 76
    new-instance v2, Lcom/join/mgps/adapter/i4$f;

    .line 77
    .line 78
    const-string v6, "\u6700\u8fd1\u5728\u73a9"

    .line 79
    .line 80
    invoke-direct {v2, v3, v6}, Lcom/join/mgps/adapter/i4$f;-><init>(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    const/4 v6, 0x0

    .line 91
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-eqz v7, :cond_3

    .line 96
    .line 97
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    check-cast v7, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 102
    .line 103
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    invoke-static {v8}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-eqz v8, :cond_1

    .line 112
    .line 113
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    invoke-static {v8}, Lcom/join/mgps/Util/d2;->w(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    if-nez v8, :cond_1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_1
    iget-object v8, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->shortCutMap:Ljava/util/HashMap;

    .line 125
    .line 126
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v9

    .line 130
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    if-eqz v8, :cond_2

    .line 135
    .line 136
    iget-object v8, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->shortCutMap:Ljava/util/HashMap;

    .line 137
    .line 138
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    if-eqz v8, :cond_2

    .line 147
    .line 148
    iget-object v8, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->shortCutMap:Ljava/util/HashMap;

    .line 149
    .line 150
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    check-cast v8, Ljava/lang/Boolean;

    .line 159
    .line 160
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    goto :goto_2

    .line 165
    :cond_2
    const/4 v8, 0x0

    .line 166
    :goto_2
    new-instance v9, Lcom/join/mgps/adapter/i4$f;

    .line 167
    .line 168
    const/4 v10, 0x2

    .line 169
    invoke-direct {v9, v10, v7, v8}, Lcom/join/mgps/adapter/i4$f;-><init>(ILjava/lang/Object;Z)V

    .line 170
    .line 171
    .line 172
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    iget-object v8, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->gameIds:Ljava/util/List;

    .line 176
    .line 177
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    const-string v9, "cld_"

    .line 182
    .line 183
    const-string v10, ""

    .line 184
    .line 185
    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    add-int/lit8 v6, v6, 0x1

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_3
    move v5, v6

    .line 196
    :cond_4
    if-nez v5, :cond_5

    .line 197
    .line 198
    new-instance v2, Lcom/join/mgps/adapter/i4$f;

    .line 199
    .line 200
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    const/16 v6, 0x9

    .line 209
    .line 210
    invoke-direct {v2, v6, v5}, Lcom/join/mgps/adapter/i4$f;-><init>(ILjava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    :cond_5
    new-instance v2, Lcom/join/mgps/adapter/i4$f;

    .line 217
    .line 218
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 219
    .line 220
    .line 221
    move-result v5

    .line 222
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    invoke-direct {v2, v4, v5}, Lcom/join/mgps/adapter/i4$f;-><init>(ILjava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    iget-object v2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 233
    .line 234
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->cloudGameConfig()Lorg/androidannotations/api/sharedpreferences/p;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-virtual {v2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    check-cast v2, Ljava/lang/String;

    .line 243
    .line 244
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    if-eqz v4, :cond_7

    .line 249
    .line 250
    iget-object v4, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->cloudGameConfigBean:Lcom/join/mgps/dto/CloudGameConfigBean;

    .line 251
    .line 252
    if-nez v4, :cond_6

    .line 253
    .line 254
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    const-class v5, Lcom/join/mgps/dto/CloudGameConfigBean;

    .line 259
    .line 260
    invoke-virtual {v4, v2, v5}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    check-cast v2, Lcom/join/mgps/dto/CloudGameConfigBean;

    .line 265
    .line 266
    iput-object v2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->cloudGameConfigBean:Lcom/join/mgps/dto/CloudGameConfigBean;

    .line 267
    .line 268
    :cond_6
    iget-object v2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->cloudGameConfigBean:Lcom/join/mgps/dto/CloudGameConfigBean;

    .line 269
    .line 270
    if-eqz v2, :cond_7

    .line 271
    .line 272
    invoke-virtual {v2}, Lcom/join/mgps/dto/CloudGameConfigBean;->getBanner()Lcom/join/mgps/dto/CloudBannerBean;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    if-eqz v2, :cond_7

    .line 277
    .line 278
    iget-object v2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->cloudGameConfigBean:Lcom/join/mgps/dto/CloudGameConfigBean;

    .line 279
    .line 280
    invoke-virtual {v2}, Lcom/join/mgps/dto/CloudGameConfigBean;->getBanner()Lcom/join/mgps/dto/CloudBannerBean;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    invoke-virtual {v2}, Lcom/join/mgps/dto/CloudBannerBean;->getPersonal_center_banner()Ljava/util/ArrayList;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    if-eqz v2, :cond_7

    .line 289
    .line 290
    iget-object v2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->cloudGameConfigBean:Lcom/join/mgps/dto/CloudGameConfigBean;

    .line 291
    .line 292
    invoke-virtual {v2}, Lcom/join/mgps/dto/CloudGameConfigBean;->getBanner()Lcom/join/mgps/dto/CloudBannerBean;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-virtual {v2}, Lcom/join/mgps/dto/CloudBannerBean;->getPersonal_center_banner()Ljava/util/ArrayList;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    if-nez v2, :cond_7

    .line 305
    .line 306
    new-instance v2, Lcom/join/mgps/adapter/i4$f;

    .line 307
    .line 308
    iget-object v4, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->cloudGameConfigBean:Lcom/join/mgps/dto/CloudGameConfigBean;

    .line 309
    .line 310
    invoke-virtual {v4}, Lcom/join/mgps/dto/CloudGameConfigBean;->getBanner()Lcom/join/mgps/dto/CloudBannerBean;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    invoke-virtual {v4}, Lcom/join/mgps/dto/CloudBannerBean;->getPersonal_center_banner()Ljava/util/ArrayList;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    const/16 v5, 0xa

    .line 319
    .line 320
    invoke-direct {v2, v5, v4}, Lcom/join/mgps/adapter/i4$f;-><init>(ILjava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    :cond_7
    iget-object v2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->cloudRecGames:Ljava/util/List;

    .line 327
    .line 328
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    if-nez v2, :cond_a

    .line 333
    .line 334
    new-instance v2, Lcom/join/mgps/adapter/i4$f;

    .line 335
    .line 336
    const-string v4, "\u4e3a\u4f60\u63a8\u8350"

    .line 337
    .line 338
    invoke-direct {v2, v3, v4}, Lcom/join/mgps/adapter/i4$f;-><init>(ILjava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    new-instance v2, Ljava/util/ArrayList;

    .line 345
    .line 346
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .line 348
    .line 349
    iget-object v3, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->cloudRecGames:Ljava/util/List;

    .line 350
    .line 351
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 356
    .line 357
    .line 358
    move-result v4

    .line 359
    if-eqz v4, :cond_9

    .line 360
    .line 361
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    check-cast v4, Lcom/join/mgps/dto/CollectionSevenListBean;

    .line 366
    .line 367
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItem()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v5

    .line 371
    if-eqz v5, :cond_8

    .line 372
    .line 373
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItem()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v5

    .line 377
    instance-of v5, v5, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 378
    .line 379
    if-eqz v5, :cond_8

    .line 380
    .line 381
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItem()Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v5

    .line 385
    check-cast v5, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 386
    .line 387
    iget-object v6, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->gameIds:Ljava/util/List;

    .line 388
    .line 389
    invoke-virtual {v5}, Lcom/join/mgps/dto/CommonGameInfoBean;->getGameId()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result v5

    .line 397
    if-nez v5, :cond_8

    .line 398
    .line 399
    new-instance v5, Lcom/join/mgps/adapter/i4$f;

    .line 400
    .line 401
    const/16 v6, 0x8

    .line 402
    .line 403
    invoke-direct {v5, v6, v4}, Lcom/join/mgps/adapter/i4$f;-><init>(ILjava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    goto :goto_3

    .line 410
    :cond_9
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 411
    .line 412
    .line 413
    move-result v3

    .line 414
    if-nez v3, :cond_a

    .line 415
    .line 416
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 417
    .line 418
    .line 419
    iget-object v2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->allDownloadAppHomeBeans:Ljava/util/List;

    .line 420
    .line 421
    invoke-direct {p0, v2}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->updateDownStateList(Ljava/util/List;)V

    .line 422
    .line 423
    .line 424
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 425
    .line 426
    .line 427
    move-result v2

    .line 428
    if-nez v2, :cond_b

    .line 429
    .line 430
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->showUi()V

    .line 431
    .line 432
    .line 433
    goto :goto_4

    .line 434
    :cond_b
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->showNoData()V

    .line 435
    .line 436
    .line 437
    :goto_4
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->updateArchiveTime()V

    .line 438
    .line 439
    .line 440
    iget-object v2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->adapter:Lcom/join/mgps/adapter/i4;

    .line 441
    .line 442
    invoke-virtual {v2, v0}, Lcom/join/mgps/adapter/i4;->q0(Ljava/util/List;)V

    .line 443
    .line 444
    .line 445
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->adapter:Lcom/join/mgps/adapter/i4;

    .line 446
    .line 447
    invoke-virtual {v0}, Lcom/join/mgps/adapter/i4;->notifyDataSetChanged()V

    .line 448
    .line 449
    .line 450
    invoke-virtual {p0, v1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->refreshShortcutState(Ljava/util/List;)V

    .line 451
    .line 452
    .line 453
    :cond_c
    :goto_5
    return-void
.end method

.method public notifyShortcutAdded(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->shortCutMap:Ljava/util/HashMap;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method notifyShortcutChanged(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->adapter:Lcom/join/mgps/adapter/i4;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/adapter/i4;->y()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->adapter:Lcom/join/mgps/adapter/i4;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/adapter/i4;->y()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->adapter:Lcom/join/mgps/adapter/i4;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/adapter/i4;->y()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/join/mgps/adapter/i4$f;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/join/mgps/adapter/i4$f;->b()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v3, 0x2

    .line 51
    if-ne v2, v3, :cond_1

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/join/mgps/adapter/i4$f;->a()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/join/mgps/adapter/i4$f;->a()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 64
    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-nez v3, :cond_1

    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-nez v3, :cond_2

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Ljava/lang/Boolean;

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    invoke-virtual {v1, v2}, Lcom/join/mgps/adapter/i4$f;->d(Z)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    iget-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->adapter:Lcom/join/mgps/adapter/i4;

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/join/mgps/adapter/i4;->notifyDataSetChanged()V

    .line 109
    .line 110
    .line 111
    :cond_4
    :goto_1
    return-void
.end method

.method public onAccountChangeEvent(Lcom/join/mgps/event/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/b;->b()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x2

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->updateUserInfo(Lcom/wufan/user/service/protobuf/UserInfo;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public onAddShortcutClick(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    return-void
.end method

.method public onApiResponseEvent(Lcom/join/mgps/event/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/g;->a()Lcom/join/mgps/enums/ApiName;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lcom/join/mgps/enums/ApiName;->ArchivingCfg:Lcom/join/mgps/enums/ApiName;

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->updateArchiveTime()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method onBirthdayUI(Lcom/kongzue/dialogx/dialogs/CustomDialog;Lcom/wufan/user/service/protobuf/SetBirthdayResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "result"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/SetBirthdayResponse;->getError()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/16 v0, 0xc8

    .line 6
    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->E1()V

    .line 10
    .line 11
    .line 12
    const-string p1, "\u8bbe\u7f6e\u6210\u529f"

    .line 13
    .line 14
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget-object p2, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameSetVipBtnPop:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    sget-object p2, Lcom/papa/sim/statistic/EventP$ResultCode;->succ:Lcom/papa/sim/statistic/EventP$ResultCode;

    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ExtBean;->setResultCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object p2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonReport:Lcom/papa/sim/statistic/Event;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p2, v0, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const-string p1, "\u8bbe\u7f6e\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 72
    .line 73
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    return-void
.end method

.method public onClick(Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameId",
            "downloadTask"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->onMore(Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method onDJClick()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Landroid/content/Intent;

    .line 10
    .line 11
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v3, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, "parentExtBean"

    .line 25
    .line 26
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "position"

    .line 31
    .line 32
    const/4 v4, 0x3

    .line 33
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-class v3, Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;

    .line 38
    .line 39
    invoke-virtual {v0, v1, v3, v2}, Lcom/join/mgps/Util/IntentUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->A(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/join/mgps/fragment/e;->onDestroy()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->mHanler:Landroid/os/Handler;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onDownloadSpeed(Lcom/join/mgps/event/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/event/q;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->notifyDataSetChanged()V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
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
    new-instance v2, Lcom/join/kotlin/ui/hmcloud/fragment/r;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/hmcloud/fragment/r;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;)V

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
    invoke-virtual {p0, v0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_2
    invoke-virtual {p0, v0, v3}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-boolean p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->SCROLLING:Z

    .line 61
    .line 62
    if-nez p1, :cond_6

    .line 63
    .line 64
    invoke-direct {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->updateProgressPartly()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    const/4 p1, 0x1

    .line 85
    invoke-virtual {p0, v0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

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

.method onGameOpened(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.action_unread_notify"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->games:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->games:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_3

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 30
    .line 31
    :try_start_0
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v3, v4}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setOpen(Z)V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v4

    .line 71
    invoke-virtual {v2, v4, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setOpenTime(J)V

    .line 72
    .line 73
    .line 74
    if-eqz v3, :cond_1

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOpenTime()J

    .line 77
    .line 78
    .line 79
    move-result-wide v4

    .line 80
    invoke-virtual {v3, v4, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setOpenTime(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catch_0
    move-exception v2

    .line 85
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->notifyDataSetChanged()V

    .line 90
    .line 91
    .line 92
    :cond_4
    :goto_1
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
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->hasExposureAd:Z

    .line 8
    .line 9
    iget p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->noGameAdIndex:I

    .line 10
    .line 11
    add-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    iput p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->noGameAdIndex:I

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onLongClick(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/UninstallWufunGameActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/UninstallWufunGameActivity_$t;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/UninstallWufunGameActivity_$t;->a(Ljava/lang/String;)Lcom/join/mgps/activity/UninstallWufunGameActivity_$t;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onMore(Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameId",
            "downloadTask"
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/join/mgps/customview/b0;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p2, v0}, Lcom/join/mgps/customview/b0;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$6;

    .line 11
    .line 12
    invoke-direct {v0, p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$6;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v0}, Lcom/join/mgps/customview/b0;->d(Lcom/join/mgps/customview/b0$a;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->root:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {p2, v0, p1}, Lcom/join/mgps/customview/b0;->e(Landroid/view/View;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method onMoreDeleteGame(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x64L
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->onLongClick(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/e;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->isCreate:Z

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->adapter:Lcom/join/mgps/adapter/i4;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/i4;->i0(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->notifyDataSetChanged()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->templateId:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->getCloudRecGameData()V

    .line 28
    .line 29
    .line 30
    :cond_1
    iput-boolean v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->isCreate:Z

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->refreshUserCenter()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->checkCloudSignOnEnter()V

    .line 36
    .line 37
    .line 38
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
    iput p3, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->lastVisibleIndex:I

    .line 5
    .line 6
    iput p2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->firstVisiblePosition:I

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
    iput-boolean p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->SCROLLING:Z

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->explore()V

    .line 11
    .line 12
    .line 13
    :cond_1
    return-void
.end method

.method public onSpeedUp(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    return-void
.end method

.method onTimeClick()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Landroid/content/Intent;

    .line 10
    .line 11
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v3, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, "parentExtBean"

    .line 25
    .line 26
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "position"

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-class v3, Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;

    .line 38
    .line 39
    invoke-virtual {v0, v1, v3, v2}, Lcom/join/mgps/Util/IntentUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method onVipBirthdayUI(Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipBirthdayResponseResult;)V
    .locals 5
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
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipBirthdayResponseResult;->getError()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0xc8

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 14
    .line 15
    new-instance v2, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$4;

    .line 16
    .line 17
    invoke-direct {v2, p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$4;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipBirthdayResponseResult;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Lcom/kongzue/dialogx/dialogs/CustomDialog;-><init>(Lcom/kongzue/dialogx/interfaces/r;)V

    .line 21
    .line 22
    .line 23
    const-string v2, "#90000000"

    .line 24
    .line 25
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->P2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Lcom/join/kotlin/ui/hmcloud/fragment/t;

    .line 34
    .line 35
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/hmcloud/fragment/t;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->g2(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->c3()Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 43
    .line 44
    .line 45
    new-instance v1, Lorg/json/JSONObject;

    .line 46
    .line 47
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 48
    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    :try_start_0
    const-string v3, "total"

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipBirthdayResponseResult;->getInto()Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeVipDaysInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeVipDaysInfo;->getTotalTime()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    const/4 v2, 0x0

    .line 75
    :goto_0
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    sget-object v3, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameVipGetBenefitsPop:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const-string v3, "\u751f\u65e5\u7279\u6743"

    .line 92
    .line 93
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ExtBean;->setScenesCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    sget-object v3, Lcom/papa/sim/statistic/EventP$TypeCode;->popup:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    if-eqz v2, :cond_1

    .line 108
    .line 109
    sget-object v3, Lcom/papa/sim/statistic/EventP$ResultCode;->succ:Lcom/papa/sim/statistic/EventP$ResultCode;

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_1
    sget-object v3, Lcom/papa/sim/statistic/EventP$ResultCode;->fail:Lcom/papa/sim/statistic/EventP$ResultCode;

    .line 113
    .line 114
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ExtBean;->setResultCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    if-eqz v2, :cond_2

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_2
    if-eqz p1, :cond_3

    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipBirthdayResponseResult;->getErrorMsg()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    goto :goto_2

    .line 132
    :cond_3
    const-string v0, "\u672a\u77e5"

    .line 133
    .line 134
    :goto_2
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    sget-object v1, Lcom/papa/sim/statistic/Event;->commonReport:Lcom/papa/sim/statistic/Event;

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method onVipDaysUI(Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipDaysResponseResult;)V
    .locals 3
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
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipDaysResponseResult;->getError()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xc8

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 12
    .line 13
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$3;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$3;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipDaysResponseResult;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;-><init>(Lcom/kongzue/dialogx/interfaces/r;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "#90000000"

    .line 22
    .line 23
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->P2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/fragment/v;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/hmcloud/fragment/v;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->g2(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->c3()Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 46
    :goto_0
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    sget-object v2, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameVipGetBenefitsPop:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v2, "\u4f1a\u5458\u65e5\u7279\u6743"

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setScenesCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    sget-object v2, Lcom/papa/sim/statistic/EventP$ResultCode;->succ:Lcom/papa/sim/statistic/EventP$ResultCode;

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    sget-object v2, Lcom/papa/sim/statistic/EventP$ResultCode;->fail:Lcom/papa/sim/statistic/EventP$ResultCode;

    .line 74
    .line 75
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setResultCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipDaysResponseResult;->getInto()Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeVipDaysInfo;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    if-eqz p1, :cond_3

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipDaysResponseResult;->getErrorMsg()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    const-string p1, "\u672a\u77e5"

    .line 102
    .line 103
    :goto_2
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    sget-object v1, Lcom/papa/sim/statistic/Event;->commonReport:Lcom/papa/sim/statistic/Event;

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method onYBClick()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Landroid/content/Intent;

    .line 10
    .line 11
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v3, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, "parentExtBean"

    .line 25
    .line 26
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "position"

    .line 31
    .line 32
    const/4 v4, 0x2

    .line 33
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-class v3, Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;

    .line 38
    .line 39
    invoke-virtual {v0, v1, v3, v2}, Lcom/join/mgps/Util/IntentUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method onYZClick()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Landroid/content/Intent;

    .line 10
    .line 11
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v3, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, "parentExtBean"

    .line 25
    .line 26
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "position"

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-class v3, Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;

    .line 38
    .line 39
    invoke-virtual {v0, v1, v3, v2}, Lcom/join/mgps/Util/IntentUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method plugs()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/activity/MyGamePlugManagerActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/MyGamePlugManagerActivity_$f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method refreshGamePurchasedList()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->loadData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public refreshNotOpenState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->adapter:Lcom/join/mgps/adapter/i4;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/i4;->i0(Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->notifyDataSetChanged()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method refreshShortcutState()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/l;->d(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->isNotShowIconAppMaps:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->isNotShowIconAppMaps:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method refreshShortcutState(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTasks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    if-eqz p1, :cond_2

    .line 6
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 10
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->canShowAddShortcut(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v3, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->shortCutMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5, v2}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->canShowAddShortcut(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->notifyShortcutChanged(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public refreshUserCenter()V
    .locals 1

    .line 1
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->reload()V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goSearchHintActivity(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method sendSignPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "totalTime",
            "freeTime",
            "vipTime",
            "succ"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "total"

    .line 14
    .line 15
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    const-string p1, "dailySign"

    .line 19
    .line 20
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    const-string p1, "cloudGameVipSign"

    .line 24
    .line 25
    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    const-string p1, ""

    .line 38
    .line 39
    :goto_0
    iget-object p2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    iget-object p3, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 46
    .line 47
    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    sget-object p3, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameVipDailySignPop:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 52
    .line 53
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    if-eqz p3, :cond_1

    .line 66
    .line 67
    sget-object p3, Lcom/papa/sim/statistic/EventP$ResultCode;->succ:Lcom/papa/sim/statistic/EventP$ResultCode;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    sget-object p3, Lcom/papa/sim/statistic/EventP$ResultCode;->fail:Lcom/papa/sim/statistic/EventP$ResultCode;

    .line 71
    .line 72
    :goto_1
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/ExtBean;->setResultCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    sget-object p3, Lcom/papa/sim/statistic/Event;->commonReport:Lcom/papa/sim/statistic/Event;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p2, p3, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method setBirthdayClick(Lcom/kongzue/dialogx/dialogs/CustomDialog;II)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dialog",
            "month",
            "day"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->birthDay:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const-string p1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    .line 17
    .line 18
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->birthDay:Z

    .line 24
    .line 25
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$SetBirthdayRequest;->newBuilder()Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$SetBirthdayRequest$b;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-object v1, Lcom/MApplication;->z:Lcom/MApplication;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {v0, v2}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$SetBirthdayRequest$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$SetBirthdayRequest$b;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v2, v1}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$SetBirthdayRequest$b;->setToken(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$SetBirthdayRequest$b;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "517_6.1.7.0"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$SetBirthdayRequest$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$SetBirthdayRequest$b;

    .line 58
    .line 59
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v3, "0"

    .line 66
    .line 67
    const/16 v4, 0x9

    .line 68
    .line 69
    if-le p2, v4, :cond_2

    .line 70
    .line 71
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p2, "-"

    .line 95
    .line 96
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    if-le p3, v4, :cond_3

    .line 100
    .line 101
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    :goto_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-virtual {v0, p2}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$SetBirthdayRequest$b;->setBirthday(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$SetBirthdayRequest$b;

    .line 129
    .line 130
    .line 131
    new-instance p2, Ljava/util/HashMap;

    .line 132
    .line 133
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 134
    .line 135
    .line 136
    new-instance p3, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$SetBirthdayRequest$b;->getUid()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v1, ""

    .line 149
    .line 150
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p3

    .line 157
    const-string v1, "uid"

    .line 158
    .line 159
    invoke-virtual {p2, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    const-string p3, "token"

    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$SetBirthdayRequest$b;->getToken()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {p2, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    const-string p3, "appVersion"

    .line 172
    .line 173
    invoke-virtual {p2, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    invoke-static {p2}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-virtual {v0, p2}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$SetBirthdayRequest$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$SetBirthdayRequest$b;

    .line 181
    .line 182
    .line 183
    iget-object p2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->accountClientV2:Lcom/join/mgps/rpc/c;

    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$SetBirthdayRequest$b;->build()Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$SetBirthdayRequest;

    .line 186
    .line 187
    .line 188
    move-result-object p3

    .line 189
    invoke-interface {p2, p3}, Lcom/join/mgps/rpc/c;->s(Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$SetBirthdayRequest;)Lcom/wufan/user/service/protobuf/SetBirthdayResponse;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->onBirthdayUI(Lcom/kongzue/dialogx/dialogs/CustomDialog;Lcom/wufan/user/service/protobuf/SetBirthdayResponse;)V

    .line 194
    .line 195
    .line 196
    const/4 p1, 0x0

    .line 197
    iput-boolean p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->birthDay:Z

    .line 198
    .line 199
    return-void
.end method

.method showAddShortcut(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/join/android/app/component/album/lib/ImageLoader;->q()Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/album/lib/ImageLoader;->m(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-direct {p0, v0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->returnBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->addShortout(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method showAddShortcutResultDialog(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    new-instance v0, Lcom/join/android/app/common/dialog/d;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Lcom/join/android/app/common/dialog/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method showCloudSign(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adCfgInfo"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->showCloudSign(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Z)V

    return-void
.end method

.method showCloudSign(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adCfgInfo",
            "proactive"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->checkingProactiveSign:Z

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;->getShowOldMember()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/EventP$ChatId;->cloudGameOldUserDailySignPop:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    move-result-object v0

    .line 9
    sget-object v1, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->INSTANCE:Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/join/kotlin/ui/hmcloud/fragment/m;

    invoke-direct {v3, p0}, Lcom/join/kotlin/ui/hmcloud/fragment/m;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;)V

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->showCloudGameSignTip(Landroid/content/Context;Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Lcom/join/mgps/dto/ExtBean;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->showEntryDialogsIfNeeded()V

    return-void

    :cond_3
    if-nez p1, :cond_4

    return-void

    .line 11
    :cond_4
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;->getIsSigned()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 12
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->openWebPage(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->sign()V

    :goto_0
    return-void
.end method

.method showEntryDialogsIfNeeded()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->entryDialogsHandled:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->entryDialogsHandled:Z

    .line 14
    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v1, 0x1c

    .line 18
    .line 19
    if-le v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->needShowPermissdialog()Lorg/androidannotations/api/sharedpreferences/d;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->n0(Landroid/content/Context;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog_$IntentBuilder_;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const/4 v1, 0x2

    .line 54
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog_$IntentBuilder_;->from(I)Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog_$IntentBuilder_;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const/high16 v1, 0x10000000

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/join/mgps/activity/mygame/dialog/WufunGameDownFirstNotPermissDialog_$IntentBuilder_;

    .line 65
    .line 66
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 67
    .line 68
    .line 69
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->pendingSignData:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->pendingSignData:Ljava/lang/String;

    .line 80
    .line 81
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v1, "totalTime"

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const-string v2, "freeTime"

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    const-string v3, "vipTime"

    .line 97
    .line 98
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->showSignDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    .line 111
    .line 112
    :cond_2
    :goto_0
    return-void
.end method

.method showNoData()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->listView:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    return-void
.end method

.method showSetBirthday()V
    .locals 2

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 2
    .line 3
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$2;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment$2;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;-><init>(Lcom/kongzue/dialogx/interfaces/r;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "#90000000"

    .line 12
    .line 13
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->P2(I)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/fragment/k;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/hmcloud/fragment/k;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->j2(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/fragment/l;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/hmcloud/fragment/l;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->g2(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->c3()Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method showSignDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "totalTime",
            "freeTime",
            "vipTime",
            "succ"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->sendSignPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->INSTANCE:Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v6, Lcom/join/kotlin/ui/hmcloud/fragment/n;

    .line 18
    .line 19
    invoke-direct {v6, p0}, Lcom/join/kotlin/ui/hmcloud/fragment/n;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;)V

    .line 20
    .line 21
    .line 22
    new-instance v7, Lcom/join/kotlin/ui/hmcloud/fragment/o;

    .line 23
    .line 24
    invoke-direct {v7, p0}, Lcom/join/kotlin/ui/hmcloud/fragment/o;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;)V

    .line 25
    .line 26
    .line 27
    new-instance v8, Lcom/join/kotlin/ui/hmcloud/fragment/p;

    .line 28
    .line 29
    invoke-direct {v8}, Lcom/join/kotlin/ui/hmcloud/fragment/p;-><init>()V

    .line 30
    .line 31
    .line 32
    move-object v3, p1

    .line 33
    move-object v4, p2

    .line 34
    move-object v5, p3

    .line 35
    invoke-virtual/range {v1 .. v8}, Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;->showSignDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method showUi()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->listView:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    return-void
.end method

.method sign()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->isSign:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const-string v0, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    .line 17
    .line 18
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNewMemberInfo()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsSigned()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    const-string v0, "\u4eca\u65e5\u5df2\u7b7e,\u660e\u65e5\u518d\u6765\u5427~"

    .line 35
    .line 36
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/o;->F3(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->isSign:Z

    .line 42
    .line 43
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest;->newBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget-object v1, Lcom/MApplication;->z:Lcom/MApplication;

    .line 48
    .line 49
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-virtual {v0, v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v2, v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;->setToken(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const-string v2, "517_6.1.7.0"

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;

    .line 76
    .line 77
    .line 78
    new-instance v1, Ljava/util/HashMap;

    .line 79
    .line 80
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 81
    .line 82
    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;->getUid()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v4, ""

    .line 96
    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    const-string v4, "uid"

    .line 105
    .line 106
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    const-string v3, "token"

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;->getToken()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    const-string v3, "appVersion"

    .line 119
    .line 120
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    invoke-static {v1}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;

    .line 128
    .line 129
    .line 130
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->accountClientV2:Lcom/join/mgps/rpc/c;

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest$b;->build()Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/c;->l(Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->updateSignUI(Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;)V

    .line 141
    .line 142
    .line 143
    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->isSign:Z

    .line 145
    .line 146
    return-void
.end method

.method public updateArchiveTime()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->games:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "cld_"

    .line 26
    .line 27
    const-string v4, ""

    .line 28
    .line 29
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    sget-object v5, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 34
    .line 35
    invoke-virtual {v5, v2}, Lcom/join/kotlin/utils/DlTaskManager;->getCloudArchiveTime(Ljava/lang/String;)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRef_crc_sign_id()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v2, v3, v4}, Lcom/join/mgps/Util/t2;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v5, v2}, Lcom/join/kotlin/utils/DlTaskManager;->getCloudArchiveTime(Ljava/lang/String;)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    :cond_0
    if-eqz v2, :cond_1

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 56
    .line 57
    .line 58
    move-result-wide v5

    .line 59
    const-wide/16 v7, 0x0

    .line 60
    .line 61
    cmp-long v3, v5, v7

    .line 62
    .line 63
    if-lez v3, :cond_1

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 66
    .line 67
    .line 68
    move-result-wide v2

    .line 69
    const-string v4, "yyyy/MM/dd"

    .line 70
    .line 71
    invoke-static {v2, v3, v4}, Lcom/join/mgps/Util/e0;->D(JLjava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCloudArchiveTime(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {v1, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCloudArchiveTime(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    return-void
.end method

.method updateData(Lcom/join/mgps/dto/CollectionModuleSevenBean;)V
    .locals 6
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
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionModuleSevenBean;->getTemplate_items()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionModuleSevenBean;->getTemplate_type()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_3

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionModuleSevenBean;->getTemplate_items()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/join/mgps/dto/CollectionModuleSevenSubBean;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionModuleSevenSubBean;->getModel_val()Lcom/join/mgps/dto/CollectionModuleSevenItemBean;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionModuleSevenSubBean;->getModel_type()I

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionModuleSevenSubBean;->getModel_val()Lcom/join/mgps/dto/CollectionModuleSevenItemBean;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_list()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionModuleSevenItemBean;->getGame_list()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_2

    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    sget-object v4, Lcom/papa/sim/statistic/EventP$FirstModel;->meTab:Lcom/papa/sim/statistic/EventP$FirstModel;

    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    sget-object v4, Lcom/papa/sim/statistic/EventP$SecondModel;->myCloudGame:Lcom/papa/sim/statistic/EventP$SecondModel;

    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    sget-object v4, Lcom/papa/sim/statistic/EventP$ChatId;->myCloudGame:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    sget-object v4, Lcom/papa/sim/statistic/EventP$TypeCode;->cloudGame:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionModuleSevenBean;->getTitle()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 129
    .line 130
    .line 131
    iget-object v3, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->cloudRecGames:Ljava/util/List;

    .line 132
    .line 133
    new-instance v4, Lcom/join/mgps/dto/CollectionSevenListBean;

    .line 134
    .line 135
    const/16 v5, 0x8

    .line 136
    .line 137
    invoke-direct {v4, v5, v2}, Lcom/join/mgps/dto/CollectionSevenListBean;-><init>(ILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    iget-object v3, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->allDownloadAppHomeBeans:Ljava/util/List;

    .line 144
    .line 145
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->notifyDataSetChanged()V

    .line 150
    .line 151
    .line 152
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->mHanler:Landroid/os/Handler;

    .line 153
    .line 154
    new-instance v2, Lcom/join/kotlin/ui/hmcloud/fragment/q;

    .line 155
    .line 156
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/hmcloud/fragment/q;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;)V

    .line 157
    .line 158
    .line 159
    const-wide/16 v3, 0x320

    .line 160
    .line 161
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :cond_3
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->refreshUserCenter()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method updateSignUI(Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const-string v0, "\u7b7e\u5230\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 2
    .line 3
    const-string v1, "0"

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;->getError()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/16 v3, 0xc8

    .line 12
    .line 13
    if-ne v2, v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;->getInto()Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo;->getTotalTime()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;->getInto()Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo;->getFreeTime()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;->getInto()Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSignInInfo;->getVipTime()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->showSignDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-virtual {p0, v1, v1, v1, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->sendSignPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-virtual {p0, v1, v1, v1, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->sendSignPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 60
    .line 61
    .line 62
    :goto_0
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
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

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

.method updateUserInfo(Lcom/wufan/user/service/protobuf/UserInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userInfo"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getNewMemberInfo()Lcom/wufan/user/service/protobuf/NewMemberInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->sdv_head:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, ""

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->sdv_head:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->sdv_head:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-static {v1, v3}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->tv_text_1:Landroid/widget/TextView;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->tv_text_2:Landroid/widget/TextView;

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v3, "\u4e91\u94bb : "

    .line 73
    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getCloudDiamond()D

    .line 78
    .line 79
    .line 80
    move-result-wide v3

    .line 81
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->tv_text_3:Landroid/widget/TextView;

    .line 92
    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v3, "\u4e91\u5e01 : "

    .line 99
    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getCloudCoin()D

    .line 104
    .line 105
    .line 106
    move-result-wide v3

    .line 107
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getTotalTime()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_1

    .line 126
    .line 127
    iget-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->tv_text_4:Landroid/widget/TextView;

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getTotalTime()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->tv_text_4:Landroid/widget/TextView;

    .line 138
    .line 139
    const-string v1, " 0\u5c0f\u65f6"

    .line 140
    .line 141
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    :goto_0
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsBaoYeCard()Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    const-string v1, "\u5305\u591c/\u6781\u901f\u79d2\u8fdb"

    .line 149
    .line 150
    if-eqz p1, :cond_2

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsJiSuCard()Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_2

    .line 157
    .line 158
    move-object p1, v1

    .line 159
    goto :goto_1

    .line 160
    :cond_2
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsBaoYeCard()Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-eqz p1, :cond_3

    .line 165
    .line 166
    const-string p1, "\u5305\u591c"

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_3
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsJiSuCard()Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_4

    .line 174
    .line 175
    const-string p1, "\u6781\u901f\u79d2\u8fdb"

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_4
    move-object p1, v2

    .line 179
    :goto_1
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    const/4 v4, 0x0

    .line 184
    const/16 v5, 0x8

    .line 185
    .line 186
    if-eqz v3, :cond_5

    .line 187
    .line 188
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->tv_text_5:Landroid/widget/TextView;

    .line 189
    .line 190
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->g_1:Landroidx/constraintlayout/widget/Group;

    .line 194
    .line 195
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 196
    .line 197
    .line 198
    iget-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->tv_label_3:Landroid/widget/TextView;

    .line 199
    .line 200
    const-string v1, "\u7279\u6743\u751f\u6548\u4e2d"

    .line 201
    .line 202
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_5
    iget-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->tv_text_5:Landroid/widget/TextView;

    .line 207
    .line 208
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .line 210
    .line 211
    iget-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->tv_label_3:Landroid/widget/TextView;

    .line 212
    .line 213
    const-string v1, "\u7279\u6743\u672a\u751f\u6548"

    .line 214
    .line 215
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    .line 217
    .line 218
    iget-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->g_1:Landroidx/constraintlayout/widget/Group;

    .line 219
    .line 220
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 221
    .line 222
    .line 223
    :goto_2
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsSigned()Z

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    if-eqz p1, :cond_6

    .line 228
    .line 229
    iget-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->v_7:Landroid/view/View;

    .line 230
    .line 231
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 232
    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_6
    iget-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->v_7:Landroid/view/View;

    .line 236
    .line 237
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 238
    .line 239
    .line 240
    :goto_3
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getIsVip()Z

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    if-eqz p1, :cond_7

    .line 245
    .line 246
    iget-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->iv_7:Landroid/view/View;

    .line 247
    .line 248
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 249
    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_7
    iget-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->iv_7:Landroid/view/View;

    .line 253
    .line 254
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 255
    .line 256
    .line 257
    :goto_4
    iget-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->tv_text_6:Landroid/widget/TextView;

    .line 258
    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getPropNum()I

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getShowLabelType()I

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getShowLabelContent()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    if-eqz v1, :cond_8

    .line 294
    .line 295
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->tv_text_7:Landroid/widget/TextView;

    .line 296
    .line 297
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/NewMemberInfo;->getShowLabelContent()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    .line 303
    .line 304
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->tv_text_7:Landroid/widget/TextView;

    .line 305
    .line 306
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 307
    .line 308
    .line 309
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->tv_text_7:Landroid/widget/TextView;

    .line 310
    .line 311
    new-instance v2, Lcom/join/kotlin/ui/hmcloud/fragment/u;

    .line 312
    .line 313
    invoke-direct {v2, p0, p1, v0}, Lcom/join/kotlin/ui/hmcloud/fragment/u;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;ILcom/wufan/user/service/protobuf/NewMemberInfo;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    .line 318
    .line 319
    goto :goto_5

    .line 320
    :cond_8
    iget-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->tv_text_7:Landroid/widget/TextView;

    .line 321
    .line 322
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 323
    .line 324
    .line 325
    :goto_5
    return-void
.end method

.method v_3()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/papa/sim/statistic/EventP$ChatId;->myCloudGame:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lcom/papa/sim/statistic/EventP$TypeCode;->btnBuy:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "\u9053\u5177\u5546\u57ce"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setScenesCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    sget-object v2, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget-object v2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    sget-object v3, Lcom/join/mgps/rpc/h;->R:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v1, v2, v3, v0}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method v_4()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/papa/sim/statistic/EventP$ChatId;->myCloudGame:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lcom/papa/sim/statistic/EventP$TypeCode;->btnBuy:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "\u4e91\u73a9\u4f1a\u5458"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setScenesCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    sget-object v2, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget-object v2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    sget-object v3, Lcom/join/mgps/rpc/h;->O:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v1, v2, v3, v0}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method v_5()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/papa/sim/statistic/EventP$ChatId;->myCloudGame:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lcom/papa/sim/statistic/EventP$TypeCode;->btnBuy:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "\u4e91\u94bb/\u5e01\u5145\u503c"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setScenesCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    sget-object v2, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget-object v2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    sget-object v3, Lcom/join/mgps/rpc/h;->Q:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v1, v2, v3, v0}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method v_6()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/papa/sim/statistic/EventP$ChatId;->myCloudGame:Lcom/papa/sim/statistic/EventP$ChatId;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lcom/papa/sim/statistic/EventP$TypeCode;->btnSign:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "\u65e5\u7b7e"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setScenesCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    sget-object v2, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->checkSign(Z)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method v_head()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Landroid/content/Intent;

    .line 10
    .line 11
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v3, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, "parentExtBean"

    .line 25
    .line 26
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-class v3, Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;

    .line 31
    .line 32
    invoke-virtual {v0, v1, v3, v2}, Lcom/join/mgps/Util/IntentUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method vipBirthdayClick(Lcom/wufan/user/service/protobuf/NewMemberInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newMemberInfo"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-boolean p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->vipBirthday:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    const-string p1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    .line 17
    .line 18
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->vipBirthday:Z

    .line 24
    .line 25
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest;->newBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest$b;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {p1, v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest$b;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v1, v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest$b;->setToken(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest$b;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "517_6.1.7.0"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest$b;

    .line 58
    .line 59
    .line 60
    new-instance v0, Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    .line 64
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest$b;->getUid()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v3, ""

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    const-string v3, "uid"

    .line 87
    .line 88
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    const-string v2, "token"

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest$b;->getToken()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    const-string v2, "appVersion"

    .line 101
    .line 102
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    invoke-static {v0}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p1, v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest$b;

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->accountClientV2:Lcom/join/mgps/rpc/c;

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest$b;->build()Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/c;->h(Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipBirthdayResponseResult;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->onVipBirthdayUI(Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipBirthdayResponseResult;)V

    .line 123
    .line 124
    .line 125
    const/4 p1, 0x0

    .line 126
    iput-boolean p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->vipBirthday:Z

    .line 127
    .line 128
    return-void
.end method

.method vipDaysClick(Lcom/wufan/user/service/protobuf/NewMemberInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newMemberInfo"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-boolean p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->vipDays:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    const-string p1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    .line 17
    .line 18
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->vipDays:Z

    .line 24
    .line 25
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest;->newBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest$b;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {p1, v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest$b;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v1, v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest$b;->setToken(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest$b;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "517_6.1.7.0"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest$b;

    .line 58
    .line 59
    .line 60
    new-instance v0, Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    .line 64
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest$b;->getUid()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v3, ""

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    const-string v3, "uid"

    .line 87
    .line 88
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    const-string v2, "token"

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest$b;->getToken()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    const-string v2, "appVersion"

    .line 101
    .line 102
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    invoke-static {v0}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p1, v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest$b;

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->accountClientV2:Lcom/join/mgps/rpc/c;

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest$b;->build()Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/c;->m(Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipDaysResponseResult;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->onVipDaysUI(Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipDaysResponseResult;)V

    .line 123
    .line 124
    .line 125
    const/4 p1, 0x0

    .line 126
    iput-boolean p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->vipDays:Z

    .line 127
    .line 128
    return-void
.end method

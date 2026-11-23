.class public final Lcom/join/kotlin/discount/GameDetailFragment;
.super Lcom/join/kotlin/base/fragment/BaseVmDbFragment;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/discount/proxy/GameDetailFragmentClickProxy;
.implements Lcom/join/kotlin/discount/proxy/ItemGameDetailCommentListClickProxy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/base/fragment/BaseVmDbFragment<",
        "Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/ll;",
        ">;",
        "Lcom/join/kotlin/discount/proxy/GameDetailFragmentClickProxy;",
        "Lcom/join/kotlin/discount/proxy/ItemGameDetailCommentListClickProxy;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGameDetailFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameDetailFragment.kt\ncom/join/kotlin/discount/GameDetailFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1087:1\n1#2:1088\n774#3:1089\n865#3,2:1090\n1563#3:1092\n1634#3,3:1093\n774#3:1100\n865#3,2:1101\n1869#3:1103\n808#3,11:1104\n1869#3,2:1115\n1870#3:1117\n1869#3,2:1122\n1869#3,2:1124\n37#4:1096\n36#4,3:1097\n37#4:1118\n36#4,3:1119\n*S KotlinDebug\n*F\n+ 1 GameDetailFragment.kt\ncom/join/kotlin/discount/GameDetailFragment\n*L\n875#1:1089\n875#1:1090,2\n877#1:1092\n877#1:1093,3\n984#1:1100\n984#1:1101,2\n986#1:1103\n988#1:1104,11\n988#1:1115,2\n986#1:1117\n484#1:1122,2\n494#1:1124,2\n883#1:1096\n883#1:1097,3\n996#1:1118\n996#1:1119,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u00042\u00020\u0005B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0012\u00105\u001a\u0002062\u0008\u00107\u001a\u0004\u0018\u000108H\u0016J\u0008\u00109\u001a\u000206H\u0016J\u0006\u0010<\u001a\u000206J\u0008\u0010=\u001a\u000206H\u0016J\u0008\u0010>\u001a\u000206H\u0016J\u0008\u0010?\u001a\u000206H\u0016J\u0008\u0010@\u001a\u000206H\u0016J\u0006\u0010A\u001a\u000206J\u000e\u0010B\u001a\u0002062\u0006\u0010C\u001a\u00020(J\u000e\u0010D\u001a\u0002062\u0006\u0010C\u001a\u00020(J\u0008\u0010E\u001a\u000206H\u0016J\u0008\u0010F\u001a\u000206H\u0016J\u0008\u0010G\u001a\u000206H\u0016J\u0008\u0010H\u001a\u000206H\u0016J\u0008\u0010I\u001a\u000206H\u0016J\u0008\u0010J\u001a\u000206H\u0002J\u0008\u0010K\u001a\u000206H\u0016J\u0008\u0010L\u001a\u000206H\u0002J\u0012\u0010M\u001a\u0002062\u0008\u0010N\u001a\u0004\u0018\u00010.H\u0002J\u0012\u0010O\u001a\u0002062\u0008\u0010P\u001a\u0004\u0018\u00010.H\u0016J\u0008\u0010Q\u001a\u000206H\u0016J\u0008\u0010R\u001a\u000206H\u0016J\u0008\u0010S\u001a\u000206H\u0016J\u0008\u0010T\u001a\u000206H\u0016J\u0010\u0010U\u001a\u0002062\u0006\u0010V\u001a\u00020*H\u0016J\u0008\u0010W\u001a\u000206H\u0016J\u0008\u0010X\u001a\u000206H\u0016J\u0008\u0010Y\u001a\u000206H\u0016J\u0008\u0010Z\u001a\u000206H\u0016J\u0008\u0010[\u001a\u000206H\u0016J\u0008\u0010\\\u001a\u000206H\u0016J\u0008\u0010]\u001a\u000206H\u0016J\u0012\u0010^\u001a\u0002062\u0008\u0010P\u001a\u0004\u0018\u00010.H\u0016J\u0010\u0010_\u001a\u0002062\u0006\u0010`\u001a\u00020aH\u0007J\u0008\u0010b\u001a\u0004\u0018\u00010cJ\u0012\u0010d\u001a\u0002062\u0008\u0010e\u001a\u0004\u0018\u00010fH\u0016J\u0006\u0010g\u001a\u00020.J\u0006\u0010h\u001a\u00020*J\u0006\u0010i\u001a\u00020*J\u0008\u0010j\u001a\u000206H\u0002J\u0012\u0010k\u001a\u0004\u0018\u00010.2\u0008\u0010l\u001a\u0004\u0018\u00010.R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000eR\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0010\u001a\u0004\u0008\u0013\u0010\u0014R\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0010\u001a\u0004\u0008\u0018\u0010\u0019R\u001b\u0010\u001b\u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\u0010\u001a\u0004\u0008\u001d\u0010\u001eR\u001b\u0010 \u001a\u00020!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010\u0010\u001a\u0004\u0008\"\u0010#R\u0010\u0010%\u001a\u0004\u0018\u00010&X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00102\u001a\u0004\u0018\u000103X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00104\u001a\u000203X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010:\u001a\u0004\u0018\u00010;X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006m"
    }
    d2 = {
        "Lcom/join/kotlin/discount/GameDetailFragment;",
        "Lcom/join/kotlin/base/fragment/BaseVmDbFragment;",
        "Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/FragmentDiscountGameDetailV2Binding;",
        "Lcom/join/kotlin/discount/proxy/GameDetailFragmentClickProxy;",
        "Lcom/join/kotlin/discount/proxy/ItemGameDetailCommentListClickProxy;",
        "<init>",
        "()V",
        "loadSir",
        "Lcom/kingja/loadsir/core/LoadService;",
        "",
        "bannerAdapter",
        "Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter;",
        "getBannerAdapter",
        "()Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter;",
        "bannerAdapter$delegate",
        "Lkotlin/Lazy;",
        "infoAdapter",
        "Lcom/join/kotlin/discount/adapter/GameDetailInfoAdapter;",
        "getInfoAdapter",
        "()Lcom/join/kotlin/discount/adapter/GameDetailInfoAdapter;",
        "infoAdapter$delegate",
        "releaseWelfareAdapter",
        "Lcom/join/kotlin/discount/adapter/GameDetailReleaseWelfareAdapter;",
        "getReleaseWelfareAdapter",
        "()Lcom/join/kotlin/discount/adapter/GameDetailReleaseWelfareAdapter;",
        "releaseWelfareAdapter$delegate",
        "commentAdapter",
        "Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;",
        "getCommentAdapter",
        "()Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;",
        "commentAdapter$delegate",
        "similarAdapter",
        "Lcom/join/kotlin/discount/adapter/GameDetailSimilarGameAdapter;",
        "getSimilarAdapter",
        "()Lcom/join/kotlin/discount/adapter/GameDetailSimilarGameAdapter;",
        "similarAdapter$delegate",
        "videoHelper",
        "Lcom/join/android/app/component/video/RvListVideoHelper;",
        "isReleaseWelfareExpand",
        "",
        "lastRvRelaseWelfareHeight",
        "",
        "currentIndicatorPosition",
        "firstCompletelyVisibleWhenIndicatorShowLast",
        "topBgColor",
        "",
        "isPause",
        "hasDestroyed",
        "showNewServer",
        "parentExtBean",
        "Lcom/join/mgps/dto/ExtBean;",
        "pageExtBean",
        "initView",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onResume",
        "handler",
        "Landroid/os/Handler;",
        "playVideo",
        "onPause",
        "onDestroy",
        "createObserver",
        "lazyLoadData",
        "loadDbData",
        "loadData",
        "refresh",
        "loadSimilarGame",
        "goGift",
        "goCoupon",
        "goEvent",
        "goServer",
        "bookGame",
        "applyDetailBottomDownloadExt",
        "downBtnClick",
        "showDownDialog",
        "volcanoCheck",
        "gameId",
        "horizontalPicClick",
        "url",
        "toMoreSubAccount",
        "expandReleaseWelfare",
        "onAdClick",
        "goComment",
        "showCommentStatistic",
        "default",
        "goTrade",
        "clickGameInfoTitle",
        "clickGoodRate",
        "supportBigR",
        "admireBigR",
        "showBigRRule",
        "toRefundDetail",
        "verticalPicClick",
        "onEventMainThread",
        "downloadTaskEvent",
        "Lcom/join/mgps/event/DownloadTaskEvent;",
        "supportGameInfo",
        "Lcom/join/kotlin/discount/model/bean/GameDetailBean;",
        "like",
        "bean",
        "Lcom/join/kotlin/discount/model/bean/CommentDetailBean;",
        "getGoodRate",
        "getCanSellAcountCount",
        "getCanRecycleAccountCount",
        "setTopMask",
        "getNotLightColor",
        "color",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGameDetailFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameDetailFragment.kt\ncom/join/kotlin/discount/GameDetailFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1087:1\n1#2:1088\n774#3:1089\n865#3,2:1090\n1563#3:1092\n1634#3,3:1093\n774#3:1100\n865#3,2:1101\n1869#3:1103\n808#3,11:1104\n1869#3,2:1115\n1870#3:1117\n1869#3,2:1122\n1869#3,2:1124\n37#4:1096\n36#4,3:1097\n37#4:1118\n36#4,3:1119\n*S KotlinDebug\n*F\n+ 1 GameDetailFragment.kt\ncom/join/kotlin/discount/GameDetailFragment\n*L\n875#1:1089\n875#1:1090,2\n877#1:1092\n877#1:1093,3\n984#1:1100\n984#1:1101,2\n986#1:1103\n988#1:1104,11\n988#1:1115,2\n986#1:1117\n484#1:1122,2\n494#1:1124,2\n883#1:1096\n883#1:1097,3\n996#1:1118\n996#1:1119,3\n*E\n"
    }
.end annotation


# instance fields
.field private final bannerAdapter$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final commentAdapter$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentIndicatorPosition:I

.field private firstCompletelyVisibleWhenIndicatorShowLast:I

.field private final handler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private hasDestroyed:Z

.field private final infoAdapter$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isPause:Z

.field private isReleaseWelfareExpand:Z

.field private lastRvRelaseWelfareHeight:I

.field private loadSir:Lcom/kingja/loadsir/core/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingja/loadsir/core/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private pageExtBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private parentExtBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final releaseWelfareAdapter$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private showNewServer:Z

.field private final similarAdapter$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private topBgColor:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private videoHelper:Lcom/join/android/app/component/video/h;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/kotlin/discount/m;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/join/kotlin/discount/m;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->bannerAdapter$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/join/kotlin/discount/n;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/join/kotlin/discount/n;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->infoAdapter$delegate:Lkotlin/Lazy;

    .line 25
    .line 26
    new-instance v0, Lcom/join/kotlin/discount/o;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/join/kotlin/discount/o;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->releaseWelfareAdapter$delegate:Lkotlin/Lazy;

    .line 36
    .line 37
    new-instance v0, Lcom/join/kotlin/discount/p;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/join/kotlin/discount/p;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->commentAdapter$delegate:Lkotlin/Lazy;

    .line 47
    .line 48
    new-instance v0, Lcom/join/kotlin/discount/q;

    .line 49
    .line 50
    invoke-direct {v0}, Lcom/join/kotlin/discount/q;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->similarAdapter$delegate:Lkotlin/Lazy;

    .line 58
    .line 59
    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->firstCompletelyVisibleWhenIndicatorShowLast:I

    .line 61
    .line 62
    const-string v0, "#503835"

    .line 63
    .line 64
    iput-object v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->topBgColor:Ljava/lang/String;

    .line 65
    .line 66
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 67
    .line 68
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 72
    .line 73
    new-instance v0, Landroid/os/Handler;

    .line 74
    .line 75
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->handler:Landroid/os/Handler;

    .line 79
    .line 80
    return-void
.end method

.method public static synthetic N(Lcom/join/kotlin/discount/GameDetailFragment;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/discount/GameDetailFragment;->createObserver$lambda$29$lambda$25$lambda$24(Lcom/join/kotlin/discount/GameDetailFragment;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O()Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/discount/GameDetailFragment;->commentAdapter_delegate$lambda$3()Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic P(Lcom/join/kotlin/discount/GameDetailFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/join/kotlin/discount/GameDetailFragment;->initView$lambda$7(Lcom/join/kotlin/discount/GameDetailFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic Q()Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/discount/GameDetailFragment;->bannerAdapter_delegate$lambda$0()Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic R(Lcom/join/kotlin/discount/GameDetailFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/discount/GameDetailFragment;->createObserver$lambda$29$lambda$26(Lcom/join/kotlin/discount/GameDetailFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S(Lcom/join/kotlin/discount/GameDetailFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->initView$lambda$6(Lcom/join/kotlin/discount/GameDetailFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic T()Lcom/join/kotlin/discount/adapter/GameDetailReleaseWelfareAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/discount/GameDetailFragment;->releaseWelfareAdapter_delegate$lambda$2()Lcom/join/kotlin/discount/adapter/GameDetailReleaseWelfareAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic U()Lcom/join/kotlin/discount/adapter/GameDetailSimilarGameAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/discount/GameDetailFragment;->similarAdapter_delegate$lambda$4()Lcom/join/kotlin/discount/adapter/GameDetailSimilarGameAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic V(Lcom/join/kotlin/discount/GameDetailFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/discount/GameDetailFragment;->createObserver$lambda$29$lambda$28(Lcom/join/kotlin/discount/GameDetailFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic W(Lcom/join/kotlin/discount/GameDetailFragment;Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/discount/GameDetailFragment;->createObserver$lambda$29$lambda$27(Lcom/join/kotlin/discount/GameDetailFragment;Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X(Lcom/join/kotlin/discount/GameDetailFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/join/kotlin/discount/GameDetailFragment;->initView$lambda$11(Lcom/join/kotlin/discount/GameDetailFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic Y(Lcom/join/kotlin/discount/GameDetailFragment;Lcom/join/kotlin/base/state/ResultState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/discount/GameDetailFragment;->createObserver$lambda$29$lambda$25(Lcom/join/kotlin/discount/GameDetailFragment;Lcom/join/kotlin/base/state/ResultState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Z(Lcom/join/kotlin/discount/GameDetailFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->initView$lambda$10(Lcom/join/kotlin/discount/GameDetailFragment;)V

    return-void
.end method

.method public static synthetic a0(Lcom/join/kotlin/discount/GameDetailFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->playVideo$lambda$14(Lcom/join/kotlin/discount/GameDetailFragment;)V

    return-void
.end method

.method public static final synthetic access$getBannerAdapter(Lcom/join/kotlin/discount/GameDetailFragment;)Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->getBannerAdapter()Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getCurrentIndicatorPosition$p(Lcom/join/kotlin/discount/GameDetailFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->currentIndicatorPosition:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getFirstCompletelyVisibleWhenIndicatorShowLast$p(Lcom/join/kotlin/discount/GameDetailFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->firstCompletelyVisibleWhenIndicatorShowLast:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getTopBgColor$p(Lcom/join/kotlin/discount/GameDetailFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->topBgColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getVideoHelper$p(Lcom/join/kotlin/discount/GameDetailFragment;)Lcom/join/android/app/component/video/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->videoHelper:Lcom/join/android/app/component/video/h;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$isPause$p(Lcom/join/kotlin/discount/GameDetailFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->isPause:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$setCurrentIndicatorPosition$p(Lcom/join/kotlin/discount/GameDetailFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/discount/GameDetailFragment;->currentIndicatorPosition:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setFirstCompletelyVisibleWhenIndicatorShowLast$p(Lcom/join/kotlin/discount/GameDetailFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/discount/GameDetailFragment;->firstCompletelyVisibleWhenIndicatorShowLast:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setPause$p(Lcom/join/kotlin/discount/GameDetailFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/discount/GameDetailFragment;->isPause:Z

    .line 2
    .line 3
    return-void
.end method

.method private final applyDetailBottomDownloadExt()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/kotlin/discount/GameDetailFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGameId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGameId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGameInfo()Landroidx/lifecycle/MutableLiveData;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lcom/join/kotlin/discount/model/bean/GameDetailBean;

    .line 58
    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/DownloadPointBase;->setExt(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getDownloadTask()Landroidx/lifecycle/MutableLiveData;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 79
    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    return-void
.end method

.method public static synthetic b0()Lcom/join/kotlin/discount/adapter/GameDetailInfoAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/discount/GameDetailFragment;->infoAdapter_delegate$lambda$1()Lcom/join/kotlin/discount/adapter/GameDetailInfoAdapter;

    move-result-object v0

    return-object v0
.end method

.method private static final bannerAdapter_delegate$lambda$0()Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic c0(Lcom/join/kotlin/discount/GameDetailFragment;Lcom/join/kotlin/discount/model/bean/GameDetailDataBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/discount/GameDetailFragment;->createObserver$lambda$29$lambda$25$lambda$23(Lcom/join/kotlin/discount/GameDetailFragment;Lcom/join/kotlin/discount/model/bean/GameDetailDataBean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final commentAdapter_delegate$lambda$3()Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final createObserver$lambda$29$lambda$25(Lcom/join/kotlin/discount/GameDetailFragment;Lcom/join/kotlin/base/state/ResultState;)Lkotlin/Unit;
    .locals 9

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/kotlin/discount/GameDetailFragment;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const-string p1, "loadSir"

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    move-object p1, v0

    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    invoke-static {p1, v0, v1, v0}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->showError$default(Lcom/kingja/loadsir/core/b;Ljava/lang/String;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;->n:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    const/16 v0, 0x8

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v0, "\u6e38\u620f\u5df2\u4e0b\u67b6"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-eqz p0, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    new-instance v4, Lcom/join/kotlin/discount/z;

    .line 67
    .line 68
    invoke-direct {v4, p0}, Lcom/join/kotlin/discount/z;-><init>(Lcom/join/kotlin/discount/GameDetailFragment;)V

    .line 69
    .line 70
    .line 71
    new-instance v5, Lcom/join/kotlin/discount/l;

    .line 72
    .line 73
    invoke-direct {v5, p0}, Lcom/join/kotlin/discount/l;-><init>(Lcom/join/kotlin/discount/GameDetailFragment;)V

    .line 74
    .line 75
    .line 76
    const/4 v6, 0x0

    .line 77
    const/16 v7, 0x8

    .line 78
    .line 79
    const/4 v8, 0x0

    .line 80
    move-object v2, p0

    .line 81
    move-object v3, p1

    .line 82
    invoke-static/range {v2 .. v8}, Lcom/join/kotlin/base/ext/BaseViewModelExtKt;->parseState$default(Lcom/join/kotlin/base/fragment/BaseVmFragment;Lcom/join/kotlin/base/state/ResultState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 86
    .line 87
    return-object p0
.end method

.method private static final createObserver$lambda$29$lambda$25$lambda$23(Lcom/join/kotlin/discount/GameDetailFragment;Lcom/join/kotlin/discount/model/bean/GameDetailDataBean;)Lkotlin/Unit;
    .locals 9

    .line 1
    if-eqz p1, :cond_19

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/kotlin/discount/model/bean/GameDetailDataBean;->getDiscount_data()Lcom/join/kotlin/discount/model/bean/GameDetailBean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_19

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string v0, "loadSir"

    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    move-object v0, v1

    .line 20
    :cond_0
    invoke-virtual {v0}, Lcom/kingja/loadsir/core/b;->h()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getDefaultBtnImage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v2, 0x1

    .line 34
    const/4 v3, 0x0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, 0x0

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 47
    :goto_1
    if-nez v0, :cond_3

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/join/kotlin/discount/model/bean/GameDetailBean;->getBasic_info()Lcom/join/kotlin/discount/model/bean/GameDetailBasicInfoBean;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getDefaultBtnImage()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v0, v4}, Lcom/join/kotlin/discount/model/bean/GameDetailBasicInfoBean;->setDownload_btn_pic(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    invoke-virtual {p1}, Lcom/join/kotlin/discount/model/bean/GameDetailBean;->getTop_bg_color()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-nez v0, :cond_4

    .line 73
    .line 74
    const-string v0, "#503835"

    .line 75
    .line 76
    :cond_4
    iput-object v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->topBgColor:Ljava/lang/String;

    .line 77
    .line 78
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->setTopMask()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 86
    .line 87
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;->n:Landroid/widget/LinearLayout;

    .line 88
    .line 89
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGameInfo()Landroidx/lifecycle/MutableLiveData;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/join/kotlin/discount/model/bean/GameDetailBean;->getBasic_info()Lcom/join/kotlin/discount/model/bean/GameDetailBasicInfoBean;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-eqz v0, :cond_6

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/GameDetailBasicInfoBean;->getOn_off()Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    if-nez v0, :cond_5

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_6

    .line 123
    .line 124
    const/4 v0, 0x1

    .line 125
    goto :goto_3

    .line 126
    :cond_6
    :goto_2
    const/4 v0, 0x0

    .line 127
    :goto_3
    const/4 v4, 0x2

    .line 128
    if-eqz v0, :cond_7

    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getProgress()Landroidx/lifecycle/MutableLiveData;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-virtual {v0, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getBtnText()Landroidx/lifecycle/MutableLiveData;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    const-string v5, "\u5df2\u4e0b\u67b6"

    .line 158
    .line 159
    invoke-virtual {v0, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_a

    .line 163
    .line 164
    :cond_7
    invoke-virtual {p1}, Lcom/join/kotlin/discount/model/bean/GameDetailBean;->getBooking_info()Lcom/join/kotlin/discount/model/bean/GameDetailBookingInfoBean;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    if-eqz v0, :cond_9

    .line 169
    .line 170
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/GameDetailBookingInfoBean;->getGame_status()Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    if-nez v0, :cond_8

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-ne v0, v4, :cond_9

    .line 182
    .line 183
    const/4 v0, 0x1

    .line 184
    goto :goto_5

    .line 185
    :cond_9
    :goto_4
    const/4 v0, 0x0

    .line 186
    :goto_5
    if-eqz v0, :cond_a

    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getProgress()Landroidx/lifecycle/MutableLiveData;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    invoke-virtual {v0, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 210
    .line 211
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getBtnText()Landroidx/lifecycle/MutableLiveData;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    const-string v5, "\u5373\u5c06\u4e0a\u7ebf"

    .line 216
    .line 217
    invoke-virtual {v0, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_a

    .line 221
    .line 222
    :cond_a
    invoke-virtual {p1}, Lcom/join/kotlin/discount/model/bean/GameDetailBean;->getBasic_info()Lcom/join/kotlin/discount/model/bean/GameDetailBasicInfoBean;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    const-wide/16 v5, 0x0

    .line 227
    .line 228
    if-eqz v0, :cond_b

    .line 229
    .line 230
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/GameDetailBasicInfoBean;->getApp_size()Ljava/lang/Long;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    if-eqz v0, :cond_b

    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 237
    .line 238
    .line 239
    move-result-wide v7

    .line 240
    goto :goto_6

    .line 241
    :cond_b
    move-wide v7, v5

    .line 242
    :goto_6
    cmp-long v0, v7, v5

    .line 243
    .line 244
    if-lez v0, :cond_10

    .line 245
    .line 246
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 251
    .line 252
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getDownloadTask()Landroidx/lifecycle/MutableLiveData;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    if-eqz v0, :cond_f

    .line 261
    .line 262
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 267
    .line 268
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getDownloadTask()Landroidx/lifecycle/MutableLiveData;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 277
    .line 278
    if-eqz v0, :cond_c

    .line 279
    .line 280
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    if-nez v0, :cond_c

    .line 285
    .line 286
    const/4 v0, 0x1

    .line 287
    goto :goto_7

    .line 288
    :cond_c
    const/4 v0, 0x0

    .line 289
    :goto_7
    if-nez v0, :cond_f

    .line 290
    .line 291
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 296
    .line 297
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getDownloadTask()Landroidx/lifecycle/MutableLiveData;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 306
    .line 307
    if-eqz v0, :cond_d

    .line 308
    .line 309
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    const/4 v5, 0x7

    .line 314
    if-ne v0, v5, :cond_d

    .line 315
    .line 316
    const/4 v0, 0x1

    .line 317
    goto :goto_8

    .line 318
    :cond_d
    const/4 v0, 0x0

    .line 319
    :goto_8
    if-nez v0, :cond_f

    .line 320
    .line 321
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 326
    .line 327
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getDownloadTask()Landroidx/lifecycle/MutableLiveData;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 336
    .line 337
    if-eqz v0, :cond_e

    .line 338
    .line 339
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    const/4 v5, 0x6

    .line 344
    if-ne v0, v5, :cond_e

    .line 345
    .line 346
    const/4 v0, 0x1

    .line 347
    goto :goto_9

    .line 348
    :cond_e
    const/4 v0, 0x0

    .line 349
    :goto_9
    if-eqz v0, :cond_10

    .line 350
    .line 351
    :cond_f
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 356
    .line 357
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getProgress()Landroidx/lifecycle/MutableLiveData;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    const/16 v5, 0x64

    .line 362
    .line 363
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    invoke-virtual {v0, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 375
    .line 376
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getBtnText()Landroidx/lifecycle/MutableLiveData;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    const-string v5, "\u4e0b\u8f7d"

    .line 381
    .line 382
    invoke-virtual {v0, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 383
    .line 384
    .line 385
    :cond_10
    :goto_a
    new-instance v0, Ljava/util/ArrayList;

    .line 386
    .line 387
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .line 389
    .line 390
    invoke-virtual {p1}, Lcom/join/kotlin/discount/model/bean/GameDetailBean;->getPic_video_info()Lcom/join/kotlin/discount/model/bean/GameDetailPicAndVideoInfoBean;

    .line 391
    .line 392
    .line 393
    move-result-object v5

    .line 394
    if-eqz v5, :cond_15

    .line 395
    .line 396
    invoke-virtual {v5}, Lcom/join/kotlin/discount/model/bean/GameDetailPicAndVideoInfoBean;->getVideo_url()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v6

    .line 400
    if-eqz v6, :cond_11

    .line 401
    .line 402
    new-instance v6, Lcom/join/kotlin/discount/model/bean/GameDetailBannerEntityBean;

    .line 403
    .line 404
    invoke-direct {v6, v2, v5}, Lcom/join/kotlin/discount/model/bean/GameDetailBannerEntityBean;-><init>(ILjava/lang/Object;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    :cond_11
    invoke-virtual {v5}, Lcom/join/kotlin/discount/model/bean/GameDetailPicAndVideoInfoBean;->getPic_position()Ljava/lang/Integer;

    .line 411
    .line 412
    .line 413
    move-result-object v6

    .line 414
    if-nez v6, :cond_12

    .line 415
    .line 416
    goto :goto_c

    .line 417
    :cond_12
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 418
    .line 419
    .line 420
    move-result v6

    .line 421
    if-nez v6, :cond_13

    .line 422
    .line 423
    invoke-virtual {v5}, Lcom/join/kotlin/discount/model/bean/GameDetailPicAndVideoInfoBean;->getPics()Ljava/util/List;

    .line 424
    .line 425
    .line 426
    move-result-object v5

    .line 427
    if-eqz v5, :cond_15

    .line 428
    .line 429
    check-cast v5, Ljava/lang/Iterable;

    .line 430
    .line 431
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 432
    .line 433
    .line 434
    move-result-object v5

    .line 435
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 436
    .line 437
    .line 438
    move-result v6

    .line 439
    if-eqz v6, :cond_15

    .line 440
    .line 441
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v6

    .line 445
    check-cast v6, Ljava/lang/String;

    .line 446
    .line 447
    new-instance v7, Lcom/join/kotlin/discount/model/bean/GameDetailBannerEntityBean;

    .line 448
    .line 449
    invoke-direct {v7, v4, v6}, Lcom/join/kotlin/discount/model/bean/GameDetailBannerEntityBean;-><init>(ILjava/lang/Object;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    goto :goto_b

    .line 456
    :cond_13
    :goto_c
    invoke-virtual {v5}, Lcom/join/kotlin/discount/model/bean/GameDetailPicAndVideoInfoBean;->getPic_position()Ljava/lang/Integer;

    .line 457
    .line 458
    .line 459
    move-result-object v4

    .line 460
    if-nez v4, :cond_14

    .line 461
    .line 462
    goto :goto_e

    .line 463
    :cond_14
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 464
    .line 465
    .line 466
    move-result v4

    .line 467
    if-ne v4, v2, :cond_15

    .line 468
    .line 469
    invoke-virtual {v5}, Lcom/join/kotlin/discount/model/bean/GameDetailPicAndVideoInfoBean;->getPics()Ljava/util/List;

    .line 470
    .line 471
    .line 472
    move-result-object v4

    .line 473
    if-eqz v4, :cond_15

    .line 474
    .line 475
    check-cast v4, Ljava/lang/Iterable;

    .line 476
    .line 477
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 478
    .line 479
    .line 480
    move-result-object v4

    .line 481
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 482
    .line 483
    .line 484
    move-result v5

    .line 485
    if-eqz v5, :cond_15

    .line 486
    .line 487
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v5

    .line 491
    check-cast v5, Ljava/lang/String;

    .line 492
    .line 493
    new-instance v6, Lcom/join/kotlin/discount/model/bean/GameDetailBannerEntityBean;

    .line 494
    .line 495
    const/4 v7, 0x4

    .line 496
    invoke-direct {v6, v7, v5}, Lcom/join/kotlin/discount/model/bean/GameDetailBannerEntityBean;-><init>(ILjava/lang/Object;)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    .line 501
    .line 502
    goto :goto_d

    .line 503
    :cond_15
    :goto_e
    new-instance v4, Lcom/join/kotlin/discount/model/bean/GameDetailBannerEntityBean;

    .line 504
    .line 505
    const/4 v5, 0x5

    .line 506
    invoke-direct {v4, v5, v1}, Lcom/join/kotlin/discount/model/bean/GameDetailBannerEntityBean;-><init>(ILjava/lang/Object;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->getBannerAdapter()Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter;

    .line 513
    .line 514
    .line 515
    move-result-object v4

    .line 516
    invoke-virtual {v4, p0}, Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter;->setClick(Lcom/join/kotlin/discount/proxy/GameDetailFragmentClickProxy;)V

    .line 517
    .line 518
    .line 519
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->getBannerAdapter()Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter;

    .line 520
    .line 521
    .line 522
    move-result-object v4

    .line 523
    invoke-virtual {v4, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 527
    .line 528
    .line 529
    move-result-object v4

    .line 530
    check-cast v4, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 531
    .line 532
    iget-object v4, v4, Lcom/join/android/app/mgsim/wufun/databinding/ll;->x:Landroid/widget/LinearLayout;

    .line 533
    .line 534
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    sub-int/2addr v0, v2

    .line 542
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 543
    .line 544
    .line 545
    move-result v0

    .line 546
    if-gt v2, v0, :cond_17

    .line 547
    .line 548
    const/4 v4, 0x1

    .line 549
    :goto_f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 550
    .line 551
    .line 552
    move-result-object v5

    .line 553
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 554
    .line 555
    .line 556
    move-result-object v5

    .line 557
    const v6, 0x7f0d03e8

    .line 558
    .line 559
    .line 560
    invoke-static {v5, v6, v1, v3}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    .line 561
    .line 562
    .line 563
    move-result-object v5

    .line 564
    const-string v6, "inflate(...)"

    .line 565
    .line 566
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    check-cast v5, Lcom/join/android/app/mgsim/wufun/databinding/az;

    .line 570
    .line 571
    if-ne v4, v2, :cond_16

    .line 572
    .line 573
    const/4 v6, 0x1

    .line 574
    goto :goto_10

    .line 575
    :cond_16
    const/4 v6, 0x0

    .line 576
    :goto_10
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 577
    .line 578
    .line 579
    move-result-object v6

    .line 580
    invoke-virtual {v5, v6}, Lcom/join/android/app/mgsim/wufun/databinding/az;->n(Ljava/lang/Boolean;)V

    .line 581
    .line 582
    .line 583
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 584
    .line 585
    .line 586
    move-result-object v6

    .line 587
    check-cast v6, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 588
    .line 589
    iget-object v6, v6, Lcom/join/android/app/mgsim/wufun/databinding/ll;->x:Landroid/widget/LinearLayout;

    .line 590
    .line 591
    invoke-virtual {v5}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 592
    .line 593
    .line 594
    move-result-object v5

    .line 595
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 596
    .line 597
    .line 598
    if-eq v4, v0, :cond_17

    .line 599
    .line 600
    add-int/lit8 v4, v4, 0x1

    .line 601
    .line 602
    goto :goto_f

    .line 603
    :cond_17
    invoke-virtual {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->playVideo()V

    .line 604
    .line 605
    .line 606
    new-instance v0, Ljava/util/ArrayList;

    .line 607
    .line 608
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 609
    .line 610
    .line 611
    invoke-virtual {p1}, Lcom/join/kotlin/discount/model/bean/GameDetailBean;->getBasic_info()Lcom/join/kotlin/discount/model/bean/GameDetailBasicInfoBean;

    .line 612
    .line 613
    .line 614
    move-result-object v1

    .line 615
    if-eqz v1, :cond_18

    .line 616
    .line 617
    new-instance v2, Lcom/join/kotlin/discount/model/bean/GameDetailInfoItemBean;

    .line 618
    .line 619
    const v3, 0x7f0808a5

    .line 620
    .line 621
    .line 622
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 623
    .line 624
    .line 625
    move-result-object v3

    .line 626
    invoke-virtual {v1}, Lcom/join/kotlin/discount/model/bean/GameDetailBasicInfoBean;->getFit_age()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v4

    .line 630
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 631
    .line 632
    const-string v6, "\u9002\u5408\u5e74\u9f84"

    .line 633
    .line 634
    invoke-direct {v2, v3, v6, v4, v5}, Lcom/join/kotlin/discount/model/bean/GameDetailInfoItemBean;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 635
    .line 636
    .line 637
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    .line 639
    .line 640
    new-instance v2, Lcom/join/kotlin/discount/model/bean/GameDetailInfoItemBean;

    .line 641
    .line 642
    const v3, 0x7f0808a8

    .line 643
    .line 644
    .line 645
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 646
    .line 647
    .line 648
    move-result-object v3

    .line 649
    invoke-virtual {v1}, Lcom/join/kotlin/discount/model/bean/GameDetailBasicInfoBean;->getCompany_name()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v4

    .line 653
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 654
    .line 655
    const-string v7, "\u5382\u5546\u4fe1\u606f"

    .line 656
    .line 657
    invoke-direct {v2, v3, v7, v4, v6}, Lcom/join/kotlin/discount/model/bean/GameDetailInfoItemBean;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    .line 662
    .line 663
    new-instance v2, Lcom/join/kotlin/discount/model/bean/GameDetailInfoItemBean;

    .line 664
    .line 665
    const v3, 0x7f0808a9

    .line 666
    .line 667
    .line 668
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 669
    .line 670
    .line 671
    move-result-object v3

    .line 672
    const-string v4, "\u8f6f\u4ef6\u7248\u672c"

    .line 673
    .line 674
    invoke-virtual {v1}, Lcom/join/kotlin/discount/model/bean/GameDetailBasicInfoBean;->getVer_name()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v1

    .line 678
    invoke-direct {v2, v3, v4, v1, v6}, Lcom/join/kotlin/discount/model/bean/GameDetailInfoItemBean;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 679
    .line 680
    .line 681
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    .line 683
    .line 684
    new-instance v1, Lcom/join/kotlin/discount/model/bean/GameDetailInfoItemBean;

    .line 685
    .line 686
    const v2, 0x7f0808a6

    .line 687
    .line 688
    .line 689
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 690
    .line 691
    .line 692
    move-result-object v2

    .line 693
    const-string v3, "\u6743\u9650\u4fe1\u606f"

    .line 694
    .line 695
    const-string v4, "\u67e5\u770b"

    .line 696
    .line 697
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/join/kotlin/discount/model/bean/GameDetailInfoItemBean;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 698
    .line 699
    .line 700
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    .line 702
    .line 703
    new-instance v1, Lcom/join/kotlin/discount/model/bean/GameDetailInfoItemBean;

    .line 704
    .line 705
    const v2, 0x7f0808a7

    .line 706
    .line 707
    .line 708
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 709
    .line 710
    .line 711
    move-result-object v2

    .line 712
    const-string v3, "\u9690\u79c1\u653f\u7b56"

    .line 713
    .line 714
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/join/kotlin/discount/model/bean/GameDetailInfoItemBean;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    .line 719
    .line 720
    :cond_18
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->getInfoAdapter()Lcom/join/kotlin/discount/adapter/GameDetailInfoAdapter;

    .line 721
    .line 722
    .line 723
    move-result-object v1

    .line 724
    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    .line 725
    .line 726
    .line 727
    invoke-virtual {p1}, Lcom/join/kotlin/discount/model/bean/GameDetailBean;->getBenefits()Ljava/util/List;

    .line 728
    .line 729
    .line 730
    move-result-object p1

    .line 731
    if-eqz p1, :cond_19

    .line 732
    .line 733
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->getReleaseWelfareAdapter()Lcom/join/kotlin/discount/adapter/GameDetailReleaseWelfareAdapter;

    .line 734
    .line 735
    .line 736
    move-result-object v0

    .line 737
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    .line 738
    .line 739
    .line 740
    :cond_19
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 741
    .line 742
    .line 743
    move-result-object p1

    .line 744
    check-cast p1, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 745
    .line 746
    invoke-virtual {p1}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getAutoDownload()Z

    .line 747
    .line 748
    .line 749
    move-result p1

    .line 750
    if-eqz p1, :cond_1a

    .line 751
    .line 752
    invoke-virtual {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->downBtnClick()V

    .line 753
    .line 754
    .line 755
    :cond_1a
    iget-boolean p1, p0, Lcom/join/kotlin/discount/GameDetailFragment;->showNewServer:Z

    .line 756
    .line 757
    if-eqz p1, :cond_1b

    .line 758
    .line 759
    invoke-virtual {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->goServer()V

    .line 760
    .line 761
    .line 762
    :cond_1b
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 763
    .line 764
    return-object p0
.end method

.method private static final createObserver$lambda$29$lambda$25$lambda$24(Lcom/join/kotlin/discount/GameDetailFragment;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/kotlin/base/net/AppException;->getErrorMsg()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/kotlin/discount/GameDetailFragment;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const-string p1, "loadSir"

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    move-object p1, v0

    .line 24
    :cond_0
    const/4 v1, 0x1

    .line 25
    invoke-static {p1, v0, v1, v0}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->showError$default(Lcom/kingja/loadsir/core/b;Ljava/lang/String;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;->n:Landroid/widget/LinearLayout;

    .line 35
    .line 36
    const/16 v0, 0x8

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->setTopMask()V

    .line 42
    .line 43
    .line 44
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 45
    .line 46
    return-object p0
.end method

.method private static final createObserver$lambda$29$lambda$26(Lcom/join/kotlin/discount/GameDetailFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;->getListData()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    xor-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getShowComment()Landroidx/lifecycle/MutableLiveData;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->getCommentAdapter()Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p1}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;->getListData()Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getShowComment()Landroidx/lifecycle/MutableLiveData;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getShowComment()Landroidx/lifecycle/MutableLiveData;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 74
    .line 75
    return-object p0
.end method

.method private static final createObserver$lambda$29$lambda$27(Lcom/join/kotlin/discount/GameDetailFragment;Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getShowAvgDuration()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;->getAvg_duration()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    const/4 v2, 0x1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 32
    :goto_2
    xor-int/2addr v1, v2

    .line 33
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGoodRate()Landroidx/lifecycle/MutableLiveData;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;->getGood_rate()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-nez p1, :cond_4

    .line 57
    .line 58
    :cond_3
    const-string p1, "100%"

    .line 59
    .line 60
    :cond_4
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 64
    .line 65
    return-object p0
.end method

.method private static final createObserver$lambda$29$lambda$28(Lcom/join/kotlin/discount/GameDetailFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;->isRefresh()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->getSimilarAdapter()Lcom/join/kotlin/discount/adapter/GameDetailSimilarGameAdapter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;->getListData()Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->getSimilarAdapter()Lcom/join/kotlin/discount/adapter/GameDetailSimilarGameAdapter;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;->getListData()Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addAll(Ljava/util/Collection;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;->D:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->loadMoreComplete()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;->getListData()Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const/4 p1, 0x0

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 57
    :goto_2
    if-eqz p1, :cond_3

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 64
    .line 65
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ll;->D:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setNoMore()V

    .line 68
    .line 69
    .line 70
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 71
    .line 72
    return-object p0
.end method

.method private final getBannerAdapter()Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->bannerAdapter$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getCommentAdapter()Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->commentAdapter$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getInfoAdapter()Lcom/join/kotlin/discount/adapter/GameDetailInfoAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->infoAdapter$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/discount/adapter/GameDetailInfoAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getReleaseWelfareAdapter()Lcom/join/kotlin/discount/adapter/GameDetailReleaseWelfareAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->releaseWelfareAdapter$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/discount/adapter/GameDetailReleaseWelfareAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getSimilarAdapter()Lcom/join/kotlin/discount/adapter/GameDetailSimilarGameAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->similarAdapter$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/discount/adapter/GameDetailSimilarGameAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final infoAdapter_delegate$lambda$1()Lcom/join/kotlin/discount/adapter/GameDetailInfoAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/discount/adapter/GameDetailInfoAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/kotlin/discount/adapter/GameDetailInfoAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final initView$lambda$10(Lcom/join/kotlin/discount/GameDetailFragment;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->lastRvRelaseWelfareHeight:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/ll;->C:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-boolean v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->isReleaseWelfareExpand:Z

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;->C:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->lastRvRelaseWelfareHeight:I

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;->C:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    int-to-float v0, v0

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const v2, 0x7f071448

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    cmpg-float v0, v0, v1

    .line 61
    .line 62
    if-gtz v0, :cond_1

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;->w:Landroid/widget/LinearLayout;

    .line 71
    .line 72
    const/16 v1, 0x8

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 82
    .line 83
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ll;->g:Landroid/widget/FrameLayout;

    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const/4 v1, -0x2

    .line 90
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 101
    .line 102
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;->w:Landroid/widget/LinearLayout;

    .line 103
    .line 104
    const/4 v1, 0x0

    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 113
    .line 114
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ll;->g:Landroid/widget/FrameLayout;

    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    const v2, 0x7f071471

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    float-to-int v1, v1

    .line 132
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 133
    .line 134
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    .line 136
    .line 137
    :cond_2
    :goto_0
    return-void
.end method

.method private static final initView$lambda$11(Lcom/join/kotlin/discount/GameDetailFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    const-string v0, "<unused var>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->getSimilarAdapter()Lcom/join/kotlin/discount/adapter/GameDetailSimilarGameAdapter;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItems()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    :goto_0
    const/16 p3, 0xd9

    .line 40
    .line 41
    invoke-virtual {p1, p2, p0, p3}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private static final initView$lambda$6(Lcom/join/kotlin/discount/GameDetailFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "loadSir"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-static {v0}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->showLoading(Lcom/kingja/loadsir/core/b;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Lcom/join/kotlin/discount/GameDetailFragment;->loadData(Z)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method private static final initView$lambda$7(Lcom/join/kotlin/discount/GameDetailFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "<unused var>"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItems()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/join/kotlin/discount/model/bean/GameDetailInfoItemBean;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/join/kotlin/discount/model/bean/GameDetailInfoItemBean;->getTitle()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_7

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    const p3, 0x312efcdb

    .line 32
    .line 33
    .line 34
    const-class v0, Lcom/join/kotlin/discount/GameDetailInfoBottomDialogActivity;

    .line 35
    .line 36
    const-string v1, "\u6211\u77e5\u9053\u4e86"

    .line 37
    .line 38
    const-string v2, "btnText"

    .line 39
    .line 40
    const-string v3, "content"

    .line 41
    .line 42
    const-string v4, "title"

    .line 43
    .line 44
    if-eq p2, p3, :cond_4

    .line 45
    .line 46
    const p3, 0x42bdda56

    .line 47
    .line 48
    .line 49
    if-eq p2, p3, :cond_2

    .line 50
    .line 51
    const p3, 0x4646eae8

    .line 52
    .line 53
    .line 54
    if-eq p2, p3, :cond_0

    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :cond_0
    const-string p2, "\u9690\u79c1\u653f\u7b56"

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_1

    .line 65
    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    :cond_1
    new-instance p1, Landroid/content/Intent;

    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    const-class v0, Lcom/join/kotlin/discount/CommonBottomDialogActivity;

    .line 75
    .line 76
    invoke-direct {p1, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    const-string p2, "\u8bf7\u8fdb\u5165\u6e38\u620f\u4e2d\u81ea\u884c\u67e5\u770b"

    .line 83
    .line 84
    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_1

    .line 94
    .line 95
    :cond_2
    const-string p2, "\u9002\u5408\u5e74\u9f84"

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-nez p1, :cond_3

    .line 102
    .line 103
    goto/16 :goto_1

    .line 104
    .line 105
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .line 109
    .line 110
    new-instance p2, Lcom/join/kotlin/discount/model/bean/GameDetailDialogInfoBean;

    .line 111
    .line 112
    const-string p3, "8\u5c81\u4ee5\u4e0a"

    .line 113
    .line 114
    const-string v5, "\u9002\u54088\u5468\u5c81\u4ee5\u4e0a\u7684\u672a\u6210\u5e74\u4eba\u4f7f\u7528\u7684\u6e38\u620f\uff0c\u73a9\u6cd5\u7b80\u5355\u3001\u5355\u5c40\u8017\u65f6\u77ed\u3001\u5982\u7b80\u5355\u7684\u4f11\u95f2\u76ca\u667a\u7c7b\u3001\u89e3\u5bc6\u7c7b\u3001\u6a21\u62df\u517b\u6210/\u7ecf\u8425\u7c7b\u3001\u97f3\u4e50\u821e\u8e48\u7c7b\u548c\u5854\u9632\u7c7b\u6e38\u620f\u7b49\u3002"

    .line 115
    .line 116
    invoke-direct {p2, p3, v5}, Lcom/join/kotlin/discount/model/bean/GameDetailDialogInfoBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    new-instance p2, Lcom/join/kotlin/discount/model/bean/GameDetailDialogInfoBean;

    .line 123
    .line 124
    const-string p3, "12\u5c81\u4ee5\u4e0a"

    .line 125
    .line 126
    const-string v5, "\u9002\u540812\u5468\u5c81\u4ee5\u4e0a\u7684\u672a\u6210\u5e74\u4eba\u4f7f\u7528\u7684\u6e38\u620f\u3002\u73a9\u6cd5\u76f8\u5bf9\u590d\u6742\uff0c\u9700\u6295\u5165\u4e00\u5b9a\u7684\u65f6\u95f4\u7cbe\u529b\u3002\u5982\u8dd1\u9177\u7ade\u901f\u7c7b\u3001\u89d2\u8272\u626e\u6f14\u7c7b\u3001\u6c99\u76d2\u7c7b\u3001\u97f3\u4e50\u821e\u8e48\u7c7b\u3001\u4f53\u80b2\u7c7b\u3001\u7b56\u7565\u7c7b\u548c\u52a8\u4f5c\u5192\u9669\u7c7b\u6e38\u620f\u3002"

    .line 127
    .line 128
    invoke-direct {p2, p3, v5}, Lcom/join/kotlin/discount/model/bean/GameDetailDialogInfoBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    new-instance p2, Lcom/join/kotlin/discount/model/bean/GameDetailDialogInfoBean;

    .line 135
    .line 136
    const-string p3, "16\u5c81\u4ee5\u4e0a"

    .line 137
    .line 138
    const-string v5, "\u9002\u540816\u5468\u5c81\u4ee5\u4e0a\u7684\u672a\u6210\u5e74\u4eba\u4f7f\u7528\u7684\u6e38\u620f\u3002\u73a9\u6cd5\u590d\u6742\uff0c\u6295\u5165\u7cbe\u529b\u8f83\u591a\uff0c\u6e38\u620f\u6d41\u7a0b\u8017\u65f6\u8f83\u957f\u3002\u5982\u5185\u5bb9\u64cd\u4f5c\u590d\u6742\u7684\u89d2\u8272\u626e\u6f14\u7c7b\u3001\u52a8\u4f5c\u5192\u9669\u7c7b\u3001\u5c04\u51fb\u7ade\u6280\u7c7b\u548c\u4f53\u80b2\u7ade\u6280\u7c7b\u7b49\u6e38\u620f\u3002"

    .line 139
    .line 140
    invoke-direct {p2, p3, v5}, Lcom/join/kotlin/discount/model/bean/GameDetailDialogInfoBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    new-instance p2, Lcom/join/kotlin/discount/model/bean/GameDetailDialogInfoBean;

    .line 147
    .line 148
    const-string p3, "18\u5c81\u4ee5\u4e0a"

    .line 149
    .line 150
    const-string v5, "\u9002\u540818\u5468\u5c81\u4ee5\u4e0a\u7684\u6210\u5e74\u4eba\u4f7f\u7528\u7684\u6e38\u620f\u3002\u4e3a\u7ef4\u62a4\u672a\u6210\u5e74\u4eba\u5065\u5eb7\u4e0a\u7f51\u73af\u5883\uff0c18+\u7c7b\u578b\u6e38\u620f\u6682\u4e0d\u652f\u6301\u5b9e\u540d\u8ba4\u8bc118\u5c81\u4ee5\u4e0b\u7684\u7528\u6237\u767b\u5f55\u4f53\u9a8c\u3002"

    .line 151
    .line 152
    invoke-direct {p2, p3, v5}, Lcom/join/kotlin/discount/model/bean/GameDetailDialogInfoBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    new-instance p2, Landroid/content/Intent;

    .line 159
    .line 160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object p3

    .line 164
    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    .line 166
    .line 167
    const-string p3, "\u5e74\u9f84\u5206\u7ea7"

    .line 168
    .line 169
    invoke-virtual {p2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    .line 171
    .line 172
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 173
    .line 174
    .line 175
    move-result-object p3

    .line 176
    invoke-virtual {p3, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_4
    const-string p2, "\u6743\u9650\u4fe1\u606f"

    .line 191
    .line 192
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    if-nez p1, :cond_5

    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_5
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    check-cast p1, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 204
    .line 205
    invoke-virtual {p1}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGameInfo()Landroidx/lifecycle/MutableLiveData;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    check-cast p1, Lcom/join/kotlin/discount/model/bean/GameDetailBean;

    .line 214
    .line 215
    if-eqz p1, :cond_6

    .line 216
    .line 217
    invoke-virtual {p1}, Lcom/join/kotlin/discount/model/bean/GameDetailBean;->getBasic_info()Lcom/join/kotlin/discount/model/bean/GameDetailBasicInfoBean;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    if-eqz p1, :cond_6

    .line 222
    .line 223
    invoke-virtual {p1}, Lcom/join/kotlin/discount/model/bean/GameDetailBasicInfoBean;->getPermissions()Ljava/util/List;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    goto :goto_0

    .line 228
    :cond_6
    const/4 p1, 0x0

    .line 229
    :goto_0
    new-instance p3, Landroid/content/Intent;

    .line 230
    .line 231
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    invoke-direct {p3, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    .line 240
    .line 241
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    invoke-virtual {p2, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-virtual {p3, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 256
    .line 257
    .line 258
    :cond_7
    :goto_1
    return-void
.end method

.method private static final playVideo$lambda$14(Lcom/join/kotlin/discount/GameDetailFragment;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->hasDestroyed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/join/android/app/common/utils/q;->x()Landroid/app/Activity;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v0, v0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->videoHelper:Lcom/join/android/app/component/video/h;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/h;->i(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private static final releaseWelfareAdapter_delegate$lambda$2()Lcom/join/kotlin/discount/adapter/GameDetailReleaseWelfareAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/discount/adapter/GameDetailReleaseWelfareAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/kotlin/discount/adapter/GameDetailReleaseWelfareAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final setTopMask()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->topBgColor:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/kotlin/discount/GameDetailFragment;->getNotLightColor(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string v0, "#503835"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v0, v1

    .line 13
    :goto_0
    iput-object v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->topBgColor:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;->L:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    instance-of v3, v2, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    check-cast v2, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move-object v2, v4

    .line 40
    :goto_1
    const/4 v7, 0x0

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->getTabBottom()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/4 v2, 0x0

    .line 49
    :goto_2
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 56
    .line 57
    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/ll;->L:Landroid/view/View;

    .line 58
    .line 59
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;->L:Landroid/view/View;

    .line 69
    .line 70
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;->e:Landroid/view/View;

    .line 84
    .line 85
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 99
    .line 100
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 105
    .line 106
    .line 107
    if-eqz v1, :cond_3

    .line 108
    .line 109
    const-string v2, "#"

    .line 110
    .line 111
    const-string v3, ""

    .line 112
    .line 113
    const/4 v4, 0x0

    .line 114
    const/4 v5, 0x4

    .line 115
    const/4 v6, 0x0

    .line 116
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    :cond_3
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 121
    .line 122
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 126
    .line 127
    .line 128
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 131
    .line 132
    .line 133
    const/4 v1, 0x2

    .line 134
    new-array v1, v1, [I

    .line 135
    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v3, "#FF"

    .line 142
    .line 143
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    aput v2, v1, v7

    .line 158
    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string v3, "#00"

    .line 165
    .line 166
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    const/4 v3, 0x1

    .line 181
    aput v2, v1, v3

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    check-cast v1, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 194
    .line 195
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/ll;->v:Landroid/view/View;

    .line 196
    .line 197
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    check-cast v1, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 205
    .line 206
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/ll;->u:Landroid/view/View;

    .line 207
    .line 208
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .line 210
    .line 211
    goto :goto_3

    .line 212
    :catch_0
    move-exception v0

    .line 213
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 214
    .line 215
    .line 216
    :goto_3
    return-void
.end method

.method private final showDownDialog()V
    .locals 0

    return-void
.end method

.method private static final similarAdapter_delegate$lambda$4()Lcom/join/kotlin/discount/adapter/GameDetailSimilarGameAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/discount/adapter/GameDetailSimilarGameAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/kotlin/discount/adapter/GameDetailSimilarGameAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final volcanoCheck(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public admireBigR()V
    .locals 0

    return-void
.end method

.method public bookGame()V
    .locals 0

    return-void
.end method

.method public clickGameInfoTitle()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getShowGameInfo()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getShowGameInfo()Landroidx/lifecycle/MutableLiveData;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getShowGameInfo()Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    xor-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    return-void
.end method

.method public clickGoodRate()V
    .locals 0

    return-void
.end method

.method public createObserver()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGameResult()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lcom/join/kotlin/discount/k;

    .line 12
    .line 13
    invoke-direct {v2, p0}, Lcom/join/kotlin/discount/k;-><init>(Lcom/join/kotlin/discount/GameDetailFragment;)V

    .line 14
    .line 15
    .line 16
    new-instance v3, Lcom/join/kotlin/discount/GameDetailFragment$sam$androidx_lifecycle_Observer$0;

    .line 17
    .line 18
    invoke-direct {v3, v2}, Lcom/join/kotlin/discount/GameDetailFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getCommentListData()Landroidx/lifecycle/MutableLiveData;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lcom/join/kotlin/discount/r;

    .line 29
    .line 30
    invoke-direct {v2, p0}, Lcom/join/kotlin/discount/r;-><init>(Lcom/join/kotlin/discount/GameDetailFragment;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Lcom/join/kotlin/discount/GameDetailFragment$sam$androidx_lifecycle_Observer$0;

    .line 34
    .line 35
    invoke-direct {v3, v2}, Lcom/join/kotlin/discount/GameDetailFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getCommentStatistic()Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v2, Lcom/join/kotlin/discount/s;

    .line 46
    .line 47
    invoke-direct {v2, p0}, Lcom/join/kotlin/discount/s;-><init>(Lcom/join/kotlin/discount/GameDetailFragment;)V

    .line 48
    .line 49
    .line 50
    new-instance v3, Lcom/join/kotlin/discount/GameDetailFragment$sam$androidx_lifecycle_Observer$0;

    .line 51
    .line 52
    invoke-direct {v3, v2}, Lcom/join/kotlin/discount/GameDetailFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getSimilarListData()Landroidx/lifecycle/MutableLiveData;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v1, Lcom/join/kotlin/discount/t;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/join/kotlin/discount/t;-><init>(Lcom/join/kotlin/discount/GameDetailFragment;)V

    .line 65
    .line 66
    .line 67
    new-instance v2, Lcom/join/kotlin/discount/GameDetailFragment$sam$androidx_lifecycle_Observer$0;

    .line 68
    .line 69
    invoke-direct {v2, v1}, Lcom/join/kotlin/discount/GameDetailFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public downBtnClick()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGameInfo()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/join/kotlin/discount/model/bean/GameDetailBean;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/GameDetailBean;->getBasic_info()Lcom/join/kotlin/discount/model/bean/GameDetailBasicInfoBean;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/GameDetailBasicInfoBean;->getOn_off()Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 43
    :goto_1
    if-eqz v0, :cond_2

    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGameInfo()Landroidx/lifecycle/MutableLiveData;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/join/kotlin/discount/model/bean/GameDetailBean;

    .line 61
    .line 62
    const/4 v3, 0x2

    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/GameDetailBean;->getBooking_info()Lcom/join/kotlin/discount/model/bean/GameDetailBookingInfoBean;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/GameDetailBookingInfoBean;->getGame_status()Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-nez v0, :cond_3

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-ne v0, v3, :cond_4

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_4
    :goto_2
    const/4 v1, 0x0

    .line 86
    :goto_3
    if-eqz v1, :cond_5

    .line 87
    .line 88
    return-void

    .line 89
    :cond_5
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGameId()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    if-eqz v0, :cond_c

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getDownloadTask()Landroidx/lifecycle/MutableLiveData;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 116
    .line 117
    if-nez v1, :cond_6

    .line 118
    .line 119
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->applyDetailBottomDownloadExt()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    check-cast v3, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 131
    .line 132
    invoke-virtual {v3}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGameInfo()Landroidx/lifecycle/MutableLiveData;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    check-cast v3, Lcom/join/kotlin/discount/model/bean/GameDetailBean;

    .line 141
    .line 142
    invoke-static {v1, v3}, Lcom/join/mgps/Util/UtilsMy;->Y0(Landroid/content/Context;Lcom/join/kotlin/discount/model/bean/GameDetailBean;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getBtnText()Landroidx/lifecycle/MutableLiveData;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    const-string v3, "0%"

    .line 156
    .line 157
    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    check-cast v1, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 165
    .line 166
    invoke-virtual {v1}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getProgress()Landroidx/lifecycle/MutableLiveData;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->showDownDialog()V

    .line 178
    .line 179
    .line 180
    invoke-direct {p0, v0}, Lcom/join/kotlin/discount/GameDetailFragment;->volcanoCheck(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_4

    .line 184
    .line 185
    :cond_6
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-eqz v2, :cond_b

    .line 190
    .line 191
    const/16 v4, 0x2a

    .line 192
    .line 193
    if-eq v2, v4, :cond_a

    .line 194
    .line 195
    if-eq v2, v3, :cond_9

    .line 196
    .line 197
    const/4 v3, 0x3

    .line 198
    if-eq v2, v3, :cond_8

    .line 199
    .line 200
    const/4 v3, 0x5

    .line 201
    if-eq v2, v3, :cond_7

    .line 202
    .line 203
    const/4 v3, 0x6

    .line 204
    if-eq v2, v3, :cond_b

    .line 205
    .line 206
    const/4 v3, 0x7

    .line 207
    if-eq v2, v3, :cond_b

    .line 208
    .line 209
    packed-switch v2, :pswitch_data_0

    .line 210
    .line 211
    .line 212
    goto :goto_4

    .line 213
    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-static {v1, v0}, Lcom/join/mgps/Util/UtilsMy;->w4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 218
    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->k4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 226
    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_8
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->applyDetailBottomDownloadExt()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-static {v1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 237
    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_9
    :pswitch_1
    invoke-static {v1}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 241
    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_a
    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    check-cast v1, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 253
    .line 254
    invoke-virtual {v1}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGameInfo()Landroidx/lifecycle/MutableLiveData;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    check-cast v1, Lcom/join/kotlin/discount/model/bean/GameDetailBean;

    .line 263
    .line 264
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->Y0(Landroid/content/Context;Lcom/join/kotlin/discount/model/bean/GameDetailBean;)V

    .line 265
    .line 266
    .line 267
    goto :goto_4

    .line 268
    :cond_b
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->applyDetailBottomDownloadExt()V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    check-cast v2, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 280
    .line 281
    invoke-virtual {v2}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGameInfo()Landroidx/lifecycle/MutableLiveData;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    check-cast v2, Lcom/join/kotlin/discount/model/bean/GameDetailBean;

    .line 290
    .line 291
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->Y0(Landroid/content/Context;Lcom/join/kotlin/discount/model/bean/GameDetailBean;)V

    .line 292
    .line 293
    .line 294
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->showDownDialog()V

    .line 295
    .line 296
    .line 297
    invoke-direct {p0, v0}, Lcom/join/kotlin/discount/GameDetailFragment;->volcanoCheck(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    :cond_c
    :goto_4
    return-void

    .line 301
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public expandReleaseWelfare()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->isReleaseWelfareExpand:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;->w:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;->g:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, -0x2

    .line 30
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final getCanRecycleAccountCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGameInfo()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/join/kotlin/discount/model/bean/GameDetailBean;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/GameDetailBean;->getRecycle_number()Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    return v0
.end method

.method public final getCanSellAcountCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGameInfo()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/join/kotlin/discount/model/bean/GameDetailBean;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/GameDetailBean;->getSell_number()Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    return v0
.end method

.method public final getGoodRate()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGoodRate()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string v0, "100%"

    .line 20
    .line 21
    :cond_0
    return-object v0
.end method

.method public final getNotLightColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "#503835"

    .line 2
    .line 3
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    .line 23
    .line 24
    .line 25
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    int-to-double v4, v2

    .line 27
    const-wide v6, 0x3fd322d0e5604189L    # 0.299

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    mul-double v4, v4, v6

    .line 33
    .line 34
    int-to-double v2, v3

    .line 35
    const-wide v6, 0x3fe2c8b439581062L    # 0.587

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    mul-double v2, v2, v6

    .line 41
    .line 42
    add-double/2addr v4, v2

    .line 43
    int-to-double v1, v1

    .line 44
    const-wide v6, 0x3fbd2f1a9fbe76c9L    # 0.114

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    mul-double v1, v1, v6

    .line 50
    .line 51
    add-double/2addr v4, v1

    .line 52
    const-wide/high16 v1, 0x4068000000000000L    # 192.0

    .line 53
    .line 54
    cmpg-double v3, v4, v1

    .line 55
    .line 56
    if-gez v3, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move-object p1, v0

    .line 60
    :goto_0
    move-object v0, p1

    .line 61
    goto :goto_1

    .line 62
    :catch_0
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    :goto_1
    return-object v0
.end method

.method public goComment()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->selectTab(I)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public goCoupon()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGameInfo()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/join/kotlin/discount/model/bean/GameDetailBean;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/GameDetailBean;->getCoupon_info()Lcom/join/kotlin/discount/model/bean/CommonComponentBean;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CommonComponentBean;->getShow()Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "\u6682\u65e0\u4ee3\u91d1\u5238\u4fe1\u606f"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-class v2, Lcom/join/kotlin/discount/GameDetailCouponActivity;

    .line 63
    .line 64
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGameId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const-string v2, "gameId"

    .line 78
    .line 79
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGameInfo()Landroidx/lifecycle/MutableLiveData;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Lcom/join/kotlin/discount/model/bean/GameDetailBean;

    .line 97
    .line 98
    if-eqz v1, :cond_3

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/join/kotlin/discount/model/bean/GameDetailBean;->getBasic_info()Lcom/join/kotlin/discount/model/bean/GameDetailBasicInfoBean;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    if-eqz v1, :cond_3

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/join/kotlin/discount/model/bean/GameDetailBasicInfoBean;->getPackage_name()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    goto :goto_1

    .line 111
    :cond_3
    const/4 v1, 0x0

    .line 112
    :goto_1
    const-string v2, "gamePkg"

    .line 113
    .line 114
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public goEvent()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGameInfo()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/join/kotlin/discount/model/bean/GameDetailBean;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/GameDetailBean;->showEvent()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x1

    .line 25
    if-ne v0, v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v2, 0x0

    .line 29
    :goto_0
    if-eqz v2, :cond_2

    .line 30
    .line 31
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 32
    .line 33
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGameInfo()Landroidx/lifecycle/MutableLiveData;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lcom/join/kotlin/discount/model/bean/GameDetailBean;

    .line 55
    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/join/kotlin/discount/model/bean/GameDetailBean;->getGame_notice_info()Lcom/join/kotlin/discount/model/bean/GameDetailNoticeBean;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/join/kotlin/discount/model/bean/GameDetailNoticeBean;->getJumpListUrl()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const/4 v2, 0x0

    .line 70
    :goto_1
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-static {v2}, Lcom/join/mgps/activity/ShareWebActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ShareWebActivity_$g0;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/ShareWebActivity_$g0;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/ShareWebActivity_$g0;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ShareWebActivity_$g0;->d(Z)Lcom/join/mgps/activity/ShareWebActivity_$g0;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const-string v1, "\u6682\u65e0\u8fd4\u5229\u4fe1\u606f"

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :goto_2
    return-void
.end method

.method public goGift()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGameInfo()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/join/kotlin/discount/model/bean/GameDetailBean;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/GameDetailBean;->getGift_info()Lcom/join/kotlin/discount/model/bean/CommonComponentBean;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CommonComponentBean;->getShow()Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "\u6682\u65e0\u793c\u5305\u4fe1\u606f"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-class v2, Lcom/join/kotlin/discount/GameDetailGiftActivity;

    .line 63
    .line 64
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGameId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const-string v2, "gameId"

    .line 78
    .line 79
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public goServer()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-class v2, Lcom/join/kotlin/discount/GameDetailServerBookDialogActivity;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGameId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "gameId"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public goTrade()V
    .locals 0

    return-void
.end method

.method public horizontalPicClick(Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->getBannerAdapter()Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItems()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/Iterable;

    .line 15
    .line 16
    new-instance v2, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x0

    .line 30
    if-eqz v3, :cond_3

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    move-object v5, v3

    .line 37
    check-cast v5, Lcom/join/kotlin/discount/model/bean/GameDetailBannerEntityBean;

    .line 38
    .line 39
    invoke-virtual {v5}, Lcom/join/kotlin/discount/model/bean/GameDetailBannerEntityBean;->getViewType()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    const/4 v7, 0x2

    .line 44
    if-eq v6, v7, :cond_1

    .line 45
    .line 46
    invoke-virtual {v5}, Lcom/join/kotlin/discount/model/bean/GameDetailBannerEntityBean;->getViewType()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    const/4 v6, 0x4

    .line 51
    if-ne v5, v6, :cond_2

    .line 52
    .line 53
    :cond_1
    const/4 v4, 0x1

    .line 54
    :cond_2
    if-eqz v4, :cond_0

    .line 55
    .line 56
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .line 61
    .line 62
    const/16 v3, 0xa

    .line 63
    .line 64
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_4

    .line 80
    .line 81
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Lcom/join/kotlin/discount/model/bean/GameDetailBannerEntityBean;

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/join/kotlin/discount/model/bean/GameDetailBannerEntityBean;->getData()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    const-string v5, "null cannot be cast to non-null type kotlin.String"

    .line 92
    .line 93
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    check-cast v3, Ljava/lang/String;

    .line 97
    .line 98
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 103
    .line 104
    .line 105
    new-instance v1, Landroid/content/Intent;

    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    const-class v3, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    .line 112
    .line 113
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .line 115
    .line 116
    const-string v2, "image_urls"

    .line 117
    .line 118
    new-array v3, v4, [Ljava/lang/String;

    .line 119
    .line 120
    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    check-cast v3, [Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    .line 128
    .line 129
    const-string v2, "image_index"

    .line 130
    .line 131
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->indexOf(Ljava/util/List;Ljava/lang/Object;)I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :catch_0
    move-exception p1

    .line 143
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    .line 145
    .line 146
    :goto_2
    return-void
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/j0;->b(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/join/android/app/mgsim/wufun/databinding/ll;->u(Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Lcom/join/android/app/mgsim/wufun/databinding/ll;->t(Lcom/join/kotlin/discount/proxy/GameDetailFragmentClickProxy;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;->y:Landroidx/core/widget/NestedScrollView;

    .line 45
    .line 46
    const-string v0, "nes"

    .line 47
    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lcom/join/kotlin/discount/u;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/join/kotlin/discount/u;-><init>(Lcom/join/kotlin/discount/GameDetailFragment;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p1, v0}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->loadServiceInit(Landroid/view/View;Lkotlin/jvm/functions/Function0;)Lcom/kingja/loadsir/core/b;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/join/kotlin/discount/GameDetailFragment;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const/4 v1, 0x0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    const-string v2, "gameId"

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    move-object v0, v1

    .line 83
    :goto_0
    invoke-virtual {p1, v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->setGameId(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 91
    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_2

    .line 97
    .line 98
    const-string v2, "defaultBtnImage"

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    goto :goto_1

    .line 105
    :cond_2
    move-object v0, v1

    .line 106
    :goto_1
    invoke-virtual {p1, v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->setDefaultBtnImage(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 114
    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const/4 v2, 0x0

    .line 120
    if-eqz v0, :cond_3

    .line 121
    .line 122
    const-string v3, "autoDownload"

    .line 123
    .line 124
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    goto :goto_2

    .line 129
    :cond_3
    const/4 v0, 0x0

    .line 130
    :goto_2
    invoke-virtual {p1, v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->setAutoDownload(Z)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    if-eqz p1, :cond_4

    .line 138
    .line 139
    const-string v0, "showNewServer"

    .line 140
    .line 141
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    goto :goto_3

    .line 146
    :cond_4
    const/4 p1, 0x0

    .line 147
    :goto_3
    iput-boolean p1, p0, Lcom/join/kotlin/discount/GameDetailFragment;->showNewServer:Z

    .line 148
    .line 149
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    if-eqz v0, :cond_5

    .line 158
    .line 159
    const-string v3, "parentExtBean"

    .line 160
    .line 161
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    goto :goto_4

    .line 166
    :cond_5
    move-object v0, v1

    .line 167
    :goto_4
    const-class v3, Lcom/join/mgps/dto/ExtBean;

    .line 168
    .line 169
    invoke-virtual {p1, v0, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Lcom/join/mgps/dto/ExtBean;

    .line 174
    .line 175
    iput-object p1, p0, Lcom/join/kotlin/discount/GameDetailFragment;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 176
    .line 177
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 178
    .line 179
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 187
    .line 188
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;->L:Landroid/view/View;

    .line 189
    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {v0}, Lcom/join/android/app/common/utils/q;->v(Landroid/content/Context;)I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    const v4, 0x7f071693

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    float-to-int v3, v3

    .line 214
    add-int/2addr v0, v3

    .line 215
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 222
    .line 223
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;->L:Landroid/view/View;

    .line 224
    .line 225
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    .line 227
    .line 228
    new-instance p1, Lcom/join/android/app/component/video/h;

    .line 229
    .line 230
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 235
    .line 236
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 237
    .line 238
    const-string v3, "detailBanner"

    .line 239
    .line 240
    invoke-direct {p1, v0, v3}, Lcom/join/android/app/component/video/h;-><init>(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iput-object p1, p0, Lcom/join/kotlin/discount/GameDetailFragment;->videoHelper:Lcom/join/android/app/component/video/h;

    .line 244
    .line 245
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 250
    .line 251
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 252
    .line 253
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 254
    .line 255
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    invoke-direct {v0, v3, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 270
    .line 271
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 272
    .line 273
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->getBannerAdapter()Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 278
    .line 279
    .line 280
    new-instance p1, Landroidx/recyclerview/widget/LinearSnapHelper;

    .line 281
    .line 282
    invoke-direct {p1}, Landroidx/recyclerview/widget/LinearSnapHelper;-><init>()V

    .line 283
    .line 284
    .line 285
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 290
    .line 291
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ll;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 292
    .line 293
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 301
    .line 302
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 303
    .line 304
    new-instance v0, Lcom/join/kotlin/discount/GameDetailFragment$initView$3;

    .line 305
    .line 306
    invoke-direct {v0, p0}, Lcom/join/kotlin/discount/GameDetailFragment$initView$3;-><init>(Lcom/join/kotlin/discount/GameDetailFragment;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 317
    .line 318
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;->B:Landroidx/recyclerview/widget/RecyclerView;

    .line 319
    .line 320
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    new-instance v3, Lcom/join/kotlin/discount/GameDetailFragment$initView$4;

    .line 325
    .line 326
    invoke-direct {v3, v0}, Lcom/join/kotlin/discount/GameDetailFragment$initView$4;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 337
    .line 338
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;->B:Landroidx/recyclerview/widget/RecyclerView;

    .line 339
    .line 340
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->getInfoAdapter()Lcom/join/kotlin/discount/adapter/GameDetailInfoAdapter;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 345
    .line 346
    .line 347
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->getInfoAdapter()Lcom/join/kotlin/discount/adapter/GameDetailInfoAdapter;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    new-instance v0, Lcom/join/kotlin/discount/v;

    .line 352
    .line 353
    invoke-direct {v0, p0}, Lcom/join/kotlin/discount/v;-><init>(Lcom/join/kotlin/discount/GameDetailFragment;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$d;)Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 357
    .line 358
    .line 359
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 364
    .line 365
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;->C:Landroidx/recyclerview/widget/RecyclerView;

    .line 366
    .line 367
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    new-instance v3, Lcom/join/kotlin/discount/GameDetailFragment$initView$6;

    .line 372
    .line 373
    invoke-direct {v3, v0}, Lcom/join/kotlin/discount/GameDetailFragment$initView$6;-><init>(Landroid/content/Context;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 384
    .line 385
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;->C:Landroidx/recyclerview/widget/RecyclerView;

    .line 386
    .line 387
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->getReleaseWelfareAdapter()Lcom/join/kotlin/discount/adapter/GameDetailReleaseWelfareAdapter;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 399
    .line 400
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;->C:Landroidx/recyclerview/widget/RecyclerView;

    .line 401
    .line 402
    new-instance v0, Lcom/join/kotlin/discount/GameDetailFragment$initView$7;

    .line 403
    .line 404
    invoke-direct {v0, p0}, Lcom/join/kotlin/discount/GameDetailFragment$initView$7;-><init>(Lcom/join/kotlin/discount/GameDetailFragment;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 415
    .line 416
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;->C:Landroidx/recyclerview/widget/RecyclerView;

    .line 417
    .line 418
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 419
    .line 420
    .line 421
    move-result-object p1

    .line 422
    if-eqz p1, :cond_6

    .line 423
    .line 424
    new-instance v0, Lcom/join/kotlin/discount/w;

    .line 425
    .line 426
    invoke-direct {v0, p0}, Lcom/join/kotlin/discount/w;-><init>(Lcom/join/kotlin/discount/GameDetailFragment;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 430
    .line 431
    .line 432
    :cond_6
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 433
    .line 434
    .line 435
    move-result-object p1

    .line 436
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 437
    .line 438
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;->A:Landroidx/recyclerview/widget/RecyclerView;

    .line 439
    .line 440
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    new-instance v3, Lcom/join/kotlin/discount/GameDetailFragment$initView$9;

    .line 445
    .line 446
    invoke-direct {v3, v0}, Lcom/join/kotlin/discount/GameDetailFragment$initView$9;-><init>(Landroid/content/Context;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 450
    .line 451
    .line 452
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->getCommentAdapter()Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;

    .line 453
    .line 454
    .line 455
    move-result-object p1

    .line 456
    invoke-virtual {p1, p0}, Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;->setClick(Lcom/join/kotlin/discount/proxy/ItemGameDetailCommentListClickProxy;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 460
    .line 461
    .line 462
    move-result-object p1

    .line 463
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 464
    .line 465
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;->A:Landroidx/recyclerview/widget/RecyclerView;

    .line 466
    .line 467
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->getCommentAdapter()Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 475
    .line 476
    .line 477
    move-result-object p1

    .line 478
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 479
    .line 480
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;->A:Landroidx/recyclerview/widget/RecyclerView;

    .line 481
    .line 482
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 483
    .line 484
    .line 485
    move-result-object p1

    .line 486
    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator"

    .line 487
    .line 488
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    check-cast p1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    .line 492
    .line 493
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 497
    .line 498
    .line 499
    move-result-object p1

    .line 500
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 501
    .line 502
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;->D:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 503
    .line 504
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    new-instance v2, Lcom/join/kotlin/discount/GameDetailFragment$initView$10;

    .line 509
    .line 510
    invoke-direct {v2, v0}, Lcom/join/kotlin/discount/GameDetailFragment$initView$10;-><init>(Landroid/content/Context;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 514
    .line 515
    .line 516
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->getSimilarAdapter()Lcom/join/kotlin/discount/adapter/GameDetailSimilarGameAdapter;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    new-instance v0, Lcom/join/kotlin/discount/x;

    .line 521
    .line 522
    invoke-direct {v0, p0}, Lcom/join/kotlin/discount/x;-><init>(Lcom/join/kotlin/discount/GameDetailFragment;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$d;)Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 526
    .line 527
    .line 528
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 529
    .line 530
    .line 531
    move-result-object p1

    .line 532
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 533
    .line 534
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;->D:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 535
    .line 536
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->getSimilarAdapter()Lcom/join/kotlin/discount/adapter/GameDetailSimilarGameAdapter;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    invoke-virtual {p1, v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 544
    .line 545
    .line 546
    move-result-object p1

    .line 547
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 548
    .line 549
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;->y:Landroidx/core/widget/NestedScrollView;

    .line 550
    .line 551
    new-instance v0, Lcom/join/kotlin/discount/GameDetailFragment$initView$12;

    .line 552
    .line 553
    invoke-direct {v0, p0}, Lcom/join/kotlin/discount/GameDetailFragment$initView$12;-><init>(Lcom/join/kotlin/discount/GameDetailFragment;)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {p1, v0}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 557
    .line 558
    .line 559
    :try_start_0
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 560
    .line 561
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 562
    .line 563
    .line 564
    const-string v0, "discount_game"

    .line 565
    .line 566
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setResultCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 567
    .line 568
    .line 569
    const-class v0, Lcom/join/kotlin/discount/GameDetailFragment;

    .line 570
    .line 571
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setScenesCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 576
    .line 577
    .line 578
    new-instance v0, Lcom/papa/sim/statistic/Data;

    .line 579
    .line 580
    invoke-direct {v0}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 581
    .line 582
    .line 583
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 584
    .line 585
    .line 586
    move-result-object v2

    .line 587
    check-cast v2, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 588
    .line 589
    invoke-virtual {v2}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGameId()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v2

    .line 593
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 594
    .line 595
    .line 596
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 597
    .line 598
    .line 599
    move-result-object v2

    .line 600
    invoke-static {v2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 601
    .line 602
    .line 603
    move-result-object v2

    .line 604
    sget-object v3, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 605
    .line 606
    invoke-virtual {v2, v3, p1, v0}, Lcom/papa/sim/statistic/t;->Y(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    .line 608
    .line 609
    goto :goto_5

    .line 610
    :catch_0
    move-exception p1

    .line 611
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 612
    .line 613
    .line 614
    :goto_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 615
    .line 616
    .line 617
    move-result-object p1

    .line 618
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 619
    .line 620
    .line 621
    move-result-object p1

    .line 622
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 623
    .line 624
    iget-object v2, p0, Lcom/join/kotlin/discount/GameDetailFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 625
    .line 626
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 627
    .line 628
    .line 629
    move-result-object v2

    .line 630
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 631
    .line 632
    .line 633
    move-result-object v2

    .line 634
    invoke-virtual {p1, v0, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 635
    .line 636
    .line 637
    iget-object p1, p0, Lcom/join/kotlin/discount/GameDetailFragment;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 638
    .line 639
    if-nez p1, :cond_7

    .line 640
    .line 641
    const-string p1, "loadSir"

    .line 642
    .line 643
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    goto :goto_6

    .line 647
    :cond_7
    move-object v1, p1

    .line 648
    :goto_6
    invoke-static {v1}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->showLoading(Lcom/kingja/loadsir/core/b;)V

    .line 649
    .line 650
    .line 651
    return-void
.end method

.method public lazyLoadData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "loadSir"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-static {v0}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->showLoading(Lcom/kingja/loadsir/core/b;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->loadDbData()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public like(Lcom/join/kotlin/discount/model/bean/CommentDetailBean;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/discount/model/bean/CommentDetailBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final loadData(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGameDetail()V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getCommentList()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getCommentStatisticData()V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    invoke-virtual {p0, p1}, Lcom/join/kotlin/discount/GameDetailFragment;->loadSimilarGame(Z)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final loadDbData()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/kotlin/discount/GameDetailFragment;->loadData(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getCommentList()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getCommentStatisticData()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final loadSimilarGame(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getSimilarGames(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onAdClick()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGameInfo()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/join/kotlin/discount/model/bean/GameDetailBean;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/GameDetailBean;->getAd()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    move-object v1, v0

    .line 26
    check-cast v1, Ljava/util/Collection;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    xor-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 50
    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 v0, 0x0

    .line 59
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->hasDestroyed:Z

    .line 3
    .line 4
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->b(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->handler:Landroid/os/Handler;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->videoHelper:Lcom/join/android/app/component/video/h;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/android/app/component/video/h;->x()V

    .line 30
    .line 31
    .line 32
    :cond_2
    iput-object v1, p0, Lcom/join/kotlin/discount/GameDetailFragment;->videoHelper:Lcom/join/android/app/component/video/h;

    .line 33
    .line 34
    invoke-super {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->onDestroy()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 4
    .param p1    # Lcom/join/mgps/event/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "downloadTaskEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGameId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_5

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getDownloadTask()Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getProgress()Landroidx/lifecycle/MutableLiveData;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    long-to-int v2, v1

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getDownloadTask()Landroidx/lifecycle/MutableLiveData;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 76
    .line 77
    const/4 v1, 0x1

    .line 78
    const/4 v2, 0x0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    const/4 v3, 0x5

    .line 86
    if-ne v0, v3, :cond_0

    .line 87
    .line 88
    const/4 v0, 0x1

    .line 89
    goto :goto_0

    .line 90
    :cond_0
    const/4 v0, 0x0

    .line 91
    :goto_0
    if-nez v0, :cond_3

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getDownloadTask()Landroidx/lifecycle/MutableLiveData;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 108
    .line 109
    if-eqz v0, :cond_1

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    const/16 v3, 0xb

    .line 116
    .line 117
    if-ne v0, v3, :cond_1

    .line 118
    .line 119
    const/4 v0, 0x1

    .line 120
    goto :goto_1

    .line 121
    :cond_1
    const/4 v0, 0x0

    .line 122
    :goto_1
    if-nez v0, :cond_3

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getDownloadTask()Landroidx/lifecycle/MutableLiveData;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 139
    .line 140
    if-eqz v0, :cond_2

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    const/16 v3, 0x30

    .line 147
    .line 148
    if-ne v0, v3, :cond_2

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_2
    const/4 v1, 0x0

    .line 152
    :goto_2
    if-eqz v1, :cond_4

    .line 153
    .line 154
    :cond_3
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getProgress()Landroidx/lifecycle/MutableLiveData;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const/16 v1, 0x64

    .line 165
    .line 166
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :cond_4
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 178
    .line 179
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getBtnText()Landroidx/lifecycle/MutableLiveData;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->O1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    :cond_5
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->videoHelper:Lcom/join/android/app/component/video/h;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/android/app/component/video/h;->y()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGameId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getDownloadTask()Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGameInfo()Landroidx/lifecycle/MutableLiveData;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/join/kotlin/discount/model/bean/GameDetailBean;

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    const/4 v3, 0x0

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/join/kotlin/discount/model/bean/GameDetailBean;->getBasic_info()Lcom/join/kotlin/discount/model/bean/GameDetailBasicInfoBean;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/join/kotlin/discount/model/bean/GameDetailBasicInfoBean;->getOn_off()Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-nez v1, :cond_1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_2

    .line 77
    .line 78
    const/4 v1, 0x1

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 81
    :goto_2
    if-eqz v1, :cond_3

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getProgress()Landroidx/lifecycle/MutableLiveData;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getBtnText()Landroidx/lifecycle/MutableLiveData;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const-string v1, "\u5df2\u4e0b\u67b6"

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_9

    .line 116
    .line 117
    :cond_3
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    check-cast v1, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGameInfo()Landroidx/lifecycle/MutableLiveData;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    check-cast v1, Lcom/join/kotlin/discount/model/bean/GameDetailBean;

    .line 132
    .line 133
    if-eqz v1, :cond_5

    .line 134
    .line 135
    invoke-virtual {v1}, Lcom/join/kotlin/discount/model/bean/GameDetailBean;->getBooking_info()Lcom/join/kotlin/discount/model/bean/GameDetailBookingInfoBean;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    if-eqz v1, :cond_5

    .line 140
    .line 141
    invoke-virtual {v1}, Lcom/join/kotlin/discount/model/bean/GameDetailBookingInfoBean;->getGame_status()Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    if-nez v1, :cond_4

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    const/4 v4, 0x2

    .line 153
    if-ne v1, v4, :cond_5

    .line 154
    .line 155
    const/4 v1, 0x1

    .line 156
    goto :goto_4

    .line 157
    :cond_5
    :goto_3
    const/4 v1, 0x0

    .line 158
    :goto_4
    if-eqz v1, :cond_6

    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getProgress()Landroidx/lifecycle/MutableLiveData;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getBtnText()Landroidx/lifecycle/MutableLiveData;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    const-string v1, "\u5373\u5c06\u4e0a\u7ebf"

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_9

    .line 193
    .line 194
    :cond_6
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    check-cast v1, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 199
    .line 200
    invoke-virtual {v1}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getProgress()Landroidx/lifecycle/MutableLiveData;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    const/16 v4, 0x64

    .line 205
    .line 206
    if-eqz v0, :cond_7

    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 209
    .line 210
    .line 211
    move-result-wide v5

    .line 212
    long-to-int v6, v5

    .line 213
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    goto :goto_5

    .line 218
    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    :goto_5
    invoke-virtual {v1, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    check-cast v1, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 230
    .line 231
    invoke-virtual {v1}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getDownloadTask()Landroidx/lifecycle/MutableLiveData;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 240
    .line 241
    if-eqz v1, :cond_8

    .line 242
    .line 243
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    const/4 v5, 0x5

    .line 248
    if-ne v1, v5, :cond_8

    .line 249
    .line 250
    const/4 v1, 0x1

    .line 251
    goto :goto_6

    .line 252
    :cond_8
    const/4 v1, 0x0

    .line 253
    :goto_6
    if-nez v1, :cond_b

    .line 254
    .line 255
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    check-cast v1, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 260
    .line 261
    invoke-virtual {v1}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getDownloadTask()Landroidx/lifecycle/MutableLiveData;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 270
    .line 271
    if-eqz v1, :cond_9

    .line 272
    .line 273
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    const/16 v5, 0xb

    .line 278
    .line 279
    if-ne v1, v5, :cond_9

    .line 280
    .line 281
    const/4 v1, 0x1

    .line 282
    goto :goto_7

    .line 283
    :cond_9
    const/4 v1, 0x0

    .line 284
    :goto_7
    if-nez v1, :cond_b

    .line 285
    .line 286
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    check-cast v1, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 291
    .line 292
    invoke-virtual {v1}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getDownloadTask()Landroidx/lifecycle/MutableLiveData;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 301
    .line 302
    if-eqz v1, :cond_a

    .line 303
    .line 304
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    const/16 v5, 0x30

    .line 309
    .line 310
    if-ne v1, v5, :cond_a

    .line 311
    .line 312
    goto :goto_8

    .line 313
    :cond_a
    const/4 v2, 0x0

    .line 314
    :goto_8
    if-eqz v2, :cond_c

    .line 315
    .line 316
    :cond_b
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    check-cast v1, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 321
    .line 322
    invoke-virtual {v1}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getProgress()Landroidx/lifecycle/MutableLiveData;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    :cond_c
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    check-cast v1, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 338
    .line 339
    invoke-virtual {v1}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getBtnText()Landroidx/lifecycle/MutableLiveData;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    if-eqz v0, :cond_d

    .line 344
    .line 345
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->O1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    if-nez v0, :cond_e

    .line 350
    .line 351
    :cond_d
    const-string v0, "\u4e0b\u8f7d"

    .line 352
    .line 353
    :cond_e
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 354
    .line 355
    .line 356
    :goto_9
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->videoHelper:Lcom/join/android/app/component/video/h;

    .line 357
    .line 358
    if-eqz v0, :cond_f

    .line 359
    .line 360
    invoke-virtual {v0}, Lcom/join/android/app/component/video/h;->E()V

    .line 361
    .line 362
    .line 363
    :cond_f
    return-void
.end method

.method public final playVideo()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailFragment;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/join/kotlin/discount/y;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/join/kotlin/discount/y;-><init>(Lcom/join/kotlin/discount/GameDetailFragment;)V

    .line 8
    .line 9
    .line 10
    const-wide/16 v2, 0xc8

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public showBigRRule()V
    .locals 0

    return-void
.end method

.method public showCommentStatistic(I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-class v2, Lcom/join/kotlin/discount/GameDetailCommentDataActivity;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getCommentStatistic()Landroidx/lifecycle/MutableLiveData;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "commentData"

    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    const-string v1, "defaultIndex"

    .line 40
    .line 41
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public supportBigR()V
    .locals 0

    return-void
.end method

.method public final supportGameInfo()Lcom/join/kotlin/discount/model/bean/GameDetailBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGameInfo()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/join/kotlin/discount/model/bean/GameDetailBean;

    .line 16
    .line 17
    return-object v0
.end method

.method public toMoreSubAccount()V
    .locals 0

    return-void
.end method

.method public toRefundDetail()V
    .locals 0

    return-void
.end method

.method public verticalPicClick(Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailFragment;->getBannerAdapter()Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItems()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/Iterable;

    .line 15
    .line 16
    new-instance v2, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x0

    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    move-object v5, v3

    .line 37
    check-cast v5, Lcom/join/kotlin/discount/model/bean/GameDetailBannerEntityBean;

    .line 38
    .line 39
    invoke-virtual {v5}, Lcom/join/kotlin/discount/model/bean/GameDetailBannerEntityBean;->getViewType()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    const/4 v6, 0x3

    .line 44
    if-ne v5, v6, :cond_1

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    :cond_1
    if-eqz v4, :cond_0

    .line 48
    .line 49
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_6

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Lcom/join/kotlin/discount/model/bean/GameDetailBannerEntityBean;

    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/join/kotlin/discount/model/bean/GameDetailBannerEntityBean;->getData()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    instance-of v3, v3, Ljava/util/List;

    .line 74
    .line 75
    if-eqz v3, :cond_3

    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/join/kotlin/discount/model/bean/GameDetailBannerEntityBean;->getData()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    const-string v3, "null cannot be cast to non-null type kotlin.collections.List<*>"

    .line 82
    .line 83
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    check-cast v2, Ljava/util/List;

    .line 87
    .line 88
    check-cast v2, Ljava/lang/Iterable;

    .line 89
    .line 90
    new-instance v3, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_5

    .line 104
    .line 105
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    instance-of v6, v5, Ljava/lang/String;

    .line 110
    .line 111
    if-eqz v6, :cond_4

    .line 112
    .line 113
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_5
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_3

    .line 126
    .line 127
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    check-cast v3, Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_6
    new-instance v1, Landroid/content/Intent;

    .line 138
    .line 139
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    const-class v3, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    .line 144
    .line 145
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .line 147
    .line 148
    const-string v2, "image_urls"

    .line 149
    .line 150
    new-array v3, v4, [Ljava/lang/String;

    .line 151
    .line 152
    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    check-cast v3, [Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    .line 160
    .line 161
    const-string v2, "image_index"

    .line 162
    .line 163
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->indexOf(Ljava/util/List;Ljava/lang/Object;)I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :catch_0
    move-exception p1

    .line 175
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    .line 177
    .line 178
    :goto_3
    return-void
.end method

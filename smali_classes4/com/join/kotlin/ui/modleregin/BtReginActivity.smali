.class public final Lcom/join/kotlin/ui/modleregin/BtReginActivity;
.super Lcom/join/kotlin/ui/base/BaseHasDownloadActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/ui/notice/ClickProxy;
.implements Lcom/join/kotlin/domain/common/LoadBindClickProxy;
.implements Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBtReginActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BtReginActivity.kt\ncom/join/kotlin/ui/modleregin/BtReginActivity\n+ 2 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,223:1\n167#2,2:224\n182#2,4:226\n1869#3,2:230\n*S KotlinDebug\n*F\n+ 1 BtReginActivity.kt\ncom/join/kotlin/ui/modleregin/BtReginActivity\n*L\n123#1:224,2\n123#1:226,4\n158#1:230,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0012\u0010+\u001a\u00020,2\u0008\u0010-\u001a\u0004\u0018\u00010.H\u0014J\u0010\u0010/\u001a\u00020,2\u0006\u00100\u001a\u000201H\u0016J\u0006\u00102\u001a\u00020,J\u0006\u00103\u001a\u00020,J\u0010\u00104\u001a\u00020,2\u0006\u00105\u001a\u000206H\u0007J\u0008\u00107\u001a\u00020,H\u0014J\u0008\u00108\u001a\u00020,H\u0014J\u0008\u00109\u001a\u00020,H\u0014J\u0008\u0010:\u001a\u00020,H\u0016J\u0008\u0010;\u001a\u00020,H\u0016J\u0008\u0010<\u001a\u00020,H\u0016J\u0008\u0010=\u001a\u00020,H\u0016J\u0010\u0010>\u001a\u00020,2\u0006\u0010?\u001a\u00020@H\u0016J\u0008\u0010A\u001a\u00020,H\u0016R\u001b\u0010\u0007\u001a\u00020\u00088FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u001b\u0010\r\u001a\u00020\u000e8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0012\u001a\u00020\u00138FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u000c\u001a\u0004\u0008\u0014\u0010\u0015R\u001b\u0010\u0017\u001a\u00020\u00188FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u000c\u001a\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001c\u001a\u00020\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\"\u001a\u00020\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u001f\"\u0004\u0008$\u0010!R\u001a\u0010%\u001a\u00020&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*\u00a8\u0006B"
    }
    d2 = {
        "Lcom/join/kotlin/ui/modleregin/BtReginActivity;",
        "Lcom/join/kotlin/ui/base/BaseHasDownloadActivity;",
        "Lcom/join/kotlin/ui/notice/ClickProxy;",
        "Lcom/join/kotlin/domain/common/LoadBindClickProxy;",
        "Lcom/join/android/app/component/xrecyclerview/XRecyclerView$LoadingListener;",
        "<init>",
        "()V",
        "viewModel",
        "Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;",
        "getViewModel",
        "()Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "dataBinding",
        "Lcom/join/android/app/mgsim/wufun/databinding/BtReginActivityBinding;",
        "getDataBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/BtReginActivityBinding;",
        "dataBinding$delegate",
        "videoHelper",
        "Lcom/join/android/app/component/video/MyListViewVideoHelper;",
        "getVideoHelper",
        "()Lcom/join/android/app/component/video/MyListViewVideoHelper;",
        "videoHelper$delegate",
        "adapter",
        "Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;",
        "getAdapter",
        "()Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;",
        "adapter$delegate",
        "mFirstVisiblePosition",
        "",
        "getMFirstVisiblePosition",
        "()I",
        "setMFirstVisiblePosition",
        "(I)V",
        "mLastVisibleIndex",
        "getMLastVisibleIndex",
        "setMLastVisibleIndex",
        "SCROLLING",
        "",
        "getSCROLLING",
        "()Z",
        "setSCROLLING",
        "(Z)V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDownloadStatusEventReceved",
        "downloadTaskEvent",
        "Lcom/join/mgps/event/DownloadTaskEvent;",
        "updateProgressPartly",
        "updateDownStateList",
        "onEventTagChangeThread",
        "event",
        "Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;",
        "onPause",
        "onResume",
        "onDestroy",
        "onRefresh",
        "onLoadMore",
        "onClickReload",
        "onClickSetNetWork",
        "onClickItem",
        "data",
        "Lcom/join/mgps/dto/BTActivityBean;",
        "onClickBack",
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
        "SMAP\nBtReginActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BtReginActivity.kt\ncom/join/kotlin/ui/modleregin/BtReginActivity\n+ 2 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,223:1\n167#2,2:224\n182#2,4:226\n1869#3,2:230\n*S KotlinDebug\n*F\n+ 1 BtReginActivity.kt\ncom/join/kotlin/ui/modleregin/BtReginActivity\n*L\n123#1:224,2\n123#1:226,4\n158#1:230,2\n*E\n"
    }
.end annotation


# instance fields
.field private SCROLLING:Z

.field private final adapter$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dataBinding$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mFirstVisiblePosition:I

.field private mLastVisibleIndex:I

.field private final videoHelper$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/ui/base/BaseHasDownloadActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/kotlin/ui/modleregin/b;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/modleregin/b;-><init>(Lcom/join/kotlin/ui/modleregin/BtReginActivity;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->viewModel$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/join/kotlin/ui/modleregin/c;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/modleregin/c;-><init>(Lcom/join/kotlin/ui/modleregin/BtReginActivity;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->dataBinding$delegate:Lkotlin/Lazy;

    .line 25
    .line 26
    new-instance v0, Lcom/join/kotlin/ui/modleregin/d;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/modleregin/d;-><init>(Lcom/join/kotlin/ui/modleregin/BtReginActivity;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->videoHelper$delegate:Lkotlin/Lazy;

    .line 36
    .line 37
    new-instance v0, Lcom/join/kotlin/ui/modleregin/e;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/modleregin/e;-><init>(Lcom/join/kotlin/ui/modleregin/BtReginActivity;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->adapter$delegate:Lkotlin/Lazy;

    .line 47
    .line 48
    return-void
.end method

.method private static final adapter_delegate$lambda$3(Lcom/join/kotlin/ui/modleregin/BtReginActivity;)Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getVideoHelper()Lcom/join/android/app/component/video/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/join/android/app/component/video/c;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private static final dataBinding_delegate$lambda$1(Lcom/join/kotlin/ui/modleregin/BtReginActivity;)Lcom/join/android/app/mgsim/wufun/databinding/o7;
    .locals 1

    .line 1
    const v0, 0x7f0d0109

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/o7;

    .line 9
    .line 10
    return-object p0
.end method

.method public static synthetic j(Lcom/join/kotlin/ui/modleregin/BtReginActivity;ILcom/psk/kotlin/util/CommonListMainData;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->onCreate$lambda$4(Lcom/join/kotlin/ui/modleregin/BtReginActivity;ILcom/psk/kotlin/util/CommonListMainData;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/join/kotlin/ui/modleregin/BtReginActivity;)Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->viewModel_delegate$lambda$0(Lcom/join/kotlin/ui/modleregin/BtReginActivity;)Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/join/kotlin/ui/modleregin/BtReginActivity;)Lcom/join/android/app/mgsim/wufun/databinding/o7;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->dataBinding_delegate$lambda$1(Lcom/join/kotlin/ui/modleregin/BtReginActivity;)Lcom/join/android/app/mgsim/wufun/databinding/o7;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/join/kotlin/ui/modleregin/BtReginActivity;)Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->adapter_delegate$lambda$3(Lcom/join/kotlin/ui/modleregin/BtReginActivity;)Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/join/kotlin/ui/modleregin/BtReginActivity;)Lcom/join/android/app/component/video/c;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->videoHelper_delegate$lambda$2(Lcom/join/kotlin/ui/modleregin/BtReginActivity;)Lcom/join/android/app/component/video/c;

    move-result-object p0

    return-object p0
.end method

.method private static final onCreate$lambda$4(Lcom/join/kotlin/ui/modleregin/BtReginActivity;ILcom/psk/kotlin/util/CommonListMainData;I)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string p1, "item"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getType()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 p3, 0x2

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eq p1, p3, :cond_4

    .line 13
    .line 14
    const/4 p3, 0x4

    .line 15
    if-eq p1, p3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string p3, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.MustplayItemBean"

    .line 23
    .line 24
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    check-cast p1, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getGameinfo()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p3}, Lcom/join/mgps/dto/CollectionBeanSub;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    if-eqz p3, :cond_1

    .line 38
    .line 39
    invoke-virtual {p3}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_1
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getReMarks()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 50
    .line 51
    .line 52
    :cond_2
    if-eqz p3, :cond_3

    .line 53
    .line 54
    invoke-virtual {p3, v0}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p1}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getGameinfo()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p2, p0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string p3, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.BtGameListItem"

    .line 78
    .line 79
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    check-cast p1, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getGameInfo()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    invoke-virtual {p3}, Lcom/join/mgps/dto/CollectionBeanSub;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    if-eqz p3, :cond_5

    .line 93
    .line 94
    invoke-virtual {p3}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    :cond_5
    if-eqz v0, :cond_6

    .line 99
    .line 100
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getReMarks()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 105
    .line 106
    .line 107
    :cond_6
    if-eqz p3, :cond_7

    .line 108
    .line 109
    invoke-virtual {p3, v0}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 110
    .line 111
    .line 112
    :cond_7
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p1}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getGameInfo()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p2, p0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 125
    .line 126
    .line 127
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 128
    .line 129
    return-object p0
.end method

.method private static final videoHelper_delegate$lambda$2(Lcom/join/kotlin/ui/modleregin/BtReginActivity;)Lcom/join/android/app/component/video/c;
    .locals 3

    .line 1
    new-instance v0, Lcom/join/android/app/component/video/c;

    .line 2
    .line 3
    const-string v1, "BtReginActivity"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v0, p0, v1, v2}, Lcom/join/android/app/component/video/c;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method private static final viewModel_delegate$lambda$0(Lcom/join/kotlin/ui/modleregin/BtReginActivity;)Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;
    .locals 2

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    new-instance v1, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    .line 4
    .line 5
    invoke-direct {v1}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    .line 9
    .line 10
    .line 11
    const-class p0, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    .line 18
    .line 19
    return-object p0
.end method


# virtual methods
.method public final getAdapter()Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->adapter$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/o7;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->dataBinding$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getValue(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/o7;

    .line 13
    .line 14
    return-object v0
.end method

.method public final getMFirstVisiblePosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->mFirstVisiblePosition:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMLastVisibleIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->mLastVisibleIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSCROLLING()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->SCROLLING:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getVideoHelper()Lcom/join/android/app/component/video/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->videoHelper$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/android/app/component/video/c;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getViewModel()Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->viewModel$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    .line 8
    .line 9
    return-object v0
.end method

.method public onClickBack()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onClickItem(Lcom/join/mgps/dto/BTActivityBean;)V
    .locals 1
    .param p1    # Lcom/join/mgps/dto/BTActivityBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onClickReload()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getViewModel()Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, p0, v1}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->loadDatas(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onClickSetNetWork()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/join/kotlin/ui/base/BaseHasDownloadActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/o7;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getAdapter()Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {p1, v1, v0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/o7;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/16 v0, 0x32

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getViewModel()Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p1, v0, v2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/o7;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/16 v0, 0x1e

    .line 34
    .line 35
    invoke-virtual {p1, v0, p0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/o7;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/16 v0, 0x8

    .line 43
    .line 44
    invoke-virtual {p1, v0, p0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/o7;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const/16 v0, 0x28

    .line 52
    .line 53
    invoke-virtual {p1, v0, p0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/o7;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getViewModel()Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v2, "title"

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-nez v0, :cond_0

    .line 78
    .line 79
    const-string v0, ""

    .line 80
    .line 81
    :cond_0
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->setTitle(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getViewModel()Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1, p0}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->loadDatas(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getVideoHelper()Lcom/join/android/app/component/video/c;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1, v1}, Lcom/join/android/app/component/video/c;->K(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getVideoHelper()Lcom/join/android/app/component/video/c;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/o7;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/o7;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Lcom/join/android/app/component/video/c;->n(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getAdapter()Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    new-instance v0, Lcom/join/kotlin/ui/modleregin/a;

    .line 116
    .line 117
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/modleregin/a;-><init>(Lcom/join/kotlin/ui/modleregin/BtReginActivity;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v0}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->setOnItemClickListener(Lkotlin/jvm/functions/Function3;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/o7;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/o7;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 128
    .line 129
    new-instance v0, Lcom/join/kotlin/ui/modleregin/BtReginActivity$onCreate$2;

    .line 130
    .line 131
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity$onCreate$2;-><init>(Lcom/join/kotlin/ui/modleregin/BtReginActivity;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getVideoHelper()Lcom/join/android/app/component/video/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getVideoHelper()Lcom/join/android/app/component/video/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->F()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0}, Lcom/join/kotlin/ui/base/BaseHasDownloadActivity;->onDestroy()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onDownloadStatusEventReceved(Lcom/join/mgps/event/r;)V
    .locals 2
    .param p1    # Lcom/join/mgps/event/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "downloadTaskEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x6

    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x7

    .line 25
    if-eq v0, v1, :cond_0

    .line 26
    .line 27
    const/16 v1, 0x2a

    .line 28
    .line 29
    if-eq v0, v1, :cond_0

    .line 30
    .line 31
    const/16 v1, 0x30

    .line 32
    .line 33
    if-eq v0, v1, :cond_0

    .line 34
    .line 35
    packed-switch v0, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->updateDownStateList()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getAdapter()Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    const/16 v0, 0x8

    .line 54
    .line 55
    if-ne p1, v0, :cond_1

    .line 56
    .line 57
    iget-boolean p1, p0, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->SCROLLING:Z

    .line 58
    .line 59
    if-nez p1, :cond_1

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->updateProgressPartly()V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onEventTagChangeThread(Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getViewModel()Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->updateTitles(Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getAdapter()Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onLoadMore()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getViewModel()Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->loadDatas(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getVideoHelper()Lcom/join/android/app/component/video/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getVideoHelper()Lcom/join/android/app/component/video/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->G()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onPause()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getViewModel()Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, p0, v1}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->loadDatas(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected onResume()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getVideoHelper()Lcom/join/android/app/component/video/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getVideoHelper()Lcom/join/android/app/component/video/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->H()V

    .line 12
    .line 13
    .line 14
    :cond_0
    sget-object v1, Lkotlinx/coroutines/o1;->b:Lkotlinx/coroutines/o1;

    .line 15
    .line 16
    invoke-static {}, Lkotlinx/coroutines/z0;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x0

    .line 21
    new-instance v4, Lcom/join/kotlin/ui/modleregin/BtReginActivity$onResume$1;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-direct {v4, p0, v0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity$onResume$1;-><init>(Lcom/join/kotlin/ui/modleregin/BtReginActivity;Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    const/4 v6, 0x0

    .line 29
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/h;->e(Lkotlinx/coroutines/l0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/v1;

    .line 30
    .line 31
    .line 32
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N4(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final setMFirstVisiblePosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->mFirstVisiblePosition:I

    .line 2
    .line 3
    return-void
.end method

.method public final setMLastVisibleIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->mLastVisibleIndex:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSCROLLING(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->SCROLLING:Z

    .line 2
    .line 3
    return-void
.end method

.method public final updateDownStateList()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getViewModel()Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->getAllDownloadBeans()Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 24
    .line 25
    sget-object v2, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public final updateProgressPartly()V
    .locals 5

    .line 1
    :try_start_0
    iget v0, p0, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->mFirstVisiblePosition:I

    .line 2
    .line 3
    iget v1, p0, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->mLastVisibleIndex:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_3

    .line 6
    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getViewModel()Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->getShowDatas()Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    check-cast v2, Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-lt v0, v2, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getViewModel()Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->getShowDatas()Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    check-cast v2, Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lcom/psk/kotlin/util/CommonListMainData;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/psk/kotlin/util/CommonListMainData;->getType()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    const/4 v4, 0x2

    .line 59
    if-ne v3, v4, :cond_2

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const-string v3, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.BtGameListItem"

    .line 66
    .line 67
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    check-cast v2, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getGameInfo()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eq v3, v4, :cond_1

    .line 87
    .line 88
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    const/16 v3, 0xc

    .line 93
    .line 94
    if-ne v2, v3, :cond_2

    .line 95
    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getAdapter()Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    const-string v3, "progress"

    .line 101
    .line 102
    invoke-virtual {v2, v0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    :cond_2
    if-eq v0, v1, :cond_3

    .line 106
    .line 107
    add-int/lit8 v0, v0, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    .line 113
    .line 114
    :cond_3
    return-void
.end method

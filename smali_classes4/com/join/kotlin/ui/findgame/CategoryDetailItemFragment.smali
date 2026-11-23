.class public final Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;
.super Lcom/join/mgps/fragment/e;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/presenter/view/CategoryView;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/join/mgps/callbacks/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCategoryDetailItemFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CategoryDetailItemFragment.kt\ncom/join/kotlin/ui/findgame/CategoryDetailItemFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n*L\n1#1,464:1\n774#2:465\n865#2,2:466\n774#2:468\n865#2,2:469\n1869#2:471\n774#2:472\n865#2,2:473\n1870#2:475\n1878#2,3:477\n1#3:476\n167#4,2:480\n182#4,4:482\n*S KotlinDebug\n*F\n+ 1 CategoryDetailItemFragment.kt\ncom/join/kotlin/ui/findgame/CategoryDetailItemFragment\n*L\n158#1:465\n158#1:466,2\n162#1:468\n162#1:469,2\n167#1:471\n168#1:472\n168#1:473,2\n167#1:475\n290#1:477,3\n326#1:480,2\n326#1:482,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u0000 \u0094\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002\u0094\u0001B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J.\u0010f\u001a\u00020g2\u0006\u0010h\u001a\u00020F2\u0006\u0010i\u001a\u00020F2\u0006\u0010j\u001a\u00020F2\u0006\u0010k\u001a\u00020F2\u0006\u0010l\u001a\u00020FJ&\u0010m\u001a\u0004\u0018\u00010n2\u0006\u0010o\u001a\u00020p2\u0008\u0010q\u001a\u0004\u0018\u00010r2\u0008\u0010s\u001a\u0004\u0018\u00010tH\u0016J\u0008\u0010u\u001a\u00020gH\u0002J\u0008\u0010v\u001a\u00020gH\u0002J\u0018\u0010w\u001a\u00020g2\u0006\u0010x\u001a\u00020\u001a2\u0006\u0010y\u001a\u00020zH\u0016J\u0008\u0010|\u001a\u00020gH\u0002J\u0010\u0010}\u001a\u00020g2\u0006\u0010~\u001a\u00020\u007fH\u0007J\t\u0010\u0080\u0001\u001a\u00020gH\u0002J\t\u0010\u0081\u0001\u001a\u00020gH\u0002J\t\u0010\u0082\u0001\u001a\u00020gH\u0002J\t\u0010\u0083\u0001\u001a\u00020gH\u0016J\t\u0010\u0084\u0001\u001a\u00020gH\u0014J\t\u0010\u008b\u0001\u001a\u00020gH\u0016J\t\u0010\u008c\u0001\u001a\u00020gH\u0016J\u0013\u0010\u008d\u0001\u001a\u00020g2\u0008\u0010\u008e\u0001\u001a\u00030\u008f\u0001H\u0016J\u0014\u0010\u0090\u0001\u001a\u00020g2\t\u0010\u0091\u0001\u001a\u0004\u0018\u00010nH\u0016J\u0012\u0010\u0092\u0001\u001a\u00020g2\u0007\u0010\u0093\u0001\u001a\u00020\u001aH\u0016R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u000eX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u001c\"\u0004\u0008!\u0010\u001eR\u001a\u0010\"\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u001c\"\u0004\u0008$\u0010\u001eR\u001a\u0010%\u001a\u00020&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001c\u0010+\u001a\u0004\u0018\u00010,X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\u001a\u00101\u001a\u00020,X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010.\"\u0004\u00083\u00100R \u00104\u001a\u0008\u0012\u0004\u0012\u00020605X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R\u001a\u0010;\u001a\u00020<X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R \u0010A\u001a\u0008\u0012\u0004\u0012\u00020B05X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u00108\"\u0004\u0008D\u0010:R\u001a\u0010E\u001a\u00020FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010H\"\u0004\u0008I\u0010JR\u001a\u0010K\u001a\u00020LX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010N\"\u0004\u0008O\u0010PR\u001a\u0010Q\u001a\u00020FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008R\u0010H\"\u0004\u0008S\u0010JR\u001a\u0010T\u001a\u00020FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008U\u0010H\"\u0004\u0008V\u0010JR\u001a\u0010W\u001a\u00020FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008X\u0010H\"\u0004\u0008Y\u0010JR\u001a\u0010Z\u001a\u00020FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008[\u0010H\"\u0004\u0008\\\u0010JR\u001a\u0010]\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008^\u0010\u001c\"\u0004\u0008_\u0010\u001eR\u001a\u0010`\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008a\u0010\u001c\"\u0004\u0008b\u0010\u001eR\u001a\u0010c\u001a\u00020&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008d\u0010(\"\u0004\u0008e\u0010*R\u000e\u0010{\u001a\u00020&X\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010\u0085\u0001\u001a\u00030\u0086\u0001X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0087\u0001\u0010\u0088\u0001\"\u0006\u0008\u0089\u0001\u0010\u008a\u0001\u00a8\u0006\u0095\u0001"
    }
    d2 = {
        "Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;",
        "Lcom/join/mgps/fragment/BaseFragment;",
        "Lcom/join/kotlin/presenter/view/CategoryView;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/join/mgps/callbacks/OnPageVisibleChanged;",
        "<init>",
        "()V",
        "categoryPrensenter",
        "Lcom/join/kotlin/presenter/CategoryPrensenter;",
        "getCategoryPrensenter",
        "()Lcom/join/kotlin/presenter/CategoryPrensenter;",
        "setCategoryPrensenter",
        "(Lcom/join/kotlin/presenter/CategoryPrensenter;)V",
        "binding",
        "Lcom/join/android/app/mgsim/wufun/databinding/CategroyDetialItemFragmentBinding;",
        "getBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/CategroyDetialItemFragmentBinding;",
        "setBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/CategroyDetialItemFragmentBinding;)V",
        "requestArgs",
        "Lcom/join/kotlin/ui/findgame/data/CategoryRequest;",
        "getRequestArgs",
        "()Lcom/join/kotlin/ui/findgame/data/CategoryRequest;",
        "setRequestArgs",
        "(Lcom/join/kotlin/ui/findgame/data/CategoryRequest;)V",
        "page",
        "",
        "getPage",
        "()I",
        "setPage",
        "(I)V",
        "from",
        "getFrom",
        "setFrom",
        "pageIndex",
        "getPageIndex",
        "setPageIndex",
        "pageVisible",
        "",
        "getPageVisible",
        "()Z",
        "setPageVisible",
        "(Z)V",
        "parentExtBean",
        "Lcom/join/mgps/dto/ExtBean;",
        "getParentExtBean",
        "()Lcom/join/mgps/dto/ExtBean;",
        "setParentExtBean",
        "(Lcom/join/mgps/dto/ExtBean;)V",
        "pageExtBean",
        "getPageExtBean",
        "setPageExtBean",
        "showDatalist",
        "",
        "Lcom/psk/kotlin/util/CommonListMainData;",
        "getShowDatalist",
        "()Ljava/util/List;",
        "setShowDatalist",
        "(Ljava/util/List;)V",
        "adapter",
        "Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;",
        "getAdapter",
        "()Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;",
        "setAdapter",
        "(Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;)V",
        "gameTypeList",
        "Lcom/join/kotlin/ui/findgame/data/GameTypeData;",
        "getGameTypeList",
        "setGameTypeList",
        "featureType",
        "Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;",
        "getFeatureType",
        "()Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;",
        "setFeatureType",
        "(Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V",
        "gameSortType",
        "Lcom/join/kotlin/ui/findgame/data/TagData;",
        "getGameSortType",
        "()Lcom/join/kotlin/ui/findgame/data/TagData;",
        "setGameSortType",
        "(Lcom/join/kotlin/ui/findgame/data/TagData;)V",
        "gameType",
        "getGameType",
        "setGameType",
        "modelType",
        "getModelType",
        "setModelType",
        "playType",
        "getPlayType",
        "setPlayType",
        "themeType",
        "getThemeType",
        "setThemeType",
        "mFirstVisiblePosition",
        "getMFirstVisiblePosition",
        "setMFirstVisiblePosition",
        "mLastVisibleIndex",
        "getMLastVisibleIndex",
        "setMLastVisibleIndex",
        "SCROLLING",
        "getSCROLLING",
        "setSCROLLING",
        "updateDatas",
        "",
        "featureTypez",
        "gameTypez",
        "modelTypez",
        "playTypez",
        "themeTypez",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "initView",
        "updateRequestArgs",
        "onLoadDataSuccess",
        "pn",
        "result",
        "Lcom/join/kotlin/ui/findgame/data/CategoryListMain;",
        "isExposuring",
        "expDiscountGame",
        "onEventMainThread",
        "downloadTaskEvent",
        "Lcom/join/mgps/event/DownloadTaskEvent;",
        "updatePartly",
        "updateProgressPartly",
        "updateDownStateList",
        "onDestroy",
        "lazyLoad",
        "handler",
        "Landroid/os/Handler;",
        "getHandler",
        "()Landroid/os/Handler;",
        "setHandler",
        "(Landroid/os/Handler;)V",
        "showLoding",
        "hidLoading",
        "onError",
        "message",
        "",
        "onClick",
        "v",
        "onPageVisible",
        "position",
        "Companion",
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
        "SMAP\nCategoryDetailItemFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CategoryDetailItemFragment.kt\ncom/join/kotlin/ui/findgame/CategoryDetailItemFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n*L\n1#1,464:1\n774#2:465\n865#2,2:466\n774#2:468\n865#2,2:469\n1869#2:471\n774#2:472\n865#2,2:473\n1870#2:475\n1878#2,3:477\n1#3:476\n167#4,2:480\n182#4,4:482\n*S KotlinDebug\n*F\n+ 1 CategoryDetailItemFragment.kt\ncom/join/kotlin/ui/findgame/CategoryDetailItemFragment\n*L\n158#1:465\n158#1:466,2\n162#1:468\n162#1:469,2\n167#1:471\n168#1:472\n168#1:473,2\n167#1:475\n290#1:477,3\n326#1:480,2\n326#1:482,4\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private SCROLLING:Z

.field public adapter:Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;

.field public binding:Lcom/join/android/app/mgsim/wufun/databinding/d8;

.field public categoryPrensenter:Lcom/join/kotlin/presenter/CategoryPrensenter;

.field private featureType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private from:I

.field private gameSortType:Lcom/join/kotlin/ui/findgame/data/TagData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private gameType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public gameTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/GameTypeData;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isExposuring:Z

.field private mFirstVisiblePosition:I

.field private mLastVisibleIndex:I

.field private modelType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private page:I

.field private pageExtBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pageIndex:I

.field private pageVisible:Z

.field private parentExtBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private playType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public showDatalist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;"
        }
    .end annotation
.end field

.field private themeType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->Companion:Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/e;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->page:I

    .line 13
    .line 14
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "classifyGameList"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "setChatId(...)"

    .line 26
    .line 27
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 31
    .line 32
    new-instance v1, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 33
    .line 34
    invoke-direct {v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->featureType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 38
    .line 39
    new-instance v1, Lcom/join/kotlin/ui/findgame/data/TagData;

    .line 40
    .line 41
    const-string v2, "\u7efc\u5408"

    .line 42
    .line 43
    invoke-direct {v1, v0, v0, v2}, Lcom/join/kotlin/ui/findgame/data/TagData;-><init>(IILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameSortType:Lcom/join/kotlin/ui/findgame/data/TagData;

    .line 47
    .line 48
    new-instance v0, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 49
    .line 50
    invoke-direct {v0}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 54
    .line 55
    new-instance v0, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 56
    .line 57
    invoke-direct {v0}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->modelType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 61
    .line 62
    new-instance v0, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 63
    .line 64
    invoke-direct {v0}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->playType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 68
    .line 69
    new-instance v0, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 70
    .line 71
    invoke-direct {v0}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->themeType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 75
    .line 76
    new-instance v0, Landroid/os/Handler;

    .line 77
    .line 78
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    new-instance v2, Lcom/join/kotlin/ui/findgame/f;

    .line 83
    .line 84
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/findgame/f;-><init>(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)V

    .line 85
    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->handler:Landroid/os/Handler;

    .line 91
    .line 92
    return-void
.end method

.method public static synthetic O(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->onLoadDataSuccess$lambda$10(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)V

    return-void
.end method

.method public static synthetic P(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->initView$lambda$9(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->initView$lambda$6(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->onCreateView$lambda$1(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;Landroid/os/Message;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->handler$lambda$17(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic U(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->onCreateView$lambda$0(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$expDiscountGame(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->expDiscountGame()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final expDiscountGame()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_3

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->isExposuring:Z

    .line 9
    .line 10
    if-nez v1, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->isExposuring:Z

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/d8;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->getLastVisiblePosition()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getShowDatalist()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/lang/Iterable;

    .line 30
    .line 31
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const/4 v4, 0x0

    .line 36
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_3

    .line 41
    .line 42
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    add-int/lit8 v6, v4, 0x1

    .line 47
    .line 48
    if-gez v4, :cond_0

    .line 49
    .line 50
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 51
    .line 52
    .line 53
    :cond_0
    check-cast v5, Lcom/psk/kotlin/util/CommonListMainData;

    .line 54
    .line 55
    if-gt v4, v2, :cond_2

    .line 56
    .line 57
    invoke-virtual {v5}, Lcom/psk/kotlin/util/CommonListMainData;->getHasExposured()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-nez v4, :cond_2

    .line 62
    .line 63
    invoke-virtual {v5, v1}, Lcom/psk/kotlin/util/CommonListMainData;->setHasExposured(Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5}, Lcom/psk/kotlin/util/CommonListMainData;->getType()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    const/4 v7, 0x2

    .line 71
    if-ne v4, v7, :cond_2

    .line 72
    .line 73
    invoke-virtual {v5}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    const-string v5, "null cannot be cast to non-null type com.join.mgps.dto.CollectionBeanSub"

    .line 78
    .line 79
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    check-cast v4, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 83
    .line 84
    invoke-static {v4}, Lcom/join/mgps/Util/UtilsMy;->o2(Lcom/join/mgps/dto/CollectionBeanSub;)Z

    .line 85
    .line 86
    .line 87
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    if-eqz v5, :cond_1

    .line 89
    .line 90
    :try_start_1
    new-instance v5, Lcom/papa/sim/statistic/Ext;

    .line 91
    .line 92
    invoke-direct {v5}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v7, "discount_game"

    .line 96
    .line 97
    invoke-virtual {v5, v7}, Lcom/papa/sim/statistic/Ext;->setResultCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 98
    .line 99
    .line 100
    const-class v7, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;

    .line 101
    .line 102
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-virtual {v5, v7}, Lcom/papa/sim/statistic/Ext;->setScenesCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 107
    .line 108
    .line 109
    new-instance v7, Lcom/papa/sim/statistic/Data;

    .line 110
    .line 111
    invoke-direct {v7}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    invoke-virtual {v7, v8}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    invoke-static {v8}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    sget-object v9, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 130
    .line 131
    invoke-virtual {v8, v9, v5, v7}, Lcom/papa/sim/statistic/t;->Y(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :catch_0
    move-exception v5

    .line 136
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 137
    .line 138
    .line 139
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-static {v5}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    sget-object v7, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 148
    .line 149
    invoke-virtual {v4}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    invoke-virtual {v5, v7, v4}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    .line 163
    .line 164
    :cond_2
    move v4, v6

    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :catchall_0
    move-exception v1

    .line 168
    iput-boolean v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->isExposuring:Z

    .line 169
    .line 170
    throw v1

    .line 171
    :catch_1
    :cond_3
    iput-boolean v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->isExposuring:Z

    .line 172
    .line 173
    return-void
.end method

.method private static final handler$lambda$17(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;Landroid/os/Message;)Z
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getCategoryPrensenter()Lcom/join/kotlin/presenter/CategoryPrensenter;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "requireContext(...)"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 26
    .line 27
    invoke-virtual {p1, v0, p0}, Lcom/join/kotlin/presenter/CategoryPrensenter;->loadCategoryData(Landroid/content/Context;Lcom/join/kotlin/ui/findgame/data/CategoryRequest;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return p0
.end method

.method private final initView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/d8;->e:Lcom/join/android/app/mgsim/wufun/databinding/xo0;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/xo0;->g:Landroid/widget/TextView;

    .line 8
    .line 9
    const-string v1, "setAll"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/join/kotlin/ui/findgame/a;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/findgame/a;-><init>(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/d8;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 27
    .line 28
    new-instance v1, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$2;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$2;-><init>(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/d8;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 41
    .line 42
    new-instance v1, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$3;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$3;-><init>(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    new-instance v0, Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;

    .line 57
    .line 58
    invoke-direct {v0}, Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->setAdapter(Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/d8;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getAdapter()Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 78
    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setUid(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/d8;->c:Lcom/join/android/app/mgsim/wufun/databinding/mj;

    .line 103
    .line 104
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/mj;->e:Landroid/widget/LinearLayout;

    .line 105
    .line 106
    const-string v1, "lodingFaile"

    .line 107
    .line 108
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    new-instance v1, Lcom/join/kotlin/ui/findgame/b;

    .line 112
    .line 113
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/findgame/b;-><init>(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v0, v1}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method private static final initView$lambda$6(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v0, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.CategoryDetailListActivity"

    .line 14
    .line 15
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast p0, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;->reLoadDatas()V

    .line 21
    .line 22
    .line 23
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method

.method private static final initView$lambda$9(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getCategoryPrensenter()Lcom/join/kotlin/presenter/CategoryPrensenter;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object p0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 12
    .line 13
    invoke-virtual {v1, v0, p0}, Lcom/join/kotlin/presenter/CategoryPrensenter;->loadCategoryData(Landroid/content/Context;Lcom/join/kotlin/ui/findgame/data/CategoryRequest;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method private static final onCreateView$lambda$0(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method private static final onCreateView$lambda$1(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getCategoryPrensenter()Lcom/join/kotlin/presenter/CategoryPrensenter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "requireContext(...)"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 15
    .line 16
    invoke-virtual {v0, v1, p0}, Lcom/join/kotlin/presenter/CategoryPrensenter;->loadCategoryData(Landroid/content/Context;Lcom/join/kotlin/ui/findgame/data/CategoryRequest;)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method private static final onLoadDataSuccess$lambda$10(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/d8;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/join/android/app/component/video/h;->o(Landroidx/recyclerview/widget/RecyclerView;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->mFirstVisiblePosition:I

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/d8;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/join/android/app/component/video/h;->q(Landroidx/recyclerview/widget/RecyclerView;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->mLastVisibleIndex:I

    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->pageVisible:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->expDiscountGame()V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-direct {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->updateDownStateList()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private final updateDownStateList()V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getShowDatalist()Ljava/util/List;

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
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/psk/kotlin/util/CommonListMainData;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/psk/kotlin/util/CommonListMainData;->getType()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x2

    .line 26
    if-ne v2, v3, :cond_0

    .line 27
    .line 28
    sget-object v2, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v3, "null cannot be cast to non-null type com.join.mgps.dto.CollectionBeanSub"

    .line 35
    .line 36
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method private final updatePartly()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getAdapter()Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItems()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->mFirstVisiblePosition:I

    .line 17
    .line 18
    iget v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->mLastVisibleIndex:I

    .line 19
    .line 20
    if-gt v0, v1, :cond_3

    .line 21
    .line 22
    :goto_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getAdapter()Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItems()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-lt v0, v2, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    if-ltz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getAdapter()Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItems()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/psk/kotlin/util/CommonListMainData;

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    invoke-virtual {v2, v3}, Lcom/join/kotlin/base/impl/BaseDownloadable;->update(Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/psk/kotlin/util/CommonListMainData;->getType()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    const/4 v4, 0x2

    .line 62
    if-ne v3, v4, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/d8;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 69
    .line 70
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    instance-of v4, v3, Lv2/c;

    .line 75
    .line 76
    if-eqz v4, :cond_2

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getAdapter()Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v3, Lv2/c;

    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 89
    .line 90
    invoke-virtual {v4, v3, v2}, Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;->updateGameUI(Lv2/c;Lcom/join/mgps/dto/CollectionBeanSub;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    :cond_2
    if-eq v0, v1, :cond_3

    .line 94
    .line 95
    add-int/lit8 v0, v0, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    .line 101
    .line 102
    :cond_3
    return-void
.end method

.method private final updateProgressPartly()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getShowDatalist()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->mFirstVisiblePosition:I

    .line 13
    .line 14
    iget v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->mLastVisibleIndex:I

    .line 15
    .line 16
    if-gt v0, v1, :cond_4

    .line 17
    .line 18
    :goto_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getShowDatalist()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-lt v0, v2, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    if-ltz v0, :cond_3

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getShowDatalist()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/psk/kotlin/util/CommonListMainData;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/psk/kotlin/util/CommonListMainData;->getType()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const/4 v4, 0x2

    .line 46
    if-ne v3, v4, :cond_3

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const-string v3, "null cannot be cast to non-null type com.join.mgps.dto.CollectionBeanSub"

    .line 53
    .line 54
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    check-cast v2, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eq v3, v4, :cond_2

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    const/16 v4, 0xc

    .line 76
    .line 77
    if-ne v3, v4, :cond_3

    .line 78
    .line 79
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/d8;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 84
    .line 85
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    instance-of v4, v3, Lv2/c;

    .line 90
    .line 91
    if-eqz v4, :cond_3

    .line 92
    .line 93
    check-cast v3, Lv2/c;

    .line 94
    .line 95
    const v4, 0x7f0a054e

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v4}, Lv2/c;->getView(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Lcom/join/mgps/customview/DownloadNormalView;

    .line 103
    .line 104
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 105
    .line 106
    .line 107
    move-result-wide v4

    .line 108
    invoke-virtual {v3, v4, v5}, Lcom/join/mgps/customview/DownloadNormalView;->s(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    .line 111
    :cond_3
    if-eq v0, v1, :cond_4

    .line 112
    .line 113
    add-int/lit8 v0, v0, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    .line 119
    .line 120
    :cond_4
    return-void
.end method

.method private final updateRequestArgs()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->page:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setPage(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->resetData()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setUid(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->modelType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getId()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setModelType(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getId()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setGameType(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->themeType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getId()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setThemeType(I)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->playType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getId()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setPlayType(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 80
    .line 81
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->featureType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getId()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setFeatureType(I)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 91
    .line 92
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameSortType:Lcom/join/kotlin/ui/findgame/data/TagData;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/TagData;->getId()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setGameSortType(I)V

    .line 99
    .line 100
    .line 101
    return-void
.end method


# virtual methods
.method public final getAdapter()Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->adapter:Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "adapter"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "binding"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getCategoryPrensenter()Lcom/join/kotlin/presenter/CategoryPrensenter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->categoryPrensenter:Lcom/join/kotlin/presenter/CategoryPrensenter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "categoryPrensenter"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getFeatureType()Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->featureType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFrom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->from:I

    .line 2
    .line 3
    return v0
.end method

.method public final getGameSortType()Lcom/join/kotlin/ui/findgame/data/TagData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameSortType:Lcom/join/kotlin/ui/findgame/data/TagData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGameType()Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGameTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/GameTypeData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameTypeList:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "gameTypeList"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMFirstVisiblePosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->mFirstVisiblePosition:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMLastVisibleIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->mLastVisibleIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public final getModelType()Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->modelType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->page:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPageExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPageIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->pageIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPageVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->pageVisible:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getParentExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlayType()Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->playType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRequestArgs()Lcom/join/kotlin/ui/findgame/data/CategoryRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSCROLLING()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->SCROLLING:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getShowDatalist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->showDatalist:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "showDatalist"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getThemeType()Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->themeType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 2
    .line 3
    return-object v0
.end method

.method public hidLoading()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/d8;->d:Lcom/join/android/app/mgsim/wufun/databinding/ke0;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ke0;->d:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/d8;->e:Lcom/join/android/app/mgsim/wufun/databinding/xo0;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/xo0;->c:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/d8;->c:Lcom/join/android/app/mgsim/wufun/databinding/mj;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/mj;->e:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/d8;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method protected lazyLoad()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getCategoryPrensenter()Lcom/join/kotlin/presenter/CategoryPrensenter;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 12
    .line 13
    invoke-virtual {v1, v0, v2}, Lcom/join/kotlin/presenter/CategoryPrensenter;->loadCategoryData(Landroid/content/Context;Lcom/join/kotlin/ui/findgame/data/CategoryRequest;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->handler:Landroid/os/Handler;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    const-wide/16 v2, 0x1f4

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string p3, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x0

    .line 7
    invoke-static {p1, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/d8;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->setBinding(Lcom/join/android/app/mgsim/wufun/databinding/d8;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/d8;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Lcom/join/kotlin/presenter/CategoryPrensenter;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Lcom/join/kotlin/presenter/CategoryPrensenter;-><init>(Lcom/join/kotlin/presenter/view/CategoryView;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->setCategoryPrensenter(Lcom/join/kotlin/presenter/CategoryPrensenter;)V

    .line 38
    .line 39
    .line 40
    new-instance p1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->setShowDatalist(Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const/4 p2, 0x0

    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    const-string v0, "type"

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    move-object p1, p2

    .line 67
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    const-string v1, "from"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    move-object v0, p2

    .line 85
    :goto_1
    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    .line 86
    .line 87
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iput v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->from:I

    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    const-string v2, "pageIndex"

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    goto :goto_2

    .line 113
    :cond_2
    move-object v0, p2

    .line 114
    :goto_2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    iput v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->pageIndex:I

    .line 122
    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-eqz v0, :cond_3

    .line 128
    .line 129
    const-string v2, "parentExtBean"

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    goto :goto_3

    .line 136
    :cond_3
    move-object v0, p2

    .line 137
    :goto_3
    instance-of v2, v0, Lcom/join/mgps/dto/ExtBean;

    .line 138
    .line 139
    if-eqz v2, :cond_4

    .line 140
    .line 141
    check-cast v0, Lcom/join/mgps/dto/ExtBean;

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_4
    move-object v0, p2

    .line 145
    :goto_4
    iput-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 146
    .line 147
    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 148
    .line 149
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const/4 v2, 0x2

    .line 154
    const/4 v3, 0x1

    .line 155
    if-nez p1, :cond_5

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-ne v4, v3, :cond_6

    .line 163
    .line 164
    const-string v4, "\u7efc\u5408"

    .line 165
    .line 166
    goto :goto_8

    .line 167
    :cond_6
    :goto_5
    if-nez p1, :cond_7

    .line 168
    .line 169
    goto :goto_6

    .line 170
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-ne v4, v2, :cond_8

    .line 175
    .line 176
    const-string v4, "\u6700\u65b0"

    .line 177
    .line 178
    goto :goto_8

    .line 179
    :cond_8
    :goto_6
    if-nez p1, :cond_9

    .line 180
    .line 181
    goto :goto_7

    .line 182
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    const/4 v5, 0x3

    .line 187
    if-ne v4, v5, :cond_a

    .line 188
    .line 189
    const-string v4, "\u8bc4\u5206"

    .line 190
    .line 191
    goto :goto_8

    .line 192
    :cond_a
    :goto_7
    const-string v4, ""

    .line 193
    .line 194
    :goto_8
    invoke-virtual {v0, v4}, Lcom/join/mgps/dto/ExtBean;->setFromTabId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    if-eqz v0, :cond_b

    .line 202
    .line 203
    const-string v4, "data"

    .line 204
    .line 205
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    goto :goto_9

    .line 210
    :cond_b
    move-object v0, p2

    .line 211
    :goto_9
    const-string v4, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.CategroyIntentItemData"

    .line 212
    .line 213
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    check-cast v0, Lcom/join/kotlin/ui/findgame/data/CategroyIntentItemData;

    .line 217
    .line 218
    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/data/CategroyIntentItemData;->getFeatureType()Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    iput-object v4, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->featureType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 223
    .line 224
    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/data/CategroyIntentItemData;->getGameType()Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    iput-object v4, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 229
    .line 230
    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/data/CategroyIntentItemData;->getModelType()Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    iput-object v4, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->modelType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 235
    .line 236
    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/data/CategroyIntentItemData;->getPlayType()Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    iput-object v4, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->playType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 241
    .line 242
    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/data/CategroyIntentItemData;->getThemeType()Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    iput-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->themeType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 247
    .line 248
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/d8;->c:Lcom/join/android/app/mgsim/wufun/databinding/mj;

    .line 253
    .line 254
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/mj;->g:Landroid/widget/Button;

    .line 255
    .line 256
    const-string v4, "setNetwork"

    .line 257
    .line 258
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    new-instance v4, Lcom/join/kotlin/ui/findgame/c;

    .line 262
    .line 263
    invoke-direct {v4, p0}, Lcom/join/kotlin/ui/findgame/c;-><init>(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)V

    .line 264
    .line 265
    .line 266
    invoke-static {v0, v4}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 267
    .line 268
    .line 269
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    new-instance v4, Lcom/join/mgps/pref/PrefDef_;

    .line 274
    .line 275
    invoke-direct {v4, v0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->gameTypeList()Lorg/androidannotations/api/sharedpreferences/p;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 287
    .line 288
    :try_start_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 289
    .line 290
    .line 291
    move-result-object p2

    .line 292
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/d8;->c:Lcom/join/android/app/mgsim/wufun/databinding/mj;

    .line 293
    .line 294
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/mj;->f:Landroid/widget/ImageView;

    .line 295
    .line 296
    const-string v4, "relodingimag"

    .line 297
    .line 298
    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    new-instance v4, Lcom/join/kotlin/ui/findgame/d;

    .line 302
    .line 303
    invoke-direct {v4, p0}, Lcom/join/kotlin/ui/findgame/d;-><init>(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)V

    .line 304
    .line 305
    .line 306
    invoke-static {p2, v4}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 307
    .line 308
    .line 309
    goto :goto_b

    .line 310
    :catch_0
    move-exception p2

    .line 311
    goto :goto_a

    .line 312
    :catch_1
    move-exception v0

    .line 313
    move-object v6, v0

    .line 314
    move-object v0, p2

    .line 315
    move-object p2, v6

    .line 316
    :goto_a
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 317
    .line 318
    .line 319
    :goto_b
    iget-object p2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameSortType:Lcom/join/kotlin/ui/findgame/data/TagData;

    .line 320
    .line 321
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    invoke-virtual {p2, v1}, Lcom/join/kotlin/ui/findgame/data/TagData;->setId(I)V

    .line 329
    .line 330
    .line 331
    iget-object p2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameSortType:Lcom/join/kotlin/ui/findgame/data/TagData;

    .line 332
    .line 333
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 334
    .line 335
    .line 336
    move-result p1

    .line 337
    invoke-virtual {p2, p1}, Lcom/join/kotlin/ui/findgame/data/TagData;->setType(I)V

    .line 338
    .line 339
    .line 340
    if-eqz v0, :cond_d

    .line 341
    .line 342
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 343
    .line 344
    .line 345
    move-result p1

    .line 346
    if-nez p1, :cond_c

    .line 347
    .line 348
    goto :goto_c

    .line 349
    :cond_c
    const/4 p1, 0x0

    .line 350
    goto :goto_d

    .line 351
    :cond_d
    :goto_c
    const/4 p1, 0x1

    .line 352
    :goto_d
    if-eqz p1, :cond_e

    .line 353
    .line 354
    const-string v0, "[{\"id\":1,\"title\":\"\u6a21\u62df\u5668\",\"type\":1,\"sub_game_type\":[{\"id\":31,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/fba_icon.png\",\"title\":\"\u8857\u673a\"},{\"id\":33,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/gba_icon.png\",\"title\":\"GBA\"},{\"id\":34,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/psp_icon.png\",\"title\":\"PSP\"},{\"id\":35,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/fc_icon.png\",\"title\":\"FC\"},{\"id\":43,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/sfc_icon.png\",\"title\":\"SFC\"},{\"id\":53,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/ps_icon.png\",\"title\":\"PS\"},{\"id\":51,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/md_icon.png\",\"title\":\"MD\"},{\"id\":54,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/wsc_icon.png\",\"title\":\"WSC\"},{\"id\":57,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/n64_icon.png\",\"title\":\"N64\"},{\"id\":58,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/on_icon.png\",\"title\":\"ONS\"},{\"id\":32,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/nd_icon.png\",\"title\":\"NDS\"},{\"id\":56,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/gbc_icon.png\",\"title\":\"GBC\"},{\"id\":60,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/dc_icon.png\",\"title\":\"DC\"},{\"id\":102,\"pic\":\"\",\"title\":\"H5\"}]},{\"id\":2,\"title\":\"\u5b89\u5353\",\"type\":2,\"sub_game_type\":[{\"id\":10001,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/onlin_icon.png\",\"title\":\"\u7f51\u6e38\"},{\"id\":10002,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/single_icon.png\",\"title\":\"\u5355\u673a\"},{\"id\":10003,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/single_icon.png\",\"title\":\"mod\"}]},{\"id\":3,\"title\":\"\u5206\u7c7b\",\"type\":3,\"sub_game_type\":[{\"id\":24,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/f3/ae/f3ae58e30ae7e432d7571a5ab08e31a2.png\",\"title\":\"\u52a8\u4f5c\u5192\u9669\"},{\"id\":23,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/2d/31/2d31f269379aee69d2e283478a1b9aa5.png\",\"title\":\"\u4f11\u95f2\u76ca\u667a\"},{\"id\":20,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/e3/62/e36255c965b63e80d901f7ea04ae5aa1.png\",\"title\":\"\u89d2\u8272\u626e\u6f14\"},{\"id\":25,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/f4/44/f4444b37064a2cb88401db74dc5e3f75.png\",\"title\":\"\u5c04\u51fb\u98de\u884c\"},{\"id\":19,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/e1/d1/e1d1edd8076f1d92425cef93feef1cf2.png\",\"title\":\"\u7b56\u7565\u6218\u68cb\"},{\"id\":17,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/3f/c8/3fc873bf10d151215d5b977178c4afe6.png\",\"title\":\"\u6a21\u62df\u6e38\u620f\"},{\"id\":22,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/3c/05/3c054708b2a888461eb338d34412a3f0.png\",\"title\":\"\u4f53\u80b2\u6e38\u620f\"},{\"id\":39,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/8e/de/8ede16897f71fdba1389d625b1c9ccfa.png\",\"title\":\"\u7ade\u901f\u6e38\u620f\"},{\"id\":18,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/fc/9c/fc9c346e32b8f48fe6348b8b72e970ce.png\",\"title\":\"\u683c\u6597\u7ade\u6280\"},{\"id\":38,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/ef/8d/ef8d5060aa6c85a58bff921302bcc73a.png\",\"title\":\"\u7ecf\u8425\u6e38\u620f\"},{\"id\":13,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/c9/49/c949ce67d0ccf31a5dbe6cde1d6c213e.png\",\"title\":\"AVG\u604b\u7231\"},{\"id\":15,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/db/0f/db0f26037fee0b193fa9d77094238d9a.png\",\"title\":\"\u751f\u5b58\u6e38\u620f\"},{\"id\":16,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/88/ff/88ff59f4c24e0d14aed861500a9b85e9.png\",\"title\":\"\u6050\u6016\u6e38\u620f\"},{\"id\":12,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/eb/be/ebbe18e8be70b2ff811e32f5bdd8eee3.png\",\"title\":\"\u5854\u9632\u6e38\u620f\"},{\"id\":41,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/fb/5f/fb5f0f3569e9d40babd7d8c10da7195e.png\",\"title\":\"\u97f3\u4e50\u8282\u594f\"},{\"id\":21,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/a4/4c/a44c5c9440c9433dd8c90065790a72ab.png\",\"title\":\"\u653e\u7f6e\u6302\u673a\"}]},{\"id\":4,\"title\":\"\u9898\u6750\",\"type\":4,\"sub_game_type\":[{\"id\":248,\"pic\":\"\",\"title\":\"\u4e8c\u6b21\u5143\"},{\"id\":249,\"pic\":\"\",\"title\":\"\u62df\u4eba\"},{\"id\":250,\"pic\":\"\",\"title\":\"\u67aa\u6218\"},{\"id\":251,\"pic\":\"\",\"title\":\"\u5c71\u6d77\u7ecf\"},{\"id\":252,\"pic\":\"\",\"title\":\"\u52a8\u6f2bIP\"},{\"id\":253,\"pic\":\"\",\"title\":\"\u5192\u9669\"},{\"id\":254,\"pic\":\"\",\"title\":\"\u5730\u7262\u8ff7\u5bab\"},{\"id\":255,\"pic\":\"\",\"title\":\"\u9b54\u5e7b\"},{\"id\":256,\"pic\":\"\",\"title\":\"\u79d1\u5e7b\"},{\"id\":257,\"pic\":\"\",\"title\":\"\u672b\u65e5\"},{\"id\":258,\"pic\":\"\",\"title\":\"\u706b\u5f71\u5fcd\u8005\"},{\"id\":259,\"pic\":\"\",\"title\":\"\u65e5\u6f2b\"},{\"id\":260,\"pic\":\"\",\"title\":\"\u6d77\u6218\"},{\"id\":261,\"pic\":\"\",\"title\":\"\u6b66\u4fa0\"},{\"id\":262,\"pic\":\"\",\"title\":\"\u7ae5\u8bdd\"},{\"id\":263,\"pic\":\"\",\"title\":\"\u53f2\u83b1\u59c6\"},{\"id\":264,\"pic\":\"\",\"title\":\"\u7f8e\u98df\"},{\"id\":265,\"pic\":\"\",\"title\":\"\u5fcd\u8005\"},{\"id\":266,\"pic\":\"\",\"title\":\"\u706b\u67f4\u4eba\"},{\"id\":267,\"pic\":\"\",\"title\":\"\u67aa\u5a18\"},{\"id\":268,\"pic\":\"\",\"title\":\"\u9b54\u7269\u5a18\"},{\"id\":269,\"pic\":\"\",\"title\":\"\u673a\u7532\"},{\"id\":270,\"pic\":\"\",\"title\":\"\u604b\u7231\"},{\"id\":271,\"pic\":\"\",\"title\":\"\u4e09\u56fd\"},{\"id\":272,\"pic\":\"\",\"title\":\"\u6218\u4e89\"},{\"id\":273,\"pic\":\"\",\"title\":\"\u72e9\u730e\"},{\"id\":274,\"pic\":\"\",\"title\":\"\u4fee\u4ed9\"},{\"id\":275,\"pic\":\"\",\"title\":\"\u521d\u97f3\u672a\u6765\"},{\"id\":276,\"pic\":\"\",\"title\":\"\u4eba\u751f\"},{\"id\":277,\"pic\":\"\",\"title\":\"\u5766\u514b\"},{\"id\":278,\"pic\":\"\",\"title\":\"\u4e8c\u6218\"},{\"id\":279,\"pic\":\"\",\"title\":\"\u6218\u8230\"},{\"id\":280,\"pic\":\"\",\"title\":\"\u795e\u8bdd\"},{\"id\":281,\"pic\":\"\",\"title\":\"\u50f5\u5c38\"},{\"id\":282,\"pic\":\"\",\"title\":\"\u690d\u7269\"},{\"id\":283,\"pic\":\"\",\"title\":\"\u6050\u6016\"},{\"id\":284,\"pic\":\"\",\"title\":\"\u52a8\u7269\"},{\"id\":285,\"pic\":\"\",\"title\":\"\u76d7\u5893\"},{\"id\":286,\"pic\":\"\",\"title\":\"\u8230\u5a18\"},{\"id\":287,\"pic\":\"\",\"title\":\"\u72fc\u4eba\u6740\"},{\"id\":288,\"pic\":\"\",\"title\":\"2048\"},{\"id\":289,\"pic\":\"\",\"title\":\"\u4ed9\u4fa0\"},{\"id\":290,\"pic\":\"\",\"title\":\"\u897f\u6e38\"},{\"id\":291,\"pic\":\"\",\"title\":\"\u519c\u573a\"},{\"id\":292,\"pic\":\"\",\"title\":\"\u7535\u7ade\"},{\"id\":293,\"pic\":\"\",\"title\":\"\u8d5b\u8f66\"},{\"id\":294,\"pic\":\"\",\"title\":\"\u5f00\u7f57\"},{\"id\":295,\"pic\":\"\",\"title\":\"\u8db3\u7403\"},{\"id\":296,\"pic\":\"\",\"title\":\"\u7bee\u7403\"},{\"id\":297,\"pic\":\"\",\"title\":\"\u5996\u602a\"},{\"id\":298,\"pic\":\"\",\"title\":\"\u592a\u7a7a\"},{\"id\":299,\"pic\":\"\",\"title\":\"SLG\"},{\"id\":300,\"pic\":\"\",\"title\":\"\u822a\u6d77\"},{\"id\":301,\"pic\":\"\",\"title\":\"\u70f9\u996a\"},{\"id\":302,\"pic\":\"\",\"title\":\"\u6f2b\u5a01\"},{\"id\":303,\"pic\":\"\",\"title\":\"\u8d85\u7ea7\u82f1\u96c4\"},{\"id\":304,\"pic\":\"\",\"title\":\"\u7f8e\u6f2b\"},{\"id\":305,\"pic\":\"\",\"title\":\"\u6697\u9ed1\"},{\"id\":306,\"pic\":\"\",\"title\":\"\u56fd\u521b\"},{\"id\":307,\"pic\":\"\",\"title\":\"\u5076\u50cf\"},{\"id\":308,\"pic\":\"\",\"title\":\"\u624b\u673a\"},{\"id\":309,\"pic\":\"\",\"title\":\"\u514b\u82cf\u9c81\"},{\"id\":310,\"pic\":\"\",\"title\":\"\u4fa6\u63a2\"},{\"id\":311,\"pic\":\"\",\"title\":\"\u9ad8\u8fbe\"},{\"id\":312,\"pic\":\"\",\"title\":\"\u4e50\u9ad8\"},{\"id\":313,\"pic\":\"\",\"title\":\"\u6570\u72ec\"},{\"id\":314,\"pic\":\"\",\"title\":\"\u94a2\u7434\"},{\"id\":315,\"pic\":\"\",\"title\":\"\u6570\u5b66\"},{\"id\":316,\"pic\":\"\",\"title\":\"\u8131\u51fa\"},{\"id\":317,\"pic\":\"\",\"title\":\"\u5927\u5bcc\u7fc1\"},{\"id\":318,\"pic\":\"\",\"title\":\"\u53e3\u888b\u5996\u602a\"},{\"id\":319,\"pic\":\"\",\"title\":\"\u62f3\u7687\"},{\"id\":320,\"pic\":\"\",\"title\":\"\u5965\u7279\u66fc\"},{\"id\":321,\"pic\":\"\",\"title\":\"\u6b7b\u795e\"},{\"id\":322,\"pic\":\"\",\"title\":\"\u4fa0\u76d7\u730e\u8f66\u624b\"},{\"id\":323,\"pic\":\"\",\"title\":\"\u6b7b\u795evs\u706b\u5f71\"},{\"id\":324,\"pic\":\"\",\"title\":\"\u4e09\u56fd\u6218\u7eaa\"},{\"id\":325,\"pic\":\"\",\"title\":\"\u8718\u86db\u4fa0\"},{\"id\":326,\"pic\":\"\",\"title\":\"\u6e38\u620f\u738b\"},{\"id\":327,\"pic\":\"\",\"title\":\"\u523a\u5ba2\u4fe1\u6761\"},{\"id\":328,\"pic\":\"\",\"title\":\"\u5766\u514b\u5927\u6218\"},{\"id\":329,\"pic\":\"\",\"title\":\"\u201c\u70ed\u8840\u201d\u7cfb\u5217\u6e38\u620f\"},{\"id\":330,\"pic\":\"\",\"title\":\"\u6355\u9c7c\"},{\"id\":331,\"pic\":\"\",\"title\":\"\u68a6\u5e7b\u6a21\u62df\u6218\"},{\"id\":332,\"pic\":\"\",\"title\":\"\u4e09\u56fd\u65e0\u53cc\"},{\"id\":333,\"pic\":\"\",\"title\":\"\u690d\u7269\u5927\u6218\u50f5\u5c38\"},{\"id\":334,\"pic\":\"\",\"title\":\"\u9f99\u73e0\"},{\"id\":335,\"pic\":\"\",\"title\":\"\u9965\u8352\"},{\"id\":336,\"pic\":\"\",\"title\":\"\u6a21\u62df\u5c71\u7f8a\"},{\"id\":337,\"pic\":\"\",\"title\":\"\u82f1\u96c4\u8054\u76df\"},{\"id\":338,\"pic\":\"\",\"title\":\"\u4ed9\u5251\u5947\u4fa0\u4f20\"},{\"id\":339,\"pic\":\"\",\"title\":\"\u4f20\u5947\"},{\"id\":340,\"pic\":\"\",\"title\":\"\u6c34\u6d52\u4f20\"},{\"id\":341,\"pic\":\"\",\"title\":\"\u5947\u8ff9MU\"},{\"id\":342,\"pic\":\"\",\"title\":\"\u5b9e\u51b5\u8db3\u7403\"},{\"id\":343,\"pic\":\"\",\"title\":\"\u6700\u7ec8\u5e7b\u60f3\"},{\"id\":344,\"pic\":\"\",\"title\":\"\u6570\u7801\u5b9d\u8d1d\"},{\"id\":345,\"pic\":\"\",\"title\":\"\u6050\u9f99\"},{\"id\":346,\"pic\":\"\",\"title\":\"\u6218\u56fd\"},{\"id\":347,\"pic\":\"\",\"title\":\"\u6821\u56ed\"}]},{\"id\":5,\"title\":\"\u73a9\u6cd5\",\"type\":5,\"sub_game_type\":[{\"id\":385,\"pic\":\"\",\"title\":\"MOBA\"},{\"id\":386,\"pic\":\"\",\"title\":\"\u81ea\u8d70\u68cb\"},{\"id\":387,\"pic\":\"\",\"title\":\"\u5854\u9632\"},{\"id\":388,\"pic\":\"\",\"title\":\"\u517b\u6210\"},{\"id\":389,\"pic\":\"\",\"title\":\"\u7b56\u7565\"},{\"id\":390,\"pic\":\"\",\"title\":\"\u5c04\u51fb\"},{\"id\":391,\"pic\":\"\",\"title\":\"\u5361\u724c\"},{\"id\":392,\"pic\":\"\",\"title\":\"\u56de\u5408\u5236RPG\"},{\"id\":393,\"pic\":\"\",\"title\":\"\u52a8\u4f5c\"},{\"id\":394,\"pic\":\"\",\"title\":\"\u6302\u673a\u653e\u7f6e\"},{\"id\":395,\"pic\":\"\",\"title\":\"\u52a8\u4f5cRPG\"},{\"id\":396,\"pic\":\"\",\"title\":\"\u683c\u6597\"},{\"id\":397,\"pic\":\"\",\"title\":\"\u5403\u9e21\"},{\"id\":398,\"pic\":\"\",\"title\":\"\u7b56\u7565RPG\"},{\"id\":399,\"pic\":\"\",\"title\":\"MMORPG\"},{\"id\":400,\"pic\":\"\",\"title\":\"\u5efa\u9020\"},{\"id\":401,\"pic\":\"\",\"title\":\"\u6a21\u62df\"},{\"id\":402,\"pic\":\"\",\"title\":\"\u6d88\u9664\"},{\"id\":403,\"pic\":\"\",\"title\":\"\u6218\u68cb\"},{\"id\":404,\"pic\":\"\",\"title\":\"\u7ade\u901f\"},{\"id\":405,\"pic\":\"\",\"title\":\"\u8dd1\u9177\"},{\"id\":406,\"pic\":\"\",\"title\":\"\u7ecf\u8425\"},{\"id\":407,\"pic\":\"\",\"title\":\"\u5373\u65f6\u6218\u7565\"},{\"id\":408,\"pic\":\"\",\"title\":\"\u6587\u5b57\u5192\u9669\"},{\"id\":409,\"pic\":\"\",\"title\":\"\u97f3\u4e50\u8282\u594f\"},{\"id\":410,\"pic\":\"\",\"title\":\"\u68cb\u724c\"},{\"id\":411,\"pic\":\"\",\"title\":\"\u684c\u6e38\"},{\"id\":412,\"pic\":\"\",\"title\":\"io\"},{\"id\":413,\"pic\":\"\",\"title\":\"\u6362\u88c5\"},{\"id\":414,\"pic\":\"\",\"title\":\"\u95ef\u5173\"},{\"id\":415,\"pic\":\"\",\"title\":\"\u4e92\u52a8\u5c0f\u8bf4\"},{\"id\":416,\"pic\":\"\",\"title\":\"\u89e3\u8c1c\"},{\"id\":417,\"pic\":\"\",\"title\":\"\u70b9\u51fb\"},{\"id\":418,\"pic\":\"\",\"title\":\"\u76ca\u667a\"},{\"id\":419,\"pic\":\"\",\"title\":\"\u5f39\u5c04\"},{\"id\":420,\"pic\":\"\",\"title\":\"\u4f53\u80b2\"},{\"id\":421,\"pic\":\"\",\"title\":\"\u4e92\u52a8\u7535\u5f71\"},{\"id\":422,\"pic\":\"\",\"title\":\"\u968f\u884c\u6e38\u620f\"},{\"id\":423,\"pic\":\"\",\"title\":\"\u89c6\u89c9\u5c0f\u8bf4\"},{\"id\":424,\"pic\":\"\",\"title\":\"MUD\"},{\"id\":425,\"pic\":\"\",\"title\":\"\u98de\u884c\"},{\"id\":426,\"pic\":\"\",\"title\":\"\u9a7e\u9a76\"},{\"id\":427,\"pic\":\"\",\"title\":\"\u751f\u5b58\"}]},{\"id\":6,\"title\":\"\u7279\u8272\",\"type\":6,\"sub_game_type\":[{\"id\":428,\"pic\":\"\",\"title\":\"\u8054\u673a\"},{\"id\":429,\"pic\":\"\",\"title\":\"5v5\"},{\"id\":430,\"pic\":\"\",\"title\":\"\u591a\u4eba\"},{\"id\":431,\"pic\":\"\",\"title\":\"\u63a8\u5854\"},{\"id\":432,\"pic\":\"\",\"title\":\"\u7f8e\u5973\"},{\"id\":433,\"pic\":\"\",\"title\":\"\u786c\u6838\"},{\"id\":434,\"pic\":\"\",\"title\":\"\u6536\u96c6\u8981\u7d20\"},{\"id\":435,\"pic\":\"\",\"title\":\"\u56fd\u4ea7\"},{\"id\":436,\"pic\":\"\",\"title\":\"FPS\"},{\"id\":437,\"pic\":\"\",\"title\":\"PVP\"},{\"id\":438,\"pic\":\"\",\"title\":\"\u7ade\u6280\"},{\"id\":439,\"pic\":\"\",\"title\":\"TPS\"},{\"id\":440,\"pic\":\"\",\"title\":\"3D\"},{\"id\":441,\"pic\":\"\",\"title\":\"\u5408\u4f5c\"},{\"id\":442,\"pic\":\"\",\"title\":\"TPP\"},{\"id\":443,\"pic\":\"\",\"title\":\"\u5267\u60c5\"},{\"id\":444,\"pic\":\"\",\"title\":\"\u5bf9\u6218\"},{\"id\":445,\"pic\":\"\",\"title\":\"Roguelike\"},{\"id\":446,\"pic\":\"\",\"title\":\"Steam\u79fb\u690d\"},{\"id\":447,\"pic\":\"\",\"title\":\"\u72ec\u7acb\u6e38\u620f\"},{\"id\":450,\"pic\":\"\",\"title\":\"\u4f11\u95f2\"},{\"id\":451,\"pic\":\"\",\"title\":\"\u9ad8\u753b\u8d28\"},{\"id\":452,\"pic\":\"\",\"title\":\"\u9ad8\u96be\u5ea6\"},{\"id\":453,\"pic\":\"\",\"title\":\"\u6a2a\u7248\"},{\"id\":454,\"pic\":\"\",\"title\":\"\u548c\u98ce\"},{\"id\":455,\"pic\":\"\",\"title\":\"Live2D\"},{\"id\":456,\"pic\":\"\",\"title\":\"\u5361\u901a\"},{\"id\":457,\"pic\":\"\",\"title\":\"\u7ec4\u961f\"},{\"id\":458,\"pic\":\"\",\"title\":\"CCG\"},{\"id\":459,\"pic\":\"\",\"title\":\"1v1\"},{\"id\":460,\"pic\":\"\",\"title\":\"\u53ef\u7231\"},{\"id\":461,\"pic\":\"\",\"title\":\"\u5c40\u57df\u7f51\u8054\u673a\"},{\"id\":462,\"pic\":\"\",\"title\":\"\u50cf\u7d20\"},{\"id\":463,\"pic\":\"\",\"title\":\"\u5f39\u5e55\"},{\"id\":464,\"pic\":\"\",\"title\":\"\u4e2d\u56fd\u98ce\"},{\"id\":465,\"pic\":\"\",\"title\":\"\u9ad8\u81ea\u7531\u5ea6\"},{\"id\":466,\"pic\":\"\",\"title\":\"\u53e4\u98ce\"},{\"id\":467,\"pic\":\"\",\"title\":\"\u53ef\u634f\u8138\"},{\"id\":468,\"pic\":\"\",\"title\":\"\u5f00\u653e\u4e16\u754c\"},{\"id\":469,\"pic\":\"\",\"title\":\"\u793e\u4ea4\"},{\"id\":470,\"pic\":\"\",\"title\":\"DIY\"},{\"id\":471,\"pic\":\"\",\"title\":\"\u7ecf\u5178\"},{\"id\":472,\"pic\":\"\",\"title\":\"\u591a\u7ed3\u5c40\"},{\"id\":473,\"pic\":\"\",\"title\":\"\u624b\u7ed8\u98ce\u683c\"},{\"id\":474,\"pic\":\"\",\"title\":\"\u88c5\u4fee\"},{\"id\":475,\"pic\":\"\",\"title\":\"\u8bbe\u8ba1\"},{\"id\":476,\"pic\":\"\",\"title\":\"\u5973\u6027\u5411\"},{\"id\":477,\"pic\":\"\",\"title\":\"\u58f0\u63a7\"},{\"id\":478,\"pic\":\"\",\"title\":\"\u6f02\u79fb\"},{\"id\":479,\"pic\":\"\",\"title\":\"\u6c34\u58a8\u98ce\"},{\"id\":480,\"pic\":\"\",\"title\":\"2D\"},{\"id\":481,\"pic\":\"\",\"title\":\"\u6253\u51fb\u611f\"},{\"id\":482,\"pic\":\"\",\"title\":\"\u624b\u901f\"},{\"id\":483,\"pic\":\"\",\"title\":\"\u58f0\u4f18\u914d\u97f3\"},{\"id\":484,\"pic\":\"\",\"title\":\"\u81f4\u90c1\"},{\"id\":485,\"pic\":\"\",\"title\":\"DBG\"},{\"id\":486,\"pic\":\"\",\"title\":\"\u9003\u751f\"},{\"id\":487,\"pic\":\"\",\"title\":\"\u79fb\u690d\"},{\"id\":488,\"pic\":\"\",\"title\":\"\u641e\u7b11\"},{\"id\":489,\"pic\":\"\",\"title\":\"\u5408\u6210\"},{\"id\":490,\"pic\":\"\",\"title\":\"\u52a8\u4eba\u97f3\u4e50\"},{\"id\":491,\"pic\":\"\",\"title\":\"\u7535\u97f3\"},{\"id\":492,\"pic\":\"\",\"title\":\"\u7ad6\u7248\"},{\"id\":493,\"pic\":\"\",\"title\":\"\u7ae5\u5e74\"},{\"id\":494,\"pic\":\"\",\"title\":\"Q\u7248\"},{\"id\":495,\"pic\":\"\",\"title\":\"\u6709\u6bd2\"},{\"id\":496,\"pic\":\"\",\"title\":\"\u4e59\u5973\"},{\"id\":497,\"pic\":\"\",\"title\":\"TCG\"},{\"id\":498,\"pic\":\"\",\"title\":\"\u60ac\u7591\"},{\"id\":499,\"pic\":\"\",\"title\":\"\u6cbb\u6108\"},{\"id\":500,\"pic\":\"\",\"title\":\"\u7ec4\u88c5\"},{\"id\":501,\"pic\":\"\",\"title\":\"\u63a8\u7406\"},{\"id\":502,\"pic\":\"\",\"title\":\"\u89e3\u538b\"},{\"id\":503,\"pic\":\"\",\"title\":\"meta\"},{\"id\":504,\"pic\":\"\",\"title\":\"\u6c49\u5316\"},{\"id\":505,\"pic\":\"\",\"title\":\"\u6b27\u7f8e\u753b\u98ce\"},{\"id\":506,\"pic\":\"\",\"title\":\"3v3\"},{\"id\":507,\"pic\":\"\",\"title\":\"\u9b54\u6027\"},{\"id\":508,\"pic\":\"\",\"title\":\"\u5e73\u53f0\u8df3\u8dc3\"},{\"id\":509,\"pic\":\"\",\"title\":\"\u81ea\u5236\u5173\u5361\"},{\"id\":510,\"pic\":\"\",\"title\":\"\u8f7b\u6539\"},{\"id\":511,\"pic\":\"\",\"title\":\"\u7b80\u7ea6\u753b\u98ce\"},{\"id\":512,\"pic\":\"\",\"title\":\"\u8857\u673a\u98ce\u683c\"},{\"id\":513,\"pic\":\"\",\"title\":\"AR\"},{\"id\":514,\"pic\":\"\",\"title\":\"\u6237\u5916\"},{\"id\":515,\"pic\":\"\",\"title\":\"\u65e5\u7cfb\u98ce\u683c\"},{\"id\":516,\"pic\":\"\",\"title\":\"VR\"},{\"id\":517,\"pic\":\"\",\"title\":\"\u4f5b\u7cfb\"},{\"id\":518,\"pic\":\"\",\"title\":\"\u4f4e\u6a21\"},{\"id\":519,\"pic\":\"\",\"title\":\"\u5c0f\u6e05\u65b0\"},{\"id\":520,\"pic\":\"\",\"title\":\"\u4fef\u89c6\u89c6\u89d2\"},{\"id\":521,\"pic\":\"\",\"title\":\"PC\u79fb\u690d\"},{\"id\":522,\"pic\":\"\",\"title\":\"\u4e70\u65ad\u5236\"},{\"id\":523,\"pic\":\"\",\"title\":\"\u8fdb\u5316\"},{\"id\":524,\"pic\":\"\",\"title\":\"\u526a\u7eb8\u98ce\"},{\"id\":525,\"pic\":\"\",\"title\":\"\u526a\u5f71\u98ce\"},{\"id\":526,\"pic\":\"\",\"title\":\"\u50ac\u6cea\"},{\"id\":527,\"pic\":\"\",\"title\":\"\u4e0b\u843d\u5f0f\"},{\"id\":528,\"pic\":\"\",\"title\":\"\u624b\u6b8b\"},{\"id\":529,\"pic\":\"\",\"title\":\"\u53cd\u5e94\u529b\"}]}]"

    .line 355
    .line 356
    :cond_e
    new-instance p1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 357
    .line 358
    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 359
    .line 360
    .line 361
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 362
    .line 363
    .line 364
    move-result-object p2

    .line 365
    new-array v1, v3, [Ljava/lang/Class;

    .line 366
    .line 367
    const-class v4, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 368
    .line 369
    aput-object v4, v1, p3

    .line 370
    .line 371
    const-class v4, Ljava/util/List;

    .line 372
    .line 373
    invoke-virtual {p2, v4, v1}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 374
    .line 375
    .line 376
    move-result-object p2

    .line 377
    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    check-cast p1, Ljava/util/List;

    .line 382
    .line 383
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->setGameTypeList(Ljava/util/List;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getGameTypeList()Ljava/util/List;

    .line 387
    .line 388
    .line 389
    move-result-object p1

    .line 390
    check-cast p1, Ljava/lang/Iterable;

    .line 391
    .line 392
    new-instance p2, Ljava/util/ArrayList;

    .line 393
    .line 394
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .line 396
    .line 397
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    :cond_f
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    if-eqz v0, :cond_11

    .line 406
    .line 407
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    move-object v1, v0

    .line 412
    check-cast v1, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 413
    .line 414
    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getType()I

    .line 415
    .line 416
    .line 417
    move-result v1

    .line 418
    if-nez v1, :cond_10

    .line 419
    .line 420
    const/4 v1, 0x1

    .line 421
    goto :goto_f

    .line 422
    :cond_10
    const/4 v1, 0x0

    .line 423
    :goto_f
    if-eqz v1, :cond_f

    .line 424
    .line 425
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    goto :goto_e

    .line 429
    :cond_11
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 430
    .line 431
    .line 432
    move-result p1

    .line 433
    xor-int/2addr p1, v3

    .line 434
    if-eqz p1, :cond_12

    .line 435
    .line 436
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getGameTypeList()Ljava/util/List;

    .line 437
    .line 438
    .line 439
    move-result-object p1

    .line 440
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object p2

    .line 444
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    :cond_12
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getGameTypeList()Ljava/util/List;

    .line 448
    .line 449
    .line 450
    move-result-object p1

    .line 451
    check-cast p1, Ljava/lang/Iterable;

    .line 452
    .line 453
    new-instance p2, Ljava/util/ArrayList;

    .line 454
    .line 455
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .line 457
    .line 458
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 459
    .line 460
    .line 461
    move-result-object p1

    .line 462
    :cond_13
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 463
    .line 464
    .line 465
    move-result v0

    .line 466
    if-eqz v0, :cond_15

    .line 467
    .line 468
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    move-object v1, v0

    .line 473
    check-cast v1, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 474
    .line 475
    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getType()I

    .line 476
    .line 477
    .line 478
    move-result v1

    .line 479
    if-ne v1, v2, :cond_14

    .line 480
    .line 481
    const/4 v1, 0x1

    .line 482
    goto :goto_11

    .line 483
    :cond_14
    const/4 v1, 0x0

    .line 484
    :goto_11
    if-eqz v1, :cond_13

    .line 485
    .line 486
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    goto :goto_10

    .line 490
    :cond_15
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 491
    .line 492
    .line 493
    move-result p1

    .line 494
    xor-int/2addr p1, v3

    .line 495
    if-eqz p1, :cond_19

    .line 496
    .line 497
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getGameTypeList()Ljava/util/List;

    .line 498
    .line 499
    .line 500
    move-result-object p1

    .line 501
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 506
    .line 507
    .line 508
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object p1

    .line 512
    check-cast p1, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 513
    .line 514
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getSub_game_type()Ljava/util/List;

    .line 515
    .line 516
    .line 517
    move-result-object p1

    .line 518
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 519
    .line 520
    .line 521
    check-cast p1, Ljava/lang/Iterable;

    .line 522
    .line 523
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    .line 524
    .line 525
    .line 526
    move-result-object p1

    .line 527
    check-cast p1, Ljava/lang/Iterable;

    .line 528
    .line 529
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 530
    .line 531
    .line 532
    move-result-object p1

    .line 533
    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 534
    .line 535
    .line 536
    move-result p2

    .line 537
    if-eqz p2, :cond_19

    .line 538
    .line 539
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object p2

    .line 543
    check-cast p2, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 544
    .line 545
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getGameTypeList()Ljava/util/List;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    check-cast v0, Ljava/lang/Iterable;

    .line 550
    .line 551
    new-instance v1, Ljava/util/ArrayList;

    .line 552
    .line 553
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 554
    .line 555
    .line 556
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    :cond_16
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 561
    .line 562
    .line 563
    move-result v2

    .line 564
    if-eqz v2, :cond_18

    .line 565
    .line 566
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v2

    .line 570
    move-object v4, v2

    .line 571
    check-cast v4, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 572
    .line 573
    invoke-virtual {v4}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getType()I

    .line 574
    .line 575
    .line 576
    move-result v4

    .line 577
    if-ne v4, v3, :cond_17

    .line 578
    .line 579
    const/4 v4, 0x1

    .line 580
    goto :goto_14

    .line 581
    :cond_17
    const/4 v4, 0x0

    .line 582
    :goto_14
    if-eqz v4, :cond_16

    .line 583
    .line 584
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    goto :goto_13

    .line 588
    :cond_18
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    check-cast v0, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 597
    .line 598
    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getSub_game_type()Ljava/util/List;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 603
    .line 604
    .line 605
    invoke-interface {v0, p3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 606
    .line 607
    .line 608
    goto :goto_12

    .line 609
    :cond_19
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 610
    .line 611
    .line 612
    move-result-object p1

    .line 613
    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 614
    .line 615
    .line 616
    invoke-direct {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->initView()V

    .line 617
    .line 618
    .line 619
    invoke-direct {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->updateRequestArgs()V

    .line 620
    .line 621
    .line 622
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 623
    .line 624
    .line 625
    move-result-object p1

    .line 626
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/d8;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 627
    .line 628
    .line 629
    move-result-object p1

    .line 630
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/e;->onDestroy()V

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

.method public onError(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getShowDatalist()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/util/Collection;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 25
    :goto_1
    if-nez p1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getShowDatalist()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-gtz p1, :cond_3

    .line 36
    .line 37
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/d8;->d:Lcom/join/android/app/mgsim/wufun/databinding/ke0;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ke0;->d:Landroid/widget/LinearLayout;

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/d8;->e:Lcom/join/android/app/mgsim/wufun/databinding/xo0;

    .line 55
    .line 56
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/xo0;->c:Landroid/widget/LinearLayout;

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/d8;->c:Lcom/join/android/app/mgsim/wufun/databinding/mj;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/mj;->e:Landroid/widget/LinearLayout;

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/d8;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    :cond_3
    return-void
.end method

.method public final onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 2
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
    invoke-direct {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->updateDownStateList()V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->updatePartly()V

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    const/16 v0, 0x8

    .line 50
    .line 51
    if-ne p1, v0, :cond_1

    .line 52
    .line 53
    invoke-direct {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->updateProgressPartly()V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onLoadDataSuccess(ILcom/join/kotlin/ui/findgame/data/CategoryListMain;)V
    .locals 10
    .param p2    # Lcom/join/kotlin/ui/findgame/data/CategoryListMain;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->page:I

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/16 v0, 0x8

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-ne p1, v2, :cond_2

    .line 16
    .line 17
    iput v2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->page:I

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/d8;->e:Lcom/join/android/app/mgsim/wufun/databinding/xo0;

    .line 24
    .line 25
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/xo0;->c:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/d8;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 35
    .line 36
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getShowDatalist()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-lez v3, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/d8;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 54
    .line 55
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getShowDatalist()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/CategoryListMain;->getGame_list()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    if-eqz v3, :cond_7

    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/CategoryListMain;->getGame_list()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-lez v3, :cond_7

    .line 80
    .line 81
    new-instance v0, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/CategoryListMain;->getGame_list()Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_5

    .line 99
    .line 100
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    move-object v5, v1

    .line 105
    check-cast v5, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 106
    .line 107
    iget v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->from:I

    .line 108
    .line 109
    if-nez v1, :cond_3

    .line 110
    .line 111
    const/16 v1, 0x76

    .line 112
    .line 113
    :cond_3
    invoke-virtual {v5, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 114
    .line 115
    .line 116
    iget v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->from:I

    .line 117
    .line 118
    if-nez v1, :cond_4

    .line 119
    .line 120
    const/16 v1, 0x6c

    .line 121
    .line 122
    :cond_4
    invoke-virtual {v5, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    iget-object v3, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 130
    .line 131
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 132
    .line 133
    .line 134
    sget-object v1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 135
    .line 136
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v5}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 140
    .line 141
    .line 142
    new-instance v1, Lcom/psk/kotlin/util/CommonListMainData;

    .line 143
    .line 144
    const/4 v4, 0x2

    .line 145
    const/4 v6, 0x0

    .line 146
    const/4 v7, 0x0

    .line 147
    const/16 v8, 0xc

    .line 148
    .line 149
    const/4 v9, 0x0

    .line 150
    move-object v3, v1

    .line 151
    invoke-direct/range {v3 .. v9}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getShowDatalist()Ljava/util/List;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_5
    iget p2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->page:I

    .line 166
    .line 167
    if-ne p2, v2, :cond_6

    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getAdapter()Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_6
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getAdapter()Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addAll(Ljava/util/Collection;)V

    .line 182
    .line 183
    .line 184
    :goto_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/d8;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 189
    .line 190
    invoke-virtual {p2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->loadMoreComplete()V

    .line 191
    .line 192
    .line 193
    iget p2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->page:I

    .line 194
    .line 195
    add-int/2addr p2, v2

    .line 196
    iput p2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->page:I

    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_7
    iget p2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->page:I

    .line 200
    .line 201
    if-ne p2, v2, :cond_8

    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/d8;->e:Lcom/join/android/app/mgsim/wufun/databinding/xo0;

    .line 208
    .line 209
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/xo0;->c:Landroid/widget/LinearLayout;

    .line 210
    .line 211
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/d8;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 219
    .line 220
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 221
    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_8
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/d8;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 229
    .line 230
    invoke-virtual {p2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 231
    .line 232
    .line 233
    :goto_2
    if-ne p1, v2, :cond_9

    .line 234
    .line 235
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->mHandler:Landroid/os/Handler;

    .line 236
    .line 237
    new-instance p2, Lcom/join/kotlin/ui/findgame/e;

    .line 238
    .line 239
    invoke-direct {p2, p0}, Lcom/join/kotlin/ui/findgame/e;-><init>(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)V

    .line 240
    .line 241
    .line 242
    const-wide/16 v0, 0x12c

    .line 243
    .line 244
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 245
    .line 246
    .line 247
    :cond_9
    return-void
.end method

.method public onPageVisible(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->pageIndex:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    iput-boolean p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->pageVisible:Z

    .line 10
    .line 11
    if-eqz p1, :cond_3

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->hasExplore()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_3

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v3, "page"

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {p1, v0, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->expDiscountGame()V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ExtBean;->setHasExplore(Z)V

    .line 70
    .line 71
    .line 72
    :cond_3
    return-void
.end method

.method public final setAdapter(Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->adapter:Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;

    .line 7
    .line 8
    return-void
.end method

.method public final setBinding(Lcom/join/android/app/mgsim/wufun/databinding/d8;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/d8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 7
    .line 8
    return-void
.end method

.method public final setCategoryPrensenter(Lcom/join/kotlin/presenter/CategoryPrensenter;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/presenter/CategoryPrensenter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->categoryPrensenter:Lcom/join/kotlin/presenter/CategoryPrensenter;

    .line 7
    .line 8
    return-void
.end method

.method public final setFeatureType(Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->featureType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 7
    .line 8
    return-void
.end method

.method public final setFrom(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->from:I

    .line 2
    .line 3
    return-void
.end method

.method public final setGameSortType(Lcom/join/kotlin/ui/findgame/data/TagData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/data/TagData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameSortType:Lcom/join/kotlin/ui/findgame/data/TagData;

    .line 7
    .line 8
    return-void
.end method

.method public final setGameType(Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 7
    .line 8
    return-void
.end method

.method public final setGameTypeList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/GameTypeData;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameTypeList:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->handler:Landroid/os/Handler;

    .line 7
    .line 8
    return-void
.end method

.method public final setMFirstVisiblePosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->mFirstVisiblePosition:I

    .line 2
    .line 3
    return-void
.end method

.method public final setMLastVisibleIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->mLastVisibleIndex:I

    .line 2
    .line 3
    return-void
.end method

.method public final setModelType(Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->modelType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 7
    .line 8
    return-void
.end method

.method public final setPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->page:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPageExtBean(Lcom/join/mgps/dto/ExtBean;)V
    .locals 1
    .param p1    # Lcom/join/mgps/dto/ExtBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 7
    .line 8
    return-void
.end method

.method public final setPageIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->pageIndex:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPageVisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->pageVisible:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setParentExtBean(Lcom/join/mgps/dto/ExtBean;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dto/ExtBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setPlayType(Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->playType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 7
    .line 8
    return-void
.end method

.method public final setRequestArgs(Lcom/join/kotlin/ui/findgame/data/CategoryRequest;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/data/CategoryRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->requestArgs:Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 7
    .line 8
    return-void
.end method

.method public final setSCROLLING(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->SCROLLING:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setShowDatalist(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->showDatalist:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setThemeType(Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->themeType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 7
    .line 8
    return-void
.end method

.method public showLoding()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/d8;->d:Lcom/join/android/app/mgsim/wufun/databinding/ke0;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ke0;->d:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/d8;->e:Lcom/join/android/app/mgsim/wufun/databinding/xo0;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/xo0;->c:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    const/16 v1, 0x8

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/d8;->c:Lcom/join/android/app/mgsim/wufun/databinding/mj;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/mj;->e:Landroid/widget/LinearLayout;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/d8;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final updateDatas(Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "featureTypez"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "gameTypez"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "modelTypez"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "playTypez"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "themeTypez"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->featureType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->gameType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 29
    .line 30
    iput-object p3, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->modelType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 31
    .line 32
    iput-object p4, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->playType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 33
    .line 34
    iput-object p5, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->themeType:Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->updateRequestArgs()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->lazyLoad()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

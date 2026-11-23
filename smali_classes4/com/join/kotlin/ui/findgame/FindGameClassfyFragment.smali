.class public final Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/presenter/view/FindHomeView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;,
        Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;,
        Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFindGameClassfyFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FindGameClassfyFragment.kt\ncom/join/kotlin/ui/findgame/FindGameClassfyFragment\n+ 2 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,425:1\n167#2,2:426\n182#2,4:428\n1869#3,2:432\n1869#3,2:434\n774#3:436\n865#3,2:437\n1374#3:439\n1460#3,5:440\n1869#3,2:445\n774#3:447\n865#3,2:448\n1374#3:450\n1460#3,5:451\n1869#3,2:456\n774#3:458\n865#3,2:459\n1374#3:461\n1460#3,5:462\n1869#3,2:467\n*S KotlinDebug\n*F\n+ 1 FindGameClassfyFragment.kt\ncom/join/kotlin/ui/findgame/FindGameClassfyFragment\n*L\n163#1:426,2\n163#1:428,4\n171#1:432,2\n249#1:434,2\n342#1:436\n342#1:437,2\n342#1:439\n342#1:440,5\n343#1:445,2\n362#1:447\n362#1:448,2\n362#1:450\n362#1:451,5\n363#1:456,2\n382#1:458\n382#1:459,2\n382#1:461\n382#1:462,5\n383#1:467,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00aa\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002:\u0003mnoB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J&\u0010O\u001a\u0004\u0018\u00010P2\u0006\u0010Q\u001a\u00020R2\u0008\u0010S\u001a\u0004\u0018\u00010T2\u0008\u0010U\u001a\u0004\u0018\u00010VH\u0016J\u0010\u0010W\u001a\u00020X2\u0006\u0010Y\u001a\u00020ZH\u0007J\u0006\u0010[\u001a\u00020XJ\u0008\u0010\\\u001a\u00020XH\u0016J\u001a\u0010]\u001a\u00020X2\u0006\u0010^\u001a\u00020P2\u0008\u0010U\u001a\u0004\u0018\u00010VH\u0016J\u0018\u0010b\u001a\u00020X2\u0006\u0010c\u001a\u0002082\u0006\u0010d\u001a\u00020eH\u0016J\u000e\u0010f\u001a\u00020X2\u0006\u0010g\u001a\u000208J\u0008\u0010h\u001a\u00020XH\u0016J\u0008\u0010i\u001a\u00020XH\u0016J\u0010\u0010j\u001a\u00020X2\u0006\u0010k\u001a\u00020lH\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R \u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u001fX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001a\u0010$\u001a\u00020%X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u001a\u0010*\u001a\u00020+X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R \u00100\u001a\u0008\u0012\u0004\u0012\u0002010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010\u0015\"\u0004\u00083\u0010\u0017R \u00104\u001a\u0008\u0012\u0004\u0012\u0002010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010\u0015\"\u0004\u00086\u0010\u0017R\u001a\u00107\u001a\u000208X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R!\u0010=\u001a\u0012\u0012\u0004\u0012\u00020?0>j\u0008\u0012\u0004\u0012\u00020?`@\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008A\u0010BR\u001a\u0010C\u001a\u000208X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010:\"\u0004\u0008E\u0010<R\u001a\u0010F\u001a\u000208X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010:\"\u0004\u0008H\u0010<R\u001a\u0010I\u001a\u00020JX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010L\"\u0004\u0008M\u0010NR\u001a\u0010_\u001a\u000208X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008`\u0010:\"\u0004\u0008a\u0010<\u00a8\u0006p"
    }
    d2 = {
        "Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/join/kotlin/presenter/view/FindHomeView;",
        "<init>",
        "()V",
        "presenter",
        "Lcom/join/kotlin/presenter/FindModlePrensenter;",
        "getPresenter",
        "()Lcom/join/kotlin/presenter/FindModlePrensenter;",
        "setPresenter",
        "(Lcom/join/kotlin/presenter/FindModlePrensenter;)V",
        "binding",
        "Lcom/join/android/app/mgsim/wufun/databinding/FindgameClassfyFragmentLayoutBinding;",
        "getBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/FindgameClassfyFragmentLayoutBinding;",
        "setBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/FindgameClassfyFragmentLayoutBinding;)V",
        "gameTypeList",
        "",
        "Lcom/join/kotlin/ui/findgame/data/GameTypeData;",
        "getGameTypeList",
        "()Ljava/util/List;",
        "setGameTypeList",
        "(Ljava/util/List;)V",
        "requestArgs",
        "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;",
        "getRequestArgs",
        "()Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;",
        "setRequestArgs",
        "(Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V",
        "leftTypeAdapter",
        "Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;",
        "getLeftTypeAdapter",
        "()Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;",
        "setLeftTypeAdapter",
        "(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;)V",
        "findClassifyAdapter",
        "Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;",
        "getFindClassifyAdapter",
        "()Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;",
        "setFindClassifyAdapter",
        "(Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;)V",
        "findTypeAdapter",
        "Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;",
        "getFindTypeAdapter",
        "()Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;",
        "setFindTypeAdapter",
        "(Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;)V",
        "choiceListData",
        "Lcom/psk/kotlin/util/CommonListMainData;",
        "getChoiceListData",
        "setChoiceListData",
        "datas",
        "getDatas",
        "setDatas",
        "selectedType",
        "",
        "getSelectedType",
        "()I",
        "setSelectedType",
        "(I)V",
        "allDownloadBeans",
        "Ljava/util/ArrayList;",
        "Lcom/join/mgps/dto/CollectionBeanSub;",
        "Lkotlin/collections/ArrayList;",
        "getAllDownloadBeans",
        "()Ljava/util/ArrayList;",
        "mFirstVisiblePosition",
        "getMFirstVisiblePosition",
        "setMFirstVisiblePosition",
        "mLastVisibleIndex",
        "getMLastVisibleIndex",
        "setMLastVisibleIndex",
        "SCROLLING",
        "",
        "getSCROLLING",
        "()Z",
        "setSCROLLING",
        "(Z)V",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onEventMainThread",
        "",
        "downloadTaskEvent",
        "Lcom/join/mgps/event/DownloadTaskEvent;",
        "updateDownStateList",
        "onDestroyView",
        "onViewCreated",
        "view",
        "page",
        "getPage",
        "setPage",
        "onLoadDataSuccessV9",
        "pagex",
        "result",
        "Lcom/join/kotlin/ui/findgame/data/FindClassifyResultData;",
        "showTypeList",
        "id",
        "showLoding",
        "hidLoading",
        "onError",
        "message",
        "",
        "TabViewHolder",
        "OnSelectedTabListener",
        "TabRecycleAdapter",
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
        "SMAP\nFindGameClassfyFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FindGameClassfyFragment.kt\ncom/join/kotlin/ui/findgame/FindGameClassfyFragment\n+ 2 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,425:1\n167#2,2:426\n182#2,4:428\n1869#3,2:432\n1869#3,2:434\n774#3:436\n865#3,2:437\n1374#3:439\n1460#3,5:440\n1869#3,2:445\n774#3:447\n865#3,2:448\n1374#3:450\n1460#3,5:451\n1869#3,2:456\n774#3:458\n865#3,2:459\n1374#3:461\n1460#3,5:462\n1869#3,2:467\n*S KotlinDebug\n*F\n+ 1 FindGameClassfyFragment.kt\ncom/join/kotlin/ui/findgame/FindGameClassfyFragment\n*L\n163#1:426,2\n163#1:428,4\n171#1:432,2\n249#1:434,2\n342#1:436\n342#1:437,2\n342#1:439\n342#1:440,5\n343#1:445,2\n362#1:447\n362#1:448,2\n362#1:450\n362#1:451,5\n363#1:456,2\n382#1:458\n382#1:459,2\n382#1:461\n382#1:462,5\n383#1:467,2\n*E\n"
    }
.end annotation


# instance fields
.field private SCROLLING:Z

.field private final allDownloadBeans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public binding:Lcom/join/android/app/mgsim/wufun/databinding/bk;

.field private choiceListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public findClassifyAdapter:Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;

.field public findTypeAdapter:Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;

.field public gameTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/GameTypeData;",
            ">;"
        }
    .end annotation
.end field

.field public leftTypeAdapter:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;

.field private mFirstVisiblePosition:I

.field private mLastVisibleIndex:I

.field private page:I

.field public presenter:Lcom/join/kotlin/presenter/FindModlePrensenter;

.field public requestArgs:Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

.field private selectedType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

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
    iput-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->choiceListData:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->datas:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->allDownloadBeans:Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->page:I

    .line 27
    .line 28
    return-void
.end method

.method public static synthetic M(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->onCreateView$lambda$1(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->onCreateView$lambda$0(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final onCreateView$lambda$0(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;)Lkotlin/Unit;
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

.method private static final onCreateView$lambda$1(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getPresenter()Lcom/join/kotlin/presenter/FindModlePrensenter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "requireActivity(...)"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getRequestArgs()Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {v0, v1, p0}, Lcom/join/kotlin/presenter/FindModlePrensenter;->loadClassfyDatas(Landroid/content/Context;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method


# virtual methods
.method public final getAllDownloadBeans()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->allDownloadBeans:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/bk;

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

.method public final getChoiceListData()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->choiceListData:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDatas()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->datas:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFindClassifyAdapter()Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->findClassifyAdapter:Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "findClassifyAdapter"

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

.method public final getFindTypeAdapter()Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->findTypeAdapter:Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "findTypeAdapter"

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
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->gameTypeList:Ljava/util/List;

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

.method public final getLeftTypeAdapter()Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->leftTypeAdapter:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "leftTypeAdapter"

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

.method public final getMFirstVisiblePosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->mFirstVisiblePosition:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMLastVisibleIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->mLastVisibleIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->page:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPresenter()Lcom/join/kotlin/presenter/FindModlePrensenter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->presenter:Lcom/join/kotlin/presenter/FindModlePrensenter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "presenter"

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

.method public final getRequestArgs()Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->requestArgs:Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "requestArgs"

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

.method public final getSCROLLING()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->SCROLLING:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getSelectedType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->selectedType:I

    .line 2
    .line 3
    return v0
.end method

.method public hidLoading()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/bk;->f:Lcom/join/android/app/mgsim/wufun/databinding/ke0;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ke0;->d:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    const/16 v1, 0x8

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/bk;->d:Lcom/join/android/app/mgsim/wufun/databinding/mj;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/mj;->e:Landroid/widget/LinearLayout;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/bk;->e:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
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
    invoke-static {p1, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/bk;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->setBinding(Lcom/join/android/app/mgsim/wufun/databinding/bk;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/bk;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 26
    .line 27
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 37
    .line 38
    .line 39
    new-instance p1, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->setGameTypeList(Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-direct {p1, p2}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->gameTypeList()Lorg/androidannotations/api/sharedpreferences/p;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Ljava/lang/String;

    .line 65
    .line 66
    const/4 p2, 0x1

    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_0

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    const/4 v0, 0x0

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 79
    :goto_1
    if-nez v0, :cond_2

    .line 80
    .line 81
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 82
    .line 83
    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    new-array p2, p2, [Ljava/lang/Class;

    .line 91
    .line 92
    const-class v2, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 93
    .line 94
    aput-object v2, p2, p3

    .line 95
    .line 96
    const-class v2, Ljava/util/List;

    .line 97
    .line 98
    invoke-virtual {v1, v2, p2}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Ljava/util/List;

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->setGameTypeList(Ljava/util/List;)V

    .line 109
    .line 110
    .line 111
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getGameTypeList()Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_3

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getGameTypeList()Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    new-instance p2, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 126
    .line 127
    const/4 v1, 0x0

    .line 128
    const-string v2, "\u7cbe\u9009"

    .line 129
    .line 130
    const/4 v3, 0x0

    .line 131
    const/4 v4, 0x0

    .line 132
    const/4 v5, 0x1

    .line 133
    move-object v0, p2

    .line 134
    invoke-direct/range {v0 .. v5}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;-><init>(ILjava/lang/String;ILjava/util/List;Z)V

    .line 135
    .line 136
    .line 137
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getGameTypeList()Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    new-instance p2, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 145
    .line 146
    const/4 v1, 0x1

    .line 147
    const-string v2, "\u6a21\u62df\u5668"

    .line 148
    .line 149
    const/4 v3, 0x1

    .line 150
    const/4 v5, 0x0

    .line 151
    move-object v0, p2

    .line 152
    invoke-direct/range {v0 .. v5}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;-><init>(ILjava/lang/String;ILjava/util/List;Z)V

    .line 153
    .line 154
    .line 155
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getGameTypeList()Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    new-instance p2, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 163
    .line 164
    const/4 v1, 0x2

    .line 165
    const-string v2, "\u5b89\u5353"

    .line 166
    .line 167
    const/4 v3, 0x2

    .line 168
    move-object v0, p2

    .line 169
    invoke-direct/range {v0 .. v5}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;-><init>(ILjava/lang/String;ILjava/util/List;Z)V

    .line 170
    .line 171
    .line 172
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getGameTypeList()Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    new-instance p2, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 180
    .line 181
    const/4 v1, 0x3

    .line 182
    const-string v2, "\u5206\u7c7b"

    .line 183
    .line 184
    const/4 v3, 0x3

    .line 185
    move-object v0, p2

    .line 186
    invoke-direct/range {v0 .. v5}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;-><init>(ILjava/lang/String;ILjava/util/List;Z)V

    .line 187
    .line 188
    .line 189
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getGameTypeList()Ljava/util/List;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    new-instance p2, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 197
    .line 198
    const/4 v1, 0x4

    .line 199
    const-string v2, "\u9898\u6750"

    .line 200
    .line 201
    const/4 v3, 0x4

    .line 202
    move-object v0, p2

    .line 203
    invoke-direct/range {v0 .. v5}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;-><init>(ILjava/lang/String;ILjava/util/List;Z)V

    .line 204
    .line 205
    .line 206
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getGameTypeList()Ljava/util/List;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    new-instance p2, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 214
    .line 215
    const/4 v1, 0x5

    .line 216
    const-string v2, "\u73a9\u6cd5"

    .line 217
    .line 218
    const/4 v3, 0x5

    .line 219
    move-object v0, p2

    .line 220
    invoke-direct/range {v0 .. v5}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;-><init>(ILjava/lang/String;ILjava/util/List;Z)V

    .line 221
    .line 222
    .line 223
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getGameTypeList()Ljava/util/List;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    new-instance p2, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 231
    .line 232
    const/4 v1, 0x6

    .line 233
    const-string v2, "\u7279\u8272"

    .line 234
    .line 235
    const/4 v3, 0x6

    .line 236
    move-object v0, p2

    .line 237
    invoke-direct/range {v0 .. v5}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;-><init>(ILjava/lang/String;ILjava/util/List;Z)V

    .line 238
    .line 239
    .line 240
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    :cond_3
    new-instance p1, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;

    .line 244
    .line 245
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    const-string v0, "requireActivity(...)"

    .line 250
    .line 251
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    new-instance v1, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$1;

    .line 255
    .line 256
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$1;-><init>(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getGameTypeList()Ljava/util/List;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-direct {p1, p2, v1, v2}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;-><init>(Landroid/content/Context;Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;Ljava/util/List;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->setLeftTypeAdapter(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/bk;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 274
    .line 275
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getLeftTypeAdapter()Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getLeftTypeAdapter()Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/bk;->d:Lcom/join/android/app/mgsim/wufun/databinding/mj;

    .line 294
    .line 295
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/mj;->g:Landroid/widget/Button;

    .line 296
    .line 297
    const-string p2, "setNetwork"

    .line 298
    .line 299
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    new-instance p2, Lcom/join/kotlin/ui/findgame/m;

    .line 303
    .line 304
    invoke-direct {p2, p0}, Lcom/join/kotlin/ui/findgame/m;-><init>(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;)V

    .line 305
    .line 306
    .line 307
    invoke-static {p1, p2}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/bk;->d:Lcom/join/android/app/mgsim/wufun/databinding/mj;

    .line 315
    .line 316
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/mj;->f:Landroid/widget/ImageView;

    .line 317
    .line 318
    const-string p2, "relodingimag"

    .line 319
    .line 320
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    new-instance p2, Lcom/join/kotlin/ui/findgame/n;

    .line 324
    .line 325
    invoke-direct {p2, p0}, Lcom/join/kotlin/ui/findgame/n;-><init>(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;)V

    .line 326
    .line 327
    .line 328
    invoke-static {p1, p2}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 329
    .line 330
    .line 331
    new-instance p1, Lcom/join/kotlin/presenter/FindModlePrensenter;

    .line 332
    .line 333
    invoke-direct {p1, p0}, Lcom/join/kotlin/presenter/FindModlePrensenter;-><init>(Lcom/join/kotlin/presenter/view/FindHomeView;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->setPresenter(Lcom/join/kotlin/presenter/FindModlePrensenter;)V

    .line 337
    .line 338
    .line 339
    new-instance p1, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;

    .line 340
    .line 341
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 342
    .line 343
    .line 344
    move-result-object p2

    .line 345
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->choiceListData:Ljava/util/List;

    .line 349
    .line 350
    invoke-direct {p1, p2, v1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->setFindClassifyAdapter(Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/bk;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 361
    .line 362
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getFindClassifyAdapter()Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;

    .line 363
    .line 364
    .line 365
    move-result-object p2

    .line 366
    invoke-virtual {p1, p2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/bk;->h:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 374
    .line 375
    invoke-virtual {p1, p3}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingMoreEnabled(Z)V

    .line 376
    .line 377
    .line 378
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 379
    .line 380
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 381
    .line 382
    .line 383
    move-result-object p2

    .line 384
    const/4 p3, 0x6

    .line 385
    invoke-direct {p1, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 386
    .line 387
    .line 388
    new-instance p2, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$4;

    .line 389
    .line 390
    invoke-direct {p2, p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$4;-><init>(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 397
    .line 398
    .line 399
    move-result-object p2

    .line 400
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/bk;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 401
    .line 402
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/bk;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 410
    .line 411
    new-instance p2, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$5;

    .line 412
    .line 413
    invoke-direct {p2, p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$5;-><init>(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 417
    .line 418
    .line 419
    new-instance p1, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;

    .line 420
    .line 421
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 422
    .line 423
    .line 424
    move-result-object p2

    .line 425
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getId()I

    .line 429
    .line 430
    .line 431
    move-result p3

    .line 432
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->datas:Ljava/util/List;

    .line 433
    .line 434
    new-instance v1, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$6;

    .line 435
    .line 436
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$6;-><init>(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;)V

    .line 437
    .line 438
    .line 439
    invoke-direct {p1, p2, p3, v0, v1}, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->setFindTypeAdapter(Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 446
    .line 447
    .line 448
    move-result-object p1

    .line 449
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/bk;->h:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 450
    .line 451
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getFindTypeAdapter()Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;

    .line 452
    .line 453
    .line 454
    move-result-object p2

    .line 455
    invoke-virtual {p1, p2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 459
    .line 460
    .line 461
    move-result-object p1

    .line 462
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/bk;->a()Landroid/widget/LinearLayout;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/psk/kotlin/ext/CommonExtKt;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_5

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->choiceListData:Ljava/util/List;

    .line 29
    .line 30
    check-cast p1, Ljava/util/Collection;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 p1, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 45
    :goto_1
    if-nez p1, :cond_4

    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->choiceListData:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-gtz p1, :cond_5

    .line 54
    .line 55
    :cond_4
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/bk;->f:Lcom/join/android/app/mgsim/wufun/databinding/ke0;

    .line 60
    .line 61
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ke0;->d:Landroid/widget/LinearLayout;

    .line 62
    .line 63
    const/16 v1, 0x8

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/bk;->d:Lcom/join/android/app/mgsim/wufun/databinding/mj;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/mj;->e:Landroid/widget/LinearLayout;

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/bk;->e:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 84
    .line 85
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    :cond_5
    :goto_2
    return-void
.end method

.method public final onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 1
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
    move-result p1

    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x5

    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x6

    .line 22
    if-eq p1, v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x7

    .line 25
    if-eq p1, v0, :cond_0

    .line 26
    .line 27
    const/16 v0, 0x2a

    .line 28
    .line 29
    if-eq p1, v0, :cond_0

    .line 30
    .line 31
    const/16 v0, 0x30

    .line 32
    .line 33
    if-eq p1, v0, :cond_0

    .line 34
    .line 35
    packed-switch p1, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->updateDownStateList()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getFindClassifyAdapter()Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onLoadDataSuccess(ILcom/join/kotlin/ui/findgame/data/FindChoiceResultData;)V
    .locals 0
    .param p2    # Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/presenter/view/FindHomeView$DefaultImpls;->onLoadDataSuccess(Lcom/join/kotlin/presenter/view/FindHomeView;ILcom/join/kotlin/ui/findgame/data/FindChoiceResultData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onLoadDataSuccessV9(ILcom/join/kotlin/ui/findgame/data/FindClassifyResultData;)V
    .locals 10
    .param p2    # Lcom/join/kotlin/ui/findgame/data/FindClassifyResultData;
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_8

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_5

    .line 19
    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 21
    if-eq p1, v0, :cond_1

    .line 22
    .line 23
    iget v1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->page:I

    .line 24
    .line 25
    if-eq p1, v1, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    if-ne p1, v0, :cond_5

    .line 29
    .line 30
    iput v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->page:I

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/bk;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->refreshComplete()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->choiceListData:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->allDownloadBeans:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/FindClassifyResultData;->getGame_type()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->setGameTypeList(Ljava/util/List;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getGameTypeList()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    new-instance v7, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    const-string v3, "\u7cbe\u9009"

    .line 66
    .line 67
    const/4 v4, 0x0

    .line 68
    const/4 v5, 0x0

    .line 69
    const/4 v6, 0x1

    .line 70
    move-object v1, v7

    .line 71
    invoke-direct/range {v1 .. v6}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;-><init>(ILjava/lang/String;ILjava/util/List;Z)V

    .line 72
    .line 73
    .line 74
    const/4 v1, 0x0

    .line 75
    invoke-interface {p1, v1, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :try_start_0
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-direct {p1, v2}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->gameTypeList()Lorg/androidannotations/api/sharedpreferences/p;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getGameTypeList()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {p1, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catch_0
    move-exception p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    :goto_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getLeftTypeAdapter()Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/FindClassifyResultData;->getBanner()Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Ljava/util/Collection;

    .line 123
    .line 124
    if-eqz p1, :cond_3

    .line 125
    .line 126
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-eqz p1, :cond_2

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_2
    const/4 p1, 0x0

    .line 134
    goto :goto_2

    .line 135
    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 136
    :goto_2
    if-nez p1, :cond_4

    .line 137
    .line 138
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/FindClassifyResultData;->getBanner()Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    check-cast p1, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;

    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;->getGame_info()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    const/16 v3, 0x8f

    .line 153
    .line 154
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;->getGame_info()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 162
    .line 163
    .line 164
    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->allDownloadBeans:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;->getGame_info()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->choiceListData:Ljava/util/List;

    .line 174
    .line 175
    new-instance v9, Lcom/psk/kotlin/util/CommonListMainData;

    .line 176
    .line 177
    const/4 v3, 0x3

    .line 178
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/FindClassifyResultData;->getBanner()Ljava/util/List;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    const-string v1, "get(...)"

    .line 187
    .line 188
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    const/4 v5, 0x0

    .line 192
    const/4 v6, 0x0

    .line 193
    const/16 v7, 0xc

    .line 194
    .line 195
    const/4 v8, 0x0

    .line 196
    move-object v2, v9

    .line 197
    invoke-direct/range {v2 .. v8}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 198
    .line 199
    .line 200
    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    :cond_4
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->updateDownStateList()V

    .line 204
    .line 205
    .line 206
    :cond_5
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/FindClassifyResultData;->getCollection_list()Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    const-string v1, "getCollection_list(...)"

    .line 211
    .line 212
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    check-cast p1, Ljava/util/Collection;

    .line 216
    .line 217
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    xor-int/2addr p1, v0

    .line 222
    if-eqz p1, :cond_6

    .line 223
    .line 224
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/bk;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 229
    .line 230
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->loadMoreComplete()V

    .line 231
    .line 232
    .line 233
    iget p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->page:I

    .line 234
    .line 235
    add-int/2addr p1, v0

    .line 236
    iput p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->page:I

    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_6
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/bk;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 244
    .line 245
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 246
    .line 247
    .line 248
    :goto_3
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/FindClassifyResultData;->getCollection_list()Ljava/util/List;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    if-eqz p1, :cond_7

    .line 253
    .line 254
    check-cast p1, Ljava/lang/Iterable;

    .line 255
    .line 256
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 261
    .line 262
    .line 263
    move-result p2

    .line 264
    if-eqz p2, :cond_7

    .line 265
    .line 266
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object p2

    .line 270
    move-object v2, p2

    .line 271
    check-cast v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 272
    .line 273
    iget-object p2, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->choiceListData:Ljava/util/List;

    .line 274
    .line 275
    new-instance v7, Lcom/psk/kotlin/util/CommonListMainData;

    .line 276
    .line 277
    const/4 v1, 0x7

    .line 278
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    const/4 v3, 0x0

    .line 282
    const/4 v4, 0x0

    .line 283
    const/16 v5, 0xc

    .line 284
    .line 285
    const/4 v6, 0x0

    .line 286
    move-object v0, v7

    .line 287
    invoke-direct/range {v0 .. v6}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 288
    .line 289
    .line 290
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    goto :goto_4

    .line 294
    :cond_7
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getFindClassifyAdapter()Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 299
    .line 300
    .line 301
    :cond_8
    :goto_5
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    .line 10
    .line 11
    invoke-direct {p1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->setRequestArgs(Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getRequestArgs()Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 p2, 0x1

    .line 22
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setPage(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getRequestArgs()Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setUid(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getPresenter()Lcom/join/kotlin/presenter/FindModlePrensenter;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getRequestArgs()Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p1, v0, v1}, Lcom/join/kotlin/presenter/FindModlePrensenter;->loadClassfyDatas(Landroid/content/Context;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/bk;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setPullRefreshEnabled(Z)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/bk;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 80
    .line 81
    invoke-virtual {p1, p2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingMoreEnabled(Z)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/bk;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 89
    .line 90
    const/16 p2, 0xa

    .line 91
    .line 92
    invoke-virtual {p1, p2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setPreLoadCount(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/bk;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 100
    .line 101
    new-instance p2, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;

    .line 102
    .line 103
    invoke-direct {p2, p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;-><init>(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public final setBinding(Lcom/join/android/app/mgsim/wufun/databinding/bk;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/bk;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 7
    .line 8
    return-void
.end method

.method public final setChoiceListData(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->choiceListData:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setDatas(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->datas:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setFindClassifyAdapter(Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->findClassifyAdapter:Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;

    .line 7
    .line 8
    return-void
.end method

.method public final setFindTypeAdapter(Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->findTypeAdapter:Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->gameTypeList:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setLeftTypeAdapter(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->leftTypeAdapter:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;

    .line 7
    .line 8
    return-void
.end method

.method public final setMFirstVisiblePosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->mFirstVisiblePosition:I

    .line 2
    .line 3
    return-void
.end method

.method public final setMLastVisibleIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->mLastVisibleIndex:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->page:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPresenter(Lcom/join/kotlin/presenter/FindModlePrensenter;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/presenter/FindModlePrensenter;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->presenter:Lcom/join/kotlin/presenter/FindModlePrensenter;

    .line 7
    .line 8
    return-void
.end method

.method public final setRequestArgs(Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V
    .locals 1
    .param p1    # Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->requestArgs:Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    .line 7
    .line 8
    return-void
.end method

.method public final setSCROLLING(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->SCROLLING:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setSelectedType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->selectedType:I

    .line 2
    .line 3
    return-void
.end method

.method public showLoding()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/bk;->f:Lcom/join/android/app/mgsim/wufun/databinding/ke0;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/ke0;->d:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/bk;->d:Lcom/join/android/app/mgsim/wufun/databinding/mj;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/mj;->e:Landroid/widget/LinearLayout;

    .line 33
    .line 34
    const/16 v1, 0x8

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/bk;->e:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method public final showTypeList(I)V
    .locals 10

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/bk;->e:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/bk;->h:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getFindClassifyAdapter()Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;

    .line 25
    .line 26
    .line 27
    goto/16 :goto_10

    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/bk;->e:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/bk;->h:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->datas:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const v2, 0x7f071310

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const/4 v2, 0x1

    .line 64
    packed-switch p1, :pswitch_data_0

    .line 65
    .line 66
    .line 67
    goto/16 :goto_f

    .line 68
    .line 69
    :pswitch_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/bk;->h:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 74
    .line 75
    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    const/4 v6, 0x3

    .line 82
    invoke-direct {v4, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 86
    .line 87
    .line 88
    :goto_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/bk;->h:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 93
    .line 94
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-lez v3, :cond_1

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/bk;->h:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 105
    .line 106
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/bk;->h:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 115
    .line 116
    new-instance v4, Lcom/psk/kotlin/util/GridSpacingItemDecoration;

    .line 117
    .line 118
    invoke-direct {v4, v6, v0, v1}, Lcom/psk/kotlin/util/GridSpacingItemDecoration;-><init>(IIZ)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getGameTypeList()Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Ljava/lang/Iterable;

    .line 129
    .line 130
    new-instance v3, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-eqz v4, :cond_4

    .line 144
    .line 145
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    move-object v5, v4

    .line 150
    check-cast v5, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 151
    .line 152
    invoke-virtual {v5}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getType()I

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    if-ne v5, p1, :cond_3

    .line 157
    .line 158
    const/4 v5, 0x1

    .line 159
    goto :goto_2

    .line 160
    :cond_3
    const/4 v5, 0x0

    .line 161
    :goto_2
    if-eqz v5, :cond_2

    .line 162
    .line 163
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-eqz v2, :cond_5

    .line 181
    .line 182
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    check-cast v2, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 187
    .line 188
    invoke-virtual {v2}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getSub_game_type()Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    check-cast v2, Ljava/lang/Iterable;

    .line 196
    .line 197
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 198
    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-eqz v1, :cond_10

    .line 210
    .line 211
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    move-object v4, v1

    .line 216
    check-cast v4, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 217
    .line 218
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->datas:Ljava/util/List;

    .line 219
    .line 220
    new-instance v9, Lcom/psk/kotlin/util/CommonListMainData;

    .line 221
    .line 222
    const/4 v3, 0x7

    .line 223
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    const/4 v5, 0x0

    .line 227
    const/4 v6, 0x0

    .line 228
    const/16 v7, 0xc

    .line 229
    .line 230
    const/4 v8, 0x0

    .line 231
    move-object v2, v9

    .line 232
    invoke-direct/range {v2 .. v8}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 233
    .line 234
    .line 235
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    goto :goto_4

    .line 239
    :pswitch_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/bk;->h:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 244
    .line 245
    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 246
    .line 247
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    invoke-direct {v4, v5, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 255
    .line 256
    .line 257
    :goto_5
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/bk;->h:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 262
    .line 263
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    if-lez v3, :cond_6

    .line 268
    .line 269
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/bk;->h:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 274
    .line 275
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    .line 276
    .line 277
    .line 278
    goto :goto_5

    .line 279
    :cond_6
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/bk;->h:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 284
    .line 285
    new-instance v4, Lcom/psk/kotlin/util/GridSpacingItemDecoration;

    .line 286
    .line 287
    invoke-direct {v4, v2, v0, v1}, Lcom/psk/kotlin/util/GridSpacingItemDecoration;-><init>(IIZ)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getGameTypeList()Ljava/util/List;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    check-cast v0, Ljava/lang/Iterable;

    .line 298
    .line 299
    new-instance v3, Ljava/util/ArrayList;

    .line 300
    .line 301
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .line 303
    .line 304
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    :cond_7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    if-eqz v4, :cond_9

    .line 313
    .line 314
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    move-object v5, v4

    .line 319
    check-cast v5, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 320
    .line 321
    invoke-virtual {v5}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getType()I

    .line 322
    .line 323
    .line 324
    move-result v5

    .line 325
    if-ne v5, p1, :cond_8

    .line 326
    .line 327
    const/4 v5, 0x1

    .line 328
    goto :goto_7

    .line 329
    :cond_8
    const/4 v5, 0x0

    .line 330
    :goto_7
    if-eqz v5, :cond_7

    .line 331
    .line 332
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    goto :goto_6

    .line 336
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    .line 337
    .line 338
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .line 340
    .line 341
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    if-eqz v2, :cond_a

    .line 350
    .line 351
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    check-cast v2, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 356
    .line 357
    invoke-virtual {v2}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getSub_game_type()Ljava/util/List;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 362
    .line 363
    .line 364
    check-cast v2, Ljava/lang/Iterable;

    .line 365
    .line 366
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 367
    .line 368
    .line 369
    goto :goto_8

    .line 370
    :cond_a
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    if-eqz v1, :cond_10

    .line 379
    .line 380
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    move-object v4, v1

    .line 385
    check-cast v4, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 386
    .line 387
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->datas:Ljava/util/List;

    .line 388
    .line 389
    new-instance v9, Lcom/psk/kotlin/util/CommonListMainData;

    .line 390
    .line 391
    const/4 v3, 0x3

    .line 392
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    const/4 v5, 0x0

    .line 396
    const/4 v6, 0x0

    .line 397
    const/16 v7, 0xc

    .line 398
    .line 399
    const/4 v8, 0x0

    .line 400
    move-object v2, v9

    .line 401
    invoke-direct/range {v2 .. v8}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 402
    .line 403
    .line 404
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    goto :goto_9

    .line 408
    :pswitch_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/bk;->h:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 413
    .line 414
    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 415
    .line 416
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 417
    .line 418
    .line 419
    move-result-object v5

    .line 420
    const/4 v6, 0x2

    .line 421
    invoke-direct {v4, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 425
    .line 426
    .line 427
    :goto_a
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/bk;->h:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 432
    .line 433
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 434
    .line 435
    .line 436
    move-result v3

    .line 437
    if-lez v3, :cond_b

    .line 438
    .line 439
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 440
    .line 441
    .line 442
    move-result-object v3

    .line 443
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/bk;->h:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 444
    .line 445
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    .line 446
    .line 447
    .line 448
    goto :goto_a

    .line 449
    :cond_b
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 450
    .line 451
    .line 452
    move-result-object v3

    .line 453
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/bk;->h:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 454
    .line 455
    new-instance v4, Lcom/psk/kotlin/util/GridSpacingItemDecoration;

    .line 456
    .line 457
    invoke-direct {v4, v6, v0, v1}, Lcom/psk/kotlin/util/GridSpacingItemDecoration;-><init>(IIZ)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getGameTypeList()Ljava/util/List;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    check-cast v0, Ljava/lang/Iterable;

    .line 468
    .line 469
    new-instance v3, Ljava/util/ArrayList;

    .line 470
    .line 471
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .line 473
    .line 474
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    :cond_c
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 479
    .line 480
    .line 481
    move-result v4

    .line 482
    if-eqz v4, :cond_e

    .line 483
    .line 484
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v4

    .line 488
    move-object v5, v4

    .line 489
    check-cast v5, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 490
    .line 491
    invoke-virtual {v5}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getType()I

    .line 492
    .line 493
    .line 494
    move-result v5

    .line 495
    if-ne v5, p1, :cond_d

    .line 496
    .line 497
    const/4 v5, 0x1

    .line 498
    goto :goto_c

    .line 499
    :cond_d
    const/4 v5, 0x0

    .line 500
    :goto_c
    if-eqz v5, :cond_c

    .line 501
    .line 502
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    goto :goto_b

    .line 506
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    .line 507
    .line 508
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 509
    .line 510
    .line 511
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 512
    .line 513
    .line 514
    move-result-object v1

    .line 515
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 516
    .line 517
    .line 518
    move-result v2

    .line 519
    if-eqz v2, :cond_f

    .line 520
    .line 521
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v2

    .line 525
    check-cast v2, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 526
    .line 527
    invoke-virtual {v2}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getSub_game_type()Ljava/util/List;

    .line 528
    .line 529
    .line 530
    move-result-object v2

    .line 531
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 532
    .line 533
    .line 534
    check-cast v2, Ljava/lang/Iterable;

    .line 535
    .line 536
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 537
    .line 538
    .line 539
    goto :goto_d

    .line 540
    :cond_f
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 545
    .line 546
    .line 547
    move-result v1

    .line 548
    if-eqz v1, :cond_10

    .line 549
    .line 550
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    move-object v4, v1

    .line 555
    check-cast v4, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 556
    .line 557
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->datas:Ljava/util/List;

    .line 558
    .line 559
    new-instance v9, Lcom/psk/kotlin/util/CommonListMainData;

    .line 560
    .line 561
    const/4 v3, 0x3

    .line 562
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 563
    .line 564
    .line 565
    const/4 v5, 0x0

    .line 566
    const/4 v6, 0x0

    .line 567
    const/16 v7, 0xc

    .line 568
    .line 569
    const/4 v8, 0x0

    .line 570
    move-object v2, v9

    .line 571
    invoke-direct/range {v2 .. v8}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 572
    .line 573
    .line 574
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    goto :goto_e

    .line 578
    :cond_10
    :goto_f
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getFindTypeAdapter()Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;->updateDatas(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    .line 584
    .line 585
    :catch_0
    :goto_10
    return-void

    .line 586
    nop

    .line 587
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final updateDownStateList()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->allDownloadBeans:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

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

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

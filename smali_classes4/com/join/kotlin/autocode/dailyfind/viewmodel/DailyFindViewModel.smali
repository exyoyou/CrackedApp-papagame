.class public final Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;
.super Lcom/join/kotlin/base/viewmodel/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDailyFindViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DailyFindViewModel.kt\ncom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,324:1\n1878#2,2:325\n1869#2,2:327\n1869#2:329\n1869#2,2:330\n1870#2:332\n1869#2,2:333\n1880#2:335\n1869#2,2:336\n*S KotlinDebug\n*F\n+ 1 DailyFindViewModel.kt\ncom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel\n*L\n63#1:325,2\n115#1:327,2\n163#1:329\n166#1:330,2\n163#1:332\n215#1:333,2\n63#1:335\n312#1:336,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\"\u0010B\u001a\u00020?2\u0006\u0010C\u001a\u0002062\u0008\u0008\u0002\u0010D\u001a\u00020>2\u0008\u0010E\u001a\u0004\u0018\u00010\u0006J\u001a\u0010\u001b\u001a\u00020?2\u0008\u0008\u0002\u0010D\u001a\u00020>2\u0008\u0010F\u001a\u0004\u0018\u00010=R\u001f\u0010\u0004\u001a\u0010\u0012\u000c\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000fR\u001d\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00140\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\tR.\u0010\u0017\u001a\u0016\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018j\n\u0012\u0004\u0012\u00020\u0019\u0018\u0001`\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR*\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0018j\u0008\u0012\u0004\u0012\u00020\u0006`\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u001c\"\u0004\u0008!\u0010\u001eR\u0017\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020$0#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u001a\u0010\'\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u001a\u0010,\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010)\"\u0004\u0008.\u0010+R\u001c\u0010/\u001a\u0004\u0018\u000100X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u001a\u00105\u001a\u000206X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R1\u0010;\u001a\"\u0012\u0004\u0012\u000206\u0012\u0006\u0012\u0004\u0018\u00010=\u0012\u0004\u0012\u00020>\u0012\u0004\u0012\u00020>\u0012\u0004\u0012\u00020?0<\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008@\u0010A\u00a8\u0006G"
    }
    d2 = {
        "Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;",
        "Lcom/join/kotlin/base/viewmodel/BaseViewModel;",
        "<init>",
        "()V",
        "title",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "kotlin.jvm.PlatformType",
        "getTitle",
        "()Landroidx/lifecycle/MutableLiveData;",
        "pageExtBean",
        "Lcom/join/mgps/dto/ExtBean;",
        "getPageExtBean",
        "()Lcom/join/mgps/dto/ExtBean;",
        "setPageExtBean",
        "(Lcom/join/mgps/dto/ExtBean;)V",
        "parentExtBean",
        "getParentExtBean",
        "setParentExtBean",
        "listData",
        "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;",
        "Lcom/join/mgps/dto/CommonMultiItemBean;",
        "getListData",
        "rankListData",
        "Ljava/util/ArrayList;",
        "Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListItemBean;",
        "Lkotlin/collections/ArrayList;",
        "getRankListData",
        "()Ljava/util/ArrayList;",
        "setRankListData",
        "(Ljava/util/ArrayList;)V",
        "timeLines",
        "getTimeLines",
        "setTimeLines",
        "allDownloadAppHomeBeans",
        "",
        "Lcom/join/kotlin/base/impl/BaseDownloadable;",
        "getAllDownloadAppHomeBeans",
        "()Ljava/util/List;",
        "lastDateStr",
        "getLastDateStr",
        "()Ljava/lang/String;",
        "setLastDateStr",
        "(Ljava/lang/String;)V",
        "startDateStr",
        "getStartDateStr",
        "setStartDateStr",
        "curClickDateItem",
        "Lcom/join/kotlin/autocode/dailyfind/model/DateItem;",
        "getCurClickDateItem",
        "()Lcom/join/kotlin/autocode/dailyfind/model/DateItem;",
        "setCurClickDateItem",
        "(Lcom/join/kotlin/autocode/dailyfind/model/DateItem;)V",
        "loading",
        "",
        "getLoading",
        "()Z",
        "setLoading",
        "(Z)V",
        "dailyDiscoverSuccess",
        "Lkotlin/Function4;",
        "Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;",
        "",
        "",
        "getDailyDiscoverSuccess",
        "()Lkotlin/jvm/functions/Function4;",
        "getDailyDiscover",
        "refresh",
        "curDay",
        "date",
        "dailyData",
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
        "SMAP\nDailyFindViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DailyFindViewModel.kt\ncom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,324:1\n1878#2,2:325\n1869#2,2:327\n1869#2:329\n1869#2,2:330\n1870#2:332\n1869#2,2:333\n1880#2:335\n1869#2,2:336\n*S KotlinDebug\n*F\n+ 1 DailyFindViewModel.kt\ncom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel\n*L\n63#1:325,2\n115#1:327,2\n163#1:329\n166#1:330,2\n163#1:332\n215#1:333,2\n63#1:335\n312#1:336,2\n*E\n"
    }
.end annotation


# instance fields
.field private final allDownloadAppHomeBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/kotlin/base/impl/BaseDownloadable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private curClickDateItem:Lcom/join/kotlin/autocode/dailyfind/model/DateItem;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final dailyDiscoverSuccess:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "Ljava/lang/Boolean;",
            "Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lastDateStr:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final listData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState<",
            "Lcom/join/mgps/dto/CommonMultiItemBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private loading:Z

.field private pageExtBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private parentExtBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private rankListData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListItemBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private startDateStr:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private timeLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final title:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 5
    .line 6
    const-string v1, "\u6bcf\u65e5\u63a8\u8350"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "dailyRecommend"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "setChatId(...)"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 30
    .line 31
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 32
    .line 33
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 37
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->timeLines:Ljava/util/ArrayList;

    .line 44
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->allDownloadAppHomeBeans:Ljava/util/List;

    .line 51
    .line 52
    const-string v0, ""

    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->lastDateStr:Ljava/lang/String;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->startDateStr:Ljava/lang/String;

    .line 57
    .line 58
    new-instance v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/e;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/e;-><init>(Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->dailyDiscoverSuccess:Lkotlin/jvm/functions/Function4;

    .line 64
    .line 65
    return-void
.end method

.method public static synthetic a(Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;ILcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->getRankListData$lambda$18(Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;ILcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;ILcom/join/kotlin/autocode/dailyfind/model/DailyRankListDataBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->getRankListData$lambda$17(Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;ILcom/join/kotlin/autocode/dailyfind/model/DailyRankListDataBean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->getDailyDiscover$lambda$13(Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;ZLcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;II)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->dailyDiscoverSuccess$lambda$11(Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;ZLcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;II)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final dailyDiscoverSuccess$lambda$11(Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;ZLcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;II)Lkotlin/Unit;
    .locals 32

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v2, v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->timeLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/16 v2, 0x3e8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p2, :cond_10

    .line 3
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;->getDaily_discover_list()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_10

    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_10

    check-cast v6, Ljava/lang/Iterable;

    .line 4
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v7, 0x1

    if-gez v7, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v9, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverListItem;

    .line 5
    invoke-virtual {v9}, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverListItem;->getAdd_time()Ljava/lang/Long;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    int-to-long v13, v2

    mul-long v11, v11, v13

    goto :goto_1

    :cond_2
    const-wide/16 v11, 0x0

    :goto_1
    const-string v13, "yyyy.MM.dd"

    .line 6
    invoke-static {v11, v12, v13}, Lcom/join/mgps/Util/e0;->D(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f07141b

    const/4 v13, 0x6

    if-eqz p1, :cond_3

    if-eqz v7, :cond_4

    .line 7
    :cond_3
    iget-object v14, v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->timeLines:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v14, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 9
    invoke-static {}, Lcom/MApplication;->n()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    .line 10
    invoke-direct {v14, v13, v15}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 11
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v14, v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->timeLines:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v14, Lcom/join/mgps/dto/CommonMultiItemBean;

    const/4 v15, 0x5

    .line 14
    invoke-virtual {v9}, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverListItem;->getAdd_time()Ljava/lang/Long;

    move-result-object v2

    .line 15
    invoke-direct {v14, v15, v2}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 16
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v2, v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->timeLines:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v2, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 19
    invoke-static {}, Lcom/MApplication;->n()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0713ac

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    .line 20
    invoke-direct {v2, v13, v14}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_4
    invoke-virtual {v9}, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverListItem;->getGame_list()Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 23
    iget-object v14, v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->timeLines:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {v2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v14

    iget-object v15, v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v14, v15}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v14

    const-string v15, "\u609f\u996d\u9996\u63a8"

    invoke-virtual {v14, v15}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v14

    .line 25
    invoke-virtual {v14, v11}, Lcom/join/mgps/dto/ExtBean;->setSopNo(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 26
    sget-object v14, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    .line 27
    new-instance v14, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;

    move-object/from16 v16, v14

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v21}, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;-><init>(Lcom/join/mgps/dto/GamedetialModleFourBean;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    new-instance v15, Lcom/join/mgps/dto/CommonMultiItemBean;

    invoke-direct {v15, v5, v14}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 29
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v14, v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->timeLines:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v14, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 32
    invoke-static {}, Lcom/MApplication;->n()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v3, 0x7f0713e3

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 33
    invoke-direct {v14, v13, v3}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 34
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v3, v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->allDownloadAppHomeBeans:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_5
    invoke-virtual {v9}, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverListItem;->getThenew_game_list()Ljava/util/ArrayList;

    move-result-object v2

    const-string v14, "#666666"

    const-string v15, "setSopNo(...)"

    if-eqz v2, :cond_8

    .line 37
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_8

    .line 38
    iget-object v5, v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->timeLines:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    const-string v13, "\u4eca\u65e5\u9996\u53d1"

    if-eqz v17, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 40
    invoke-virtual/range {v17 .. v17}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v12

    iget-object v3, v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v12, v3}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v3

    .line 41
    invoke-virtual {v3, v11}, Lcom/join/mgps/dto/ExtBean;->setSopNo(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    const v12, 0x7f07141b

    const/4 v13, 0x6

    goto :goto_2

    .line 42
    :cond_6
    new-instance v3, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 43
    new-instance v5, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {v5}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    iget-object v12, v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v5, v12}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v5

    invoke-virtual {v5, v13}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v5

    .line 44
    invoke-virtual {v5, v11}, Lcom/join/mgps/dto/ExtBean;->setSopNo(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v5

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v22, 0x6

    const/16 v23, 0x0

    move-object/from16 v17, v3

    move-object/from16 v18, v2

    move-object/from16 v21, v5

    .line 45
    invoke-direct/range {v17 .. v23}, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;-><init>(Ljava/util/List;Landroid/text/SpannableString;ILcom/join/mgps/dto/ExtBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    invoke-virtual {v3}, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->getSpannableText()Landroid/text/SpannableString;

    move-result-object v5

    if-nez v5, :cond_7

    .line 47
    new-instance v5, Landroid/text/SpannableString;

    const-string v12, "\u67e5\u770b\u66f4\u591a\u9996\u53d1\u6e38\u620f > "

    invoke-direct {v5, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v5}, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->setSpannableText(Landroid/text/SpannableString;)V

    .line 48
    invoke-virtual {v3}, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->getSpannableText()Landroid/text/SpannableString;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 49
    new-instance v12, Lcom/join/mgps/widget/textview/a;

    .line 50
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    const/high16 v19, 0x40400000    # 3.0f

    const/16 v20, 0x0

    const/16 v21, 0x4

    const/16 v22, 0x0

    move-object/from16 v17, v12

    .line 51
    invoke-direct/range {v17 .. v22}, Lcom/join/mgps/widget/textview/a;-><init>(IFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v13, 0xa

    move-object/from16 v17, v6

    const/16 v6, 0x21

    .line 52
    invoke-virtual {v5, v12, v4, v13, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_7
    move-object/from16 v17, v6

    .line 53
    :goto_3
    invoke-static {}, Lcom/MApplication;->n()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f071311

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-static {}, Lcom/MApplication;->n()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v12, 0x7f071294

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 54
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    int-to-float v12, v12

    mul-float v6, v6, v12

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 55
    invoke-virtual {v3, v5}, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->setItemHeight(I)V

    .line 56
    new-instance v5, Lcom/join/mgps/dto/CommonMultiItemBean;

    const/4 v6, 0x2

    invoke-direct {v5, v6, v3}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 57
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v3, v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->allDownloadAppHomeBeans:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_8
    move-object/from16 v17, v6

    :goto_4
    if-eqz p1, :cond_d

    .line 59
    iget-object v2, v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->rankListData:Ljava/util/ArrayList;

    if-eqz v2, :cond_d

    if-nez v7, :cond_d

    if-nez v1, :cond_d

    .line 60
    iget-object v2, v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->timeLines:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v2, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 62
    invoke-static {}, Lcom/MApplication;->n()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f07141b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v5, 0x6

    .line 63
    invoke-direct {v2, v5, v3}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 64
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v2, v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->timeLines:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v2, v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->rankListData:Ljava/util/ArrayList;

    if-eqz v2, :cond_a

    .line 67
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListItemBean;

    .line 68
    new-instance v5, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {v5}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    iget-object v6, v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v5

    invoke-virtual {v3}, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListItemBean;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v5

    .line 69
    invoke-virtual {v5, v11}, Lcom/join/mgps/dto/ExtBean;->setSopNo(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v5

    .line 70
    invoke-virtual {v3, v5}, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListItemBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 71
    invoke-virtual {v3}, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListItemBean;->getGame_list()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 72
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 73
    invoke-virtual {v6}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v6

    iget-object v7, v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v6

    invoke-virtual {v3}, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListItemBean;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v6

    .line 74
    invoke-virtual {v6, v11}, Lcom/join/mgps/dto/ExtBean;->setSopNo(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    goto :goto_5

    .line 75
    :cond_a
    new-instance v2, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;

    .line 76
    iget-object v3, v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->rankListData:Ljava/util/ArrayList;

    const/16 v27, 0x0

    const/16 v28, 0x0

    .line 77
    new-instance v5, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {v5}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    iget-object v6, v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v5

    .line 78
    invoke-virtual {v5, v11}, Lcom/join/mgps/dto/ExtBean;->setSopNo(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v5

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v30, 0xc

    const/16 v31, 0x0

    move-object/from16 v24, v2

    move/from16 v25, p4

    move-object/from16 v26, v3

    move-object/from16 v29, v5

    .line 79
    invoke-direct/range {v24 .. v31}, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/text/SpannableString;Lcom/join/mgps/dto/ExtBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 80
    invoke-virtual {v2}, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;->getSpannableText()Landroid/text/SpannableString;

    move-result-object v3

    if-nez v3, :cond_c

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u67e5\u770b\u66f4\u591a"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v2}, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;->getRankListData()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v2}, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;->getSelectedIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListItemBean;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListItemBean;->getTitle()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_b

    const-string v19, "\u699c"

    const-string v20, ""

    const/16 v21, 0x0

    const/16 v22, 0x4

    const/16 v23, 0x0

    invoke-static/range {v18 .. v23}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_b
    const/4 v5, 0x0

    .line 83
    :goto_6
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u6e38\u620f > "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 84
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v5}, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;->setSpannableText(Landroid/text/SpannableString;)V

    .line 85
    invoke-virtual {v2}, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;->getSpannableText()Landroid/text/SpannableString;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 86
    new-instance v6, Lcom/join/mgps/widget/textview/a;

    .line 87
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    const/high16 v20, 0x40400000    # 3.0f

    const/16 v21, 0x0

    const/16 v22, 0x4

    const/16 v23, 0x0

    move-object/from16 v18, v6

    .line 88
    invoke-direct/range {v18 .. v23}, Lcom/join/mgps/widget/textview/a;-><init>(IFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 89
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    const/16 v7, 0x21

    .line 90
    invoke-virtual {v5, v6, v4, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 91
    :cond_c
    new-instance v3, Lcom/join/mgps/dto/CommonMultiItemBean;

    const/4 v5, 0x3

    invoke-direct {v3, v5, v2}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 92
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_d
    invoke-virtual {v9}, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverListItem;->getRecommend_game_list()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 94
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v5, 0x1

    xor-int/2addr v3, v5

    if-eqz v3, :cond_f

    .line 95
    iget-object v3, v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->timeLines:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v3, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 97
    invoke-static {}, Lcom/MApplication;->n()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07141b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x6

    .line 98
    invoke-direct {v3, v6, v5}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 99
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "\u731c\u4f60\u559c\u6b22"

    if-eqz v5, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 101
    invoke-virtual {v5}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v5

    iget-object v7, v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v5, v7}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v5

    .line 102
    invoke-virtual {v5, v11}, Lcom/join/mgps/dto/ExtBean;->setSopNo(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    goto :goto_7

    .line 103
    :cond_e
    new-instance v3, Lcom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBean;

    .line 104
    new-instance v5, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {v5}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    iget-object v7, v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v5, v7}, Lcom/join/mgps/dto/ExtBean;->itemWithParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v5

    .line 105
    invoke-virtual {v5, v11}, Lcom/join/mgps/dto/ExtBean;->setSopNo(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    move-result-object v5

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 106
    invoke-direct {v3, v6, v2, v5}, Lcom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBean;-><init>(Ljava/util/List;Ljava/util/List;Lcom/join/mgps/dto/ExtBean;)V

    const/4 v5, 0x1

    .line 107
    invoke-static {v3, v4, v5, v6}, Lcom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBean;->firstBatch$default(Lcom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBean;IILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/join/kotlin/autocode/dailyfind/model/DailyGuessGameBean;->setCurItems(Ljava/util/List;)V

    .line 108
    iget-object v5, v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->timeLines:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v5, Lcom/join/mgps/dto/CommonMultiItemBean;

    const/4 v7, 0x4

    invoke-direct {v5, v7, v3}, Lcom/join/mgps/dto/CommonMultiItemBean;-><init>(ILjava/lang/Object;)V

    .line 110
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v3, v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->allDownloadAppHomeBeans:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_8

    :cond_f
    const/4 v6, 0x0

    :goto_8
    move v7, v10

    move-object/from16 v6, v17

    const/16 v2, 0x3e8

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_10
    const/4 v6, 0x0

    if-eqz p2, :cond_11

    .line 112
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;->getDaily_discover_list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverListItem;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverListItem;->getAdd_time()Ljava/lang/Long;

    move-result-object v3

    goto :goto_9

    :cond_11
    move-object v3, v6

    :goto_9
    if-eqz v3, :cond_12

    .line 113
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const/16 v5, 0x3e8

    int-to-long v5, v5

    mul-long v2, v2, v5

    const v5, 0x15180

    int-to-long v5, v5

    sub-long/2addr v2, v5

    const-string v5, "yyyy-MM-dd"

    .line 114
    invoke-static {v2, v3, v5}, Lcom/join/mgps/Util/e0;->D(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->lastDateStr:Ljava/lang/String;

    .line 115
    :cond_12
    new-instance v11, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 116
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    .line 117
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    if-eqz v6, :cond_13

    if-eq v1, v7, :cond_13

    const/4 v6, 0x1

    goto :goto_a

    :cond_13
    const/4 v6, 0x0

    .line 118
    :goto_a
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz p1, :cond_14

    goto :goto_b

    :cond_14
    const/4 v7, 0x0

    :goto_b
    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v1, v11

    move/from16 v4, p1

    .line 119
    invoke-direct/range {v1 .. v10}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;-><init>(ZLjava/lang/String;ZZZZLjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 120
    iget-object v0, v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v11}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 121
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static synthetic e(Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;ZILcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->getDailyDiscover$lambda$12(Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;ZILcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getDailyDiscover$default(Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;ZILjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->getDailyDiscover(ZILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final getDailyDiscover$lambda$12(Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;ZILcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->rankListData:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->dailyDiscoverSuccess:Lkotlin/jvm/functions/Function4;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v0, p1, p3, p2, v2}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->getRankListData(ILcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;)V

    .line 30
    .line 31
    .line 32
    :goto_1
    iput-boolean v1, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->loading:Z

    .line 33
    .line 34
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method

.method private static final getDailyDiscover$lambda$13(Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;
    .locals 11

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p1}, Lcom/join/kotlin/base/net/AppException;->getErrorMsg()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/4 v4, 0x1

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x0

    .line 17
    new-instance v8, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    const/16 v9, 0x38

    .line 23
    .line 24
    const/4 v10, 0x0

    .line 25
    move-object v1, v0

    .line 26
    invoke-direct/range {v1 .. v10}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;-><init>(ZLjava/lang/String;ZZZZLjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->loading:Z

    .line 36
    .line 37
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p0
.end method

.method public static synthetic getRankListData$default(Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;ILcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->getRankListData(ILcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final getRankListData$lambda$17(Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;ILcom/join/kotlin/autocode/dailyfind/model/DailyRankListDataBean;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p3}, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListDataBean;->getList()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iput-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->rankListData:Ljava/util/ArrayList;

    .line 10
    .line 11
    if-eqz p3, :cond_2

    .line 12
    .line 13
    invoke-virtual {p3}, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListDataBean;->getList()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    if-eqz p3, :cond_2

    .line 18
    .line 19
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    :cond_1
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListItemBean;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListItemBean;->getGame_list()Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v1, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->allDownloadAppHomeBeans:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget-object p0, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->dailyDiscoverSuccess:Lkotlin/jvm/functions/Function4;

    .line 48
    .line 49
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    const/4 v0, 0x0

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {p0, p3, p1, p2, v0}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 64
    .line 65
    return-object p0
.end method

.method private static final getRankListData$lambda$18(Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;ILcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->dailyDiscoverSuccess:Lkotlin/jvm/functions/Function4;

    .line 7
    .line 8
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {p0, p3, p1, p2, v0}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method


# virtual methods
.method public final getAllDownloadAppHomeBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/kotlin/base/impl/BaseDownloadable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->allDownloadAppHomeBeans:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurClickDateItem()Lcom/join/kotlin/autocode/dailyfind/model/DateItem;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->curClickDateItem:Lcom/join/kotlin/autocode/dailyfind/model/DateItem;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDailyDiscover(ZILjava/lang/String;)V
    .locals 9
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->loading:Z

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
    iput-boolean v0, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->loading:Z

    .line 8
    .line 9
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->startDateStr:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel$getDailyDiscover$1;

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    move-object v1, v0

    .line 19
    move v2, p2

    .line 20
    move v3, p1

    .line 21
    move-object v4, p3

    .line 22
    move-object v5, p0

    .line 23
    invoke-direct/range {v1 .. v6}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel$getDailyDiscover$1;-><init>(IZLjava/lang/String;Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    new-instance v3, Lcom/join/kotlin/autocode/dailyfind/viewmodel/a;

    .line 27
    .line 28
    invoke-direct {v3, p0, p1, p2}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/a;-><init>(Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;ZI)V

    .line 29
    .line 30
    .line 31
    new-instance v4, Lcom/join/kotlin/autocode/dailyfind/viewmodel/b;

    .line 32
    .line 33
    invoke-direct {v4, p0}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/b;-><init>(Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;)V

    .line 34
    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    const/16 v7, 0x18

    .line 38
    .line 39
    const/4 v8, 0x0

    .line 40
    move-object v1, p0

    .line 41
    move-object v2, v0

    .line 42
    invoke-static/range {v1 .. v8}, Lcom/join/kotlin/base/ext/BaseViewModelExtKt;->request$default(Lcom/join/kotlin/base/viewmodel/BaseViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLjava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/v1;

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final getDailyDiscoverSuccess()Lkotlin/jvm/functions/Function4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function4<",
            "Ljava/lang/Boolean;",
            "Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->dailyDiscoverSuccess:Lkotlin/jvm/functions/Function4;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLastDateStr()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->lastDateStr:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getListData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState<",
            "Lcom/join/mgps/dto/CommonMultiItemBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLoading()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->loading:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getPageExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getParentExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRankListData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListItemBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->rankListData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getRankListData(ILcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;)V
    .locals 8
    .param p2    # Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    new-instance v1, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel$getRankListData$1;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel$getRankListData$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lcom/join/kotlin/autocode/dailyfind/viewmodel/c;

    invoke-direct {v2, p0, p2, p1}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/c;-><init>(Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;I)V

    new-instance v3, Lcom/join/kotlin/autocode/dailyfind/viewmodel/d;

    invoke-direct {v3, p0, p2, p1}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/d;-><init>(Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/join/kotlin/base/ext/BaseViewModelExtKt;->request$default(Lcom/join/kotlin/base/viewmodel/BaseViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLjava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/v1;

    return-void
.end method

.method public final getStartDateStr()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->startDateStr:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTimeLines()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->timeLines:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTitle()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setCurClickDateItem(Lcom/join/kotlin/autocode/dailyfind/model/DateItem;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/autocode/dailyfind/model/DateItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->curClickDateItem:Lcom/join/kotlin/autocode/dailyfind/model/DateItem;

    .line 2
    .line 3
    return-void
.end method

.method public final setLastDateStr(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->lastDateStr:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setLoading(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->loading:Z

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
    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->pageExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 7
    .line 8
    return-void
.end method

.method public final setParentExtBean(Lcom/join/mgps/dto/ExtBean;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dto/ExtBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setRankListData(Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListItemBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->rankListData:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public final setStartDateStr(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->startDateStr:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setTimeLines(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
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
    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->timeLines:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method

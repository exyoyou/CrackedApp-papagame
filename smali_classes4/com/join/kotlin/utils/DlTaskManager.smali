.class public final Lcom/join/kotlin/utils/DlTaskManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDlTaskManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,520:1\n1788#2,4:521\n1#3:525\n*S KotlinDebug\n*F\n+ 1 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n*L\n197#1:521,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0008J\u000e\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0008J\u0006\u0010\u000f\u001a\u00020\u000cJ\u0010\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J\u0008\u0010\u0013\u001a\u00020\u000cH\u0002J\u0006\u0010.\u001a\u00020\u000cJ\u0010\u0010/\u001a\u00020\u000c2\u0008\u00100\u001a\u0004\u0018\u00010\u0012J(\u00101\u001a\u00020\u000c2\u0008\u00100\u001a\u0004\u0018\u00010\u00122\u0010\u0008\u0002\u00102\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c03H\u0086\u0008\u00f8\u0001\u0000J\u0006\u00104\u001a\u00020\u000cJ\u0008\u00105\u001a\u00020\u000cH\u0002J\u0006\u00106\u001a\u00020\u001fJ\u0006\u00107\u001a\u00020\u001fJ\u0014\u00108\u001a\u0004\u0018\u00010\u00162\u0008\u00109\u001a\u0004\u0018\u00010\u0005H\u0002J\u0010\u0010:\u001a\u00020\u000c2\u0008\u0010;\u001a\u0004\u0018\u00010\u0016J\u0010\u0010<\u001a\u00020\u000c2\u0008\u0010;\u001a\u0004\u0018\u00010\u0016J\u0010\u0010=\u001a\u00020\u000c2\u0008\u0010;\u001a\u0004\u0018\u00010\u0016J\u0010\u0010>\u001a\u00020\u000c2\u0008\u0010;\u001a\u0004\u0018\u00010\u0016J\u0010\u0010?\u001a\u00020\u000c2\u0008\u0010;\u001a\u0004\u0018\u00010\u0016J\u0010\u0010@\u001a\u00020\u000c2\u0008\u0010;\u001a\u0004\u0018\u00010\u0016J\u0010\u0010A\u001a\u0004\u0018\u00010\u00162\u0006\u0010B\u001a\u00020CJ\u000e\u0010A\u001a\u00020\u00162\u0006\u0010D\u001a\u00020\u0016J\u000e\u0010E\u001a\u00020\u000c2\u0006\u0010B\u001a\u00020CJ\u0016\u0010F\u001a\u00020\u000c2\u0006\u0010G\u001a\u00020H2\u0006\u0010B\u001a\u00020CJ\u0016\u0010I\u001a\u00020\u000c2\u0006\u00109\u001a\u00020\u00052\u0006\u0010J\u001a\u00020+J\u0006\u0010K\u001a\u00020\u000cJ\u0017\u0010L\u001a\u0004\u0018\u00010+2\u0008\u00109\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010MJ\u0006\u0010N\u001a\u00020\u000cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0014\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R6\u0010\u0017\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00160\u0018j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0016`\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001a\u0010$\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010!\"\u0004\u0008&\u0010#R6\u0010\'\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00160\u0018j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0016`\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u001b\"\u0004\u0008)\u0010\u001dR>\u0010*\u001a&\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010+0\u0018j\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010+`\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u001b\"\u0004\u0008-\u0010\u001d\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006O"
    }
    d2 = {
        "Lcom/join/kotlin/utils/DlTaskManager;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "downloadTaskEventListeners",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Lcom/join/kotlin/utils/DownloadTaskEventListener;",
        "globalEventBusRegistered",
        "",
        "registerDownloadTaskListener",
        "",
        "listener",
        "unregisterDownloadTaskListener",
        "ensureGlobalDownloadEventBus",
        "onGlobalDownloadTaskEvent",
        "event",
        "Lcom/join/mgps/event/DownloadTaskEvent;",
        "registerGlobalEventBusIfNeeded",
        "downloadTasksMap",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
        "downloadedMap",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "getDownloadedMap",
        "()Ljava/util/HashMap;",
        "setDownloadedMap",
        "(Ljava/util/HashMap;)V",
        "downloadedNum",
        "",
        "getDownloadedNum",
        "()I",
        "setDownloadedNum",
        "(I)V",
        "downloadingNum",
        "getDownloadingNum",
        "setDownloadingNum",
        "downloadingMap",
        "getDownloadingMap",
        "setDownloadingMap",
        "cloudArchiveTimeMap",
        "",
        "getCloudArchiveTimeMap",
        "setCloudArchiveTimeMap",
        "init",
        "onEventMainThread",
        "downloadTaskEvent",
        "onNotifyDataSet",
        "call",
        "Lkotlin/Function0;",
        "updateDownloadedNum",
        "recomputeDownloadingNum",
        "getDownloadedSize",
        "getDownloadingSize",
        "getTaskByGameId",
        "gameId",
        "onStart",
        "task",
        "onStop",
        "onSuccess",
        "onDelete",
        "onError",
        "onTaskChanged",
        "getTask",
        "downInfo",
        "Lcom/join/kotlin/base/impl/Downloadable;",
        "beanTask",
        "updateDownloadTask",
        "performDownloadClick",
        "mContext",
        "Landroid/content/Context;",
        "updateCloudArchiveTime",
        "archiveTime",
        "onUpdateCloudArchiveTime",
        "getCloudArchiveTime",
        "(Ljava/lang/String;)Ljava/lang/Long;",
        "clearCloudArchiveTime",
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
        "SMAP\nDlTaskManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,520:1\n1788#2,4:521\n1#3:525\n*S KotlinDebug\n*F\n+ 1 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n*L\n197#1:521,4\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DlTaskManager"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static cloudArchiveTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final downloadTaskEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/join/kotlin/utils/DownloadTaskEventListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final downloadTasksMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static downloadedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static downloadedNum:I

.field private static downloadingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static downloadingNum:I

.field private static volatile globalEventBusRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/utils/DlTaskManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/kotlin/utils/DlTaskManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadTaskEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadTasksMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    .line 22
    new-instance v0, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadedMap:Ljava/util/HashMap;

    .line 28
    .line 29
    new-instance v0, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadingMap:Ljava/util/HashMap;

    .line 35
    .line 36
    new-instance v0, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/join/kotlin/utils/DlTaskManager;->cloudArchiveTimeMap:Ljava/util/HashMap;

    .line 42
    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getTaskByGameId(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadTasksMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    return-object p1
.end method

.method public static synthetic onNotifyDataSet$default(Lcom/join/kotlin/utils/DlTaskManager;Lcom/join/mgps/event/r;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    and-int/2addr p3, p0

    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    sget-object p2, Lcom/join/kotlin/utils/DlTaskManager$onNotifyDataSet$1;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager$onNotifyDataSet$1;

    .line 6
    .line 7
    :cond_0
    const-string p3, "call"

    .line 8
    .line 9
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eq p1, p0, :cond_2

    .line 20
    .line 21
    const/4 p0, 0x3

    .line 22
    if-eq p1, p0, :cond_2

    .line 23
    .line 24
    const/4 p0, 0x5

    .line 25
    if-eq p1, p0, :cond_2

    .line 26
    .line 27
    const/4 p0, 0x6

    .line 28
    if-eq p1, p0, :cond_2

    .line 29
    .line 30
    const/4 p0, 0x7

    .line 31
    if-eq p1, p0, :cond_2

    .line 32
    .line 33
    const/16 p0, 0x2a

    .line 34
    .line 35
    if-eq p1, p0, :cond_2

    .line 36
    .line 37
    const/16 p0, 0x30

    .line 38
    .line 39
    if-eq p1, p0, :cond_2

    .line 40
    .line 41
    packed-switch p1, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    :pswitch_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final recomputeDownloadingNum()V
    .locals 5

    .line 1
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadedMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-values>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Ljava/lang/Iterable;

    .line 13
    .line 14
    move-object v1, v0

    .line 15
    check-cast v1, Ljava/util/Collection;

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_3

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    const/4 v4, 0x3

    .line 47
    if-ne v3, v4, :cond_2

    .line 48
    .line 49
    const/4 v3, 0x1

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const/4 v3, 0x0

    .line 52
    :goto_1
    if-eqz v3, :cond_1

    .line 53
    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    if-gez v1, :cond_1

    .line 57
    .line 58
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    move v2, v1

    .line 63
    :goto_2
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadingMap:Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    add-int/2addr v0, v2

    .line 70
    sput v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadingNum:I

    .line 71
    .line 72
    return-void
.end method

.method private final registerGlobalEventBusIfNeeded()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/join/kotlin/utils/DlTaskManager;->globalEventBusRegistered:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    sget-boolean v1, Lcom/join/kotlin/utils/DlTaskManager;->globalEventBusRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :cond_1
    :try_start_1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->v(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    const/4 v1, 0x1

    .line 29
    sput-boolean v1, Lcom/join/kotlin/utils/DlTaskManager;->globalEventBusRegistered:Z

    .line 30
    .line 31
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    monitor-exit v0

    .line 37
    throw v1
.end method


# virtual methods
.method public final clearCloudArchiveTime()V
    .locals 3

    .line 1
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->cloudArchiveTimeMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadedMap:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 33
    .line 34
    const-string v2, ""

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCloudArchiveTime(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method public final ensureGlobalDownloadEventBus()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/utils/DlTaskManager;->registerGlobalEventBusIfNeeded()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final getCloudArchiveTime(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->cloudArchiveTimeMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Long;

    .line 8
    .line 9
    return-object p1
.end method

.method public final getCloudArchiveTimeMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->cloudArchiveTimeMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDownloadedMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadedMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDownloadedNum()I
    .locals 1

    .line 1
    sget v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadedNum:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDownloadedSize()I
    .locals 1

    .line 1
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadedMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getDownloadingMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadingMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDownloadingNum()I
    .locals 1

    .line 1
    sget v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadingNum:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDownloadingSize()I
    .locals 1

    .line 1
    sget v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadingNum:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 3
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "beanTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    invoke-direct {p0, v0}, Lcom/join/kotlin/utils/DlTaskManager;->getTaskByGameId(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-nez v0, :cond_3

    return-object p1

    .line 5
    :cond_3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    :cond_4
    return-object v0

    :cond_5
    :goto_2
    return-object p1
.end method

.method public final getTask(Lcom/join/kotlin/base/impl/Downloadable;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1
    .param p1    # Lcom/join/kotlin/base/impl/Downloadable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "downInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/Downloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/kotlin/utils/DlTaskManager;->getTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    return-object p1
.end method

.method public final init()V
    .locals 4

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lq5/f;->d()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-lez v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 32
    .line 33
    sget-object v2, Lcom/join/kotlin/utils/DlTaskManager;->downloadTasksMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_0

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lq5/f;->r()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-lez v1, :cond_2

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 84
    .line 85
    sget-object v2, Lcom/join/kotlin/utils/DlTaskManager;->downloadingMap:Ljava/util/HashMap;

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadedNum()V

    .line 96
    .line 97
    .line 98
    invoke-direct {p0}, Lcom/join/kotlin/utils/DlTaskManager;->registerGlobalEventBusIfNeeded()V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final onDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadTasksMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadedMap:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadedMap:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    :cond_1
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadingMap:Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadingMap:Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadedNum()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final onError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadingMap:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/join/kotlin/utils/DlTaskManager;->onTaskChanged(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadedNum()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 2
    .param p1    # Lcom/join/mgps/event/r;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq p1, v1, :cond_5

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq p1, v1, :cond_4

    .line 17
    .line 18
    const/16 v1, 0x2a

    .line 19
    .line 20
    if-eq p1, v1, :cond_2

    .line 21
    .line 22
    const/16 v1, 0x30

    .line 23
    .line 24
    if-eq p1, v1, :cond_1

    .line 25
    .line 26
    packed-switch p1, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/join/kotlin/utils/DlTaskManager;->onTaskChanged(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/join/kotlin/utils/DlTaskManager;->onTaskChanged(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/join/kotlin/utils/DlTaskManager;->onDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/join/kotlin/utils/DlTaskManager;->onError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    :pswitch_4
    invoke-virtual {p0, v0}, Lcom/join/kotlin/utils/DlTaskManager;->onSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    :pswitch_5
    if-eqz v0, :cond_6

    .line 51
    .line 52
    sget-object p1, Lcom/join/kotlin/utils/DlTaskManager;->downloadTasksMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_3

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-virtual {p0, v0}, Lcom/join/kotlin/utils/DlTaskManager;->onTaskChanged(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    invoke-virtual {p0, v0}, Lcom/join/kotlin/utils/DlTaskManager;->onStop(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/join/kotlin/utils/DlTaskManager;->onStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 80
    .line 81
    .line 82
    :cond_6
    :goto_0
    return-void

    .line 83
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onGlobalDownloadTaskEvent(Lcom/join/mgps/event/r;)V
    .locals 2
    .param p1    # Lcom/join/mgps/event/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        priority = 0x64
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
    invoke-virtual {p0, p1}, Lcom/join/kotlin/utils/DlTaskManager;->onEventMainThread(Lcom/join/mgps/event/r;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadTaskEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "iterator(...)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/join/kotlin/utils/DownloadTaskEventListener;

    .line 31
    .line 32
    :try_start_0
    invoke-interface {v1, p1}, Lcom/join/kotlin/utils/DownloadTaskEventListener;->onDownloadTaskEvent(Lcom/join/mgps/event/r;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    nop

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method public final onNotifyDataSet(Lcom/join/mgps/event/r;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lcom/join/mgps/event/r;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/event/r;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x2

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x5

    .line 20
    if-eq p1, v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x6

    .line 23
    if-eq p1, v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x7

    .line 26
    if-eq p1, v0, :cond_1

    .line 27
    .line 28
    const/16 v0, 0x2a

    .line 29
    .line 30
    if-eq p1, v0, :cond_1

    .line 31
    .line 32
    const/16 v0, 0x30

    .line 33
    .line 34
    if-eq p1, v0, :cond_1

    .line 35
    .line 36
    packed-switch p1, :pswitch_data_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    :pswitch_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadTasksMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_1
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadedMap:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadedMap:Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_2
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadingMap:Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadingMap:Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-virtual {p0, p1}, Lcom/join/kotlin/utils/DlTaskManager;->onTaskChanged(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadedNum()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final onStop(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadingMap:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadingMap:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0, p1}, Lcom/join/kotlin/utils/DlTaskManager;->onTaskChanged(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadedNum()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final onSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadTasksMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_1
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadedMap:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadedMap:Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_2
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadingMap:Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadingMap:Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-virtual {p0, p1}, Lcom/join/kotlin/utils/DlTaskManager;->onTaskChanged(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadedNum()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final onTaskChanged(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

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
    invoke-direct {p0, v0}, Lcom/join/kotlin/utils/DlTaskManager;->getTaskByGameId(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_9

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSpeed(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCurrentSize(J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const/4 v2, 0x0

    .line 47
    const/4 v3, 0x1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/4 v1, 0x0

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 60
    :goto_1
    if-nez v1, :cond_3

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_path(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_5

    .line 74
    .line 75
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_4

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    const/4 v1, 0x0

    .line 83
    goto :goto_3

    .line 84
    :cond_5
    :goto_2
    const/4 v1, 0x1

    .line 85
    :goto_3
    if-nez v1, :cond_6

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    if-eqz v1, :cond_7

    .line 99
    .line 100
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-nez v1, :cond_8

    .line 105
    .line 106
    :cond_7
    const/4 v2, 0x1

    .line 107
    :cond_8
    if-nez v2, :cond_a

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_9
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadTasksMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    :cond_a
    :goto_4
    return-void
.end method

.method public final onUpdateCloudArchiveTime()V
    .locals 9

    .line 1
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->cloudArchiveTimeMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadedMap:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadedMap:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/util/Map$Entry;

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const-string v2, "getCrc_link_type_val(...)"

    .line 50
    .line 51
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v4, "cld_"

    .line 55
    .line 56
    const-string v5, ""

    .line 57
    .line 58
    const/4 v6, 0x0

    .line 59
    const/4 v7, 0x4

    .line 60
    const/4 v8, 0x0

    .line 61
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    sget-object v3, Lcom/join/kotlin/utils/DlTaskManager;->cloudArchiveTimeMap:Ljava/util/HashMap;

    .line 66
    .line 67
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_0

    .line 72
    .line 73
    sget-object v3, Lcom/join/kotlin/utils/DlTaskManager;->cloudArchiveTimeMap:Ljava/util/HashMap;

    .line 74
    .line 75
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Ljava/lang/Long;

    .line 80
    .line 81
    if-eqz v2, :cond_0

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 84
    .line 85
    .line 86
    move-result-wide v3

    .line 87
    const-wide/16 v5, 0x0

    .line 88
    .line 89
    cmp-long v7, v3, v5

    .line 90
    .line 91
    if-lez v7, :cond_0

    .line 92
    .line 93
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 100
    .line 101
    .line 102
    move-result-wide v2

    .line 103
    const-string v4, "yyyy/MM/dd"

    .line 104
    .line 105
    invoke-static {v2, v3, v4}, Lcom/join/mgps/Util/e0;->D(JLjava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCloudArchiveTime(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    return-void
.end method

.method public final performDownloadClick(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/kotlin/base/impl/Downloadable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "mContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "downInfo"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2}, Lcom/join/kotlin/base/impl/IExposure;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {p2}, Lcom/join/kotlin/base/impl/Downloadable;->hasGInfo()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {p2}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-interface {v1}, Lcom/join/kotlin/base/impl/GInfo;->getTagInfo()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object v1, v2

    .line 38
    :goto_0
    invoke-static {v1}, Lcom/join/mgps/Util/w0;->p(Ljava/util/List;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    sget-object v3, Lcom/papa/sim/statistic/Event;->gameStart:Lcom/papa/sim/statistic/Event;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v1, v3, v4}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    sget-object v3, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v1, v3, v4}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 77
    .line 78
    .line 79
    :goto_1
    invoke-interface {p2}, Lcom/join/kotlin/base/impl/GameType;->isH5Game()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-interface {p2}, Lcom/join/kotlin/base/impl/IIntent;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p2}, Lcom/join/kotlin/base/impl/Downloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    invoke-interface {p2}, Lcom/join/kotlin/base/impl/Downloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 107
    .line 108
    .line 109
    :cond_2
    return-void

    .line 110
    :cond_3
    invoke-interface {p2}, Lcom/join/kotlin/base/impl/GameType;->isCpsGame()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_5

    .line 115
    .line 116
    invoke-static {}, Lcom/join/mgps/Util/d1;->c()Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_5

    .line 121
    .line 122
    invoke-interface {p2}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    if-eqz v1, :cond_4

    .line 127
    .line 128
    invoke-interface {v1}, Lcom/join/kotlin/base/impl/GInfo;->getTagInfo()Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    goto :goto_2

    .line 133
    :cond_4
    move-object v1, v2

    .line 134
    :goto_2
    invoke-static {v1}, Lcom/join/mgps/Util/d1;->a(Ljava/util/List;)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_5

    .line 139
    .line 140
    invoke-interface {p2}, Lcom/join/kotlin/base/impl/GameType;->isHmCloud()Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-nez v1, :cond_5

    .line 145
    .line 146
    invoke-static {}, Lcom/join/mgps/Util/d1;->b()V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_5
    invoke-interface {p2}, Lcom/join/kotlin/base/impl/GameType;->isHmCloud()Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    const/4 v3, 0x1

    .line 155
    const/4 v4, 0x0

    .line 156
    if-eqz v1, :cond_b

    .line 157
    .line 158
    invoke-interface {p2}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    if-eqz v1, :cond_b

    .line 163
    .line 164
    invoke-interface {v1}, Lcom/join/kotlin/base/impl/GInfo;->getTagInfo()Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    invoke-static {v5}, Lcom/join/mgps/Util/w0;->m(Ljava/util/List;)Z

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-nez v5, :cond_6

    .line 173
    .line 174
    invoke-interface {v1}, Lcom/join/kotlin/base/impl/GInfo;->getTagInfo()Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-static {v1}, Lcom/join/mgps/Util/w0;->k(Ljava/util/List;)Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-eqz v1, :cond_b

    .line 183
    .line 184
    :cond_6
    invoke-static {p2}, Lcom/join/mgps/Util/w0;->i(Lcom/join/kotlin/base/impl/Downloadable;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    if-nez v0, :cond_7

    .line 189
    .line 190
    return-void

    .line 191
    :cond_7
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    if-nez v5, :cond_8

    .line 196
    .line 197
    return-void

    .line 198
    :cond_8
    const-string v6, "cld_"

    .line 199
    .line 200
    const-string v7, ""

    .line 201
    .line 202
    const/4 v8, 0x0

    .line 203
    const/4 v9, 0x4

    .line 204
    const/4 v10, 0x0

    .line 205
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-nez v1, :cond_9

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_9
    const/4 v3, 0x0

    .line 217
    :goto_3
    if-eqz v3, :cond_a

    .line 218
    .line 219
    return-void

    .line 220
    :cond_a
    invoke-static {}, Lcom/join/mgps/Util/w0;->h()Lcom/join/mgps/Util/w0;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-interface {p2}, Lcom/join/kotlin/base/impl/IExposure;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    invoke-virtual {v1, p1, v0, p2}, Lcom/join/mgps/Util/w0;->s(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)V

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    :cond_b
    invoke-virtual {p0, p2}, Lcom/join/kotlin/utils/DlTaskManager;->getTask(Lcom/join/kotlin/base/impl/Downloadable;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-interface {p2, v1}, Lcom/join/kotlin/base/impl/Downloadable;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 237
    .line 238
    .line 239
    invoke-interface {p2}, Lcom/join/kotlin/base/impl/Downloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    if-eqz v1, :cond_c

    .line 244
    .line 245
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    goto :goto_4

    .line 250
    :cond_c
    const/4 v5, 0x0

    .line 251
    :goto_4
    const/16 v6, 0x2b

    .line 252
    .line 253
    if-eqz v1, :cond_e

    .line 254
    .line 255
    invoke-interface {p2}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    if-eqz v7, :cond_d

    .line 260
    .line 261
    invoke-interface {v7}, Lcom/join/kotlin/base/impl/GInfo;->needPurchase()Z

    .line 262
    .line 263
    .line 264
    move-result v7

    .line 265
    if-ne v7, v3, :cond_d

    .line 266
    .line 267
    goto :goto_5

    .line 268
    :cond_d
    const/4 v3, 0x0

    .line 269
    :goto_5
    if-eqz v3, :cond_e

    .line 270
    .line 271
    const/16 v5, 0x2b

    .line 272
    .line 273
    :cond_e
    invoke-interface {p2}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    if-eqz v3, :cond_f

    .line 278
    .line 279
    invoke-interface {v3}, Lcom/join/kotlin/base/impl/GInfo;->getDownStatus()I

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    goto :goto_6

    .line 288
    :cond_f
    move-object v3, v2

    .line 289
    :goto_6
    if-nez v1, :cond_12

    .line 290
    .line 291
    invoke-interface {p2}, Lcom/join/kotlin/base/impl/Downloadable;->hasGInfo()Z

    .line 292
    .line 293
    .line 294
    move-result v7

    .line 295
    if-eqz v7, :cond_12

    .line 296
    .line 297
    invoke-interface {p2}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GameType;->isAndroidGame()Z

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    if-eqz v0, :cond_10

    .line 309
    .line 310
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-interface {p2}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GInfo;->getPackageName()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    const/4 v4, 0x0

    .line 326
    const/4 v5, 0x4

    .line 327
    const/4 v6, 0x0

    .line 328
    move-object v2, p1

    .line 329
    invoke-static/range {v1 .. v6}, Lcom/join/android/app/common/utils/APKUtils;->g(Lcom/join/android/app/common/utils/APKUtils;Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;ILjava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    if-eqz v0, :cond_10

    .line 334
    .line 335
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-interface {p2}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    invoke-interface {v1}, Lcom/join/kotlin/base/impl/GInfo;->getPackageName()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    invoke-interface {p2}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    invoke-interface {v1}, Lcom/join/kotlin/base/impl/GInfo;->getVersionCode()I

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    if-lt v0, v1, :cond_10

    .line 374
    .line 375
    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->a:Lcom/join/android/app/common/utils/APKUtils$b;

    .line 376
    .line 377
    invoke-interface {p2}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 378
    .line 379
    .line 380
    move-result-object p2

    .line 381
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    invoke-interface {p2}, Lcom/join/kotlin/base/impl/GInfo;->getPackageName()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object p2

    .line 388
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object p2

    .line 392
    invoke-virtual {v0, p1, p2}, Lcom/join/android/app/common/utils/APKUtils$b;->U(Landroid/content/Context;Ljava/lang/String;)Z

    .line 393
    .line 394
    .line 395
    return-void

    .line 396
    :cond_10
    invoke-interface {p2}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GInfo;->needPurchase()Z

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    if-eqz v0, :cond_11

    .line 408
    .line 409
    invoke-interface {p2}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 410
    .line 411
    .line 412
    move-result-object p2

    .line 413
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    invoke-interface {p2}, Lcom/join/kotlin/base/impl/GInfo;->getGameId()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object p2

    .line 420
    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    goto/16 :goto_b

    .line 424
    .line 425
    :cond_11
    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->T2(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 426
    .line 427
    .line 428
    goto/16 :goto_b

    .line 429
    .line 430
    :cond_12
    if-eqz v1, :cond_14

    .line 431
    .line 432
    const/4 v7, 0x2

    .line 433
    if-eq v5, v7, :cond_13

    .line 434
    .line 435
    const/16 v7, 0xa

    .line 436
    .line 437
    if-ne v5, v7, :cond_14

    .line 438
    .line 439
    :cond_13
    invoke-static {v1}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 440
    .line 441
    .line 442
    goto/16 :goto_b

    .line 443
    .line 444
    :cond_14
    if-eqz v1, :cond_16

    .line 445
    .line 446
    const/4 v7, 0x3

    .line 447
    if-eq v5, v7, :cond_15

    .line 448
    .line 449
    const/4 v7, 0x6

    .line 450
    if-ne v5, v7, :cond_16

    .line 451
    .line 452
    :cond_15
    invoke-static {v1, p1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 453
    .line 454
    .line 455
    goto/16 :goto_b

    .line 456
    .line 457
    :cond_16
    const/16 v7, 0xc

    .line 458
    .line 459
    if-eq v5, v7, :cond_2b

    .line 460
    .line 461
    const/16 v7, 0x1b

    .line 462
    .line 463
    if-ne v5, v7, :cond_17

    .line 464
    .line 465
    goto/16 :goto_b

    .line 466
    .line 467
    :cond_17
    if-eqz v1, :cond_18

    .line 468
    .line 469
    const/16 v7, 0xd

    .line 470
    .line 471
    if-ne v5, v7, :cond_18

    .line 472
    .line 473
    invoke-static {p1, v1}, Lcom/php25/PDownload/d;->l(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 474
    .line 475
    .line 476
    goto/16 :goto_b

    .line 477
    .line 478
    :cond_18
    const-string v7, ""

    .line 479
    .line 480
    const/4 v8, 0x5

    .line 481
    if-eqz v1, :cond_19

    .line 482
    .line 483
    if-ne v5, v8, :cond_19

    .line 484
    .line 485
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 486
    .line 487
    .line 488
    move-result-object p2

    .line 489
    invoke-static {p1, v1, v7, p2}, Lcom/join/mgps/Util/UtilsMy;->q4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)V

    .line 490
    .line 491
    .line 492
    goto/16 :goto_b

    .line 493
    .line 494
    :cond_19
    const/16 v0, 0x9

    .line 495
    .line 496
    if-ne v5, v0, :cond_1f

    .line 497
    .line 498
    if-eqz v1, :cond_1a

    .line 499
    .line 500
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v2

    .line 504
    :cond_1a
    if-eqz v2, :cond_1e

    .line 505
    .line 506
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object p2

    .line 510
    invoke-static {p2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result p2

    .line 514
    if-eqz p2, :cond_1b

    .line 515
    .line 516
    goto :goto_8

    .line 517
    :cond_1b
    if-nez v3, :cond_1c

    .line 518
    .line 519
    goto :goto_7

    .line 520
    :cond_1c
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 521
    .line 522
    .line 523
    move-result p2

    .line 524
    if-ne p2, v8, :cond_1d

    .line 525
    .line 526
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 527
    .line 528
    .line 529
    return-void

    .line 530
    :cond_1d
    :goto_7
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object p2

    .line 534
    invoke-static {v1, p2}, Lcom/join/mgps/Util/UtilsMy;->W4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    invoke-static {v1}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object p2

    .line 544
    invoke-virtual {v1, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer_name()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object p2

    .line 551
    invoke-virtual {v1, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object p2

    .line 558
    invoke-virtual {v1, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object p2

    .line 565
    invoke-virtual {v1, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver_name()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object p2

    .line 572
    invoke-virtual {v1, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_down_url()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object p2

    .line 579
    invoke-virtual {v1, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    invoke-static {v1, p1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 583
    .line 584
    .line 585
    goto/16 :goto_b

    .line 586
    .line 587
    :cond_1e
    :goto_8
    return-void

    .line 588
    :cond_1f
    const/16 v0, 0x2a

    .line 589
    .line 590
    if-ne v5, v0, :cond_23

    .line 591
    .line 592
    if-eqz v1, :cond_20

    .line 593
    .line 594
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v2

    .line 598
    :cond_20
    if-eqz v2, :cond_22

    .line 599
    .line 600
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object p2

    .line 604
    invoke-static {p2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 605
    .line 606
    .line 607
    move-result p2

    .line 608
    if-eqz p2, :cond_21

    .line 609
    .line 610
    goto :goto_9

    .line 611
    :cond_21
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object p2

    .line 615
    invoke-static {v1, p2}, Lcom/join/mgps/Util/UtilsMy;->W4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object p2

    .line 622
    invoke-virtual {v1, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer_name()Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object p2

    .line 629
    invoke-virtual {v1, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object p2

    .line 636
    invoke-virtual {v1, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object p2

    .line 643
    invoke-virtual {v1, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver_name()Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object p2

    .line 650
    invoke-virtual {v1, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_down_url()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object p2

    .line 657
    invoke-virtual {v1, p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->O4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 661
    .line 662
    .line 663
    goto :goto_b

    .line 664
    :cond_22
    :goto_9
    return-void

    .line 665
    :cond_23
    if-eqz v1, :cond_24

    .line 666
    .line 667
    const/16 v0, 0xb

    .line 668
    .line 669
    if-ne v0, v5, :cond_24

    .line 670
    .line 671
    invoke-static {v1, p1}, Lcom/join/mgps/Util/UtilsMy;->w4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 672
    .line 673
    .line 674
    goto :goto_b

    .line 675
    :cond_24
    if-ne v6, v5, :cond_26

    .line 676
    .line 677
    if-eqz v1, :cond_25

    .line 678
    .line 679
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v2

    .line 683
    :cond_25
    invoke-static {p1, v2}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    goto :goto_b

    .line 687
    :cond_26
    if-eqz v1, :cond_2b

    .line 688
    .line 689
    invoke-interface {p2}, Lcom/join/kotlin/base/impl/Downloadable;->hasGInfo()Z

    .line 690
    .line 691
    .line 692
    move-result v0

    .line 693
    if-eqz v0, :cond_2b

    .line 694
    .line 695
    invoke-interface {p2}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 696
    .line 697
    .line 698
    move-result-object p2

    .line 699
    if-nez p2, :cond_27

    .line 700
    .line 701
    return-void

    .line 702
    :cond_27
    invoke-interface {p2}, Lcom/join/kotlin/base/impl/GInfo;->needPurchase()Z

    .line 703
    .line 704
    .line 705
    move-result p2

    .line 706
    if-eqz p2, :cond_28

    .line 707
    .line 708
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object p2

    .line 712
    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 713
    .line 714
    .line 715
    goto :goto_b

    .line 716
    :cond_28
    if-nez v3, :cond_29

    .line 717
    .line 718
    goto :goto_a

    .line 719
    :cond_29
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 720
    .line 721
    .line 722
    move-result p2

    .line 723
    if-ne p2, v8, :cond_2a

    .line 724
    .line 725
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 726
    .line 727
    .line 728
    goto :goto_b

    .line 729
    :cond_2a
    :goto_a
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    .line 730
    .line 731
    .line 732
    move-result-object p2

    .line 733
    invoke-static {p1, v1, p2, v4, v4}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 734
    .line 735
    .line 736
    :cond_2b
    :goto_b
    return-void
.end method

.method public final registerDownloadTaskListener(Lcom/join/kotlin/utils/DownloadTaskEventListener;)V
    .locals 2
    .param p1    # Lcom/join/kotlin/utils/DownloadTaskEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadTaskEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final setCloudArchiveTimeMap(Ljava/util/HashMap;)V
    .locals 1
    .param p1    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
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
    sput-object p1, Lcom/join/kotlin/utils/DlTaskManager;->cloudArchiveTimeMap:Ljava/util/HashMap;

    .line 7
    .line 8
    return-void
.end method

.method public final setDownloadedMap(Ljava/util/HashMap;)V
    .locals 1
    .param p1    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
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
    sput-object p1, Lcom/join/kotlin/utils/DlTaskManager;->downloadedMap:Ljava/util/HashMap;

    .line 7
    .line 8
    return-void
.end method

.method public final setDownloadedNum(I)V
    .locals 0

    .line 1
    sput p1, Lcom/join/kotlin/utils/DlTaskManager;->downloadedNum:I

    .line 2
    .line 3
    return-void
.end method

.method public final setDownloadingMap(Ljava/util/HashMap;)V
    .locals 1
    .param p1    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
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
    sput-object p1, Lcom/join/kotlin/utils/DlTaskManager;->downloadingMap:Ljava/util/HashMap;

    .line 7
    .line 8
    return-void
.end method

.method public final setDownloadingNum(I)V
    .locals 0

    .line 1
    sput p1, Lcom/join/kotlin/utils/DlTaskManager;->downloadingNum:I

    .line 2
    .line 3
    return-void
.end method

.method public final unregisterDownloadTaskListener(Lcom/join/kotlin/utils/DownloadTaskEventListener;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/utils/DownloadTaskEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadTaskEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final updateCloudArchiveTime(Ljava/lang/String;J)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "gameId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    sget-object p3, Lcom/join/kotlin/utils/DlTaskManager;->cloudArchiveTimeMap:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V
    .locals 8
    .param p1    # Lcom/join/kotlin/base/impl/Downloadable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "downInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/join/kotlin/base/impl/GInfo;->getGameId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v0, v1

    .line 19
    :goto_0
    invoke-direct {p0, v0}, Lcom/join/kotlin/utils/DlTaskManager;->getTaskByGameId(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v2, 0x1

    .line 24
    const/4 v3, 0x5

    .line 25
    const/4 v4, 0x0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-ne v5, v3, :cond_1

    .line 33
    .line 34
    const/4 v5, 0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v5, 0x0

    .line 37
    :goto_1
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    if-eqz v6, :cond_2

    .line 42
    .line 43
    invoke-interface {v6}, Lcom/join/kotlin/base/impl/GInfo;->getModGameId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move-object v6, v1

    .line 49
    :goto_2
    invoke-direct {p0, v6}, Lcom/join/kotlin/utils/DlTaskManager;->getTaskByGameId(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    if-eqz v6, :cond_3

    .line 54
    .line 55
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-ne v7, v3, :cond_3

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_3
    const/4 v2, 0x0

    .line 63
    :goto_3
    if-nez v2, :cond_6

    .line 64
    .line 65
    if-eqz v5, :cond_4

    .line 66
    .line 67
    goto :goto_5

    .line 68
    :cond_4
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    if-eqz v3, :cond_5

    .line 73
    .line 74
    invoke-interface {v3}, Lcom/join/kotlin/base/impl/GInfo;->getTagInfo()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    goto :goto_4

    .line 79
    :cond_5
    move-object v3, v1

    .line 80
    :goto_4
    invoke-static {v3}, Lcom/join/mgps/Util/w0;->p(Ljava/util/List;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_7

    .line 85
    .line 86
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/IExposure;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    const-string v4, "cloudGame"

    .line 91
    .line 92
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 93
    .line 94
    .line 95
    goto :goto_6

    .line 96
    :cond_6
    :goto_5
    invoke-interface {p1}, Lcom/join/kotlin/base/impl/IExposure;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    const-string v4, "game"

    .line 101
    .line 102
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 103
    .line 104
    .line 105
    :cond_7
    :goto_6
    if-eqz v2, :cond_8

    .line 106
    .line 107
    if-eqz v5, :cond_8

    .line 108
    .line 109
    invoke-interface {p1, v0}, Lcom/join/kotlin/base/impl/Downloadable;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 110
    .line 111
    .line 112
    goto :goto_7

    .line 113
    :cond_8
    if-eqz v5, :cond_9

    .line 114
    .line 115
    invoke-interface {p1, v0}, Lcom/join/kotlin/base/impl/Downloadable;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 116
    .line 117
    .line 118
    goto :goto_7

    .line 119
    :cond_9
    if-eqz v2, :cond_a

    .line 120
    .line 121
    invoke-interface {p1, v6}, Lcom/join/kotlin/base/impl/Downloadable;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 122
    .line 123
    .line 124
    goto :goto_7

    .line 125
    :cond_a
    if-eqz v6, :cond_b

    .line 126
    .line 127
    invoke-interface {p1, v6}, Lcom/join/kotlin/base/impl/Downloadable;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 128
    .line 129
    .line 130
    goto :goto_7

    .line 131
    :cond_b
    if-eqz v0, :cond_c

    .line 132
    .line 133
    invoke-interface {p1, v0}, Lcom/join/kotlin/base/impl/Downloadable;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 134
    .line 135
    .line 136
    goto :goto_7

    .line 137
    :cond_c
    invoke-interface {p1, v1}, Lcom/join/kotlin/base/impl/Downloadable;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 138
    .line 139
    .line 140
    :goto_7
    return-void
.end method

.method public final updateDownloadedNum()V
    .locals 2

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/MApplication;->z:Lcom/MApplication;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lq5/f;->U(Landroid/content/Context;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sput v0, Lcom/join/kotlin/utils/DlTaskManager;->downloadedNum:I

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/join/kotlin/utils/DlTaskManager;->recomputeDownloadingNum()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.class public final Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$ArchiveDownStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModDataRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModDataRequest.kt\ncom/join/kotlin/ui/cloudarchive/data/ModDataRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,580:1\n1#2:581\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0001aB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J?\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u00172\u0006\u00106\u001a\u00020\u001e2\u0006\u00107\u001a\u00020\"2\u0008\u00108\u001a\u0004\u0018\u00010\u001e2\u0008\u00109\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0002\u0010:J?\u0010;\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u00172\u0006\u00106\u001a\u00020\u001e2\u0006\u00107\u001a\u00020\"2\u0008\u00108\u001a\u0004\u0018\u00010\u001e2\u0008\u00109\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0002\u0010:J\u001e\u0010<\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u00172\u0006\u00106\u001a\u00020\u001eJ\u000e\u0010@\u001a\u00020\"2\u0006\u0010A\u001a\u00020BJ\u0010\u0010C\u001a\u0002022\u0006\u0010A\u001a\u00020BH\u0002J\u001e\u0010D\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u00172\u0006\u00106\u001a\u00020\u001eJ\u0010\u0010E\u001a\u0002022\u0008\u0010F\u001a\u0004\u0018\u00010\u0008J.\u0010M\u001a\u0002022\u0006\u0010F\u001a\u00020\u00082\u0006\u0010N\u001a\u00020O2\u0006\u0010P\u001a\u00020\u001e2\u0006\u0010Q\u001a\u00020\u00172\u0006\u00103\u001a\u000204J\u0018\u0010R\u001a\u0002022\u0006\u0010S\u001a\u00020T2\u0006\u00103\u001a\u000204H\u0002J\u0018\u0010U\u001a\u0002022\u0006\u0010S\u001a\u00020T2\u0006\u00103\u001a\u000204H\u0002J\u0018\u0010V\u001a\u0002022\u0006\u0010W\u001a\u00020X2\u0006\u0010Y\u001a\u00020ZH\u0002J\u001e\u0010[\u001a\u0002022\u0006\u0010S\u001a\u00020T2\u0006\u0010\\\u001a\u00020\u001e2\u0006\u00103\u001a\u000204J(\u0010]\u001a\u0002022\u0006\u0010S\u001a\u00020T2\u0006\u0010^\u001a\u00020\u001e2\u0006\u0010_\u001a\u00020\u001e2\u0006\u00103\u001a\u000204H\u0002J\u0016\u0010`\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u0010F\u001a\u00020\u0008R,\u0010\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u00060\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR,\u0010\r\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u00060\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\n\"\u0004\u0008\u000f\u0010\u000cR.\u0010\u0010\u001a\u0016\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0006\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R \u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\n\"\u0004\u0008\u0019\u0010\u000cR \u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\n\"\u0004\u0008\u001c\u0010\u000cR \u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\n\"\u0004\u0008 \u0010\u000cR\u001a\u0010!\u001a\u00020\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R \u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\n\"\u0004\u0008)\u0010\u000cR&\u0010*\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0\u00060\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\n\"\u0004\u0008-\u0010\u000cR(\u0010.\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0\u0006\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u0013\"\u0004\u00080\u0010\u0015R\u001a\u0010=\u001a\u00020\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010$\"\u0004\u0008?\u0010&R\u001b\u0010G\u001a\u00020H8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008K\u0010L\u001a\u0004\u0008I\u0010J\u00a8\u0006b"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;",
        "",
        "<init>",
        "()V",
        "resultData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/join/mgps/dto/ResponseModel;",
        "",
        "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
        "getResultData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setResultData",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "resultAllHasDownloadData",
        "getResultAllHasDownloadData",
        "setResultAllHasDownloadData",
        "result",
        "Lretrofit2/Call;",
        "getResult",
        "()Lretrofit2/Call;",
        "setResult",
        "(Lretrofit2/Call;)V",
        "status",
        "",
        "getStatus",
        "setStatus",
        "progress",
        "getProgress",
        "setProgress",
        "progressTextShow",
        "",
        "getProgressTextShow",
        "setProgressTextShow",
        "actualSize",
        "",
        "getActualSize",
        "()J",
        "setActualSize",
        "(J)V",
        "dataChangeItem",
        "getDataChangeItem",
        "setDataChangeItem",
        "resultDataPd",
        "Lcom/join/mgps/dto/ArchiveDataAddPd;",
        "getResultDataPd",
        "setResultDataPd",
        "resultPd",
        "getResultPd",
        "setResultPd",
        "getModeDatas",
        "",
        "context",
        "Landroid/content/Context;",
        "page",
        "gameId",
        "lastEnterTime",
        "tagId",
        "type",
        "(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;Ljava/lang/Integer;)V",
        "getModeDatasAddPd",
        "getAllDownloedArchive",
        "time",
        "getTime",
        "setTime",
        "getFileUpdateTimeMain",
        "file",
        "Ljava/io/File;",
        "getFileUpdateTime",
        "loadMyInShop",
        "cancleDownloadTask",
        "archiveData",
        "factory",
        "Lcom/github/snowdream/android/app/downloader/CommonDownloadFactory;",
        "getFactory",
        "()Lcom/github/snowdream/android/app/downloader/CommonDownloadFactory;",
        "factory$delegate",
        "Lkotlin/Lazy;",
        "downloadArchive",
        "pathData",
        "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;",
        "filePath",
        "downloadType",
        "unzipToUser0",
        "table",
        "Lcom/join/mgps/db/tables/CloudArchiveTable;",
        "unZip",
        "copyFileSimple",
        "input",
        "Ljava/io/InputStream;",
        "out",
        "Ljava/io/OutputStream;",
        "unzipToPath",
        "archiveLocalPath",
        "unZipOne",
        "root",
        "child",
        "reportDownloadArchive",
        "ArchiveDownStatus",
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
        "SMAP\nModDataRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModDataRequest.kt\ncom/join/kotlin/ui/cloudarchive/data/ModDataRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,580:1\n1#2:581\n*E\n"
    }
.end annotation


# instance fields
.field private actualSize:J

.field private dataChangeItem:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final factory$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private progress:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private progressTextShow:Landroidx/lifecycle/MutableLiveData;
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

.field private result:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private resultAllHasDownloadData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private resultData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private resultDataPd:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/ArchiveDataAddPd;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private resultPd:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/ArchiveDataAddPd;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private status:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->resultData:Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->resultAllHasDownloadData:Landroidx/lifecycle/MutableLiveData;

    .line 17
    .line 18
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->status:Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 26
    .line 27
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->progress:Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->progressTextShow:Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->dataChangeItem:Landroidx/lifecycle/MutableLiveData;

    .line 45
    .line 46
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 47
    .line 48
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->resultDataPd:Landroidx/lifecycle/MutableLiveData;

    .line 52
    .line 53
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/data/e;

    .line 54
    .line 55
    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/data/e;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->factory$delegate:Lkotlin/Lazy;

    .line 63
    .line 64
    return-void
.end method

.method public static synthetic a()Lcom/github/snowdream/android/app/downloader/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->factory_delegate$lambda$0()Lcom/github/snowdream/android/app/downloader/b;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$unZip(Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;Lcom/join/mgps/db/tables/CloudArchiveTable;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->unZip(Lcom/join/mgps/db/tables/CloudArchiveTable;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$unzipToUser0(Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;Lcom/join/mgps/db/tables/CloudArchiveTable;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->unzipToUser0(Lcom/join/mgps/db/tables/CloudArchiveTable;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;Lcom/join/mgps/db/tables/CloudArchiveTable;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->unZip$lambda$2(Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;Lcom/join/mgps/db/tables/CloudArchiveTable;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic c(Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;Lcom/join/mgps/db/tables/CloudArchiveTable;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->unzipToUser0$lambda$1(Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;Lcom/join/mgps/db/tables/CloudArchiveTable;Landroid/content/Context;)V

    return-void
.end method

.method private final copyFileSimple(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 7
    .line 8
    invoke-direct {v1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 9
    .line 10
    .line 11
    const/16 v2, 0x1400

    .line 12
    .line 13
    new-array v2, v2, [B

    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, -0x1

    .line 20
    if-eq v3, v4, :cond_0

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private static final factory_delegate$lambda$0()Lcom/github/snowdream/android/app/downloader/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/github/snowdream/android/app/downloader/b;->e()Lcom/github/snowdream/android/app/downloader/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final getFileUpdateTime(Ljava/io/File;)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/io/File;

    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v0}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getFileUpdateTime(Ljava/io/File;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-static {p1}, Lcom/join/kotlin/ui/cloudarchive/a;->a(Ljava/io/File;)Ljava/nio/file/Path;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {}, Lcn/fly/tools/utils/n;->a()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/4 v1, 0x0

    .line 49
    new-array v1, v1, [Ljava/nio/file/LinkOption;

    .line 50
    .line 51
    invoke-static {p1, v0, v1}, Lcn/fly/tools/utils/o;->a(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Lcom/join/kotlin/ui/cloudarchive/b;->a(Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/attribute/FileTime;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1}, Lcn/fly/tools/utils/q;->a(Ljava/nio/file/attribute/FileTime;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    iget-wide v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->time:J

    .line 64
    .line 65
    cmp-long p1, v0, v2

    .line 66
    .line 67
    if-lez p1, :cond_3

    .line 68
    .line 69
    iput-wide v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->time:J

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Ljava/io/File;

    .line 97
    .line 98
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0, v0}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getFileUpdateTime(Ljava/io/File;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    iget-wide v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->time:J

    .line 110
    .line 111
    cmp-long p1, v0, v2

    .line 112
    .line 113
    if-lez p1, :cond_3

    .line 114
    .line 115
    iput-wide v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->time:J

    .line 116
    .line 117
    :cond_3
    :goto_2
    return-void
.end method

.method private final unZip(Lcom/join/mgps/db/tables/CloudArchiveTable;Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/data/f;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/join/kotlin/ui/cloudarchive/data/f;-><init>(Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;Lcom/join/mgps/db/tables/CloudArchiveTable;Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final unZip$lambda$2(Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;Lcom/join/mgps/db/tables/CloudArchiveTable;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getArchiveFolder()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getArchiveFolder(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v0, p2}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->unzipToPath(Lcom/join/mgps/db/tables/CloudArchiveTable;Ljava/lang/String;Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getMainArchiveLocalPath2()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 29
    :goto_1
    if-nez v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getMainArchiveLocalPath2()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "getMainArchiveLocalPath2(...)"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1, v0, p2}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->unzipToPath(Lcom/join/mgps/db/tables/CloudArchiveTable;Ljava/lang/String;Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-static {}, Lt6/g;->t()Lt6/g;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getGameId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getArchiveId()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p2, v0, v1}, Lt6/g;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/db/tables/CloudArchiveTable;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    if-nez p2, :cond_3

    .line 60
    .line 61
    invoke-static {}, Lt6/g;->t()Lt6/g;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p2, p1}, Lq5/b;->k(Ljava/lang/Object;)I

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getId()I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    invoke-virtual {p1, p2}, Lcom/join/mgps/db/tables/CloudArchiveTable;->setId(I)V

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lt6/g;->t()Lt6/g;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p2, p1}, Lq5/b;->update(Ljava/lang/Object;)I

    .line 81
    .line 82
    .line 83
    :goto_2
    sget-object p2, Lcom/join/mgps/va/overmind/i;->g:Lcom/join/mgps/va/overmind/i$a;

    .line 84
    .line 85
    invoke-virtual {p2}, Lcom/join/mgps/va/overmind/i$a;->d()Lcom/join/mgps/va/overmind/i;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getPackageName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getUserId()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    invoke-virtual {p2, v0, p1}, Lcom/join/mgps/va/overmind/i;->h(Ljava/lang/String;I)Z

    .line 98
    .line 99
    .line 100
    iget-object p0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->status:Landroidx/lifecycle/MutableLiveData;

    .line 101
    .line 102
    const/16 p1, 0x8

    .line 103
    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method private final unZipOne(Lcom/join/mgps/db/tables/CloudArchiveTable;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    const-string v0, "getPackageName(...)"

    .line 6
    .line 7
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "com.mengnieyu.helloworld"

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x2

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {p4, v0, v3, v2, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p4

    .line 19
    const-string v0, "/app_webview"

    .line 20
    .line 21
    invoke-static {p3, v0, v3, v2, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    and-int/2addr p4, v0

    .line 26
    if-eqz p4, :cond_0

    .line 27
    .line 28
    invoke-static {}, Lcom/join/mgps/Util/e2;->n()Z

    .line 29
    .line 30
    .line 31
    move-result p4

    .line 32
    if-eqz p4, :cond_0

    .line 33
    .line 34
    const-string v1, "app_webview"

    .line 35
    .line 36
    const-string v2, "app_hws_webview"

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    const/4 v4, 0x4

    .line 40
    const/4 v5, 0x0

    .line 41
    move-object v0, p3

    .line 42
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replaceFirst$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    :cond_0
    new-instance p4, Ljava/io/File;

    .line 47
    .line 48
    invoke-direct {p4, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p1, p2}, Lcom/join/mgps/db/tables/CloudArchiveTable;->setArchiveFiles(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-nez p2, :cond_1

    .line 63
    .line 64
    invoke-virtual {p4}, Ljava/io/File;->mkdirs()Z

    .line 65
    .line 66
    .line 67
    :cond_1
    new-instance p2, Lcom/join/kotlin/ui/cloudarchive/util/ArchiveZipUtil;

    .line 68
    .line 69
    invoke-direct {p2}, Lcom/join/kotlin/ui/cloudarchive/util/ArchiveZipUtil;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    const-string p4, "getAbsolutePath(...)"

    .line 77
    .line 78
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance p4, Ljava/io/File;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getArchiveZipPath()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {p4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, p3, p4}, Lcom/join/kotlin/ui/cloudarchive/util/ArchiveZipUtil;->unZipActiveFilesKotlin(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catch_0
    move-exception p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    .line 97
    .line 98
    :goto_0
    return-void
.end method

.method private final unzipToUser0(Lcom/join/mgps/db/tables/CloudArchiveTable;Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/data/d;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/join/kotlin/ui/cloudarchive/data/d;-><init>(Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;Lcom/join/mgps/db/tables/CloudArchiveTable;Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final unzipToUser0$lambda$1(Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;Lcom/join/mgps/db/tables/CloudArchiveTable;Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getArchiveFolder()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getArchiveFolder(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v0, p2}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->unzipToPath(Lcom/join/mgps/db/tables/CloudArchiveTable;Ljava/lang/String;Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getMainArchiveLocalPath2()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 29
    :goto_1
    if-nez v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getMainArchiveLocalPath2()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "getMainArchiveLocalPath2(...)"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1, v0, p2}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->unzipToPath(Lcom/join/mgps/db/tables/CloudArchiveTable;Ljava/lang/String;Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-static {}, Lt6/g;->t()Lt6/g;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getGameId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getUserId()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {p2, v0, v1}, Lt6/g;->s(Ljava/lang/String;I)Lcom/join/mgps/db/tables/CloudArchiveTable;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    if-nez p2, :cond_3

    .line 60
    .line 61
    invoke-static {}, Lt6/g;->t()Lt6/g;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p2, p1}, Lq5/b;->k(Ljava/lang/Object;)I

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getArchiveDataJson()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const-class v2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 78
    .line 79
    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 84
    .line 85
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;

    .line 90
    .line 91
    const/16 v3, 0x9

    .line 92
    .line 93
    invoke-direct {v2, v3, v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;-><init>(ILcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/j0;->c(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getId()I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    invoke-virtual {p1, p2}, Lcom/join/mgps/db/tables/CloudArchiveTable;->setId(I)V

    .line 104
    .line 105
    .line 106
    invoke-static {}, Lt6/g;->t()Lt6/g;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {p2, p1}, Lq5/b;->update(Ljava/lang/Object;)I

    .line 111
    .line 112
    .line 113
    :goto_2
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getArchiveZipPath()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    if-eqz p2, :cond_4

    .line 118
    .line 119
    new-instance p2, Ljava/io/File;

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getArchiveZipPath()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-static {p2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 129
    .line 130
    .line 131
    :cond_4
    sget-object p2, Lcom/join/mgps/va/overmind/i;->g:Lcom/join/mgps/va/overmind/i$a;

    .line 132
    .line 133
    invoke-virtual {p2}, Lcom/join/mgps/va/overmind/i$a;->d()Lcom/join/mgps/va/overmind/i;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getUserId()I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    invoke-virtual {p2, p1}, Lcom/join/mgps/va/overmind/i;->i0(I)V

    .line 142
    .line 143
    .line 144
    iget-object p0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->status:Landroidx/lifecycle/MutableLiveData;

    .line 145
    .line 146
    const/16 p1, 0x8

    .line 147
    .line 148
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    return-void
.end method


# virtual methods
.method public final cancleDownloadTask(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getFactory()Lcom/github/snowdream/android/app/downloader/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocation()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/b;->l(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final downloadArchive(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 10
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "archiveData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pathData"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "filePath"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "context"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 22
    .line 23
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v1, ""

    .line 27
    .line 28
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getFactory()Lcom/github/snowdream/android/app/downloader/b;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    new-instance v9, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;

    .line 35
    .line 36
    move-object v1, v9

    .line 37
    move-object v2, p0

    .line 38
    move-object v3, p1

    .line 39
    move v4, p4

    .line 40
    move-object v5, p2

    .line 41
    move-object v6, v0

    .line 42
    move-object v7, p5

    .line 43
    invoke-direct/range {v1 .. v7}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;ILcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v8, v9}, Lcom/github/snowdream/android/app/downloader/b;->m(Lcom/github/snowdream/android/app/downloader/b$b;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getFactory()Lcom/github/snowdream/android/app/downloader/b;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/b;->i()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const/16 p3, 0x2f

    .line 80
    .line 81
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    new-instance p2, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    iput-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 104
    .line 105
    new-instance p2, Lcom/github/snowdream/android/app/downloader/c;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocation()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveSize()J

    .line 112
    .line 113
    .line 114
    move-result-wide v5

    .line 115
    move-object v1, p2

    .line 116
    invoke-direct/range {v1 .. v6}, Lcom/github/snowdream/android/app/downloader/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getFactory()Lcom/github/snowdream/android/app/downloader/b;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1, p2}, Lcom/github/snowdream/android/app/downloader/b;->b(Lcom/github/snowdream/android/app/downloader/c;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public final getActualSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->actualSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getAllDownloedArchive(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "gameId"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/join/mgps/dto/RequestGameIdArgs;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p3}, Lcom/join/mgps/dto/RequestGameIdArgs;->setGameId(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p2}, Lcom/join/mgps/dto/RequestGameIdArgs;->setPage(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestGameIdArgs;->setUid(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-interface {p1, p3}, Lb7/i;->v1(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->result:Lretrofit2/Call;

    .line 65
    .line 66
    if-eqz p1, :cond_0

    .line 67
    .line 68
    new-instance p3, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$getAllDownloedArchive$1;

    .line 69
    .line 70
    invoke-direct {p3, p2, p0}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$getAllDownloedArchive$1;-><init>(ILcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, p3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 74
    .line 75
    .line 76
    :cond_0
    return-void
.end method

.method public final getDataChangeItem()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->dataChangeItem:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFactory()Lcom/github/snowdream/android/app/downloader/b;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->factory$delegate:Lkotlin/Lazy;

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
    check-cast v0, Lcom/github/snowdream/android/app/downloader/b;

    .line 13
    .line 14
    return-object v0
.end method

.method public final getFileUpdateTimeMain(Ljava/io/File;)J
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "file"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->time:J

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getFileUpdateTime(Ljava/io/File;)V

    .line 11
    .line 12
    .line 13
    iget-wide v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->time:J

    .line 14
    .line 15
    return-wide v0
.end method

.method public final getModeDatas(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "gameId"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/join/mgps/dto/RequestGameIdArgs;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p3}, Lcom/join/mgps/dto/RequestGameIdArgs;->setGameId(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p2}, Lcom/join/mgps/dto/RequestGameIdArgs;->setPage(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestGameIdArgs;->setUid(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p4, p5}, Lcom/join/mgps/dto/RequestGameIdArgs;->setLastEnterTime(J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p6}, Lcom/join/mgps/dto/RequestGameIdArgs;->setTagId(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    if-eqz p7, :cond_0

    .line 52
    .line 53
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 p1, 0x1

    .line 59
    :goto_0
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestGameIdArgs;->setType(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    invoke-interface {p1, p3}, Lb7/i;->G1(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->result:Lretrofit2/Call;

    .line 82
    .line 83
    if-eqz p1, :cond_1

    .line 84
    .line 85
    new-instance p3, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$getModeDatas$1;

    .line 86
    .line 87
    invoke-direct {p3, p2, p0}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$getModeDatas$1;-><init>(ILcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;)V

    .line 88
    .line 89
    .line 90
    invoke-interface {p1, p3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 91
    .line 92
    .line 93
    :cond_1
    return-void
.end method

.method public final getModeDatasAddPd(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "gameId"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/join/mgps/dto/RequestGameIdArgs;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p3}, Lcom/join/mgps/dto/RequestGameIdArgs;->setGameId(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p2}, Lcom/join/mgps/dto/RequestGameIdArgs;->setPage(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestGameIdArgs;->setUid(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p4, p5}, Lcom/join/mgps/dto/RequestGameIdArgs;->setLastEnterTime(J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p6}, Lcom/join/mgps/dto/RequestGameIdArgs;->setTagId(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    if-eqz p7, :cond_0

    .line 52
    .line 53
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 p1, 0x1

    .line 59
    :goto_0
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestGameIdArgs;->setType(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    invoke-interface {p1, p3}, Lb7/i;->P0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->resultPd:Lretrofit2/Call;

    .line 82
    .line 83
    if-eqz p1, :cond_1

    .line 84
    .line 85
    new-instance p3, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$getModeDatasAddPd$1;

    .line 86
    .line 87
    invoke-direct {p3, p2, p0}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$getModeDatasAddPd$1;-><init>(ILcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;)V

    .line 88
    .line 89
    .line 90
    invoke-interface {p1, p3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 91
    .line 92
    .line 93
    :cond_1
    return-void
.end method

.method public final getProgress()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->progress:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getProgressTextShow()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->progressTextShow:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResult()Lretrofit2/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->result:Lretrofit2/Call;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResultAllHasDownloadData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->resultAllHasDownloadData:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResultData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->resultData:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResultDataPd()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/ArchiveDataAddPd;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->resultDataPd:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResultPd()Lretrofit2/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/ArchiveDataAddPd;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->resultPd:Lretrofit2/Call;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStatus()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->status:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final loadMyInShop(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "gameId"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/join/mgps/dto/RequestGameIdArgs;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p3}, Lcom/join/mgps/dto/RequestGameIdArgs;->setGameId(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p2}, Lcom/join/mgps/dto/RequestGameIdArgs;->setPage(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestGameIdArgs;->setUid(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-interface {p1, p3}, Lb7/i;->N0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->result:Lretrofit2/Call;

    .line 65
    .line 66
    if-eqz p1, :cond_0

    .line 67
    .line 68
    new-instance p3, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$loadMyInShop$1;

    .line 69
    .line 70
    invoke-direct {p3, p2, p0}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$loadMyInShop$1;-><init>(ILcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, p3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 74
    .line 75
    .line 76
    :cond_0
    return-void
.end method

.method public final reportDownloadArchive(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "archiveData"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iput-object v2, v1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;->archiveId:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iput-object p2, v1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;->gameId:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iput p1, v1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;->uid:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-interface {p1, p2}, Lb7/i;->E1(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance p2, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$reportDownloadArchive$1;

    .line 70
    .line 71
    invoke-direct {p2}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$reportDownloadArchive$1;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final setActualSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->actualSize:J

    .line 2
    .line 3
    return-void
.end method

.method public final setDataChangeItem(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->dataChangeItem:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method

.method public final setProgress(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->progress:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method

.method public final setProgressTextShow(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->progressTextShow:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method

.method public final setResult(Lretrofit2/Call;)V
    .locals 0
    .param p1    # Lretrofit2/Call;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->result:Lretrofit2/Call;

    .line 2
    .line 3
    return-void
.end method

.method public final setResultAllHasDownloadData(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;>;)V"
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->resultAllHasDownloadData:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method

.method public final setResultData(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;>;)V"
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->resultData:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method

.method public final setResultDataPd(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/ArchiveDataAddPd;",
            ">;>;)V"
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->resultDataPd:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method

.method public final setResultPd(Lretrofit2/Call;)V
    .locals 0
    .param p1    # Lretrofit2/Call;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/ArchiveDataAddPd;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->resultPd:Lretrofit2/Call;

    .line 2
    .line 3
    return-void
.end method

.method public final setStatus(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->status:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method

.method public final setTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->time:J

    .line 2
    .line 3
    return-void
.end method

.method public final unzipToPath(Lcom/join/mgps/db/tables/CloudArchiveTable;Ljava/lang/String;Landroid/content/Context;)V
    .locals 11
    .param p1    # Lcom/join/mgps/db/tables/CloudArchiveTable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "table"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "archiveLocalPath"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "context"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "/Android/data"

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x2

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const-string v5, "/user/"

    .line 26
    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    sget-object v1, Lcom/join/mgps/va/overmind/k;->a:Lcom/join/mgps/va/overmind/k;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/join/mgps/va/overmind/k;->k0()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getUserId()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    const-string v2, ""

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getUserId()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v4, "/Android/data/"

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getPackageName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getPackageName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    const/4 v8, 0x0

    .line 112
    const/4 v9, 0x4

    .line 113
    const/4 v10, 0x0

    .line 114
    move-object v5, p2

    .line 115
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->unZipOne(Lcom/join/mgps/db/tables/CloudArchiveTable;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_1
    const-string v0, "/data/data/"

    .line 124
    .line 125
    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_2

    .line 130
    .line 131
    sget-object v1, Lcom/join/mgps/va/overmind/k;->a:Lcom/join/mgps/va/overmind/k;

    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getPackageName()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    const-string v3, "getPackageName(...)"

    .line 138
    .line 139
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getUserId()I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/va/overmind/k;->D(Ljava/lang/String;I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getPackageName()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    const-string v5, ""

    .line 170
    .line 171
    const/4 v6, 0x0

    .line 172
    const/4 v7, 0x4

    .line 173
    const/4 v8, 0x0

    .line 174
    move-object v3, p2

    .line 175
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->unZipOne(Lcom/join/mgps/db/tables/CloudArchiveTable;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_2
    sget-object v0, Lcom/join/mgps/va/overmind/k;->a:Lcom/join/mgps/va/overmind/k;

    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/k;->k0()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getUserId()I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const/16 v2, 0x2f

    .line 205
    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getPackageName()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->unZipOne(Lcom/join/mgps/db/tables/CloudArchiveTable;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 227
    .line 228
    .line 229
    :goto_1
    return-void
.end method

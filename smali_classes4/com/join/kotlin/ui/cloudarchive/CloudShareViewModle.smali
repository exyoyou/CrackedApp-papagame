.class public final Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001:\u0001bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010B\u001a\u00020C2\u0006\u0010D\u001a\u00020EJ,\u0010F\u001a\u00020C2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010G\u001a\u00020H2\u0006\u0010D\u001a\u00020E2\u000c\u0010I\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u001cJ,\u0010J\u001a\u00020C2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010K\u001a\u00020H2\u0006\u0010D\u001a\u00020E2\u000c\u0010I\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u001cJ\u001c\u0010L\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u001c2\u0006\u0010D\u001a\u00020E2\u0006\u0010\u000f\u001a\u00020\u0010J<\u0010M\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u001c2\u0006\u0010D\u001a\u00020E2\u0006\u0010N\u001a\u00020H2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010O\u001a\u00020H2\u000c\u0010P\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u001cH\u0002J6\u0010Q\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u001c2\u0006\u0010R\u001a\u00020H2\u0006\u0010S\u001a\u00020H2\u0006\u0010T\u001a\u00020H2\u000e\u0008\u0002\u0010U\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u001cH\u0002J\u0016\u0010V\u001a\u00020)2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010W\u001a\u00020XJ\u000e\u0010^\u001a\u00020\u00062\u0006\u0010W\u001a\u00020XJ\u0010\u0010_\u001a\u00020C2\u0006\u0010W\u001a\u00020XH\u0002J\u0016\u0010`\u001a\u00020C2\u0006\u0010a\u001a\u00020H2\u0006\u0010D\u001a\u00020ER \u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR \u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0008\"\u0004\u0008\u000e\u0010\nR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR \u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\"\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0018\"\u0004\u0008$\u0010\u001aR&\u0010%\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u001c0\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u0008\"\u0004\u0008\'\u0010\nR\u001a\u0010(\u001a\u00020)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R \u0010.\u001a\u0008\u0012\u0004\u0012\u00020)0\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u0008\"\u0004\u00080\u0010\nR\u0014\u00101\u001a\u0008\u0012\u0004\u0012\u00020302X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u00104\u001a\u0008\u0012\u0004\u0012\u00020302X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001a\u00109\u001a\u00020)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010+\"\u0004\u0008;\u0010-R\u001c\u0010<\u001a\u0004\u0018\u00010=X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010AR\u001a\u0010Y\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Z\u0010[\"\u0004\u0008\\\u0010]\u00a8\u0006c"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;",
        "Landroidx/lifecycle/ViewModel;",
        "<init>",
        "()V",
        "runIngArchiveId",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "getRunIngArchiveId",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setRunIngArchiveId",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "showDownlloadDialog",
        "",
        "getShowDownlloadDialog",
        "setShowDownlloadDialog",
        "modGameArchivePathData",
        "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;",
        "getModGameArchivePathData",
        "()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;",
        "setModGameArchivePathData",
        "(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;)V",
        "archiveData",
        "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
        "getArchiveData",
        "()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
        "setArchiveData",
        "(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V",
        "goldFingerBean",
        "",
        "Lcom/join/mgps/dto/GoldFingerBean;",
        "getGoldFingerBean",
        "()Ljava/util/List;",
        "setGoldFingerBean",
        "(Ljava/util/List;)V",
        "lastStartArchive",
        "getLastStartArchive",
        "setLastStartArchive",
        "localArchiveLists",
        "getLocalArchiveLists",
        "setLocalArchiveLists",
        "installInExtPlug",
        "",
        "getInstallInExtPlug",
        "()Z",
        "setInstallInExtPlug",
        "(Z)V",
        "showDialog",
        "getShowDialog",
        "setShowDialog",
        "_event",
        "Lcom/join/kotlin/domain/common/SingleLiveEvent;",
        "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;",
        "event",
        "getEvent",
        "()Lcom/join/kotlin/domain/common/SingleLiveEvent;",
        "setEvent",
        "(Lcom/join/kotlin/domain/common/SingleLiveEvent;)V",
        "initFinish",
        "getInitFinish",
        "setInitFinish",
        "parentExtBean",
        "Lcom/join/mgps/dto/ExtBean;",
        "getParentExtBean",
        "()Lcom/join/mgps/dto/ExtBean;",
        "setParentExtBean",
        "(Lcom/join/mgps/dto/ExtBean;)V",
        "loadLocalArchiveDatas",
        "",
        "context",
        "Landroid/content/Context;",
        "loadLocalExtArchiveMain",
        "mainArchiveLocalPath",
        "",
        "archiveList",
        "loadLocalExArchive",
        "archiveLocation",
        "loadLocalArchive",
        "loadLocalArchiveexcues",
        "packagename",
        "path",
        "archiveS",
        "loadSingleGameSlot",
        "src",
        "subPath",
        "packageName",
        "list",
        "checkArchiveHas",
        "file",
        "Ljava/io/File;",
        "time",
        "getTime",
        "()J",
        "setTime",
        "(J)V",
        "getFileUpdateTimeMain",
        "getFileUpdateTime",
        "getDetialData",
        "gameId",
        "CloudShareEvent",
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


# instance fields
.field private final _event:Lcom/join/kotlin/domain/common/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/kotlin/domain/common/SingleLiveEvent<",
            "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private event:Lcom/join/kotlin/domain/common/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/kotlin/domain/common/SingleLiveEvent<",
            "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private goldFingerBean:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GoldFingerBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private initFinish:Z

.field private installInExtPlug:Z

.field private lastStartArchive:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private localArchiveLists:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private modGameArchivePathData:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private parentExtBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private runIngArchiveId:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private showDialog:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private showDownlloadDialog:Landroidx/lifecycle/MutableLiveData;
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
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

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
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->runIngArchiveId:Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->showDownlloadDialog:Landroidx/lifecycle/MutableLiveData;

    .line 17
    .line 18
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->modGameArchivePathData:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 24
    .line 25
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->goldFingerBean:Ljava/util/List;

    .line 38
    .line 39
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 40
    .line 41
    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->lastStartArchive:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 45
    .line 46
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 47
    .line 48
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->localArchiveLists:Landroidx/lifecycle/MutableLiveData;

    .line 52
    .line 53
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 54
    .line 55
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->showDialog:Landroidx/lifecycle/MutableLiveData;

    .line 59
    .line 60
    new-instance v0, Lcom/join/kotlin/domain/common/SingleLiveEvent;

    .line 61
    .line 62
    invoke-direct {v0}, Lcom/join/kotlin/domain/common/SingleLiveEvent;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->_event:Lcom/join/kotlin/domain/common/SingleLiveEvent;

    .line 66
    .line 67
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->event:Lcom/join/kotlin/domain/common/SingleLiveEvent;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->runIngArchiveId:Landroidx/lifecycle/MutableLiveData;

    .line 70
    .line 71
    const-wide/16 v1, 0x0

    .line 72
    .line 73
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->localArchiveLists:Landroidx/lifecycle/MutableLiveData;

    .line 81
    .line 82
    new-instance v1, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->showDialog:Landroidx/lifecycle/MutableLiveData;

    .line 91
    .line 92
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method private final getFileUpdateTime(Ljava/io/File;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v1, 0x1a

    .line 14
    .line 15
    if-lt v0, v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_4

    .line 28
    .line 29
    invoke-static {p1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Ljava/io/File;

    .line 44
    .line 45
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getFileUpdateTime(Ljava/io/File;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-static {p1}, Lcom/join/kotlin/ui/cloudarchive/a;->a(Ljava/io/File;)Ljava/nio/file/Path;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {}, Lcn/fly/tools/utils/n;->a()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/4 v1, 0x0

    .line 61
    new-array v1, v1, [Ljava/nio/file/LinkOption;

    .line 62
    .line 63
    invoke-static {p1, v0, v1}, Lcn/fly/tools/utils/o;->a(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, Lcom/join/kotlin/ui/cloudarchive/b;->a(Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/attribute/FileTime;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, Lcn/fly/tools/utils/q;->a(Ljava/nio/file/attribute/FileTime;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    iget-wide v2, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->time:J

    .line 76
    .line 77
    cmp-long p1, v0, v2

    .line 78
    .line 79
    if-lez p1, :cond_4

    .line 80
    .line 81
    iput-wide v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->time:J

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    invoke-static {p1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_4

    .line 105
    .line 106
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Ljava/io/File;

    .line 111
    .line 112
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-direct {p0, v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getFileUpdateTime(Ljava/io/File;)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 120
    .line 121
    .line 122
    move-result-wide v0

    .line 123
    iget-wide v2, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->time:J

    .line 124
    .line 125
    cmp-long p1, v0, v2

    .line 126
    .line 127
    if-lez p1, :cond_4

    .line 128
    .line 129
    iput-wide v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->time:J

    .line 130
    .line 131
    :cond_4
    :goto_2
    return-void
.end method

.method private final loadLocalArchiveexcues(Landroid/content/Context;Ljava/lang/String;Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    const-string v4, "/Android/data"

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    .line 1
    invoke-static {v10, v4, v12, v13, v14}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    const-string v5, "Android/data"

    const-string v15, "0"

    const/16 v9, 0x8

    const-string v8, "\u542f\u52a8"

    const/16 v7, 0x3e8

    const-string v6, "\u6211\u7684\u9ed8\u8ba4\u5b58\u6863"

    const/16 v16, 0x1

    if-nez v4, :cond_e

    invoke-static {v10, v5, v12, v13, v14}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string v4, "/data/data"

    .line 2
    invoke-static {v10, v4, v12, v13, v14}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3
    sget-object v1, Lcom/join/mgps/va/overmind/k;->a:Lcom/join/mgps/va/overmind/k;

    invoke-static {v1, v2, v12, v13, v14}, Lcom/join/mgps/va/overmind/k;->E(Lcom/join/mgps/va/overmind/k;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v17, ""

    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object/from16 v4, p4

    move-object/from16 v21, v6

    move-object/from16 v6, v17

    move/from16 v7, v18

    move-object/from16 v22, v8

    move/from16 v8, v19

    move-object/from16 v9, v20

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 7
    array-length v7, v6

    if-nez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v7, 0x1

    :goto_2
    if-eqz v7, :cond_4

    .line 8
    invoke-static {}, Lcom/join/mgps/Util/v1;->e()Z

    move-result v7

    const-string v8, "/app_webview"

    .line 9
    invoke-static {v4, v8, v12, v13, v14}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    const-string v9, "app_webview"

    invoke-static {v4, v9, v12, v13, v14}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    or-int/2addr v8, v9

    and-int/2addr v7, v8

    if-eqz v7, :cond_4

    const-string v24, "app_webview"

    const-string v25, "app_hws_webview"

    const/16 v26, 0x0

    const/16 v27, 0x4

    const/16 v28, 0x0

    move-object/from16 v23, v4

    .line 10
    invoke-static/range {v23 .. v28}, Lkotlin/text/StringsKt;->replaceFirst$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 12
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    :cond_4
    if-eqz v6, :cond_b

    .line 13
    array-length v1, v6

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_6

    goto/16 :goto_6

    .line 14
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getArchiveType()I

    move-result v1

    if-nez v1, :cond_9

    .line 15
    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-direct {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;-><init>()V

    .line 16
    invoke-static {v6}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 17
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v6}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->checkArchiveHas(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_4

    :cond_8
    move/from16 v16, v6

    :goto_4
    if-eqz v16, :cond_16

    .line 18
    invoke-virtual {v1, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocalPath(Ljava/lang/String;)V

    move-object/from16 v4, v21

    .line 19
    invoke-virtual {v1, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveDesc(Ljava/lang/String;)V

    .line 20
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getFileUpdateTimeMain(Ljava/io/File;)J

    move-result-wide v4

    const/16 v7, 0x3e8

    int-to-long v6, v7

    div-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setAddTime(J)V

    .line 21
    invoke-virtual {v1, v10}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocation(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPackageName(Ljava/lang/String;)V

    .line 23
    invoke-virtual/range {p3 .. p3}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setGame_id(Ljava/lang/String;)V

    move-object/from16 v8, v22

    .line 24
    invoke-virtual {v1, v8}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    const/16 v9, 0x8

    .line 25
    invoke-virtual {v1, v9}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setStatus(I)V

    .line 26
    invoke-virtual {v1, v15}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setId(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1, v12}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setUserId(I)V

    .line 28
    invoke-virtual/range {p3 .. p3}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getArchiveFileSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveFileSuffix(Ljava/lang/String;)V

    .line 29
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_9
    move-object/from16 v4, v21

    move-object/from16 v8, v22

    const/16 v7, 0x3e8

    const/16 v9, 0x8

    .line 30
    invoke-static {v6}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    :cond_a
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 31
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v6}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->checkArchiveHas(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/io/File;)Z

    move-result v13

    if-eqz v13, :cond_a

    add-int/lit8 v5, v5, 0x1

    .line 32
    new-instance v13, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-direct {v13}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;-><init>()V

    .line 33
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocalPath(Ljava/lang/String;)V

    .line 34
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveDesc(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, v6}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getFileUpdateTimeMain(Ljava/io/File;)J

    move-result-wide v16

    int-to-long v9, v7

    div-long v9, v16, v9

    invoke-virtual {v13, v9, v10}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setAddTime(J)V

    move-object/from16 v6, p4

    .line 36
    invoke-virtual {v13, v6}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocation(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v13, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPackageName(Ljava/lang/String;)V

    .line 38
    invoke-virtual/range {p3 .. p3}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getGameId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setGame_id(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v13, v8}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    const/16 v9, 0x8

    .line 40
    invoke-virtual {v13, v9}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setStatus(I)V

    .line 41
    invoke-virtual {v13, v15}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setId(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v13, v12}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setUserId(I)V

    .line 43
    invoke-virtual/range {p3 .. p3}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getArchiveFileSuffix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveFileSuffix(Ljava/lang/String;)V

    .line 44
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v10, v6

    const/16 v9, 0x8

    goto :goto_5

    :cond_b
    :goto_6
    return-object v11

    :cond_c
    move-object v6, v10

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    .line 45
    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_d

    .line 46
    sget-object v3, Lcom/join/mgps/Util/z;->d:Ljava/lang/String;

    const-string v4, "SD"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v3, v6, v2, v11}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->loadSingleGameSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 47
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/internal"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-direct {v0, v1, v6, v2, v11}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->loadSingleGameSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_c

    :cond_e
    :goto_7
    move-object v4, v6

    move-object v6, v10

    .line 49
    invoke-static {v6, v5, v12, v13, v14}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2f

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_f
    move-object v1, v6

    .line 51
    :goto_8
    sget-object v5, Lcom/join/mgps/va/overmind/k;->a:Lcom/join/mgps/va/overmind/k;

    invoke-virtual {v5}, Lcom/join/mgps/va/overmind/k;->k0()Ljava/lang/String;

    move-result-object v5

    .line 52
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_16

    .line 53
    array-length v10, v9

    if-nez v10, :cond_10

    const/4 v10, 0x1

    goto :goto_9

    :cond_10
    const/4 v10, 0x0

    :goto_9
    if-eqz v10, :cond_11

    goto/16 :goto_c

    .line 54
    :cond_11
    invoke-virtual/range {p3 .. p3}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getArchiveType()I

    move-result v10

    if-nez v10, :cond_14

    .line 55
    new-instance v10, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-direct {v10}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;-><init>()V

    .line 56
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocalPath(Ljava/lang/String;)V

    .line 57
    invoke-static {v9}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 58
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v5}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->checkArchiveHas(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_12

    goto :goto_a

    :cond_13
    move/from16 v16, v5

    :goto_a
    if-eqz v16, :cond_16

    .line 59
    invoke-virtual {v10, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveDesc(Ljava/lang/String;)V

    .line 60
    new-instance v1, Ljava/io/File;

    invoke-virtual {v10}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getFileUpdateTimeMain(Ljava/io/File;)J

    move-result-wide v4

    int-to-long v13, v7

    div-long/2addr v4, v13

    .line 61
    invoke-virtual {v10, v4, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setAddTime(J)V

    .line 62
    invoke-virtual {v10, v6}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocation(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v10, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPackageName(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p3 .. p3}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setGame_id(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v10, v8}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 66
    invoke-virtual {v10, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setStatus(I)V

    .line 67
    invoke-virtual {v10, v15}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setId(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v10, v12}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setUserId(I)V

    .line 69
    invoke-virtual/range {p3 .. p3}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getArchiveFileSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveFileSuffix(Ljava/lang/String;)V

    .line 70
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 71
    :cond_14
    invoke-static {v9}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    .line 72
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v9}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->checkArchiveHas(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_15

    add-int/lit8 v5, v5, 0x1

    .line 73
    new-instance v10, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-direct {v10}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;-><init>()V

    .line 74
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocalPath(Ljava/lang/String;)V

    .line 75
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveDesc(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, v9}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getFileUpdateTimeMain(Ljava/io/File;)J

    move-result-wide v13

    move-object/from16 p1, v1

    int-to-long v0, v7

    div-long/2addr v13, v0

    invoke-virtual {v10, v13, v14}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setAddTime(J)V

    .line 77
    invoke-virtual {v10, v6}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocation(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v10, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPackageName(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p3 .. p3}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setGame_id(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v10, v8}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 81
    invoke-virtual {v10, v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setStatus(I)V

    .line 82
    invoke-virtual {v10, v15}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setId(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v10, v12}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setUserId(I)V

    .line 84
    invoke-virtual/range {p3 .. p3}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getArchiveFileSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveFileSuffix(Ljava/lang/String;)V

    .line 85
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_b

    :cond_15
    move-object/from16 v0, p0

    goto :goto_b

    :cond_16
    :goto_c
    return-object v11
.end method

.method private final loadSingleGameSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    move-object/from16 v5, p1

    .line 15
    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x2

    .line 20
    const/4 v6, 0x0

    .line 21
    const-string v7, "/"

    .line 22
    .line 23
    const/4 v8, 0x0

    .line 24
    invoke-static {v1, v7, v8, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    const-string v7, ""

    .line 31
    .line 32
    :cond_0
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    new-instance v5, Ljava/io/File;

    .line 43
    .line 44
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    if-eqz v5, :cond_7

    .line 52
    .line 53
    array-length v6, v5

    .line 54
    const/4 v7, 0x1

    .line 55
    if-nez v6, :cond_1

    .line 56
    .line 57
    const/4 v6, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 v6, 0x0

    .line 60
    :goto_0
    if-eqz v6, :cond_2

    .line 61
    .line 62
    goto/16 :goto_3

    .line 63
    .line 64
    :cond_2
    iget-object v6, v0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->modGameArchivePathData:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 65
    .line 66
    invoke-virtual {v6}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getArchiveType()I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    const-string v9, "0"

    .line 71
    .line 72
    const/16 v10, 0x8

    .line 73
    .line 74
    const-string v11, "\u542f\u52a8"

    .line 75
    .line 76
    const/16 v12, 0x3e8

    .line 77
    .line 78
    const-string v13, "\u6211\u7684\u9ed8\u8ba4\u5b58\u6863"

    .line 79
    .line 80
    if-nez v6, :cond_5

    .line 81
    .line 82
    new-instance v6, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 83
    .line 84
    invoke-direct {v6}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-static {v5}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v14

    .line 95
    if-eqz v14, :cond_4

    .line 96
    .line 97
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    check-cast v8, Ljava/io/File;

    .line 102
    .line 103
    iget-object v14, v0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->modGameArchivePathData:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 104
    .line 105
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v14, v8}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->checkArchiveHas(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/io/File;)Z

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    if-eqz v8, :cond_3

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_4
    move v7, v8

    .line 116
    :goto_1
    if-eqz v7, :cond_7

    .line 117
    .line 118
    invoke-virtual {v6, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocalPath(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6, v13}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveDesc(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    new-instance v5, Ljava/io/File;

    .line 125
    .line 126
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v5}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getFileUpdateTimeMain(Ljava/io/File;)J

    .line 130
    .line 131
    .line 132
    move-result-wide v4

    .line 133
    int-to-long v7, v12

    .line 134
    div-long/2addr v4, v7

    .line 135
    invoke-virtual {v6, v4, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setAddTime(J)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v6, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocation(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v6, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPackageName(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object v1, v0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->modGameArchivePathData:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getGameId()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v6, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setGame_id(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6, v11}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6, v10}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setStatus(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6, v9}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setId(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object v1, v0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->modGameArchivePathData:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 163
    .line 164
    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getArchiveFileSuffix()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v6, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveFileSuffix(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_5
    invoke-static {v5}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    const/4 v5, 0x0

    .line 180
    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    if-eqz v6, :cond_7

    .line 185
    .line 186
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    check-cast v6, Ljava/io/File;

    .line 191
    .line 192
    iget-object v7, v0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->modGameArchivePathData:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 193
    .line 194
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v7, v6}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->checkArchiveHas(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/io/File;)Z

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    if-eqz v7, :cond_6

    .line 202
    .line 203
    add-int/lit8 v5, v5, 0x1

    .line 204
    .line 205
    new-instance v7, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 206
    .line 207
    invoke-direct {v7}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;-><init>()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v14

    .line 214
    invoke-virtual {v7, v14}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocalPath(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    new-instance v14, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v14

    .line 232
    invoke-virtual {v7, v14}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveDesc(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v6}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getFileUpdateTimeMain(Ljava/io/File;)J

    .line 236
    .line 237
    .line 238
    move-result-wide v14

    .line 239
    move-object v6, v9

    .line 240
    int-to-long v8, v12

    .line 241
    div-long/2addr v14, v8

    .line 242
    invoke-virtual {v7, v14, v15}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setAddTime(J)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v7, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocation(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v7, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPackageName(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iget-object v8, v0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->modGameArchivePathData:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 252
    .line 253
    invoke-virtual {v8}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getGameId()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v8

    .line 257
    invoke-virtual {v7, v8}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setGame_id(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v7, v11}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v7, v10}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setStatus(I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v7, v6}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setId(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    const/4 v8, 0x0

    .line 270
    invoke-virtual {v7, v8}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setUserId(I)V

    .line 271
    .line 272
    .line 273
    iget-object v9, v0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->modGameArchivePathData:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 274
    .line 275
    invoke-virtual {v9}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getArchiveFileSuffix()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v9

    .line 279
    invoke-virtual {v7, v9}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveFileSuffix(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-object v9, v6

    .line 286
    goto :goto_2

    .line 287
    :cond_7
    :goto_3
    return-object v3
.end method

.method static synthetic loadSingleGameSlot$default(Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x8

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    new-instance p4, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->loadSingleGameSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method


# virtual methods
.method public final checkArchiveHas(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/io/File;)Z
    .locals 10
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "modGameArchivePathData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "file"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getArchiveFileSuffix()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "getArchiveFileSuffix(...)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x1

    .line 25
    const/4 v3, 0x0

    .line 26
    if-lez v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getArchiveFileSuffix()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string p1, ","

    .line 41
    .line 42
    filled-new-array {p1}, [Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const/4 v6, 0x0

    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v8, 0x6

    .line 49
    const/4 v9, 0x0

    .line 50
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    move-object v0, p1

    .line 55
    check-cast v0, Ljava/util/Collection;

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    xor-int/2addr v0, v2

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_3

    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const-string v4, "getName(...)"

    .line 95
    .line 96
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const/4 v5, 0x2

    .line 100
    const/4 v6, 0x0

    .line 101
    invoke-static {v1, v0, v3, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_3

    .line 106
    .line 107
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v1, v0, v3, v5, v6}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_1

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    const/4 v2, 0x0

    .line 122
    :cond_3
    :goto_1
    return v2
.end method

.method public final getArchiveData()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDetialData(Ljava/lang/String;Landroid/content/Context;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
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
    const-string v0, "context"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->showDialog:Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object v2, Lkotlinx/coroutines/o1;->b:Lkotlinx/coroutines/o1;

    .line 19
    .line 20
    invoke-static {}, Lkotlinx/coroutines/z0;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x0

    .line 25
    new-instance v5, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$getDetialData$1;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-direct {v5, p2, p1, p0, v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$getDetialData$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;Lkotlin/coroutines/Continuation;)V

    .line 29
    .line 30
    .line 31
    const/4 v6, 0x2

    .line 32
    const/4 v7, 0x0

    .line 33
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/h;->e(Lkotlinx/coroutines/l0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/v1;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final getEvent()Lcom/join/kotlin/domain/common/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/join/kotlin/domain/common/SingleLiveEvent<",
            "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->event:Lcom/join/kotlin/domain/common/SingleLiveEvent;

    .line 2
    .line 3
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
    iput-wide v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->time:J

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getFileUpdateTime(Ljava/io/File;)V

    .line 11
    .line 12
    .line 13
    iget-wide v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->time:J

    .line 14
    .line 15
    return-wide v0
.end method

.method public final getGoldFingerBean()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GoldFingerBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->goldFingerBean:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInitFinish()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->initFinish:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getInstallInExtPlug()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->installInExtPlug:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getLastStartArchive()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->lastStartArchive:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLocalArchiveLists()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->localArchiveLists:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getModGameArchivePathData()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->modGameArchivePathData:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getParentExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRunIngArchiveId()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->runIngArchiveId:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowDialog()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->showDialog:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowDownlloadDialog()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->showDownlloadDialog:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final loadLocalArchive(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;)Ljava/util/List;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "modGameArchivePathData"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getMainArchiveLocalPath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getModPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v7, "getModPackageName(...)"

    .line 25
    .line 26
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    move-object v1, p0

    .line 33
    move-object v2, p1

    .line 34
    move-object v4, p2

    .line 35
    move-object v6, v0

    .line 36
    invoke-direct/range {v1 .. v6}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->loadLocalArchiveexcues(Landroid/content/Context;Ljava/lang/String;Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getSubArchiveLocalPath()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    if-eqz v5, :cond_1

    .line 44
    .line 45
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 v1, 0x0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 55
    :goto_1
    if-nez v1, :cond_2

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getModPackageName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    move-object v1, p0

    .line 65
    move-object v2, p1

    .line 66
    move-object v4, p2

    .line 67
    move-object v6, v0

    .line 68
    invoke-direct/range {v1 .. v6}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->loadLocalArchiveexcues(Landroid/content/Context;Ljava/lang/String;Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    :cond_2
    return-object v0
.end method

.method public final loadLocalArchiveDatas(Landroid/content/Context;)V
    .locals 8
    .param p1    # Landroid/content/Context;
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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->showDialog:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lkotlinx/coroutines/o1;->b:Lkotlinx/coroutines/o1;

    .line 14
    .line 15
    invoke-static {}, Lkotlinx/coroutines/z0;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x0

    .line 20
    new-instance v5, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-direct {v5, p0, p1, v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    const/4 v6, 0x2

    .line 27
    const/4 v7, 0x0

    .line 28
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/h;->e(Lkotlinx/coroutines/l0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/v1;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final loadLocalExArchive(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/lang/String;Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;
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
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "modGameArchivePathData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "archiveLocation"

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
    const-string v0, "archiveList"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/join/mgps/va/overmind/i;->g:Lcom/join/mgps/va/overmind/i$a;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/i$a;->e()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getModPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getArchiveFileSuffix()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getArchiveType()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    filled-new-array {v0, p2, v1, v3}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const/4 v4, 0x0

    .line 56
    const/4 v5, 0x0

    .line 57
    const/4 v6, 0x0

    .line 58
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    if-eqz p3, :cond_0

    .line 63
    .line 64
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-lez v0, :cond_0

    .line 69
    .line 70
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 71
    .line 72
    .line 73
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    if-eqz v0, :cond_0

    .line 75
    .line 76
    :try_start_1
    const-string v0, "pathUrL"

    .line 77
    .line 78
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v1, "time"

    .line 87
    .line 88
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 97
    .line 98
    invoke-direct {v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocalPath(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const-string v0, "\u6211\u7684\u9ed8\u8ba4\u5b58\u6863"

    .line 105
    .line 106
    invoke-virtual {v2, v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveDesc(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v0

    .line 116
    const/16 v3, 0x3e8

    .line 117
    .line 118
    int-to-long v3, v3

    .line 119
    div-long/2addr v0, v3

    .line 120
    invoke-virtual {v2, v0, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setAddTime(J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocation(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getModPackageName()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v2, v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPackageName(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getGameId()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v2, v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setGame_id(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const-string v0, "\u542f\u52a8"

    .line 141
    .line 142
    invoke-virtual {v2, v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const/16 v0, 0x8

    .line 146
    .line 147
    invoke-virtual {v2, v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setStatus(I)V

    .line 148
    .line 149
    .line 150
    const-string v0, "0"

    .line 151
    .line 152
    invoke-virtual {v2, v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setId(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const/4 v0, 0x0

    .line 156
    invoke-virtual {v2, v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setUserId(I)V

    .line 157
    .line 158
    .line 159
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_0
    if-eqz p3, :cond_1

    .line 169
    .line 170
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :catch_1
    move-exception p1

    .line 175
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    .line 177
    .line 178
    :cond_1
    :goto_1
    return-void
.end method

.method public final loadLocalExtArchiveMain(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/lang/String;Landroid/content/Context;Ljava/util/List;)V
    .locals 8
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;
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
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "modGameArchivePathData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mainArchiveLocalPath"

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
    const-string v0, "archiveList"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "/data/data"

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    const/4 v2, 0x2

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    const-string v0, "/Android/data"

    .line 33
    .line 34
    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    :cond_0
    const/4 v1, 0x1

    .line 41
    :cond_1
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->loadLocalExArchive(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/lang/String;Landroid/content/Context;Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getModPackageName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const-string v0, "getModPackageName(...)"

    .line 52
    .line 53
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    move-object v2, p0

    .line 57
    move-object v3, p3

    .line 58
    move-object v5, p1

    .line 59
    move-object v6, p2

    .line 60
    move-object v7, p4

    .line 61
    invoke-direct/range {v2 .. v7}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->loadLocalArchiveexcues(Landroid/content/Context;Ljava/lang/String;Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method

.method public final setArchiveData(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 7
    .line 8
    return-void
.end method

.method public final setEvent(Lcom/join/kotlin/domain/common/SingleLiveEvent;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/domain/common/SingleLiveEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/domain/common/SingleLiveEvent<",
            "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;",
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->event:Lcom/join/kotlin/domain/common/SingleLiveEvent;

    .line 7
    .line 8
    return-void
.end method

.method public final setGoldFingerBean(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GoldFingerBean;",
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->goldFingerBean:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setInitFinish(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->initFinish:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setInstallInExtPlug(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->installInExtPlug:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setLastStartArchive(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->lastStartArchive:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 7
    .line 8
    return-void
.end method

.method public final setLocalArchiveLists(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->localArchiveLists:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method

.method public final setModGameArchivePathData(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->modGameArchivePathData:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setRunIngArchiveId(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->runIngArchiveId:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method

.method public final setShowDialog(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->showDialog:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method

.method public final setShowDownlloadDialog(Landroidx/lifecycle/MutableLiveData;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->showDownlloadDialog:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method

.method public final setTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->time:J

    .line 2
    .line 3
    return-void
.end method

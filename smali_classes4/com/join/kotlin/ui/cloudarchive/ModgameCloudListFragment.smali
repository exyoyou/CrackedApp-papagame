.class public final Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/join/kotlin/domain/common/LoadBindClickProxy;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModgameCloudListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModgameCloudListFragment.kt\ncom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1339:1\n1#2:1340\n774#3:1341\n865#3,2:1342\n1563#3:1344\n1634#3,3:1345\n774#3:1348\n865#3,2:1349\n1563#3:1351\n1634#3,3:1352\n774#3:1355\n865#3,2:1356\n1563#3:1358\n1634#3,3:1359\n*S KotlinDebug\n*F\n+ 1 ModgameCloudListFragment.kt\ncom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment\n*L\n142#1:1341\n142#1:1342,2\n143#1:1344\n143#1:1345,3\n437#1:1348\n437#1:1349,2\n438#1:1351\n438#1:1352,3\n450#1:1355\n450#1:1356,2\n450#1:1358\n450#1:1359,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\u001d\u001a\u00020\u001eH\u0002J&\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0016J\u0008\u0010\'\u001a\u00020\u001eH\u0016J\u0006\u0010C\u001a\u00020\u001eJ\u0006\u0010L\u001a\u00020\u001eJ\u0012\u0010M\u001a\u00020\u001e2\u0008\u0010N\u001a\u0004\u0018\u00010OH\u0002J\u0008\u0010P\u001a\u00020\u001eH\u0016J\u0010\u0010Q\u001a\u00020\u001e2\u0006\u0010N\u001a\u00020OH\u0016J\u000e\u0010R\u001a\u00020\u001e2\u0006\u0010N\u001a\u00020OJ\u0018\u0010S\u001a\u00020\u001e2\u0006\u0010N\u001a\u00020O2\u0008\u0010T\u001a\u0004\u0018\u00010UJ\u0008\u0010V\u001a\u00020\u001eH\u0016J\u0018\u0010\\\u001a\u00020\u001e2\u0006\u0010N\u001a\u00020O2\u0006\u0010]\u001a\u000205H\u0002J\u0006\u0010|\u001a\u00020dJ\u001a\u0010\u0082\u0001\u001a\u00020\u001e2\u0007\u0010\u0083\u0001\u001a\u00020 2\u0006\u0010N\u001a\u00020OH\u0016J\u0011\u0010\u0084\u0001\u001a\u00020\u001e2\u0006\u0010N\u001a\u00020OH\u0016J\u0011\u0010\u0085\u0001\u001a\u00020\u001e2\u0006\u0010N\u001a\u00020OH\u0016J\u0014\u0010\u008b\u0001\u001a\u00020\u001e2\t\u0010\u008c\u0001\u001a\u0004\u0018\u00010>H\u0016J\u0015\u0010\u008d\u0001\u001a\u00020\u001e2\n\u0010\u008e\u0001\u001a\u0005\u0018\u00010\u008f\u0001H\u0016J\u0014\u0010\u0098\u0001\u001a\u00020\u001e2\t\u0010\u0099\u0001\u001a\u0004\u0018\u00010 H\u0016J\u0013\u0010\u009a\u0001\u001a\u00020\u001e2\u0008\u0010\u009b\u0001\u001a\u00030\u009c\u0001H\u0007J\t\u0010\u009d\u0001\u001a\u00020\u001eH\u0016J\t\u0010\u009e\u0001\u001a\u00020\u001eH\u0016J\u0007\u0010\u009f\u0001\u001a\u00020\u001eR\u001b\u0010\u0007\u001a\u00020\u00088FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u001b\u0010\r\u001a\u00020\u000e8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u0018\u001a\u00020\u00198FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u000c\u001a\u0004\u0008\u001a\u0010\u001bR\u001c\u0010(\u001a\u0004\u0018\u00010)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u001c\u0010.\u001a\u0004\u0018\u00010/X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u001a\u00104\u001a\u000205X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R\u001a\u0010:\u001a\u000205X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u00107\"\u0004\u0008<\u00109R\u001a\u0010=\u001a\u00020>X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR\u001a\u0010D\u001a\u00020EX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010F\"\u0004\u0008G\u0010HR\u001a\u0010I\u001a\u00020EX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008J\u0010F\"\u0004\u0008K\u0010HR\u001b\u0010W\u001a\u00020X8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008[\u0010\u000c\u001a\u0004\u0008Y\u0010ZR\u001b\u0010^\u001a\u00020_8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008b\u0010\u000c\u001a\u0004\u0008`\u0010aR\u001b\u0010c\u001a\u00020d8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008g\u0010\u000c\u001a\u0004\u0008e\u0010fR\u001a\u0010h\u001a\u00020iX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008j\u0010k\"\u0004\u0008l\u0010mR\u001a\u0010n\u001a\u00020iX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008o\u0010k\"\u0004\u0008p\u0010mR\u001a\u0010q\u001a\u00020 X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008r\u0010s\"\u0004\u0008t\u0010uR\u001a\u0010v\u001a\u00020 X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008w\u0010s\"\u0004\u0008x\u0010uR\u001a\u0010y\u001a\u00020 X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008z\u0010s\"\u0004\u0008{\u0010uR\u001c\u0010}\u001a\u00020OX\u0086.\u00a2\u0006\u0010\n\u0000\u001a\u0004\u0008~\u0010\u007f\"\u0006\u0008\u0080\u0001\u0010\u0081\u0001R \u0010\u0086\u0001\u001a\u00030\u0087\u00018FX\u0086\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u008a\u0001\u0010\u000c\u001a\u0006\u0008\u0088\u0001\u0010\u0089\u0001R\u001e\u0010\u0090\u0001\u001a\u00020X8FX\u0086\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u0092\u0001\u0010\u000c\u001a\u0005\u0008\u0091\u0001\u0010ZR \u0010\u0093\u0001\u001a\u00030\u0094\u00018FX\u0086\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u0097\u0001\u0010\u000c\u001a\u0006\u0008\u0095\u0001\u0010\u0096\u0001\u00a8\u0006\u00a0\u0001"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/join/kotlin/domain/common/LoadBindClickProxy;",
        "<init>",
        "()V",
        "viewModle",
        "Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;",
        "getViewModle",
        "()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;",
        "viewModle$delegate",
        "Lkotlin/Lazy;",
        "viewModleShareViewModle",
        "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;",
        "getViewModleShareViewModle",
        "()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;",
        "viewModleShareViewModle$delegate",
        "dataBinding",
        "Lcom/join/android/app/mgsim/wufun/databinding/RecyclerviewLayoutDatabindingBinding;",
        "getDataBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/RecyclerviewLayoutDatabindingBinding;",
        "setDataBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/RecyclerviewLayoutDatabindingBinding;)V",
        "adapterx",
        "Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;",
        "getAdapterx",
        "()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;",
        "adapterx$delegate",
        "updateLocaDataToShow",
        "",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
        "modgameBean",
        "Lcom/join/mgps/dto/ModGameDetailBean;",
        "getModgameBean",
        "()Lcom/join/mgps/dto/ModGameDetailBean;",
        "setModgameBean",
        "(Lcom/join/mgps/dto/ModGameDetailBean;)V",
        "archiveTag",
        "Lcom/join/mgps/dto/ModGameArchiveTagBean;",
        "getArchiveTag",
        "()Lcom/join/mgps/dto/ModGameArchiveTagBean;",
        "setArchiveTag",
        "(Lcom/join/mgps/dto/ModGameArchiveTagBean;)V",
        "page",
        "",
        "getPage",
        "()I",
        "setPage",
        "(I)V",
        "type",
        "getType",
        "setType",
        "gameId",
        "",
        "getGameId",
        "()Ljava/lang/String;",
        "setGameId",
        "(Ljava/lang/String;)V",
        "initData",
        "isLogin",
        "",
        "()Z",
        "setLogin",
        "(Z)V",
        "isfirst",
        "getIsfirst",
        "setIsfirst",
        "loadData",
        "startGame",
        "archive",
        "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
        "onResume",
        "onClickRun",
        "realLaunchGame",
        "onClickRunGame",
        "downloadTask",
        "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
        "uploadCloud",
        "checkDownloadTypeDialog",
        "Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;",
        "getCheckDownloadTypeDialog",
        "()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;",
        "checkDownloadTypeDialog$delegate",
        "showDownloadDialog",
        "downloadType",
        "dialog",
        "Landroid/app/Dialog;",
        "getDialog",
        "()Landroid/app/Dialog;",
        "dialog$delegate",
        "popWindow",
        "Landroid/widget/PopupWindow;",
        "getPopWindow",
        "()Landroid/widget/PopupWindow;",
        "popWindow$delegate",
        "deleteCloud",
        "Landroid/widget/TextView;",
        "getDeleteCloud",
        "()Landroid/widget/TextView;",
        "setDeleteCloud",
        "(Landroid/widget/TextView;)V",
        "reDownload",
        "getReDownload",
        "setReDownload",
        "trangleBottom",
        "getTrangleBottom",
        "()Landroid/view/View;",
        "setTrangleBottom",
        "(Landroid/view/View;)V",
        "trangleTop",
        "getTrangleTop",
        "setTrangleTop",
        "main",
        "getMain",
        "setMain",
        "createPopwindow",
        "archiveDataPop",
        "getArchiveDataPop",
        "()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
        "setArchiveDataPop",
        "(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V",
        "onClickMore",
        "view",
        "onPraise",
        "onClickDislike",
        "imageDialog",
        "Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;",
        "getImageDialog",
        "()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;",
        "imageDialog$delegate",
        "onClickImage",
        "imagePath",
        "onClickDomain",
        "domainInfoBean",
        "Lcom/join/mgps/dto/DomainInfoBean;",
        "delFragment",
        "getDelFragment",
        "delFragment$delegate",
        "redownFragment",
        "Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;",
        "getRedownFragment",
        "()Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;",
        "redownFragment$delegate",
        "onClick",
        "v",
        "onRecivedDownLoadEVent",
        "archiveDownEvent",
        "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;",
        "onClickReload",
        "onClickSetNetWork",
        "scrollToTop",
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
        "SMAP\nModgameCloudListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModgameCloudListFragment.kt\ncom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1339:1\n1#2:1340\n774#3:1341\n865#3,2:1342\n1563#3:1344\n1634#3,3:1345\n774#3:1348\n865#3,2:1349\n1563#3:1351\n1634#3,3:1352\n774#3:1355\n865#3,2:1356\n1563#3:1358\n1634#3,3:1359\n*S KotlinDebug\n*F\n+ 1 ModgameCloudListFragment.kt\ncom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment\n*L\n142#1:1341\n142#1:1342,2\n143#1:1344\n143#1:1345,3\n437#1:1348\n437#1:1349,2\n438#1:1351\n438#1:1352,3\n450#1:1355\n450#1:1356,2\n450#1:1358\n450#1:1359,3\n*E\n"
    }
.end annotation


# instance fields
.field private final adapterx$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public archiveDataPop:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

.field private archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final checkDownloadTypeDialog$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/bt0;

.field private final delFragment$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public deleteCloud:Landroid/widget/TextView;

.field private final dialog$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private gameId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final imageDialog$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isLogin:Z

.field private isfirst:Z

.field public main:Landroid/view/View;

.field private modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private page:I

.field private final popWindow$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public reDownload:Landroid/widget/TextView;

.field private final redownFragment$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public trangleBottom:Landroid/view/View;

.field public trangleTop:Landroid/view/View;

.field private type:I

.field private final viewModle$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewModleShareViewModle$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/y0;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/y0;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->viewModle$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/j1;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/j1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->viewModleShareViewModle$delegate:Lkotlin/Lazy;

    .line 25
    .line 26
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/m1;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/m1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->adapterx$delegate:Lkotlin/Lazy;

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->page:I

    .line 39
    .line 40
    iput v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    .line 41
    .line 42
    const-string v1, ""

    .line 43
    .line 44
    iput-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->gameId:Ljava/lang/String;

    .line 45
    .line 46
    iput-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->isfirst:Z

    .line 47
    .line 48
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/n1;

    .line 49
    .line 50
    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/n1;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->checkDownloadTypeDialog$delegate:Lkotlin/Lazy;

    .line 58
    .line 59
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/o1;

    .line 60
    .line 61
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/o1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->dialog$delegate:Lkotlin/Lazy;

    .line 69
    .line 70
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/p1;

    .line 71
    .line 72
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/p1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->popWindow$delegate:Lkotlin/Lazy;

    .line 80
    .line 81
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/q1;

    .line 82
    .line 83
    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/q1;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->imageDialog$delegate:Lkotlin/Lazy;

    .line 91
    .line 92
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/r1;

    .line 93
    .line 94
    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/r1;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->delFragment$delegate:Lkotlin/Lazy;

    .line 102
    .line 103
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/s1;

    .line 104
    .line 105
    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/s1;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->redownFragment$delegate:Lkotlin/Lazy;

    .line 113
    .line 114
    return-void
.end method

.method public static synthetic M(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/mgps/dto/ResponseModel;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->initData$lambda$10(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/mgps/dto/ResponseModel;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->checkDownloadTypeDialog_delegate$lambda$31()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic O(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->viewModleShareViewModle_delegate$lambda$1(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->delFragment_delegate$lambda$37()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic Q(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->onClickRunGame$lambda$29(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)Lcom/join/mgps/dialog/f1;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->dialog_delegate$lambda$32(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)Lcom/join/mgps/dialog/f1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Ljava/lang/Long;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->initData$lambda$21(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Ljava/lang/Long;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic T(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->onPraise$lambda$34(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic U()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->imageDialog_delegate$lambda$36()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic V(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->realLaunchGame$lambda$26(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic W(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/mgps/dto/ResponseModel;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->initData$lambda$19(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/mgps/dto/ResponseModel;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->initData$lambda$22(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Y(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->popWindow_delegate$lambda$33(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)Landroid/widget/PopupWindow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Z(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->initData$lambda$20(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a0(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/mgps/dto/ResponseModel;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->initData$lambda$12(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/mgps/dto/ResponseModel;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$showDownloadDialog(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->showDownloadDialog(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final adapterx_delegate$lambda$2(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;
    .locals 6

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "requireContext(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getType()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v5, 0x2

    .line 23
    if-ne v2, v5, :cond_0

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 28
    :goto_0
    if-nez v2, :cond_3

    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 v2, 0x0

    .line 40
    :goto_1
    const-string v5, "\u7cbe\u9009"

    .line 41
    .line 42
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/4 v3, 0x0

    .line 50
    :cond_3
    :goto_2
    invoke-direct {v0, v1, p0, v3}, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;-><init>(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;Z)V

    .line 51
    .line 52
    .line 53
    return-object v0
.end method

.method public static synthetic b0()Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->redownFragment_delegate$lambda$38()Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c0(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->onClickDislike$lambda$35(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final checkDownloadTypeDialog_delegate$lambda$31()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic d0(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->viewModle_delegate$lambda$0(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object p0

    return-object p0
.end method

.method private static final delFragment_delegate$lambda$37()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final dialog_delegate$lambda$32(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)Lcom/join/mgps/dialog/f1;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v1, "\u5b58\u6863\u62f7\u8d1d\u4e2d"

    .line 14
    .line 15
    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/Util/g0;->y(Landroid/content/Context;Ljava/lang/String;)Lcom/join/mgps/dialog/f1;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static synthetic e0(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->startGame$lambda$24(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->adapterx_delegate$lambda$2(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->uploadCloud$lambda$30(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h0(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->initData$lambda$8(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final imageDialog_delegate$lambda$36()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private static final initData$lambda$10(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/mgps/dto/ResponseModel;)Lkotlin/Unit;
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_15

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/16 v3, 0xc8

    .line 10
    .line 11
    if-ne v2, v3, :cond_15

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    new-instance v3, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 22
    .line 23
    invoke-direct {v3, v1}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/join/mgps/dto/ArchiveDataAddPd;

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/join/mgps/dto/ArchiveDataAddPd;->getCloud_archives()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object v2, v3

    .line 44
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Lcom/join/mgps/dto/ArchiveDataAddPd;

    .line 49
    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    invoke-virtual {v4}, Lcom/join/mgps/dto/ArchiveDataAddPd;->getPd_info()Lcom/join/mgps/dto/DomainInfoBean;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getPage()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-ne p1, v1, :cond_3

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Ljava/util/List;

    .line 75
    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 86
    .line 87
    .line 88
    :cond_3
    if-eqz v2, :cond_12

    .line 89
    .line 90
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    goto/16 :goto_7

    .line 97
    .line 98
    :cond_4
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLocalAllArchive()Landroidx/lifecycle/MutableLiveData;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Ljava/util/List;

    .line 111
    .line 112
    iget v4, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->page:I

    .line 113
    .line 114
    if-ne v4, v1, :cond_6

    .line 115
    .line 116
    if-eqz v3, :cond_6

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    move-object v11, v4

    .line 131
    check-cast v11, Ljava/util/List;

    .line 132
    .line 133
    if-eqz v11, :cond_5

    .line 134
    .line 135
    new-instance v12, Lcom/psk/kotlin/util/CommonListMainData;

    .line 136
    .line 137
    const/4 v5, 0x6

    .line 138
    const/4 v7, 0x0

    .line 139
    const/4 v8, 0x0

    .line 140
    const/16 v9, 0xc

    .line 141
    .line 142
    const/4 v10, 0x0

    .line 143
    move-object v4, v12

    .line 144
    move-object v6, v3

    .line 145
    invoke-direct/range {v4 .. v10}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 146
    .line 147
    .line 148
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-static {v4}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    sget-object v5, Lcom/papa/sim/statistic/Event;->pdSingleArchiveDetails:Lcom/papa/sim/statistic/Event;

    .line 160
    .line 161
    new-instance v6, Lcom/papa/sim/statistic/Ext;

    .line 162
    .line 163
    invoke-direct {v6}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 164
    .line 165
    .line 166
    iget-object v7, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->gameId:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v6, v7}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    invoke-virtual {v3}, Lcom/join/mgps/dto/DomainInfoBean;->getIs_join()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    invoke-virtual {v6, v7}, Lcom/papa/sim/statistic/Ext;->setIsJoin(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    invoke-virtual {v3}, Lcom/join/mgps/dto/DomainInfoBean;->getAb_test_number()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {v6, v3}, Lcom/papa/sim/statistic/Ext;->setTestAbNumber(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-virtual {v4, v5, v3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 189
    .line 190
    .line 191
    :cond_6
    iget v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->page:I

    .line 192
    .line 193
    add-int/2addr v3, v1

    .line 194
    iput v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->page:I

    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/bt0;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/bt0;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 201
    .line 202
    invoke-virtual {v3}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->loadMoreComplete()V

    .line 203
    .line 204
    .line 205
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    if-eqz v3, :cond_11

    .line 214
    .line 215
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    move-object v6, v3

    .line 220
    check-cast v6, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 221
    .line 222
    iget v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    .line 223
    .line 224
    invoke-virtual {v6, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowType(I)V

    .line 225
    .line 226
    .line 227
    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->gameId:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v6, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setGame_id(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v6, v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsDownloadArchive(I)V

    .line 233
    .line 234
    .line 235
    const-string v3, "\u542f\u52a8"

    .line 236
    .line 237
    if-eqz p1, :cond_a

    .line 238
    .line 239
    move-object v4, p1

    .line 240
    check-cast v4, Ljava/util/Collection;

    .line 241
    .line 242
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    xor-int/2addr v4, v1

    .line 247
    if-eqz v4, :cond_a

    .line 248
    .line 249
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    :cond_8
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    if-eqz v5, :cond_a

    .line 258
    .line 259
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    check-cast v5, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 264
    .line 265
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    invoke-virtual {v6}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v8

    .line 273
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v7

    .line 277
    if-eqz v7, :cond_8

    .line 278
    .line 279
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    .line 280
    .line 281
    .line 282
    move-result v7

    .line 283
    invoke-virtual {v6, v7}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setUserId(I)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocalZipPath()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v7

    .line 290
    invoke-virtual {v6, v7}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocalZipPath(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v6, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsDownloadArchive(I)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getPackageName()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v7

    .line 300
    invoke-virtual {v6, v7}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPackageName(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsFirstRun()I

    .line 304
    .line 305
    .line 306
    move-result v7

    .line 307
    invoke-virtual {v6, v7}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsFirstRun(I)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getMainArchiveLocalPath()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v7

    .line 314
    invoke-virtual {v6, v7}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setMainArchiveLocalPath(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getMainArchiveLocalPath2()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v7

    .line 321
    invoke-virtual {v6, v7}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setMainArchiveLocalPath2(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocalPath()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v5

    .line 328
    invoke-virtual {v6, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocalPath(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getRunIngArchiveId()Landroidx/lifecycle/MutableLiveData;

    .line 336
    .line 337
    .line 338
    move-result-object v5

    .line 339
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    check-cast v5, Ljava/lang/Long;

    .line 344
    .line 345
    if-eqz v5, :cond_9

    .line 346
    .line 347
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 348
    .line 349
    .line 350
    move-result-wide v7

    .line 351
    goto :goto_3

    .line 352
    :cond_9
    const-wide/16 v7, 0x0

    .line 353
    .line 354
    :goto_3
    invoke-virtual {v6, v7, v8}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setRuningArchiveId(J)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v6, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    const/16 v5, 0x8

    .line 361
    .line 362
    invoke-virtual {v6, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setStatus(I)V

    .line 363
    .line 364
    .line 365
    goto :goto_2

    .line 366
    :cond_a
    iget v4, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    .line 367
    .line 368
    if-eq v4, v1, :cond_e

    .line 369
    .line 370
    const/4 v5, 0x2

    .line 371
    if-ne v4, v5, :cond_b

    .line 372
    .line 373
    goto :goto_5

    .line 374
    :cond_b
    iget-object v4, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 375
    .line 376
    if-eqz v4, :cond_c

    .line 377
    .line 378
    invoke-virtual {v4}, Lcom/join/mgps/dto/ModGameDetailBean;->getMain_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 379
    .line 380
    .line 381
    move-result-object v4

    .line 382
    if-eqz v4, :cond_c

    .line 383
    .line 384
    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->isCloudGame()Z

    .line 385
    .line 386
    .line 387
    move-result v4

    .line 388
    if-ne v4, v1, :cond_c

    .line 389
    .line 390
    const/4 v4, 0x1

    .line 391
    goto :goto_4

    .line 392
    :cond_c
    const/4 v4, 0x0

    .line 393
    :goto_4
    if-eqz v4, :cond_d

    .line 394
    .line 395
    invoke-virtual {v6, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    :cond_d
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 403
    .line 404
    .line 405
    move-result-object v3

    .line 406
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    check-cast v3, Ljava/util/List;

    .line 411
    .line 412
    if-eqz v3, :cond_7

    .line 413
    .line 414
    new-instance v11, Lcom/psk/kotlin/util/CommonListMainData;

    .line 415
    .line 416
    const/4 v5, 0x4

    .line 417
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 418
    .line 419
    .line 420
    const/4 v7, 0x0

    .line 421
    const/4 v8, 0x0

    .line 422
    const/16 v9, 0xc

    .line 423
    .line 424
    const/4 v10, 0x0

    .line 425
    move-object v4, v11

    .line 426
    invoke-direct/range {v4 .. v10}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 427
    .line 428
    .line 429
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    goto/16 :goto_1

    .line 433
    .line 434
    :cond_e
    :goto_5
    iget-object v4, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 435
    .line 436
    if-eqz v4, :cond_f

    .line 437
    .line 438
    invoke-virtual {v4}, Lcom/join/mgps/dto/ModGameDetailBean;->getMain_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 439
    .line 440
    .line 441
    move-result-object v4

    .line 442
    if-eqz v4, :cond_f

    .line 443
    .line 444
    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->isCloudGame()Z

    .line 445
    .line 446
    .line 447
    move-result v4

    .line 448
    if-ne v4, v1, :cond_f

    .line 449
    .line 450
    const/4 v4, 0x1

    .line 451
    goto :goto_6

    .line 452
    :cond_f
    const/4 v4, 0x0

    .line 453
    :goto_6
    if-eqz v4, :cond_10

    .line 454
    .line 455
    invoke-virtual {v6, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    :cond_10
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v3

    .line 470
    check-cast v3, Ljava/util/List;

    .line 471
    .line 472
    if-eqz v3, :cond_7

    .line 473
    .line 474
    new-instance v11, Lcom/psk/kotlin/util/CommonListMainData;

    .line 475
    .line 476
    const/4 v5, 0x3

    .line 477
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 478
    .line 479
    .line 480
    const/4 v7, 0x0

    .line 481
    const/4 v8, 0x0

    .line 482
    const/16 v9, 0xc

    .line 483
    .line 484
    const/4 v10, 0x0

    .line 485
    move-object v4, v11

    .line 486
    invoke-direct/range {v4 .. v10}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 487
    .line 488
    .line 489
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    goto/16 :goto_1

    .line 493
    .line 494
    :cond_11
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    .line 495
    .line 496
    .line 497
    move-result-object p0

    .line 498
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 499
    .line 500
    .line 501
    goto/16 :goto_9

    .line 502
    .line 503
    :cond_12
    :goto_7
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 504
    .line 505
    .line 506
    move-result-object p1

    .line 507
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 508
    .line 509
    .line 510
    move-result-object p1

    .line 511
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object p1

    .line 515
    check-cast p1, Ljava/util/List;

    .line 516
    .line 517
    if-eqz p1, :cond_13

    .line 518
    .line 519
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 520
    .line 521
    .line 522
    move-result p1

    .line 523
    if-nez p1, :cond_13

    .line 524
    .line 525
    const/4 v0, 0x1

    .line 526
    :cond_13
    if-eqz v0, :cond_14

    .line 527
    .line 528
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 529
    .line 530
    .line 531
    move-result-object p1

    .line 532
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 533
    .line 534
    .line 535
    move-result-object p1

    .line 536
    new-instance v0, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 537
    .line 538
    const/4 v1, 0x4

    .line 539
    invoke-direct {v0, v1}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 543
    .line 544
    .line 545
    :cond_14
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/bt0;

    .line 546
    .line 547
    .line 548
    move-result-object p0

    .line 549
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/bt0;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 550
    .line 551
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 552
    .line 553
    .line 554
    goto/16 :goto_9

    .line 555
    .line 556
    :cond_15
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 557
    .line 558
    .line 559
    move-result-object v2

    .line 560
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 561
    .line 562
    .line 563
    move-result-object v2

    .line 564
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v2

    .line 568
    check-cast v2, Ljava/util/List;

    .line 569
    .line 570
    if-eqz v2, :cond_16

    .line 571
    .line 572
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 573
    .line 574
    .line 575
    move-result v2

    .line 576
    if-nez v2, :cond_16

    .line 577
    .line 578
    const/4 v2, 0x1

    .line 579
    goto :goto_8

    .line 580
    :cond_16
    const/4 v2, 0x0

    .line 581
    :goto_8
    if-nez v2, :cond_17

    .line 582
    .line 583
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 584
    .line 585
    .line 586
    move-result-object p0

    .line 587
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 588
    .line 589
    .line 590
    move-result-object p0

    .line 591
    new-instance p1, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 592
    .line 593
    invoke-direct {p1, v1}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 597
    .line 598
    .line 599
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 600
    .line 601
    return-object p0

    .line 602
    :cond_17
    if-eqz p1, :cond_1a

    .line 603
    .line 604
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getPage()I

    .line 605
    .line 606
    .line 607
    move-result v2

    .line 608
    if-eq v2, v1, :cond_18

    .line 609
    .line 610
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getPage()I

    .line 611
    .line 612
    .line 613
    move-result p1

    .line 614
    if-nez p1, :cond_1a

    .line 615
    .line 616
    :cond_18
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 617
    .line 618
    .line 619
    move-result-object p1

    .line 620
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 621
    .line 622
    .line 623
    move-result-object p1

    .line 624
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object p1

    .line 628
    check-cast p1, Ljava/util/List;

    .line 629
    .line 630
    if-eqz p1, :cond_19

    .line 631
    .line 632
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 633
    .line 634
    .line 635
    :cond_19
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    .line 636
    .line 637
    .line 638
    move-result-object p1

    .line 639
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 640
    .line 641
    .line 642
    :cond_1a
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 643
    .line 644
    .line 645
    move-result-object p1

    .line 646
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 647
    .line 648
    .line 649
    move-result-object p1

    .line 650
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 651
    .line 652
    .line 653
    move-result-object p1

    .line 654
    check-cast p1, Ljava/util/List;

    .line 655
    .line 656
    if-eqz p1, :cond_1b

    .line 657
    .line 658
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 659
    .line 660
    .line 661
    move-result p1

    .line 662
    if-nez p1, :cond_1b

    .line 663
    .line 664
    const/4 v0, 0x1

    .line 665
    :cond_1b
    if-eqz v0, :cond_1c

    .line 666
    .line 667
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 668
    .line 669
    .line 670
    move-result-object p0

    .line 671
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 672
    .line 673
    .line 674
    move-result-object p0

    .line 675
    new-instance p1, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 676
    .line 677
    const/4 v0, 0x3

    .line 678
    invoke-direct {p1, v0}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 679
    .line 680
    .line 681
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 682
    .line 683
    .line 684
    :cond_1c
    :goto_9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 685
    .line 686
    return-object p0
.end method

.method private static final initData$lambda$12(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/mgps/dto/ResponseModel;)Lkotlin/Unit;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_11

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/16 v3, 0xc8

    .line 10
    .line 11
    if-ne v2, v3, :cond_11

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    new-instance v3, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 22
    .line 23
    invoke-direct {v3, v1}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/util/List;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getPage()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-ne p1, v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Ljava/util/List;

    .line 54
    .line 55
    if-eqz p1, :cond_0

    .line 56
    .line 57
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 65
    .line 66
    .line 67
    :cond_1
    if-eqz v2, :cond_e

    .line 68
    .line 69
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    goto/16 :goto_6

    .line 76
    .line 77
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLocalAllArchive()Landroidx/lifecycle/MutableLiveData;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Ljava/util/List;

    .line 90
    .line 91
    iget v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->page:I

    .line 92
    .line 93
    add-int/2addr v3, v1

    .line 94
    iput v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->page:I

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/bt0;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/bt0;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 101
    .line 102
    invoke-virtual {v3}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->loadMoreComplete()V

    .line 103
    .line 104
    .line 105
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_d

    .line 114
    .line 115
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    move-object v6, v3

    .line 120
    check-cast v6, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 121
    .line 122
    iget v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    .line 123
    .line 124
    invoke-virtual {v6, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowType(I)V

    .line 125
    .line 126
    .line 127
    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->gameId:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v6, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setGame_id(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6, v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsDownloadArchive(I)V

    .line 133
    .line 134
    .line 135
    const-string v3, "\u542f\u52a8"

    .line 136
    .line 137
    if-eqz p1, :cond_6

    .line 138
    .line 139
    move-object v4, p1

    .line 140
    check-cast v4, Ljava/util/Collection;

    .line 141
    .line 142
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    xor-int/2addr v4, v1

    .line 147
    if-eqz v4, :cond_6

    .line 148
    .line 149
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-eqz v5, :cond_6

    .line 158
    .line 159
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    check-cast v5, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 164
    .line 165
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    invoke-virtual {v6}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    if-eqz v7, :cond_4

    .line 178
    .line 179
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    .line 180
    .line 181
    .line 182
    move-result v7

    .line 183
    invoke-virtual {v6, v7}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setUserId(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocalZipPath()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    invoke-virtual {v6, v7}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocalZipPath(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v6, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsDownloadArchive(I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getPackageName()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    invoke-virtual {v6, v7}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPackageName(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsFirstRun()I

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    invoke-virtual {v6, v7}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsFirstRun(I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getMainArchiveLocalPath()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    invoke-virtual {v6, v7}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setMainArchiveLocalPath(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getMainArchiveLocalPath2()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    invoke-virtual {v6, v7}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setMainArchiveLocalPath2(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocalPath()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    invoke-virtual {v6, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocalPath(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getRunIngArchiveId()Landroidx/lifecycle/MutableLiveData;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    check-cast v5, Ljava/lang/Long;

    .line 244
    .line 245
    if-eqz v5, :cond_5

    .line 246
    .line 247
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 248
    .line 249
    .line 250
    move-result-wide v7

    .line 251
    goto :goto_2

    .line 252
    :cond_5
    const-wide/16 v7, 0x0

    .line 253
    .line 254
    :goto_2
    invoke-virtual {v6, v7, v8}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setRuningArchiveId(J)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v6, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    const/16 v5, 0x8

    .line 261
    .line 262
    invoke-virtual {v6, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setStatus(I)V

    .line 263
    .line 264
    .line 265
    goto :goto_1

    .line 266
    :cond_6
    iget v4, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    .line 267
    .line 268
    if-eq v4, v1, :cond_a

    .line 269
    .line 270
    const/4 v5, 0x2

    .line 271
    if-ne v4, v5, :cond_7

    .line 272
    .line 273
    goto :goto_4

    .line 274
    :cond_7
    iget-object v4, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 275
    .line 276
    if-eqz v4, :cond_8

    .line 277
    .line 278
    invoke-virtual {v4}, Lcom/join/mgps/dto/ModGameDetailBean;->getMain_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    if-eqz v4, :cond_8

    .line 283
    .line 284
    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->isCloudGame()Z

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    if-ne v4, v1, :cond_8

    .line 289
    .line 290
    const/4 v4, 0x1

    .line 291
    goto :goto_3

    .line 292
    :cond_8
    const/4 v4, 0x0

    .line 293
    :goto_3
    if-eqz v4, :cond_9

    .line 294
    .line 295
    invoke-virtual {v6, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    :cond_9
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    check-cast v3, Ljava/util/List;

    .line 311
    .line 312
    if-eqz v3, :cond_3

    .line 313
    .line 314
    new-instance v11, Lcom/psk/kotlin/util/CommonListMainData;

    .line 315
    .line 316
    const/4 v5, 0x4

    .line 317
    const/4 v7, 0x0

    .line 318
    const/4 v8, 0x0

    .line 319
    const/16 v9, 0xc

    .line 320
    .line 321
    const/4 v10, 0x0

    .line 322
    move-object v4, v11

    .line 323
    invoke-direct/range {v4 .. v10}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 324
    .line 325
    .line 326
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    goto/16 :goto_0

    .line 330
    .line 331
    :cond_a
    :goto_4
    iget-object v4, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 332
    .line 333
    if-eqz v4, :cond_b

    .line 334
    .line 335
    invoke-virtual {v4}, Lcom/join/mgps/dto/ModGameDetailBean;->getMain_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    if-eqz v4, :cond_b

    .line 340
    .line 341
    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->isCloudGame()Z

    .line 342
    .line 343
    .line 344
    move-result v4

    .line 345
    if-ne v4, v1, :cond_b

    .line 346
    .line 347
    const/4 v4, 0x1

    .line 348
    goto :goto_5

    .line 349
    :cond_b
    const/4 v4, 0x0

    .line 350
    :goto_5
    if-eqz v4, :cond_c

    .line 351
    .line 352
    invoke-virtual {v6, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    :cond_c
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    check-cast v3, Ljava/util/List;

    .line 368
    .line 369
    if-eqz v3, :cond_3

    .line 370
    .line 371
    new-instance v11, Lcom/psk/kotlin/util/CommonListMainData;

    .line 372
    .line 373
    const/4 v5, 0x3

    .line 374
    const/4 v7, 0x0

    .line 375
    const/4 v8, 0x0

    .line 376
    const/16 v9, 0xc

    .line 377
    .line 378
    const/4 v10, 0x0

    .line 379
    move-object v4, v11

    .line 380
    invoke-direct/range {v4 .. v10}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 381
    .line 382
    .line 383
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    goto/16 :goto_0

    .line 387
    .line 388
    :cond_d
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    .line 389
    .line 390
    .line 391
    move-result-object p0

    .line 392
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 393
    .line 394
    .line 395
    goto/16 :goto_8

    .line 396
    .line 397
    :cond_e
    :goto_6
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    check-cast p1, Ljava/util/List;

    .line 410
    .line 411
    if-eqz p1, :cond_f

    .line 412
    .line 413
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 414
    .line 415
    .line 416
    move-result p1

    .line 417
    if-nez p1, :cond_f

    .line 418
    .line 419
    const/4 v0, 0x1

    .line 420
    :cond_f
    if-eqz v0, :cond_10

    .line 421
    .line 422
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 423
    .line 424
    .line 425
    move-result-object p1

    .line 426
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 427
    .line 428
    .line 429
    move-result-object p1

    .line 430
    new-instance v0, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 431
    .line 432
    const/4 v1, 0x4

    .line 433
    invoke-direct {v0, v1}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 437
    .line 438
    .line 439
    :cond_10
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/bt0;

    .line 440
    .line 441
    .line 442
    move-result-object p0

    .line 443
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/bt0;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 444
    .line 445
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 446
    .line 447
    .line 448
    goto/16 :goto_8

    .line 449
    .line 450
    :cond_11
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    check-cast v2, Ljava/util/List;

    .line 463
    .line 464
    if-eqz v2, :cond_12

    .line 465
    .line 466
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 467
    .line 468
    .line 469
    move-result v2

    .line 470
    if-nez v2, :cond_12

    .line 471
    .line 472
    const/4 v2, 0x1

    .line 473
    goto :goto_7

    .line 474
    :cond_12
    const/4 v2, 0x0

    .line 475
    :goto_7
    if-nez v2, :cond_13

    .line 476
    .line 477
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 478
    .line 479
    .line 480
    move-result-object p0

    .line 481
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 482
    .line 483
    .line 484
    move-result-object p0

    .line 485
    new-instance p1, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 486
    .line 487
    invoke-direct {p1, v1}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 491
    .line 492
    .line 493
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 494
    .line 495
    return-object p0

    .line 496
    :cond_13
    if-eqz p1, :cond_16

    .line 497
    .line 498
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getPage()I

    .line 499
    .line 500
    .line 501
    move-result v2

    .line 502
    if-eq v2, v1, :cond_14

    .line 503
    .line 504
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getPage()I

    .line 505
    .line 506
    .line 507
    move-result p1

    .line 508
    if-nez p1, :cond_16

    .line 509
    .line 510
    :cond_14
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 511
    .line 512
    .line 513
    move-result-object p1

    .line 514
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 515
    .line 516
    .line 517
    move-result-object p1

    .line 518
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object p1

    .line 522
    check-cast p1, Ljava/util/List;

    .line 523
    .line 524
    if-eqz p1, :cond_15

    .line 525
    .line 526
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 527
    .line 528
    .line 529
    :cond_15
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    .line 530
    .line 531
    .line 532
    move-result-object p1

    .line 533
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 534
    .line 535
    .line 536
    :cond_16
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 537
    .line 538
    .line 539
    move-result-object p1

    .line 540
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 541
    .line 542
    .line 543
    move-result-object p1

    .line 544
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object p1

    .line 548
    check-cast p1, Ljava/util/List;

    .line 549
    .line 550
    if-eqz p1, :cond_17

    .line 551
    .line 552
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 553
    .line 554
    .line 555
    move-result p1

    .line 556
    if-nez p1, :cond_17

    .line 557
    .line 558
    const/4 v0, 0x1

    .line 559
    :cond_17
    if-eqz v0, :cond_18

    .line 560
    .line 561
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 562
    .line 563
    .line 564
    move-result-object p0

    .line 565
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 566
    .line 567
    .line 568
    move-result-object p0

    .line 569
    new-instance p1, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 570
    .line 571
    const/4 v0, 0x3

    .line 572
    invoke-direct {p1, v0}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 576
    .line 577
    .line 578
    :cond_18
    :goto_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 579
    .line 580
    return-object p0
.end method

.method private static final initData$lambda$19(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/mgps/dto/ResponseModel;)Lkotlin/Unit;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-eqz p1, :cond_1c

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0xc8

    .line 10
    .line 11
    if-ne v1, v2, :cond_1c

    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/util/List;

    .line 18
    .line 19
    if-eqz v1, :cond_1b

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    goto/16 :goto_b

    .line 28
    .line 29
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ResponseModel;->getPage()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x1

    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    iput v3, v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->page:I

    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/util/List;

    .line 51
    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLocalAllArchive()Landroidx/lifecycle/MutableLiveData;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Ljava/util/List;

    .line 70
    .line 71
    iget v4, v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->page:I

    .line 72
    .line 73
    add-int/2addr v4, v3

    .line 74
    iput v4, v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->page:I

    .line 75
    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/bt0;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    iget-object v4, v4, Lcom/join/android/app/mgsim/wufun/databinding/bt0;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 81
    .line 82
    invoke-virtual {v4}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->loadMoreComplete()V

    .line 83
    .line 84
    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLocalAllArchive()Landroidx/lifecycle/MutableLiveData;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    check-cast v4, Ljava/util/List;

    .line 101
    .line 102
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    const-wide/16 v6, 0x0

    .line 111
    .line 112
    const/16 v8, 0x8

    .line 113
    .line 114
    const-string v9, "\u542f\u52a8"

    .line 115
    .line 116
    const/4 v10, 0x0

    .line 117
    if-eqz v5, :cond_10

    .line 118
    .line 119
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    check-cast v5, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 124
    .line 125
    invoke-virtual {v5, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsDownloadArchive(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5, v8}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setStatus(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5, v9}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const/4 v8, 0x2

    .line 135
    invoke-virtual {v5, v8}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowType(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    invoke-virtual {v8}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getRunIngArchiveId()Landroidx/lifecycle/MutableLiveData;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    check-cast v8, Ljava/lang/Long;

    .line 151
    .line 152
    if-eqz v8, :cond_3

    .line 153
    .line 154
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 155
    .line 156
    .line 157
    move-result-wide v6

    .line 158
    :cond_3
    invoke-virtual {v5, v6, v7}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setRuningArchiveId(J)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUid()I

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    const/16 v7, 0xa

    .line 166
    .line 167
    if-nez v6, :cond_6

    .line 168
    .line 169
    invoke-virtual {v5, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowType(I)V

    .line 170
    .line 171
    .line 172
    iget-object v6, v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 173
    .line 174
    if-eqz v6, :cond_4

    .line 175
    .line 176
    invoke-virtual {v6}, Lcom/join/mgps/dto/ModGameDetailBean;->getMain_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    if-eqz v6, :cond_4

    .line 181
    .line 182
    invoke-virtual {v6}, Lcom/join/mgps/dto/GamedetialModleFourBean;->isCloudGame()Z

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    if-ne v6, v3, :cond_4

    .line 187
    .line 188
    const/4 v10, 0x1

    .line 189
    :cond_4
    if-eqz v10, :cond_5

    .line 190
    .line 191
    invoke-virtual {v5, v9}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    invoke-virtual {v6}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    check-cast v6, Ljava/util/List;

    .line 207
    .line 208
    if-eqz v6, :cond_d

    .line 209
    .line 210
    new-instance v8, Lcom/psk/kotlin/util/CommonListMainData;

    .line 211
    .line 212
    const/4 v12, 0x4

    .line 213
    const/4 v14, 0x0

    .line 214
    const/4 v15, 0x0

    .line 215
    const/16 v16, 0xc

    .line 216
    .line 217
    const/16 v17, 0x0

    .line 218
    .line 219
    move-object v11, v8

    .line 220
    move-object v13, v5

    .line 221
    invoke-direct/range {v11 .. v17}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 222
    .line 223
    .line 224
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    goto/16 :goto_3

    .line 228
    .line 229
    :cond_6
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    .line 230
    .line 231
    .line 232
    move-result v6

    .line 233
    if-nez v6, :cond_a

    .line 234
    .line 235
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    const-string v8, "0"

    .line 240
    .line 241
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    if-nez v6, :cond_a

    .line 246
    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLocalAllArchive()Landroidx/lifecycle/MutableLiveData;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    check-cast v5, Ljava/util/List;

    .line 260
    .line 261
    if-eqz v5, :cond_2

    .line 262
    .line 263
    check-cast v5, Ljava/lang/Iterable;

    .line 264
    .line 265
    new-instance v6, Ljava/util/ArrayList;

    .line 266
    .line 267
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .line 269
    .line 270
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    :cond_7
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 275
    .line 276
    .line 277
    move-result v8

    .line 278
    if-eqz v8, :cond_9

    .line 279
    .line 280
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v8

    .line 284
    move-object v9, v8

    .line 285
    check-cast v9, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 286
    .line 287
    invoke-virtual {v9}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUid()I

    .line 288
    .line 289
    .line 290
    move-result v9

    .line 291
    if-nez v9, :cond_8

    .line 292
    .line 293
    const/4 v9, 0x1

    .line 294
    goto :goto_1

    .line 295
    :cond_8
    const/4 v9, 0x0

    .line 296
    :goto_1
    if-eqz v9, :cond_7

    .line 297
    .line 298
    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    goto :goto_0

    .line 302
    :cond_9
    new-instance v5, Ljava/util/ArrayList;

    .line 303
    .line 304
    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 305
    .line 306
    .line 307
    move-result v7

    .line 308
    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 309
    .line 310
    .line 311
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 312
    .line 313
    .line 314
    move-result-object v6

    .line 315
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 316
    .line 317
    .line 318
    move-result v7

    .line 319
    if-eqz v7, :cond_2

    .line 320
    .line 321
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v7

    .line 325
    check-cast v7, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 326
    .line 327
    const-string v8, "\u6211\u7684\u9ed8\u8ba4\u5b58\u6863"

    .line 328
    .line 329
    invoke-virtual {v7, v8}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveDesc(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 333
    .line 334
    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    goto :goto_2

    .line 338
    :cond_a
    iget-object v6, v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 339
    .line 340
    if-eqz v6, :cond_b

    .line 341
    .line 342
    invoke-virtual {v6}, Lcom/join/mgps/dto/ModGameDetailBean;->getMain_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 343
    .line 344
    .line 345
    move-result-object v6

    .line 346
    if-eqz v6, :cond_b

    .line 347
    .line 348
    invoke-virtual {v6}, Lcom/join/mgps/dto/GamedetialModleFourBean;->isCloudGame()Z

    .line 349
    .line 350
    .line 351
    move-result v6

    .line 352
    if-ne v6, v3, :cond_b

    .line 353
    .line 354
    const/4 v10, 0x1

    .line 355
    :cond_b
    if-eqz v10, :cond_c

    .line 356
    .line 357
    invoke-virtual {v5, v9}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 361
    .line 362
    .line 363
    move-result-object v6

    .line 364
    invoke-virtual {v6}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 365
    .line 366
    .line 367
    move-result-object v6

    .line 368
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v6

    .line 372
    check-cast v6, Ljava/util/List;

    .line 373
    .line 374
    if-eqz v6, :cond_d

    .line 375
    .line 376
    new-instance v8, Lcom/psk/kotlin/util/CommonListMainData;

    .line 377
    .line 378
    const/4 v12, 0x3

    .line 379
    const/4 v14, 0x0

    .line 380
    const/4 v15, 0x0

    .line 381
    const/16 v16, 0xc

    .line 382
    .line 383
    const/16 v17, 0x0

    .line 384
    .line 385
    move-object v11, v8

    .line 386
    move-object v13, v5

    .line 387
    invoke-direct/range {v11 .. v17}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 388
    .line 389
    .line 390
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    :cond_d
    :goto_3
    move-object v6, v1

    .line 394
    check-cast v6, Ljava/lang/Iterable;

    .line 395
    .line 396
    new-instance v8, Ljava/util/ArrayList;

    .line 397
    .line 398
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .line 400
    .line 401
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 402
    .line 403
    .line 404
    move-result-object v6

    .line 405
    :cond_e
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 406
    .line 407
    .line 408
    move-result v9

    .line 409
    if-eqz v9, :cond_f

    .line 410
    .line 411
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v9

    .line 415
    move-object v10, v9

    .line 416
    check-cast v10, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 417
    .line 418
    invoke-virtual {v10}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v10

    .line 422
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v11

    .line 426
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result v10

    .line 430
    if-eqz v10, :cond_e

    .line 431
    .line 432
    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    goto :goto_4

    .line 436
    :cond_f
    new-instance v6, Ljava/util/ArrayList;

    .line 437
    .line 438
    invoke-static {v8, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 439
    .line 440
    .line 441
    move-result v7

    .line 442
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 443
    .line 444
    .line 445
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 446
    .line 447
    .line 448
    move-result-object v7

    .line 449
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 450
    .line 451
    .line 452
    move-result v8

    .line 453
    if-eqz v8, :cond_2

    .line 454
    .line 455
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v8

    .line 459
    check-cast v8, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 460
    .line 461
    invoke-virtual {v8}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveDesc()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v9

    .line 465
    invoke-virtual {v5, v9}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveDesc(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v8}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsLike()I

    .line 469
    .line 470
    .line 471
    move-result v9

    .line 472
    invoke-virtual {v5, v9}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsLike(I)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v8}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getLikeCount()I

    .line 476
    .line 477
    .line 478
    move-result v9

    .line 479
    invoke-virtual {v5, v9}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setLikeCount(I)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v8}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getDownloadCount()I

    .line 483
    .line 484
    .line 485
    move-result v8

    .line 486
    invoke-virtual {v5, v8}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setDownloadCount(I)V

    .line 487
    .line 488
    .line 489
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 490
    .line 491
    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    goto :goto_5

    .line 495
    :cond_10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    :cond_11
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 500
    .line 501
    .line 502
    move-result v4

    .line 503
    if-eqz v4, :cond_1a

    .line 504
    .line 505
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    move-object v13, v4

    .line 510
    check-cast v13, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 511
    .line 512
    iget v4, v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    .line 513
    .line 514
    invoke-virtual {v13, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowType(I)V

    .line 515
    .line 516
    .line 517
    iget-object v4, v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->gameId:Ljava/lang/String;

    .line 518
    .line 519
    invoke-virtual {v13, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setGame_id(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v13, v10}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsDownloadArchive(I)V

    .line 523
    .line 524
    .line 525
    invoke-virtual/range {p0 .. p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 526
    .line 527
    .line 528
    move-result-object v4

    .line 529
    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getPackageName()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v4

    .line 533
    invoke-virtual {v13, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPackageName(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    if-eqz v2, :cond_17

    .line 537
    .line 538
    move-object v4, v2

    .line 539
    check-cast v4, Ljava/util/Collection;

    .line 540
    .line 541
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 542
    .line 543
    .line 544
    move-result v4

    .line 545
    xor-int/2addr v4, v3

    .line 546
    if-eqz v4, :cond_17

    .line 547
    .line 548
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 549
    .line 550
    .line 551
    move-result-object v4

    .line 552
    :cond_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 553
    .line 554
    .line 555
    move-result v5

    .line 556
    if-eqz v5, :cond_14

    .line 557
    .line 558
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v5

    .line 562
    check-cast v5, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 563
    .line 564
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v11

    .line 568
    invoke-virtual {v13}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v12

    .line 572
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    move-result v11

    .line 576
    if-eqz v11, :cond_12

    .line 577
    .line 578
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    .line 579
    .line 580
    .line 581
    move-result v4

    .line 582
    invoke-virtual {v13, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setUserId(I)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocalZipPath()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v4

    .line 589
    invoke-virtual {v13, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocalZipPath(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v13, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsDownloadArchive(I)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getPackageName()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v4

    .line 599
    invoke-virtual {v13, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPackageName(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsFirstRun()I

    .line 603
    .line 604
    .line 605
    move-result v4

    .line 606
    invoke-virtual {v13, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsFirstRun(I)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getMainArchiveLocalPath()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v4

    .line 613
    invoke-virtual {v13, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setMainArchiveLocalPath(Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getMainArchiveLocalPath2()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v4

    .line 620
    invoke-virtual {v13, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setMainArchiveLocalPath2(Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocalPath()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v4

    .line 627
    invoke-virtual {v13, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocalPath(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    invoke-virtual/range {p0 .. p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 631
    .line 632
    .line 633
    move-result-object v4

    .line 634
    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getRunIngArchiveId()Landroidx/lifecycle/MutableLiveData;

    .line 635
    .line 636
    .line 637
    move-result-object v4

    .line 638
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    move-result-object v4

    .line 642
    check-cast v4, Ljava/lang/Long;

    .line 643
    .line 644
    if-eqz v4, :cond_13

    .line 645
    .line 646
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 647
    .line 648
    .line 649
    move-result-wide v4

    .line 650
    goto :goto_7

    .line 651
    :cond_13
    move-wide v4, v6

    .line 652
    :goto_7
    invoke-virtual {v13, v4, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setRuningArchiveId(J)V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v13, v9}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v13, v8}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setStatus(I)V

    .line 659
    .line 660
    .line 661
    const/4 v4, 0x1

    .line 662
    goto :goto_8

    .line 663
    :cond_14
    const/4 v4, 0x0

    .line 664
    :goto_8
    if-nez v4, :cond_11

    .line 665
    .line 666
    iget-object v4, v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 667
    .line 668
    if-eqz v4, :cond_15

    .line 669
    .line 670
    invoke-virtual {v4}, Lcom/join/mgps/dto/ModGameDetailBean;->getMain_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 671
    .line 672
    .line 673
    move-result-object v4

    .line 674
    if-eqz v4, :cond_15

    .line 675
    .line 676
    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->isCloudGame()Z

    .line 677
    .line 678
    .line 679
    move-result v4

    .line 680
    if-ne v4, v3, :cond_15

    .line 681
    .line 682
    const/4 v4, 0x1

    .line 683
    goto :goto_9

    .line 684
    :cond_15
    const/4 v4, 0x0

    .line 685
    :goto_9
    if-eqz v4, :cond_16

    .line 686
    .line 687
    invoke-virtual {v13, v9}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 691
    .line 692
    .line 693
    move-result-object v4

    .line 694
    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 695
    .line 696
    .line 697
    move-result-object v4

    .line 698
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object v4

    .line 702
    check-cast v4, Ljava/util/List;

    .line 703
    .line 704
    if-eqz v4, :cond_11

    .line 705
    .line 706
    new-instance v5, Lcom/psk/kotlin/util/CommonListMainData;

    .line 707
    .line 708
    const/4 v12, 0x3

    .line 709
    const/4 v14, 0x0

    .line 710
    const/4 v15, 0x0

    .line 711
    const/16 v16, 0xc

    .line 712
    .line 713
    const/16 v17, 0x0

    .line 714
    .line 715
    move-object v11, v5

    .line 716
    invoke-direct/range {v11 .. v17}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 717
    .line 718
    .line 719
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    .line 721
    .line 722
    goto/16 :goto_6

    .line 723
    .line 724
    :cond_17
    iget-object v4, v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 725
    .line 726
    if-eqz v4, :cond_18

    .line 727
    .line 728
    invoke-virtual {v4}, Lcom/join/mgps/dto/ModGameDetailBean;->getMain_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 729
    .line 730
    .line 731
    move-result-object v4

    .line 732
    if-eqz v4, :cond_18

    .line 733
    .line 734
    invoke-virtual {v4}, Lcom/join/mgps/dto/GamedetialModleFourBean;->isCloudGame()Z

    .line 735
    .line 736
    .line 737
    move-result v4

    .line 738
    if-ne v4, v3, :cond_18

    .line 739
    .line 740
    const/4 v4, 0x1

    .line 741
    goto :goto_a

    .line 742
    :cond_18
    const/4 v4, 0x0

    .line 743
    :goto_a
    if-eqz v4, :cond_19

    .line 744
    .line 745
    invoke-virtual {v13, v9}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    .line 746
    .line 747
    .line 748
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 749
    .line 750
    .line 751
    move-result-object v4

    .line 752
    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 753
    .line 754
    .line 755
    move-result-object v4

    .line 756
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 757
    .line 758
    .line 759
    move-result-object v4

    .line 760
    check-cast v4, Ljava/util/List;

    .line 761
    .line 762
    if-eqz v4, :cond_11

    .line 763
    .line 764
    new-instance v5, Lcom/psk/kotlin/util/CommonListMainData;

    .line 765
    .line 766
    const/4 v12, 0x3

    .line 767
    const/4 v14, 0x0

    .line 768
    const/4 v15, 0x0

    .line 769
    const/16 v16, 0xc

    .line 770
    .line 771
    const/16 v17, 0x0

    .line 772
    .line 773
    move-object v11, v5

    .line 774
    invoke-direct/range {v11 .. v17}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 775
    .line 776
    .line 777
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    .line 779
    .line 780
    goto/16 :goto_6

    .line 781
    .line 782
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 787
    .line 788
    .line 789
    goto :goto_c

    .line 790
    :cond_1b
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/bt0;

    .line 791
    .line 792
    .line 793
    move-result-object v0

    .line 794
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/bt0;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 795
    .line 796
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 797
    .line 798
    .line 799
    :cond_1c
    :goto_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 800
    .line 801
    return-object v0
.end method

.method private static final initData$lambda$20(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->isfirst:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->loadData()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->isfirst:Z

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->loadData()V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    if-ne p1, v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v1, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 34
    .line 35
    invoke-direct {v1, v0}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->updateLocaDataToShow()V

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 45
    .line 46
    return-object p0
.end method

.method private static final initData$lambda$21(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Ljava/lang/Long;)Lkotlin/Unit;
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    check-cast v0, Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/psk/kotlin/util/CommonListMainData;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData"

    .line 44
    .line 45
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    check-cast v1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 49
    .line 50
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    invoke-virtual {v1, v2, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setRuningArchiveId(J)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 85
    .line 86
    return-object p0
.end method

.method private static final initData$lambda$22(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModGameDetailBean;->getCloud_archive_local_path()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    :goto_0
    move-object v2, p1

    .line 37
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getRunIngArchiveId()Landroidx/lifecycle/MutableLiveData;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    check-cast p1, Ljava/lang/Number;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getLocalArchiveLists()Landroidx/lifecycle/MutableLiveData;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    move-object v5, p0

    .line 74
    check-cast v5, Ljava/util/List;

    .line 75
    .line 76
    invoke-virtual/range {v0 .. v5}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->loadAllArchives(Ljava/lang/String;Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;JLjava/util/List;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 80
    .line 81
    return-object p0
.end method

.method private static final initData$lambda$8(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method private static final onClickDislike$lambda$35(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

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
    const-string v2, "NEGATIVE"

    .line 15
    .line 16
    iget p0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    .line 17
    .line 18
    invoke-virtual {v0, v1, p1, v2, p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->commentArchive(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method private static final onClickRunGame$lambda$29(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)Lkotlin/Unit;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getCheckDownloadTypeDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRunGame$3$1;

    .line 28
    .line 29
    invoke-direct {v1, p1, p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRunGame$3$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;->setClickDelDialogListener(Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getCheckDownloadTypeDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    new-instance v8, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    .line 40
    .line 41
    const-string v1, "\u662f\u5426\u8986\u76d6\u672c\u5730\u9ed8\u8ba4\u5b58\u6863\uff1f"

    .line 42
    .line 43
    const-string v2, "\u8986\u76d6\u672c\u5730\u5b58\u6863\u540e\uff0c\u4f60\u53ef\u518d\u6b21\u5206\u4eab\u5b58\u6863\u3002"

    .line 44
    .line 45
    const-string v3, "\u8986\u76d6"

    .line 46
    .line 47
    const-string v4, "\u4e0d\u8986\u76d6"

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    const/16 v6, 0x10

    .line 51
    .line 52
    const/4 v7, 0x0

    .line 53
    move-object v0, v8

    .line 54
    invoke-direct/range {v0 .. v7}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v8}, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;->setDatas(Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getCheckDownloadTypeDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {p0}, Lcom/join/kotlin/domain/ext/EXTKt;->dialogFragmentCanShow(Landroidx/fragment/app/DialogFragment;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_1

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getCheckDownloadTypeDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string v0, "getChildFragmentManager(...)"

    .line 79
    .line 80
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v0, "checkDownloadTypeDialog"

    .line 84
    .line 85
    invoke-virtual {p0, p1, v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    const/4 v0, 0x0

    .line 90
    invoke-direct {p1, p0, v0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->showDownloadDialog(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;I)V

    .line 91
    .line 92
    .line 93
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 94
    .line 95
    return-object p0
.end method

.method private static final onPraise$lambda$34(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

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
    const-string v2, "LIKE"

    .line 15
    .line 16
    iget p0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    .line 17
    .line 18
    invoke-virtual {v0, v1, p1, v2, p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->commentArchive(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method private static final popWindow_delegate$lambda$33(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->createPopwindow()Landroid/widget/PopupWindow;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final realLaunchGame$lambda$26(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->onClickRunGame(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final redownFragment_delegate$lambda$38()Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final showDownloadDialog(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "archive"

    .line 12
    .line 13
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "downloadType"

    .line 17
    .line 18
    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getInstallInExtPlug()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const-string p2, "installInExtPlug"

    .line 30
    .line 31
    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getCloud_archive_local_path()Landroidx/lifecycle/MutableLiveData;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Ljava/io/Serializable;

    .line 47
    .line 48
    const-string p2, "cloud_archive_local_path"

    .line 49
    .line 50
    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lcom/join/kotlin/domain/ext/EXTKt;->dialogFragmentCanShow(Landroidx/fragment/app/DialogFragment;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_0

    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string p2, "dialog"

    .line 67
    .line 68
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    return-void
.end method

.method private final startGame(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    if-eqz v0, :cond_2

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->setLastStartArchive(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    sget-object v0, Lcom/join/mgps/va/overmind/i;->g:Lcom/join/mgps/va/overmind/i$a;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/i$a;->d()Lcom/join/mgps/va/overmind/i;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getPackageName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/va/overmind/i;->h(Ljava/lang/String;I)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/i$a;->d()Lcom/join/mgps/va/overmind/i;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getPackageName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/va/overmind/i;->L(Ljava/lang/String;I)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    new-instance v3, Lcom/join/kotlin/ui/cloudarchive/g1;

    .line 80
    .line 81
    invoke-direct {v3, p0, p1}, Lcom/join/kotlin/ui/cloudarchive/g1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->startGameADCheck(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/i$a;->d()Lcom/join/mgps/va/overmind/i;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getPackageName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/va/overmind/i;->G(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :catch_0
    move-exception p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    :cond_4
    :goto_2
    return-void
.end method

.method private static final startGame$lambda$24(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)Lkotlin/Unit;
    .locals 7

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
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 8
    .line 9
    :cond_0
    move-object v2, v0

    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getRunIngArchiveId()Landroidx/lifecycle/MutableLiveData;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-wide/16 v3, 0x0

    .line 30
    .line 31
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getRunIngArchiveId()Landroidx/lifecycle/MutableLiveData;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v3, "getId(...)"

    .line 52
    .line 53
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUid()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eq v0, v1, :cond_3

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUid()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    invoke-static {v2}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v3, "\u5f53\u524d\u6b63\u5728\u4f7f\u7528 "

    .line 101
    .line 102
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getNickname()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v3, " \u7684\u5b58\u6863"

    .line 113
    .line 114
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_3
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getGoldFingerBean()Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Ljava/util/Collection;

    .line 133
    .line 134
    if-eqz v0, :cond_5

    .line 135
    .line 136
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_4

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_4
    const/4 v0, 0x0

    .line 144
    goto :goto_2

    .line 145
    :cond_5
    :goto_1
    const/4 v0, 0x1

    .line 146
    :goto_2
    if-eqz v0, :cond_6

    .line 147
    .line 148
    const-string v0, "0"

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_6
    const-string v0, "1"

    .line 152
    .line 153
    :goto_3
    move-object v4, v0

    .line 154
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 167
    .line 168
    const/4 v1, 0x0

    .line 169
    if-eqz v0, :cond_7

    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    if-eqz v0, :cond_7

    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getBbs_strategy_switch()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    goto :goto_4

    .line 186
    :cond_7
    move-object v0, v1

    .line 187
    :goto_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 192
    .line 193
    if-eqz v0, :cond_9

    .line 194
    .line 195
    if-eqz v6, :cond_9

    .line 196
    .line 197
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    const-string v3, "getModInfoBean(...)"

    .line 202
    .line 203
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object p0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 207
    .line 208
    if-eqz p0, :cond_8

    .line 209
    .line 210
    invoke-virtual {p0}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    if-eqz p0, :cond_8

    .line 215
    .line 216
    invoke-virtual {p0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    :cond_8
    if-eqz v1, :cond_9

    .line 221
    .line 222
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getVer()I

    .line 223
    .line 224
    .line 225
    move-result p0

    .line 226
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->getVer()I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-le p0, v0, :cond_9

    .line 231
    .line 232
    const/16 p0, 0x9

    .line 233
    .line 234
    invoke-virtual {v1, p0}, Lcom/join/mgps/dto/ModInfoBean;->setStatus(I)V

    .line 235
    .line 236
    .line 237
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    invoke-virtual {v6, p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMod_info(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    invoke-virtual {p0, v6}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    :cond_9
    if-eqz v6, :cond_a

    .line 252
    .line 253
    sget-object v1, Lcom/join/android/app/common/utils/APKUtils;->a:Lcom/join/android/app/common/utils/APKUtils$b;

    .line 254
    .line 255
    move-object v3, p1

    .line 256
    invoke-virtual/range {v1 .. v6}, Lcom/join/android/app/common/utils/APKUtils$b;->J(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Ljava/lang/String;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 257
    .line 258
    .line 259
    :cond_a
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 260
    .line 261
    return-object p0
.end method

.method private final updateLocaDataToShow()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/util/List;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLocalAllArchive()Landroidx/lifecycle/MutableLiveData;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/util/List;

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    if-eqz v0, :cond_8

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLocalAllArchive()Landroidx/lifecycle/MutableLiveData;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    check-cast v0, Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_8

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    move-object v5, v2

    .line 76
    check-cast v5, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 77
    .line 78
    invoke-virtual {v5, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsDownloadArchive(I)V

    .line 79
    .line 80
    .line 81
    const/16 v2, 0x8

    .line 82
    .line 83
    invoke-virtual {v5, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setStatus(I)V

    .line 84
    .line 85
    .line 86
    const-string v2, "\u542f\u52a8"

    .line 87
    .line 88
    invoke-virtual {v5, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const/4 v2, 0x2

    .line 92
    invoke-virtual {v5, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowType(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getRunIngArchiveId()Landroidx/lifecycle/MutableLiveData;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    check-cast v2, Ljava/lang/Long;

    .line 108
    .line 109
    if-eqz v2, :cond_2

    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 112
    .line 113
    .line 114
    move-result-wide v2

    .line 115
    goto :goto_1

    .line 116
    :cond_2
    const-wide/16 v2, 0x0

    .line 117
    .line 118
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 123
    .line 124
    .line 125
    move-result-wide v2

    .line 126
    :goto_1
    invoke-virtual {v5, v2, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setRuningArchiveId(J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUid()I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-nez v2, :cond_3

    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    check-cast v2, Ljava/util/List;

    .line 148
    .line 149
    if-eqz v2, :cond_1

    .line 150
    .line 151
    new-instance v10, Lcom/psk/kotlin/util/CommonListMainData;

    .line 152
    .line 153
    const/4 v4, 0x4

    .line 154
    const/4 v6, 0x0

    .line 155
    const/4 v7, 0x0

    .line 156
    const/16 v8, 0xc

    .line 157
    .line 158
    const/4 v9, 0x0

    .line 159
    move-object v3, v10

    .line 160
    invoke-direct/range {v3 .. v9}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 161
    .line 162
    .line 163
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_3
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-nez v2, :cond_7

    .line 172
    .line 173
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    const-string v3, "0"

    .line 178
    .line 179
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-nez v2, :cond_7

    .line 184
    .line 185
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLocalAllArchive()Landroidx/lifecycle/MutableLiveData;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    check-cast v2, Ljava/util/List;

    .line 198
    .line 199
    if-eqz v2, :cond_1

    .line 200
    .line 201
    check-cast v2, Ljava/lang/Iterable;

    .line 202
    .line 203
    new-instance v3, Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .line 207
    .line 208
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    if-eqz v4, :cond_6

    .line 217
    .line 218
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    move-object v5, v4

    .line 223
    check-cast v5, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 224
    .line 225
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUid()I

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    if-nez v5, :cond_5

    .line 230
    .line 231
    const/4 v5, 0x1

    .line 232
    goto :goto_3

    .line 233
    :cond_5
    const/4 v5, 0x0

    .line 234
    :goto_3
    if-eqz v5, :cond_4

    .line 235
    .line 236
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    .line 241
    .line 242
    const/16 v4, 0xa

    .line 243
    .line 244
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 249
    .line 250
    .line 251
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    if-eqz v4, :cond_1

    .line 260
    .line 261
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    check-cast v4, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 266
    .line 267
    const-string v5, "\u6211\u7684\u9ed8\u8ba4\u5b58\u6863"

    .line 268
    .line 269
    invoke-virtual {v4, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveDesc(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 273
    .line 274
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    goto :goto_4

    .line 278
    :cond_7
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    check-cast v2, Ljava/util/List;

    .line 291
    .line 292
    if-eqz v2, :cond_1

    .line 293
    .line 294
    new-instance v10, Lcom/psk/kotlin/util/CommonListMainData;

    .line 295
    .line 296
    const/4 v4, 0x3

    .line 297
    const/4 v6, 0x0

    .line 298
    const/4 v7, 0x0

    .line 299
    const/16 v8, 0xc

    .line 300
    .line 301
    const/4 v9, 0x0

    .line 302
    move-object v3, v10

    .line 303
    invoke-direct/range {v3 .. v9}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 304
    .line 305
    .line 306
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    goto/16 :goto_0

    .line 310
    .line 311
    :cond_8
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/bt0;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/bt0;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 316
    .line 317
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 325
    .line 326
    .line 327
    iput v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->page:I

    .line 328
    .line 329
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    const-string v2, "requireContext(...)"

    .line 342
    .line 343
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    iget v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->page:I

    .line 347
    .line 348
    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->gameId:Ljava/lang/String;

    .line 349
    .line 350
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getAllDownloedArchive(Landroid/content/Context;ILjava/lang/String;)V

    .line 351
    .line 352
    .line 353
    return-void
.end method

.method private static final uploadCloud$lambda$30(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)Lkotlin/Unit;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickIssueCloudSaveButton:Lcom/papa/sim/statistic/Event;

    .line 10
    .line 11
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v3, 0x0

    .line 32
    :goto_0
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Landroid/content/Intent;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-class v2, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;

    .line 46
    .line 47
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getLocalArchiveLists()Landroidx/lifecycle/MutableLiveData;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Ljava/util/List;

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    const-string v2, "archives"

    .line 74
    .line 75
    check-cast v1, Ljava/io/Serializable;

    .line 76
    .line 77
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getRunIngArchiveId()Landroidx/lifecycle/MutableLiveData;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Ljava/io/Serializable;

    .line 93
    .line 94
    const-string v2, "runIngArchiveId"

    .line 95
    .line 96
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 100
    .line 101
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModGameDetailBean;->getCloud_archive_local_path()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getArchiveFileSuffix()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const-string v2, "archiveFileSuffix"

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
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 121
    .line 122
    return-object p0

    .line 123
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    const-string v0, "\u672c\u5730\u9ed8\u8ba4\u5b58\u6863\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u5206\u4eab"

    .line 132
    .line 133
    invoke-virtual {p0, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 137
    .line 138
    return-object p0
.end method

.method private static final viewModleShareViewModle_delegate$lambda$1(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;
    .locals 2

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v1, "requireActivity(...)"

    .line 8
    .line 9
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    .line 13
    .line 14
    invoke-direct {v1}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    .line 18
    .line 19
    .line 20
    const-class p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 27
    .line 28
    return-object p0
.end method

.method private static final viewModle_delegate$lambda$0(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;
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
    const-class p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 18
    .line 19
    return-object p0
.end method


# virtual methods
.method public final createPopwindow()Landroid/widget/PopupWindow;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f0d0147

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Landroid/widget/PopupWindow;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    const/4 v2, -0x2

    .line 23
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 27
    .line 28
    .line 29
    const v2, 0x7f0a0486

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-virtual {p0, v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->setDeleteCloud(Landroid/widget/TextView;)V

    .line 39
    .line 40
    .line 41
    const v2, 0x7f0a1323

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Landroid/widget/TextView;

    .line 49
    .line 50
    invoke-virtual {p0, v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->setReDownload(Landroid/widget/TextView;)V

    .line 51
    .line 52
    .line 53
    const v2, 0x7f0a0fee

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p0, v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->setMain(Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    const v2, 0x7f0a1810

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {p0, v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->setTrangleTop(Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    const v2, 0x7f0a180f

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->setTrangleBottom(Landroid/view/View;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getReDownload()Landroid/widget/TextView;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDeleteCloud()Landroid/widget/TextView;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    .line 96
    .line 97
    return-object v1
.end method

.method public final getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->adapterx$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getArchiveDataPop()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveDataPop:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "archiveDataPop"

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

.method public final getArchiveTag()Lcom/join/mgps/dto/ModGameArchiveTagBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCheckDownloadTypeDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->checkDownloadTypeDialog$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/bt0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/bt0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "dataBinding"

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

.method public final getDelFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->delFragment$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getDeleteCloud()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->deleteCloud:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "deleteCloud"

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

.method public final getDialog()Landroid/app/Dialog;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->dialog$delegate:Lkotlin/Lazy;

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
    check-cast v0, Landroid/app/Dialog;

    .line 13
    .line 14
    return-object v0
.end method

.method public final getGameId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getImageDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->imageDialog$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getIsfirst()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->isfirst:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getMain()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->main:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "main"

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

.method public final getModgameBean()Lcom/join/mgps/dto/ModGameDetailBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->page:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPopWindow()Landroid/widget/PopupWindow;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->popWindow$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/PopupWindow;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getReDownload()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->reDownload:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "reDownload"

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

.method public final getRedownFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->redownFragment$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getTrangleBottom()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->trangleBottom:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "trangleBottom"

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

.method public final getTrangleTop()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->trangleTop:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "trangleTop"

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

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public final getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->viewModle$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->viewModleShareViewModle$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 8
    .line 9
    return-object v0
.end method

.method public final initData()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const-string v2, "type"

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iput v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    .line 22
    .line 23
    const-string v2, "gameId"

    .line 24
    .line 25
    const-string v3, ""

    .line 26
    .line 27
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iput-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->gameId:Ljava/lang/String;

    .line 32
    .line 33
    const-string v2, "datas"

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, "null cannot be cast to non-null type com.join.mgps.dto.ModGameDetailBean"

    .line 40
    .line 41
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    check-cast v2, Lcom/join/mgps/dto/ModGameDetailBean;

    .line 45
    .line 46
    iput-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 47
    .line 48
    const-string v2, "tag"

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 63
    .line 64
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPackageName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v0, v2}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->setPackageName(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getCloud_archive_local_path()Landroidx/lifecycle/MutableLiveData;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 91
    .line 92
    if-eqz v2, :cond_0

    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/join/mgps/dto/ModGameDetailBean;->getCloud_archive_local_path()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    goto :goto_0

    .line 99
    :cond_0
    move-object v2, v1

    .line 100
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 108
    .line 109
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameDetailBean;->getMod_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPackageName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 125
    .line 126
    if-eqz v0, :cond_2

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameDetailBean;->getCloud_archive_local_path()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    :cond_2
    move-object v5, v1

    .line 133
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getRunIngArchiveId()Landroidx/lifecycle/MutableLiveData;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    check-cast v0, Ljava/lang/Number;

    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 154
    .line 155
    .line 156
    move-result-wide v6

    .line 157
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getLocalArchiveLists()Landroidx/lifecycle/MutableLiveData;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    move-object v8, v0

    .line 170
    check-cast v8, Ljava/util/List;

    .line 171
    .line 172
    invoke-virtual/range {v3 .. v8}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->loadAllArchives(Ljava/lang/String;Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;JLjava/util/List;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/bt0;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v0, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/bt0;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    const/16 v1, 0x32

    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-virtual {v0, v1, v2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/bt0;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    const/16 v1, 0x1e

    .line 200
    .line 201
    invoke-virtual {v0, v1, p0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/bt0;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/bt0;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 209
    .line 210
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/bt0;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/bt0;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 222
    .line 223
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/bt0;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/bt0;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 231
    .line 232
    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$2;

    .line 233
    .line 234
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/t1;

    .line 253
    .line 254
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/cloudarchive/t1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    .line 255
    .line 256
    .line 257
    new-instance v3, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$sam$androidx_lifecycle_Observer$0;

    .line 258
    .line 259
    invoke-direct {v3, v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getResultDataPd()Landroidx/lifecycle/MutableLiveData;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/z0;

    .line 282
    .line 283
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/cloudarchive/z0;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    .line 284
    .line 285
    .line 286
    new-instance v3, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$sam$androidx_lifecycle_Observer$0;

    .line 287
    .line 288
    invoke-direct {v3, v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getResultData()Landroidx/lifecycle/MutableLiveData;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/a1;

    .line 311
    .line 312
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/cloudarchive/a1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    .line 313
    .line 314
    .line 315
    new-instance v3, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$sam$androidx_lifecycle_Observer$0;

    .line 316
    .line 317
    invoke-direct {v3, v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getResultAllHasDownloadData()Landroidx/lifecycle/MutableLiveData;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/b1;

    .line 340
    .line 341
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/cloudarchive/b1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    .line 342
    .line 343
    .line 344
    new-instance v3, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$sam$androidx_lifecycle_Observer$0;

    .line 345
    .line 346
    invoke-direct {v3, v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getDataChangeItem()Landroidx/lifecycle/MutableLiveData;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$7;

    .line 369
    .line 370
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$7;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLocalAllArchive()Landroidx/lifecycle/MutableLiveData;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/c1;

    .line 389
    .line 390
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/cloudarchive/c1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    .line 391
    .line 392
    .line 393
    new-instance v3, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$sam$androidx_lifecycle_Observer$0;

    .line 394
    .line 395
    invoke-direct {v3, v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getRunIngArchiveId()Landroidx/lifecycle/MutableLiveData;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/d1;

    .line 414
    .line 415
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/cloudarchive/d1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    .line 416
    .line 417
    .line 418
    new-instance v3, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$sam$androidx_lifecycle_Observer$0;

    .line 419
    .line 420
    invoke-direct {v3, v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getLocalArchiveLists()Landroidx/lifecycle/MutableLiveData;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/e1;

    .line 439
    .line 440
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/cloudarchive/e1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    .line 441
    .line 442
    .line 443
    new-instance v3, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$sam$androidx_lifecycle_Observer$0;

    .line 444
    .line 445
    invoke-direct {v3, v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    const-string v1, "getAccountData(...)"

    .line 464
    .line 465
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 473
    .line 474
    .line 475
    move-result v0

    .line 476
    if-nez v0, :cond_3

    .line 477
    .line 478
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 487
    .line 488
    .line 489
    move-result v0

    .line 490
    if-nez v0, :cond_3

    .line 491
    .line 492
    const/4 v0, 0x1

    .line 493
    goto :goto_1

    .line 494
    :cond_3
    const/4 v0, 0x0

    .line 495
    :goto_1
    iput-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->isLogin:Z

    .line 496
    .line 497
    return-void
.end method

.method public final isLogin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->isLogin:Z

    .line 2
    .line 3
    return v0
.end method

.method public final loadData()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getShowPosition()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    .line 19
    .line 20
    const-string v1, "requireContext(...)"

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    const/4 v3, 0x1

    .line 24
    if-ne v0, v3, :cond_4

    .line 25
    .line 26
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->page:I

    .line 27
    .line 28
    if-ne v0, v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v3, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 39
    .line 40
    invoke-direct {v3, v2}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget v4, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->page:I

    .line 62
    .line 63
    iget-object v5, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->gameId:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 66
    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameDetailBean;->getCloud_archive_cfg()Lcom/join/mgps/dto/CloudArchiveCfg;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudArchiveCfg;->getLast_enter_main_page_time()J

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    const-wide/16 v0, 0x0

    .line 81
    .line 82
    :goto_0
    move-wide v6, v0

    .line 83
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 84
    .line 85
    const/4 v1, 0x0

    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getTagId()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    move-object v8, v0

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    move-object v8, v1

    .line 95
    :goto_1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 96
    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getType()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    move-object v9, v0

    .line 108
    goto :goto_2

    .line 109
    :cond_3
    move-object v9, v1

    .line 110
    :goto_2
    invoke-virtual/range {v2 .. v9}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getModeDatasAddPd(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;Ljava/lang/Integer;)V

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_4
    if-ne v0, v2, :cond_5

    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    new-instance v1, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 125
    .line 126
    invoke-direct {v1, v3}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-direct {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->updateLocaDataToShow()V

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_5
    const/4 v4, 0x3

    .line 137
    if-ne v0, v4, :cond_7

    .line 138
    .line 139
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->page:I

    .line 140
    .line 141
    if-ne v0, v3, :cond_6

    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    new-instance v3, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 152
    .line 153
    invoke-direct {v3, v2}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :cond_6
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->page:I

    .line 175
    .line 176
    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->gameId:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v0, v2, v1, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->loadMyInShop(Landroid/content/Context;ILjava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :cond_7
    :goto_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    const-string v0, ""

    .line 14
    .line 15
    const-string v1, "getParentFragmentManager(...)"

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const v3, 0x7f0a0486

    .line 26
    .line 27
    .line 28
    if-ne v2, v3, :cond_5

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getPopWindow()Landroid/widget/PopupWindow;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 35
    .line 36
    .line 37
    iget p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    .line 38
    .line 39
    const/4 v2, 0x2

    .line 40
    if-ne p1, v2, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getArchiveDataPop()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveDesc()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v2, "\u6211\u7684\u9ed8\u8ba4\u5b58\u6863(\u6682\u65e0)"

    .line 51
    .line 52
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string v0, "\u5220\u9664\u5931\u8d25\uff1a\u6682\u65e0\u9ed8\u8ba4\u5b58\u6863"

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDelFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClick$1;

    .line 77
    .line 78
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClick$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v2}, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;->setClickDelDialogListener(Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDelFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-instance v10, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    .line 89
    .line 90
    const-string v3, "\u662f\u5426\u5220\u9664\u6b64\u5b58\u6863"

    .line 91
    .line 92
    const-string v4, ""

    .line 93
    .line 94
    const-string v5, "\u5220\u9664"

    .line 95
    .line 96
    const-string v6, "\u53d6\u6d88"

    .line 97
    .line 98
    const/4 v7, 0x0

    .line 99
    const/16 v8, 0x10

    .line 100
    .line 101
    const/4 v9, 0x0

    .line 102
    move-object v2, v10

    .line 103
    invoke-direct/range {v2 .. v9}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v10}, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;->setDatas(Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDelFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClick$2;

    .line 115
    .line 116
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClick$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v2}, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;->setClickDelDialogListener(Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getArchiveDataPop()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    const-string v2, "0"

    .line 131
    .line 132
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_4

    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDelFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    new-instance v10, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    .line 143
    .line 144
    const-string v3, "\u5220\u9664\u672c\u5730\u9ed8\u8ba4\u5b58\u6863"

    .line 145
    .line 146
    const-string v4, "\u5220\u9664\u540e\uff0c\u672c\u5730\u9ed8\u8ba4\u5b58\u6863\u8fdb\u5ea6\u5c06\u88ab\u6e05\u7a7a\uff0c\u786e\u5b9a\u5220\u9664\u5417\uff1f"

    .line 147
    .line 148
    const-string v5, "\u5220\u9664"

    .line 149
    .line 150
    const-string v6, "\u53d6\u6d88"

    .line 151
    .line 152
    const/4 v7, 0x0

    .line 153
    const/16 v8, 0x10

    .line 154
    .line 155
    const/4 v9, 0x0

    .line 156
    move-object v2, v10

    .line 157
    invoke-direct/range {v2 .. v9}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v10}, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;->setDatas(Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;)V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_4
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDelFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    new-instance v10, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    .line 169
    .line 170
    const-string v3, "\u5220\u9664\u793e\u533a\u5185\u60a8\u53d1\u5e03\u7684\u6b64\u5b58\u6863"

    .line 171
    .line 172
    const-string v4, "\u6ce8\uff1a\u53ea\u5220\u9664\u5b58\u6863\u793e\u533a\u5185\u7684\u5b58\u6863\uff0c\u4e0d\u4f1a\u5f71\u54cd\u672c\u5730\u9ed8\u8ba4\u5b58\u6863"

    .line 173
    .line 174
    const-string v5, "\u5220\u9664"

    .line 175
    .line 176
    const-string v6, "\u53d6\u6d88"

    .line 177
    .line 178
    const/4 v7, 0x0

    .line 179
    const/16 v8, 0x10

    .line 180
    .line 181
    const/4 v9, 0x0

    .line 182
    move-object v2, v10

    .line 183
    invoke-direct/range {v2 .. v9}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v10}, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;->setDatas(Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;)V

    .line 187
    .line 188
    .line 189
    :goto_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDelFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v2, v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    goto/16 :goto_3

    .line 204
    .line 205
    :cond_5
    :goto_2
    if-nez p1, :cond_6

    .line 206
    .line 207
    goto/16 :goto_3

    .line 208
    .line 209
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    const v2, 0x7f0a1323

    .line 214
    .line 215
    .line 216
    if-ne p1, v2, :cond_9

    .line 217
    .line 218
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getPopWindow()Landroid/widget/PopupWindow;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 223
    .line 224
    .line 225
    iget p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    .line 226
    .line 227
    const/4 v2, 0x3

    .line 228
    if-ne p1, v2, :cond_7

    .line 229
    .line 230
    new-instance p1, Landroid/content/Intent;

    .line 231
    .line 232
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    const-class v1, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;

    .line 237
    .line 238
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    .line 240
    .line 241
    new-instance v0, Ljava/util/ArrayList;

    .line 242
    .line 243
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getArchiveDataPop()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    const-string v1, "archives"

    .line 254
    .line 255
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 256
    .line 257
    .line 258
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 259
    .line 260
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameDetailBean;->getCloud_archive_local_path()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getArchiveFileSuffix()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    const-string v1, "archiveFileSuffix"

    .line 272
    .line 273
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_3

    .line 280
    .line 281
    :cond_7
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getRedownFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClick$3;

    .line 286
    .line 287
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClick$3;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1, v2}, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;->setClickDelDialogListener(Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getRedownFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    new-instance v10, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    .line 298
    .line 299
    const-string v3, "\u91cd\u65b0\u4e0b\u8f7d"

    .line 300
    .line 301
    const-string v4, "\u91cd\u65b0\u4e0b\u8f7d\u540e\uff0c\u4e91\u5b58\u6863\u5c06\u4f1a\u8986\u76d6\u6389\u672c\u5730\u73b0\u6709\u5b58\u6863\uff0c\u786e\u8ba4\u91cd\u65b0\u4e0b\u8f7d\u5417\uff1f"

    .line 302
    .line 303
    const-string v5, "\u91cd\u65b0\u4e0b\u8f7d"

    .line 304
    .line 305
    const-string v6, "\u53d6\u6d88"

    .line 306
    .line 307
    const/4 v7, 0x0

    .line 308
    const/16 v8, 0x10

    .line 309
    .line 310
    const/4 v9, 0x0

    .line 311
    move-object v2, v10

    .line 312
    invoke-direct/range {v2 .. v9}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p1, v10}, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;->setDatas(Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;)V

    .line 316
    .line 317
    .line 318
    new-instance p1, Landroid/os/Bundle;

    .line 319
    .line 320
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getArchiveDataPop()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocalPath()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    if-eqz v2, :cond_8

    .line 332
    .line 333
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getArchiveDataPop()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    .line 347
    .line 348
    .line 349
    move-result-object v4

    .line 350
    new-instance v5, Ljava/io/File;

    .line 351
    .line 352
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getArchiveDataPop()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 353
    .line 354
    .line 355
    move-result-object v6

    .line 356
    invoke-virtual {v6}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocalPath()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v6

    .line 360
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v4, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getFileUpdateTimeMain(Ljava/io/File;)J

    .line 364
    .line 365
    .line 366
    move-result-wide v4

    .line 367
    invoke-static {v4, v5}, Lcom/join/mgps/Util/e0;->v(J)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    const-string v4, "\u73a9\u8fc7"

    .line 375
    .line 376
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    invoke-virtual {v2, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPlayTime(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    :cond_8
    const-string v2, "archive"

    .line 387
    .line 388
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getArchiveDataPop()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getCloud_archive_local_path()Landroidx/lifecycle/MutableLiveData;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    check-cast v2, Ljava/io/Serializable;

    .line 408
    .line 409
    const-string v3, "cloud_archive_local_path"

    .line 410
    .line 411
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getRedownFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getRedownFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {p1, v2, v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    :cond_9
    :goto_3
    return-void
.end method

.method public onClickDislike(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 5
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "archive"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/join/mgps/va/overmind/i;->g:Lcom/join/mgps/va/overmind/i$a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/i$a;->d()Lcom/join/mgps/va/overmind/i;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x2

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-static {v0, v1, v4, v2, v3}, Lcom/join/mgps/va/overmind/i;->M(Lcom/join/mgps/va/overmind/i;Ljava/lang/String;IILjava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getShowDownlloadDialog()Landroidx/lifecycle/MutableLiveData;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 v0, 0x1

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/i1;

    .line 53
    .line 54
    invoke-direct {v1, p0, p1}, Lcom/join/kotlin/ui/cloudarchive/i1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v1}, Lcom/join/kotlin/domain/ext/EXTKt;->checkHasLogin(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    return-void
.end method

.method public onClickDomain(Lcom/join/mgps/dto/DomainInfoBean;)V
    .locals 4
    .param p1    # Lcom/join/mgps/dto/DomainInfoBean;
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/DomainInfoBean;->getInfo()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "single_game_archive"

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->D4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lcom/papa/sim/statistic/Event;->pdSingleArchiveClick:Lcom/papa/sim/statistic/Event;

    .line 26
    .line 27
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 28
    .line 29
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->gameId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p1}, Lcom/join/mgps/dto/DomainInfoBean;->getIs_join()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setIsJoin(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {p1}, Lcom/join/mgps/dto/DomainInfoBean;->getAb_test_number()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v2, p1}, Lcom/papa/sim/statistic/Ext;->setTestAbNumber(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public onClickImage(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getImageDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;->setImageDialogPath(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getImageDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/join/kotlin/domain/ext/EXTKt;->dialogFragmentCanShow(Landroidx/fragment/app/DialogFragment;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getImageDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "getChildFragmentManager(...)"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v1, "imageDialog"

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public onClickMore(Landroid/view/View;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    const-string v0, "archive"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->setArchiveDataPop(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getPopWindow()Landroid/widget/PopupWindow;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getPopWindow()Landroid/widget/PopupWindow;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getPopWindow()Landroid/widget/PopupWindow;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDeleteCloud()Landroid/widget/TextView;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const-string v1, "\u5220\u9664"

    .line 45
    .line 46
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    const v1, 0x7f07131c    # 1.79545E38f

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    const/4 v1, 0x2

    .line 61
    new-array v2, v1, [I

    .line 62
    .line 63
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 64
    .line 65
    .line 66
    iget v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    .line 67
    .line 68
    const/4 v4, 0x3

    .line 69
    const/4 v5, 0x0

    .line 70
    const/16 v6, 0x8

    .line 71
    .line 72
    if-ne v3, v4, :cond_1

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getReDownload()Landroid/widget/TextView;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    const/4 v1, 0x1

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getReDownload()Landroid/widget/TextView;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    :goto_0
    iget v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    .line 91
    .line 92
    if-ne v3, v4, :cond_2

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getReDownload()Landroid/widget/TextView;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    const-string v4, "\u7f16\u8f91"

    .line 99
    .line 100
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    aget v0, v2, v0

    .line 104
    .line 105
    div-int/2addr p2, v1

    .line 106
    add-int/2addr v0, p2

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    add-int/2addr v0, v1

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-static {v1}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v1, v2}, Lcom/join/android/app/common/utils/q;->k(Landroid/app/Activity;)I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    const v2, 0x7f07125c

    .line 129
    .line 130
    .line 131
    if-le v0, v1, :cond_3

    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getMain()Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const v1, 0x7f080426

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getTrangleTop()Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getTrangleBottom()Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getPopWindow()Landroid/widget/PopupWindow;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    neg-int v1, v1

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    float-to-int v2, v2

    .line 175
    add-int/2addr v2, p2

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    add-int/2addr v2, p2

    .line 181
    neg-int p2, v2

    .line 182
    invoke-virtual {v0, p1, v1, p2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_3
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getMain()Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    const v0, 0x7f080425

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getTrangleTop()Landroid/view/View;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getTrangleBottom()Landroid/view/View;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getPopWindow()Landroid/widget/PopupWindow;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    neg-int v0, v0

    .line 223
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    const v2, 0x7f071293

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    invoke-virtual {p2, p1, v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 235
    .line 236
    .line 237
    :goto_1
    return-void
.end method

.method public onClickReload()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->loadData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onClickRun(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 3
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "archive"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameDetailBean;->getMain_game_info()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->isCloudGame()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x1

    .line 22
    if-ne v0, v2, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    :cond_0
    if-eqz v1, :cond_1

    .line 26
    .line 27
    new-instance v0, Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 28
    .line 29
    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRun$1;

    .line 30
    .line 31
    invoke-direct {v1, p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRun$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;-><init>(Lcom/kongzue/dialogx/interfaces/r;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->c3()Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->realLaunchGame(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final onClickRunGame(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 6
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "archive"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    new-instance p1, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;

    .line 10
    .line 11
    invoke-direct {p1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;->setShowdownloadModDialog(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getEvent()Lcom/join/kotlin/domain/common/SingleLiveEvent;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {p2, p1}, Lcom/join/kotlin/domain/common/LiveDataExtensionKt;->setEvent(Lcom/join/kotlin/domain/common/SingleLiveEvent;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    :try_start_0
    sget-object v1, Lcom/join/mgps/va/overmind/i;->g:Lcom/join/mgps/va/overmind/i$a;

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/va/overmind/i$a;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    :goto_0
    sget-object v1, Lcom/join/mgps/va/overmind/i;->g:Lcom/join/mgps/va/overmind/i$a;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/join/mgps/va/overmind/i$a;->d()Lcom/join/mgps/va/overmind/i;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getPackageName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const/4 v3, 0x0

    .line 62
    const/4 v4, 0x2

    .line 63
    const/4 v5, 0x0

    .line 64
    invoke-static {v1, v2, v3, v4, v5}, Lcom/join/mgps/va/overmind/i;->M(Lcom/join/mgps/va/overmind/i;Ljava/lang/String;IILjava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_e

    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    const/4 v1, 0x5

    .line 75
    if-ne p2, v1, :cond_e

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getStatus()I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    const/16 v1, 0x8

    .line 82
    .line 83
    const/4 v2, 0x3

    .line 84
    const/4 v3, 0x4

    .line 85
    if-ne p2, v1, :cond_8

    .line 86
    .line 87
    iget p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    .line 88
    .line 89
    if-ne p2, v0, :cond_1

    .line 90
    .line 91
    const/4 v2, 0x1

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    if-ne p2, v4, :cond_2

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    const-string v1, "0"

    .line 100
    .line 101
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    if-eqz p2, :cond_3

    .line 106
    .line 107
    const/4 v2, 0x2

    .line 108
    goto :goto_1

    .line 109
    :cond_2
    const/4 v2, 0x4

    .line 110
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickStartCloudSave:Lcom/papa/sim/statistic/Event;

    .line 119
    .line 120
    new-instance v3, Lcom/papa/sim/statistic/Ext;

    .line 121
    .line 122
    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v3, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 142
    .line 143
    if-nez v3, :cond_4

    .line 144
    .line 145
    move-object v3, v5

    .line 146
    goto :goto_3

    .line 147
    :cond_4
    if-eqz v3, :cond_5

    .line 148
    .line 149
    invoke-virtual {v3}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getType()I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    goto :goto_2

    .line 158
    :cond_5
    move-object v3, v5

    .line 159
    :goto_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    :goto_3
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 168
    .line 169
    if-eqz v3, :cond_6

    .line 170
    .line 171
    invoke-virtual {v3}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getTagId()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    :cond_6
    invoke-virtual {p2, v1, v2, v5}, Lcom/papa/sim/statistic/t;->X(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-static {}, Lt6/g;->t()Lt6/g;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {p2, v1}, Lt6/g;->p(Ljava/lang/String;)Lcom/join/mgps/db/tables/CloudArchiveTable;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    if-eqz p2, :cond_7

    .line 191
    .line 192
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getIsFirstRun()I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-ne v1, v0, :cond_7

    .line 197
    .line 198
    invoke-virtual {p2, v4}, Lcom/join/mgps/db/tables/CloudArchiveTable;->setIsFirstRun(I)V

    .line 199
    .line 200
    .line 201
    invoke-static {}, Lt6/g;->t()Lt6/g;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v0, p2}, Lq5/b;->update(Ljava/lang/Object;)I

    .line 206
    .line 207
    .line 208
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;

    .line 213
    .line 214
    const/16 v1, 0xa

    .line 215
    .line 216
    invoke-direct {v0, v1, p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;-><init>(ILcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2, v0}, Lcom/join/mgps/Util/j0;->c(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    :cond_7
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->startGame(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 223
    .line 224
    .line 225
    goto/16 :goto_7

    .line 226
    .line 227
    :cond_8
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getStatus()I

    .line 228
    .line 229
    .line 230
    move-result p2

    .line 231
    if-nez p2, :cond_f

    .line 232
    .line 233
    iget p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    .line 234
    .line 235
    if-ne p2, v0, :cond_9

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_9
    if-ne p2, v4, :cond_a

    .line 239
    .line 240
    const/4 v0, 0x3

    .line 241
    goto :goto_4

    .line 242
    :cond_a
    const/4 v0, 0x4

    .line 243
    :goto_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickDownCloudSave:Lcom/papa/sim/statistic/Event;

    .line 252
    .line 253
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 254
    .line 255
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 256
    .line 257
    .line 258
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {v2, v0}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 275
    .line 276
    if-nez v2, :cond_b

    .line 277
    .line 278
    move-object v2, v5

    .line 279
    goto :goto_6

    .line 280
    :cond_b
    if-eqz v2, :cond_c

    .line 281
    .line 282
    invoke-virtual {v2}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getType()I

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    goto :goto_5

    .line 291
    :cond_c
    move-object v2, v5

    .line 292
    :goto_5
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    :goto_6
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 301
    .line 302
    if-eqz v2, :cond_d

    .line 303
    .line 304
    invoke-virtual {v2}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getTagId()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    :cond_d
    invoke-virtual {p2, v1, v0, v5}, Lcom/papa/sim/statistic/t;->X(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 312
    .line 313
    .line 314
    move-result-object p2

    .line 315
    if-eqz p2, :cond_f

    .line 316
    .line 317
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/l1;

    .line 318
    .line 319
    invoke-direct {v0, p1, p0}, Lcom/join/kotlin/ui/cloudarchive/l1;-><init>(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    .line 320
    .line 321
    .line 322
    invoke-static {p2, v0}, Lcom/join/kotlin/domain/ext/EXTKt;->checkHasNetWork(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 323
    .line 324
    .line 325
    goto :goto_7

    .line 326
    :cond_e
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getShowDownlloadDialog()Landroidx/lifecycle/MutableLiveData;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 335
    .line 336
    .line 337
    move-result-object p2

    .line 338
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    :cond_f
    :goto_7
    return-void
.end method

.method public onClickSetNetWork()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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
    const p3, 0x7f0d080b

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/bt0;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->setDataBinding(Lcom/join/android/app/mgsim/wufun/databinding/bt0;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->initData()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/bt0;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    const p2, 0x7f08009c

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/bt0;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
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

.method public onPraise(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 5
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "archive"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/join/mgps/va/overmind/i;->g:Lcom/join/mgps/va/overmind/i$a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/i$a;->d()Lcom/join/mgps/va/overmind/i;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x2

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-static {v0, v1, v4, v2, v3}, Lcom/join/mgps/va/overmind/i;->M(Lcom/join/mgps/va/overmind/i;Ljava/lang/String;IILjava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getShowDownlloadDialog()Landroidx/lifecycle/MutableLiveData;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 v0, 0x1

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/h1;

    .line 53
    .line 54
    invoke-direct {v1, p0, p1}, Lcom/join/kotlin/ui/cloudarchive/h1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v1}, Lcom/join/kotlin/domain/ext/EXTKt;->checkHasLogin(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    return-void
.end method

.method public final onRecivedDownLoadEVent(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "archiveDownEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->onRecivedDownLoadEVent(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onResume()V
    .locals 14

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getLastStartArchive()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v0, :cond_6

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v3, 0x0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 32
    :goto_1
    if-nez v3, :cond_6

    .line 33
    .line 34
    invoke-static {}, Lt6/g;->t()Lt6/g;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v3, v4}, Lt6/g;->p(Ljava/lang/String;)Lcom/join/mgps/db/tables/CloudArchiveTable;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-eqz v3, :cond_6

    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getIsFirstRun()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    const/4 v4, 0x2

    .line 56
    if-ne v3, v4, :cond_6

    .line 57
    .line 58
    new-instance v3, Lcom/join/mgps/pref/PrefDef_;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-direct {v3, v4}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchModGameId()Lorg/androidannotations/api/sharedpreferences/p;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    check-cast v4, Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_4

    .line 82
    .line 83
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchModGameId()Lorg/androidannotations/api/sharedpreferences/p;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    check-cast v3, Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v4, v3}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    if-eqz v3, :cond_2

    .line 102
    .line 103
    sget-object v4, Lcom/join/android/app/common/utils/APKUtils;->a:Lcom/join/android/app/common/utils/APKUtils$b;

    .line 104
    .line 105
    invoke-virtual {v4, v3}, Lcom/join/android/app/common/utils/APKUtils$b;->H(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_2

    .line 110
    .line 111
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGame_run_state()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    const/4 v5, 0x3

    .line 116
    if-eq v4, v5, :cond_3

    .line 117
    .line 118
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGame_run_state()I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_3

    .line 123
    .line 124
    :cond_2
    sget-object v4, Lcom/join/android/app/common/utils/APKUtils;->a:Lcom/join/android/app/common/utils/APKUtils$b;

    .line 125
    .line 126
    invoke-virtual {v4, v3}, Lcom/join/android/app/common/utils/APKUtils$b;->C(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-eqz v4, :cond_4

    .line 131
    .line 132
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGame_run_state()I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-nez v3, :cond_4

    .line 137
    .line 138
    :cond_3
    const/4 v3, 0x1

    .line 139
    goto :goto_2

    .line 140
    :cond_4
    const/4 v3, 0x0

    .line 141
    :goto_2
    if-nez v3, :cond_6

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsLike()I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-nez v3, :cond_5

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsUnLike()I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-nez v3, :cond_5

    .line 154
    .line 155
    new-instance v3, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;

    .line 156
    .line 157
    invoke-direct {v3}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;-><init>()V

    .line 158
    .line 159
    .line 160
    new-instance v4, Landroid/os/Bundle;

    .line 161
    .line 162
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 163
    .line 164
    .line 165
    const-string v5, "archive"

    .line 166
    .line 167
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 171
    .line 172
    .line 173
    new-instance v4, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    .line 174
    .line 175
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveDesc()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    const-string v0, "getArchiveDesc(...)"

    .line 180
    .line 181
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    const-string v8, "\u8bf7\u8bc4\u4ef7\u4e00\u4e0b\u4f60\u521a\u624d\u73a9\u7684\u4e91\u5b58\u6863\u5427\uff5e"

    .line 185
    .line 186
    const/4 v9, 0x0

    .line 187
    const/4 v10, 0x0

    .line 188
    const/4 v11, 0x0

    .line 189
    const/16 v12, 0x1c

    .line 190
    .line 191
    const/4 v13, 0x0

    .line 192
    move-object v6, v4

    .line 193
    invoke-direct/range {v6 .. v13}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3, v4}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->setDatas(Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    const-string v4, "getParentFragmentManager(...)"

    .line 204
    .line 205
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    const-string v4, ""

    .line 209
    .line 210
    invoke-virtual {v3, v0, v4}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :cond_5
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    new-instance v3, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 218
    .line 219
    invoke-direct {v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v3}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->setLastStartArchive(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 223
    .line 224
    .line 225
    :cond_6
    iput v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->page:I

    .line 226
    .line 227
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    const-string v3, "getAccountData(...)"

    .line 240
    .line 241
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-nez v0, :cond_7

    .line 253
    .line 254
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-nez v0, :cond_7

    .line 267
    .line 268
    const/4 v1, 0x1

    .line 269
    :cond_7
    iget-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->isLogin:Z

    .line 270
    .line 271
    if-eq v1, v0, :cond_8

    .line 272
    .line 273
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->loadData()V

    .line 274
    .line 275
    .line 276
    iput-boolean v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->isLogin:Z

    .line 277
    .line 278
    :cond_8
    return-void
.end method

.method public final realLaunchGame(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "archive"

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
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget-object v1, Lcom/join/mgps/va/overmind/i;->g:Lcom/join/mgps/va/overmind/i$a;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/join/mgps/va/overmind/i$a;->d()Lcom/join/mgps/va/overmind/i;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Lcom/join/mgps/va/overmind/i;->R(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    sget-object v1, Lcom/join/android/app/common/utils/APKUtils;->a:Lcom/join/android/app/common/utils/APKUtils$b;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2, v0}, Lcom/join/android/app/common/utils/APKUtils$b;->g(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    new-instance v3, Lcom/join/kotlin/ui/cloudarchive/f1;

    .line 54
    .line 55
    invoke-direct {v3, p0, p1, v0}, Lcom/join/kotlin/ui/cloudarchive/f1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/APKUtils$b;->j(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v2, " download task is null."

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    filled-new-array {v1}, [Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {v1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->onClickRunGame(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public final scrollToTop()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/bt0;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/bt0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/bt0;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final setArchiveDataPop(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveDataPop:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 7
    .line 8
    return-void
.end method

.method public final setArchiveTag(Lcom/join/mgps/dto/ModGameArchiveTagBean;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dto/ModGameArchiveTagBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setDataBinding(Lcom/join/android/app/mgsim/wufun/databinding/bt0;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/bt0;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/bt0;

    .line 7
    .line 8
    return-void
.end method

.method public final setDeleteCloud(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->deleteCloud:Landroid/widget/TextView;

    .line 7
    .line 8
    return-void
.end method

.method public final setGameId(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->gameId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setIsfirst(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->isfirst:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setLogin(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->isLogin:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setMain(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->main:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method

.method public final setModgameBean(Lcom/join/mgps/dto/ModGameDetailBean;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dto/ModGameDetailBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->modgameBean:Lcom/join/mgps/dto/ModGameDetailBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->page:I

    .line 2
    .line 3
    return-void
.end method

.method public final setReDownload(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->reDownload:Landroid/widget/TextView;

    .line 7
    .line 8
    return-void
.end method

.method public final setTrangleBottom(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->trangleBottom:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method

.method public final setTrangleTop(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->trangleTop:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method

.method public final setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->type:I

    .line 2
    .line 3
    return-void
.end method

.method public uploadCloud()V
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
    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/k1;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/cloudarchive/k1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/join/kotlin/domain/ext/EXTKt;->checkHasNetWork(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

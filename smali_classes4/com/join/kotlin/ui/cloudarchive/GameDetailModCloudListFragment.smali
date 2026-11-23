.class public final Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/join/kotlin/domain/common/LoadBindClickProxy;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGameDetailModCloudListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameDetailModCloudListFragment.kt\ncom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,671:1\n1#2:672\n774#3:673\n865#3,2:674\n1563#3:676\n1634#3,3:677\n774#3:680\n865#3,2:681\n1563#3:683\n1634#3,3:684\n774#3:687\n865#3,2:688\n1563#3:690\n1634#3,3:691\n*S KotlinDebug\n*F\n+ 1 GameDetailModCloudListFragment.kt\ncom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment\n*L\n98#1:673\n98#1:674,2\n99#1:676\n99#1:677,3\n299#1:680\n299#1:681,2\n300#1:683\n300#1:684,3\n310#1:687\n310#1:688,2\n311#1:690\n311#1:691,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u001f\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\u001d\u001a\u00020\u001eH\u0002J&\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0016J\u0008\u0010\'\u001a\u00020\u001eH\u0016J\u0006\u0010C\u001a\u00020\u001eJ\u0006\u0010L\u001a\u00020\u001eJ\u0008\u0010M\u001a\u00020\u001eH\u0016J\u0018\u0010S\u001a\u00020\u001e2\u0006\u0010T\u001a\u00020U2\u0006\u0010V\u001a\u000205H\u0002J\u0006\u0010u\u001a\u00020]J\u0010\u0010{\u001a\u00020\u001e2\u0006\u0010T\u001a\u00020UH\u0016J\u0008\u0010|\u001a\u00020\u001eH\u0016J\u0018\u0010}\u001a\u00020\u001e2\u0006\u0010~\u001a\u00020 2\u0006\u0010T\u001a\u00020UH\u0016J\u0010\u0010\u007f\u001a\u00020\u001e2\u0006\u0010T\u001a\u00020UH\u0016J\u0011\u0010\u0080\u0001\u001a\u00020\u001e2\u0006\u0010T\u001a\u00020UH\u0016J\u0014\u0010\u0086\u0001\u001a\u00020\u001e2\t\u0010\u0087\u0001\u001a\u0004\u0018\u00010>H\u0016J\u0015\u0010\u0088\u0001\u001a\u00020\u001e2\n\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u008a\u0001H\u0016J\u0014\u0010\u0093\u0001\u001a\u00020\u001e2\t\u0010\u0094\u0001\u001a\u0004\u0018\u00010 H\u0016J\u0013\u0010\u0095\u0001\u001a\u00020\u001e2\u0008\u0010\u0096\u0001\u001a\u00030\u0097\u0001H\u0007J\t\u0010\u0098\u0001\u001a\u00020\u001eH\u0016J\t\u0010\u0099\u0001\u001a\u00020\u001eH\u0016J\u0007\u0010\u009a\u0001\u001a\u00020\u001eR\u001b\u0010\u0007\u001a\u00020\u00088FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u001b\u0010\r\u001a\u00020\u000e8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u0018\u001a\u00020\u00198FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u000c\u001a\u0004\u0008\u001a\u0010\u001bR\u001c\u0010(\u001a\u0004\u0018\u00010)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u001c\u0010.\u001a\u0004\u0018\u00010/X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u001a\u00104\u001a\u000205X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R\u001a\u0010:\u001a\u000205X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u00107\"\u0004\u0008<\u00109R\u001a\u0010=\u001a\u00020>X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR\u001a\u0010D\u001a\u00020EX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010F\"\u0004\u0008G\u0010HR\u001a\u0010I\u001a\u00020EX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008J\u0010F\"\u0004\u0008K\u0010HR\u001b\u0010N\u001a\u00020O8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008R\u0010\u000c\u001a\u0004\u0008P\u0010QR\u001b\u0010W\u001a\u00020X8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008[\u0010\u000c\u001a\u0004\u0008Y\u0010ZR\u001b\u0010\\\u001a\u00020]8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008`\u0010\u000c\u001a\u0004\u0008^\u0010_R\u001a\u0010a\u001a\u00020bX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008c\u0010d\"\u0004\u0008e\u0010fR\u001a\u0010g\u001a\u00020bX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008h\u0010d\"\u0004\u0008i\u0010fR\u001a\u0010j\u001a\u00020 X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008k\u0010l\"\u0004\u0008m\u0010nR\u001a\u0010o\u001a\u00020 X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008p\u0010l\"\u0004\u0008q\u0010nR\u001a\u0010r\u001a\u00020 X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008s\u0010l\"\u0004\u0008t\u0010nR\u001a\u0010v\u001a\u00020UX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008w\u0010x\"\u0004\u0008y\u0010zR \u0010\u0081\u0001\u001a\u00030\u0082\u00018FX\u0086\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u0085\u0001\u0010\u000c\u001a\u0006\u0008\u0083\u0001\u0010\u0084\u0001R\u001e\u0010\u008b\u0001\u001a\u00020O8FX\u0086\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u008d\u0001\u0010\u000c\u001a\u0005\u0008\u008c\u0001\u0010QR \u0010\u008e\u0001\u001a\u00030\u008f\u00018FX\u0086\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u0092\u0001\u0010\u000c\u001a\u0006\u0008\u0090\u0001\u0010\u0091\u0001\u00a8\u0006\u009b\u0001"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;",
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
        "Lcom/join/android/app/mgsim/wufun/databinding/GameDetailModCloudListLayoutDatabindingBinding;",
        "getDataBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/GameDetailModCloudListLayoutDatabindingBinding;",
        "setDataBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/GameDetailModCloudListLayoutDatabindingBinding;)V",
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
        "Lcom/join/mgps/dto/StandaloneCloudArchive;",
        "getModgameBean",
        "()Lcom/join/mgps/dto/StandaloneCloudArchive;",
        "setModgameBean",
        "(Lcom/join/mgps/dto/StandaloneCloudArchive;)V",
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
        "onResume",
        "checkDownloadTypeDialog",
        "Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;",
        "getCheckDownloadTypeDialog",
        "()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;",
        "checkDownloadTypeDialog$delegate",
        "showDownloadDialog",
        "archive",
        "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
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
        "onClickRun",
        "uploadCloud",
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
        "SMAP\nGameDetailModCloudListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameDetailModCloudListFragment.kt\ncom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,671:1\n1#2:672\n774#3:673\n865#3,2:674\n1563#3:676\n1634#3,3:677\n774#3:680\n865#3,2:681\n1563#3:683\n1634#3,3:684\n774#3:687\n865#3,2:688\n1563#3:690\n1634#3,3:691\n*S KotlinDebug\n*F\n+ 1 GameDetailModCloudListFragment.kt\ncom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment\n*L\n98#1:673\n98#1:674,2\n99#1:676\n99#1:677,3\n299#1:680\n299#1:681,2\n300#1:683\n300#1:684,3\n310#1:687\n310#1:688,2\n311#1:690\n311#1:691,3\n*E\n"
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

.field public dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/np;

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

.field private modgameBean:Lcom/join/mgps/dto/StandaloneCloudArchive;
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
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/x;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/x;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->viewModle$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/y;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/y;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->viewModleShareViewModle$delegate:Lkotlin/Lazy;

    .line 25
    .line 26
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/z;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/z;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->adapterx$delegate:Lkotlin/Lazy;

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->page:I

    .line 39
    .line 40
    iput v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->type:I

    .line 41
    .line 42
    const-string v1, ""

    .line 43
    .line 44
    iput-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->gameId:Ljava/lang/String;

    .line 45
    .line 46
    iput-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->isfirst:Z

    .line 47
    .line 48
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/a0;

    .line 49
    .line 50
    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/a0;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->checkDownloadTypeDialog$delegate:Lkotlin/Lazy;

    .line 58
    .line 59
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/b0;

    .line 60
    .line 61
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/b0;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->dialog$delegate:Lkotlin/Lazy;

    .line 69
    .line 70
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/o;

    .line 71
    .line 72
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/o;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->popWindow$delegate:Lkotlin/Lazy;

    .line 80
    .line 81
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/p;

    .line 82
    .line 83
    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/p;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->imageDialog$delegate:Lkotlin/Lazy;

    .line 91
    .line 92
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/q;

    .line 93
    .line 94
    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/q;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->delFragment$delegate:Lkotlin/Lazy;

    .line 102
    .line 103
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/r;

    .line 104
    .line 105
    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/r;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->redownFragment$delegate:Lkotlin/Lazy;

    .line 113
    .line 114
    return-void
.end method

.method public static synthetic M(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;)Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->viewModle_delegate$lambda$0(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;)Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->checkDownloadTypeDialog_delegate$lambda$18()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic O(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;)Lcom/join/mgps/dialog/f1;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->dialog_delegate$lambda$19(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;)Lcom/join/mgps/dialog/f1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;Ljava/lang/Long;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->initData$lambda$17(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;Ljava/lang/Long;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->onClickDislike$lambda$22(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;)Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->adapterx_delegate$lambda$2(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;)Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->initData$lambda$8(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic T(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;Lcom/join/mgps/dto/ResponseModel;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->initData$lambda$10(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;Lcom/join/mgps/dto/ResponseModel;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic U(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;Lcom/join/mgps/dto/ResponseModel;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->initData$lambda$16(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;Lcom/join/mgps/dto/ResponseModel;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic V(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->popWindow_delegate$lambda$20(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;)Landroid/widget/PopupWindow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic W(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;)Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->viewModleShareViewModle_delegate$lambda$1(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;)Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->delFragment_delegate$lambda$24()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic Y()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->imageDialog_delegate$lambda$23()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic Z()Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->redownFragment_delegate$lambda$25()Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a0(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->onPraise$lambda$21(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final adapterx_delegate$lambda$2(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;)Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;
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
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

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
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

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

.method private static final checkDownloadTypeDialog_delegate$lambda$18()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;
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

.method private static final delFragment_delegate$lambda$24()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;
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

.method private static final dialog_delegate$lambda$19(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;)Lcom/join/mgps/dialog/f1;
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

.method private static final imageDialog_delegate$lambda$23()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private static final initData$lambda$10(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;Lcom/join/mgps/dto/ResponseModel;)Lkotlin/Unit;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_d

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
    if-ne v2, v3, :cond_d

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

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
    if-eqz v2, :cond_a

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
    goto/16 :goto_4

    .line 76
    .line 77
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

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
    iget v3, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->page:I

    .line 92
    .line 93
    add-int/2addr v3, v1

    .line 94
    iput v3, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->page:I

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/np;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/np;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

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
    if-eqz v3, :cond_9

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
    iget v3, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->type:I

    .line 123
    .line 124
    invoke-virtual {v6, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowType(I)V

    .line 125
    .line 126
    .line 127
    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->gameId:Ljava/lang/String;

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
    if-eqz p1, :cond_6

    .line 136
    .line 137
    move-object v3, p1

    .line 138
    check-cast v3, Ljava/util/Collection;

    .line 139
    .line 140
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    xor-int/2addr v3, v1

    .line 145
    if-eqz v3, :cond_6

    .line 146
    .line 147
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-eqz v4, :cond_6

    .line 156
    .line 157
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    check-cast v4, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 162
    .line 163
    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-virtual {v6}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    if-eqz v5, :cond_4

    .line 176
    .line 177
    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    invoke-virtual {v6, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setUserId(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocalZipPath()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    invoke-virtual {v6, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocalZipPath(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v6, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsDownloadArchive(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getPackageName()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    invoke-virtual {v6, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPackageName(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsFirstRun()I

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    invoke-virtual {v6, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsFirstRun(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getMainArchiveLocalPath()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    invoke-virtual {v6, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setMainArchiveLocalPath(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getMainArchiveLocalPath2()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    invoke-virtual {v6, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setMainArchiveLocalPath2(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocalPath()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    invoke-virtual {v6, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocalPath(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getRunIngArchiveId()Landroidx/lifecycle/MutableLiveData;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    check-cast v4, Ljava/lang/Long;

    .line 242
    .line 243
    if-eqz v4, :cond_5

    .line 244
    .line 245
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 246
    .line 247
    .line 248
    move-result-wide v4

    .line 249
    goto :goto_2

    .line 250
    :cond_5
    const-wide/16 v4, 0x0

    .line 251
    .line 252
    :goto_2
    invoke-virtual {v6, v4, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setRuningArchiveId(J)V

    .line 253
    .line 254
    .line 255
    const-string v4, "\u542f\u52a8"

    .line 256
    .line 257
    invoke-virtual {v6, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    const/16 v4, 0x8

    .line 261
    .line 262
    invoke-virtual {v6, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setStatus(I)V

    .line 263
    .line 264
    .line 265
    goto :goto_1

    .line 266
    :cond_6
    iget v3, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->type:I

    .line 267
    .line 268
    if-eq v3, v1, :cond_8

    .line 269
    .line 270
    const/4 v4, 0x2

    .line 271
    if-ne v3, v4, :cond_7

    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_7
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    check-cast v3, Ljava/util/List;

    .line 287
    .line 288
    if-eqz v3, :cond_3

    .line 289
    .line 290
    new-instance v11, Lcom/psk/kotlin/util/CommonListMainData;

    .line 291
    .line 292
    const/4 v5, 0x4

    .line 293
    const/4 v7, 0x0

    .line 294
    const/4 v8, 0x0

    .line 295
    const/16 v9, 0xc

    .line 296
    .line 297
    const/4 v10, 0x0

    .line 298
    move-object v4, v11

    .line 299
    invoke-direct/range {v4 .. v10}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 300
    .line 301
    .line 302
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    goto/16 :goto_0

    .line 306
    .line 307
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    check-cast v3, Ljava/util/List;

    .line 320
    .line 321
    if-eqz v3, :cond_3

    .line 322
    .line 323
    new-instance v11, Lcom/psk/kotlin/util/CommonListMainData;

    .line 324
    .line 325
    const/4 v5, 0x5

    .line 326
    const/4 v7, 0x0

    .line 327
    const/4 v8, 0x0

    .line 328
    const/16 v9, 0xc

    .line 329
    .line 330
    const/4 v10, 0x0

    .line 331
    move-object v4, v11

    .line 332
    invoke-direct/range {v4 .. v10}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 333
    .line 334
    .line 335
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    goto/16 :goto_0

    .line 339
    .line 340
    :cond_9
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    .line 341
    .line 342
    .line 343
    move-result-object p0

    .line 344
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 345
    .line 346
    .line 347
    goto/16 :goto_6

    .line 348
    .line 349
    :cond_a
    :goto_4
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    check-cast p1, Ljava/util/List;

    .line 362
    .line 363
    if-eqz p1, :cond_b

    .line 364
    .line 365
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 366
    .line 367
    .line 368
    move-result p1

    .line 369
    if-nez p1, :cond_b

    .line 370
    .line 371
    const/4 v0, 0x1

    .line 372
    :cond_b
    if-eqz v0, :cond_c

    .line 373
    .line 374
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    new-instance v0, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 383
    .line 384
    const/4 v1, 0x4

    .line 385
    invoke-direct {v0, v1}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    :cond_c
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/np;

    .line 392
    .line 393
    .line 394
    move-result-object p0

    .line 395
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/np;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 396
    .line 397
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 398
    .line 399
    .line 400
    goto/16 :goto_6

    .line 401
    .line 402
    :cond_d
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    check-cast v2, Ljava/util/List;

    .line 415
    .line 416
    if-eqz v2, :cond_e

    .line 417
    .line 418
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    if-nez v2, :cond_e

    .line 423
    .line 424
    const/4 v2, 0x1

    .line 425
    goto :goto_5

    .line 426
    :cond_e
    const/4 v2, 0x0

    .line 427
    :goto_5
    if-nez v2, :cond_f

    .line 428
    .line 429
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 430
    .line 431
    .line 432
    move-result-object p0

    .line 433
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 434
    .line 435
    .line 436
    move-result-object p0

    .line 437
    new-instance p1, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 438
    .line 439
    invoke-direct {p1, v1}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 443
    .line 444
    .line 445
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 446
    .line 447
    return-object p0

    .line 448
    :cond_f
    if-eqz p1, :cond_12

    .line 449
    .line 450
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getPage()I

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    if-eq v2, v1, :cond_10

    .line 455
    .line 456
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getPage()I

    .line 457
    .line 458
    .line 459
    move-result p1

    .line 460
    if-nez p1, :cond_12

    .line 461
    .line 462
    :cond_10
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 467
    .line 468
    .line 469
    move-result-object p1

    .line 470
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object p1

    .line 474
    check-cast p1, Ljava/util/List;

    .line 475
    .line 476
    if-eqz p1, :cond_11

    .line 477
    .line 478
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 479
    .line 480
    .line 481
    :cond_11
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    .line 482
    .line 483
    .line 484
    move-result-object p1

    .line 485
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 486
    .line 487
    .line 488
    :cond_12
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 489
    .line 490
    .line 491
    move-result-object p1

    .line 492
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 493
    .line 494
    .line 495
    move-result-object p1

    .line 496
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object p1

    .line 500
    check-cast p1, Ljava/util/List;

    .line 501
    .line 502
    if-eqz p1, :cond_13

    .line 503
    .line 504
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 505
    .line 506
    .line 507
    move-result p1

    .line 508
    if-nez p1, :cond_13

    .line 509
    .line 510
    const/4 v0, 0x1

    .line 511
    :cond_13
    if-eqz v0, :cond_14

    .line 512
    .line 513
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 514
    .line 515
    .line 516
    move-result-object p0

    .line 517
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 518
    .line 519
    .line 520
    move-result-object p0

    .line 521
    new-instance p1, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 522
    .line 523
    const/4 v0, 0x3

    .line 524
    invoke-direct {p1, v0}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 528
    .line 529
    .line 530
    :cond_14
    :goto_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 531
    .line 532
    return-object p0
.end method

.method private static final initData$lambda$16(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;Lcom/join/mgps/dto/ResponseModel;)Lkotlin/Unit;
    .locals 13

    .line 1
    if-eqz p1, :cond_10

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xc8

    .line 8
    .line 9
    if-ne v0, v1, :cond_10

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/List;

    .line 16
    .line 17
    if-eqz v0, :cond_f

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    goto/16 :goto_8

    .line 26
    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getPage()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/4 v1, 0x1

    .line 32
    if-ne p1, v1, :cond_1

    .line 33
    .line 34
    iput v1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->page:I

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Ljava/util/List;

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLocalAllArchive()Landroidx/lifecycle/MutableLiveData;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Ljava/util/List;

    .line 68
    .line 69
    iget p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->page:I

    .line 70
    .line 71
    add-int/2addr p1, v1

    .line 72
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->page:I

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/np;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/np;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->loadMoreComplete()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLocalAllArchive()Landroidx/lifecycle/MutableLiveData;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    check-cast p1, Ljava/util/List;

    .line 99
    .line 100
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    const/4 v3, 0x0

    .line 109
    if-eqz v2, :cond_c

    .line 110
    .line 111
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 116
    .line 117
    invoke-virtual {v2, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsDownloadArchive(I)V

    .line 118
    .line 119
    .line 120
    const/16 v4, 0x8

    .line 121
    .line 122
    invoke-virtual {v2, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setStatus(I)V

    .line 123
    .line 124
    .line 125
    const-string v4, "\u542f\u52a8"

    .line 126
    .line 127
    invoke-virtual {v2, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const/4 v4, 0x2

    .line 131
    invoke-virtual {v2, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowType(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getRunIngArchiveId()Landroidx/lifecycle/MutableLiveData;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    check-cast v4, Ljava/lang/Long;

    .line 147
    .line 148
    if-eqz v4, :cond_3

    .line 149
    .line 150
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 151
    .line 152
    .line 153
    move-result-wide v4

    .line 154
    goto :goto_0

    .line 155
    :cond_3
    const-wide/16 v4, 0x0

    .line 156
    .line 157
    :goto_0
    invoke-virtual {v2, v4, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setRuningArchiveId(J)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUid()I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    const/16 v11, 0xa

    .line 165
    .line 166
    if-nez v4, :cond_4

    .line 167
    .line 168
    invoke-virtual {v2, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowType(I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    check-cast v3, Ljava/util/List;

    .line 184
    .line 185
    if-eqz v3, :cond_9

    .line 186
    .line 187
    new-instance v12, Lcom/psk/kotlin/util/CommonListMainData;

    .line 188
    .line 189
    const/4 v5, 0x4

    .line 190
    const/4 v7, 0x0

    .line 191
    const/4 v8, 0x0

    .line 192
    const/16 v9, 0xc

    .line 193
    .line 194
    const/4 v10, 0x0

    .line 195
    move-object v4, v12

    .line 196
    move-object v6, v2

    .line 197
    invoke-direct/range {v4 .. v10}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 198
    .line 199
    .line 200
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    goto/16 :goto_4

    .line 204
    .line 205
    :cond_4
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    if-nez v4, :cond_8

    .line 210
    .line 211
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    const-string v5, "0"

    .line 216
    .line 217
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    if-nez v4, :cond_8

    .line 222
    .line 223
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLocalAllArchive()Landroidx/lifecycle/MutableLiveData;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    check-cast v2, Ljava/util/List;

    .line 236
    .line 237
    if-eqz v2, :cond_2

    .line 238
    .line 239
    check-cast v2, Ljava/lang/Iterable;

    .line 240
    .line 241
    new-instance v4, Ljava/util/ArrayList;

    .line 242
    .line 243
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .line 245
    .line 246
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    if-eqz v5, :cond_7

    .line 255
    .line 256
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    move-object v6, v5

    .line 261
    check-cast v6, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 262
    .line 263
    invoke-virtual {v6}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUid()I

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    if-nez v6, :cond_6

    .line 268
    .line 269
    const/4 v6, 0x1

    .line 270
    goto :goto_2

    .line 271
    :cond_6
    const/4 v6, 0x0

    .line 272
    :goto_2
    if-eqz v6, :cond_5

    .line 273
    .line 274
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    goto :goto_1

    .line 278
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    .line 279
    .line 280
    invoke-static {v4, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 285
    .line 286
    .line 287
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 292
    .line 293
    .line 294
    move-result v4

    .line 295
    if-eqz v4, :cond_2

    .line 296
    .line 297
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    check-cast v4, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 302
    .line 303
    const-string v5, "\u6211\u7684\u9ed8\u8ba4\u5b58\u6863"

    .line 304
    .line 305
    invoke-virtual {v4, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveDesc(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 309
    .line 310
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    goto :goto_3

    .line 314
    :cond_8
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    check-cast v3, Ljava/util/List;

    .line 327
    .line 328
    if-eqz v3, :cond_9

    .line 329
    .line 330
    new-instance v12, Lcom/psk/kotlin/util/CommonListMainData;

    .line 331
    .line 332
    const/4 v5, 0x3

    .line 333
    const/4 v7, 0x0

    .line 334
    const/4 v8, 0x0

    .line 335
    const/16 v9, 0xc

    .line 336
    .line 337
    const/4 v10, 0x0

    .line 338
    move-object v4, v12

    .line 339
    move-object v6, v2

    .line 340
    invoke-direct/range {v4 .. v10}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 341
    .line 342
    .line 343
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    :cond_9
    :goto_4
    move-object v3, v0

    .line 347
    check-cast v3, Ljava/lang/Iterable;

    .line 348
    .line 349
    new-instance v4, Ljava/util/ArrayList;

    .line 350
    .line 351
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .line 353
    .line 354
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    :cond_a
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 359
    .line 360
    .line 361
    move-result v5

    .line 362
    if-eqz v5, :cond_b

    .line 363
    .line 364
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    move-object v6, v5

    .line 369
    check-cast v6, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 370
    .line 371
    invoke-virtual {v6}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v6

    .line 375
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v7

    .line 379
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result v6

    .line 383
    if-eqz v6, :cond_a

    .line 384
    .line 385
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    goto :goto_5

    .line 389
    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    .line 390
    .line 391
    invoke-static {v4, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 392
    .line 393
    .line 394
    move-result v5

    .line 395
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 396
    .line 397
    .line 398
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 399
    .line 400
    .line 401
    move-result-object v4

    .line 402
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 403
    .line 404
    .line 405
    move-result v5

    .line 406
    if-eqz v5, :cond_2

    .line 407
    .line 408
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v5

    .line 412
    check-cast v5, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 413
    .line 414
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveDesc()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v6

    .line 418
    invoke-virtual {v2, v6}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveDesc(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsLike()I

    .line 422
    .line 423
    .line 424
    move-result v6

    .line 425
    invoke-virtual {v2, v6}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsLike(I)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getLikeCount()I

    .line 429
    .line 430
    .line 431
    move-result v6

    .line 432
    invoke-virtual {v2, v6}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setLikeCount(I)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getDownloadCount()I

    .line 436
    .line 437
    .line 438
    move-result v5

    .line 439
    invoke-virtual {v2, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setDownloadCount(I)V

    .line 440
    .line 441
    .line 442
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 443
    .line 444
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    goto :goto_6

    .line 448
    :cond_c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 449
    .line 450
    .line 451
    move-result-object p1

    .line 452
    :cond_d
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    if-eqz v0, :cond_e

    .line 457
    .line 458
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    move-object v6, v0

    .line 463
    check-cast v6, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 464
    .line 465
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->type:I

    .line 466
    .line 467
    invoke-virtual {v6, v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowType(I)V

    .line 468
    .line 469
    .line 470
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->gameId:Ljava/lang/String;

    .line 471
    .line 472
    invoke-virtual {v6, v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setGame_id(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v6, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsDownloadArchive(I)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getPackageName()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    invoke-virtual {v6, v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPackageName(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    check-cast v0, Ljava/util/List;

    .line 502
    .line 503
    if-eqz v0, :cond_d

    .line 504
    .line 505
    new-instance v1, Lcom/psk/kotlin/util/CommonListMainData;

    .line 506
    .line 507
    const/4 v5, 0x5

    .line 508
    const/4 v7, 0x0

    .line 509
    const/4 v8, 0x0

    .line 510
    const/16 v9, 0xc

    .line 511
    .line 512
    const/4 v10, 0x0

    .line 513
    move-object v4, v1

    .line 514
    invoke-direct/range {v4 .. v10}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 515
    .line 516
    .line 517
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    goto :goto_7

    .line 521
    :cond_e
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    .line 522
    .line 523
    .line 524
    move-result-object p0

    .line 525
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 526
    .line 527
    .line 528
    goto :goto_9

    .line 529
    :cond_f
    :goto_8
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/np;

    .line 530
    .line 531
    .line 532
    move-result-object p0

    .line 533
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/np;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 534
    .line 535
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 536
    .line 537
    .line 538
    :cond_10
    :goto_9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 539
    .line 540
    return-object p0
.end method

.method private static final initData$lambda$17(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;Ljava/lang/Long;)Lkotlin/Unit;
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->type:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

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

.method private static final initData$lambda$8(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

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

.method private static final onClickDislike$lambda$22(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

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
    const-string v2, "NEGATIVE"

    .line 15
    .line 16
    iget p0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->type:I

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

.method private static final onPraise$lambda$21(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

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
    const-string v2, "LIKE"

    .line 15
    .line 16
    iget p0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->type:I

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

.method private static final popWindow_delegate$lambda$20(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->createPopwindow()Landroid/widget/PopupWindow;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final redownFragment_delegate$lambda$25()Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;
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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

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

.method private final updateLocaDataToShow()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/np;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/np;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 316
    .line 317
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 325
    .line 326
    .line 327
    iput v1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->page:I

    .line 328
    .line 329
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

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
    iget v2, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->page:I

    .line 347
    .line 348
    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->gameId:Ljava/lang/String;

    .line 349
    .line 350
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getAllDownloedArchive(Landroid/content/Context;ILjava/lang/String;)V

    .line 351
    .line 352
    .line 353
    return-void
.end method

.method private static final viewModleShareViewModle_delegate$lambda$1(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;)Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;
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

.method private static final viewModle_delegate$lambda$0(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;)Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;
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
    invoke-virtual {p0, v2}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->setDeleteCloud(Landroid/widget/TextView;)V

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
    invoke-virtual {p0, v2}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->setReDownload(Landroid/widget/TextView;)V

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
    invoke-virtual {p0, v2}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->setMain(Landroid/view/View;)V

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
    invoke-virtual {p0, v2}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->setTrangleTop(Landroid/view/View;)V

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
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->setTrangleBottom(Landroid/view/View;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getReDownload()Landroid/widget/TextView;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getDeleteCloud()Landroid/widget/TextView;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->adapterx$delegate:Lkotlin/Lazy;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->archiveDataPop:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCheckDownloadTypeDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->checkDownloadTypeDialog$delegate:Lkotlin/Lazy;

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

.method public final getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/np;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/np;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->delFragment$delegate:Lkotlin/Lazy;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->deleteCloud:Landroid/widget/TextView;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->dialog$delegate:Lkotlin/Lazy;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getImageDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->imageDialog$delegate:Lkotlin/Lazy;

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
    iget-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->isfirst:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getMain()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->main:Landroid/view/View;

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

.method public final getModgameBean()Lcom/join/mgps/dto/StandaloneCloudArchive;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->modgameBean:Lcom/join/mgps/dto/StandaloneCloudArchive;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->page:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPopWindow()Landroid/widget/PopupWindow;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->popWindow$delegate:Lkotlin/Lazy;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->reDownload:Landroid/widget/TextView;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->redownFragment$delegate:Lkotlin/Lazy;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->trangleBottom:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->trangleTop:Landroid/view/View;

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
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public final getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->viewModle$delegate:Lkotlin/Lazy;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->viewModleShareViewModle$delegate:Lkotlin/Lazy;

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
    .locals 4

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
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v1, "type"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iput v1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->type:I

    .line 21
    .line 22
    const-string v1, "gameId"

    .line 23
    .line 24
    const-string v2, ""

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->gameId:Ljava/lang/String;

    .line 31
    .line 32
    const-string v1, "datas"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "null cannot be cast to non-null type com.join.mgps.dto.StandaloneCloudArchive"

    .line 39
    .line 40
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    check-cast v1, Lcom/join/mgps/dto/StandaloneCloudArchive;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->modgameBean:Lcom/join/mgps/dto/StandaloneCloudArchive;

    .line 46
    .line 47
    const-string v1, "tag"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 56
    .line 57
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v1, "initData: "

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 68
    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const/4 v1, 0x0

    .line 77
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->loadData()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/np;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/np;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const/16 v1, 0x32

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v0, v1, v2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/np;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const/16 v1, 0x1e

    .line 108
    .line 109
    invoke-virtual {v0, v1, p0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/np;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/np;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/np;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/np;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 130
    .line 131
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/np;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/np;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 139
    .line 140
    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$initData$2;

    .line 141
    .line 142
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$initData$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/t;

    .line 161
    .line 162
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/cloudarchive/t;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;)V

    .line 163
    .line 164
    .line 165
    new-instance v3, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$sam$androidx_lifecycle_Observer$0;

    .line 166
    .line 167
    invoke-direct {v3, v2}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getResultData()Landroidx/lifecycle/MutableLiveData;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/u;

    .line 190
    .line 191
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/cloudarchive/u;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;)V

    .line 192
    .line 193
    .line 194
    new-instance v3, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$sam$androidx_lifecycle_Observer$0;

    .line 195
    .line 196
    invoke-direct {v3, v2}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getResultAllHasDownloadData()Landroidx/lifecycle/MutableLiveData;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/v;

    .line 219
    .line 220
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/cloudarchive/v;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;)V

    .line 221
    .line 222
    .line 223
    new-instance v3, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$sam$androidx_lifecycle_Observer$0;

    .line 224
    .line 225
    invoke-direct {v3, v2}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getDataChangeItem()Landroidx/lifecycle/MutableLiveData;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$initData$6;

    .line 248
    .line 249
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$initData$6;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getRunIngArchiveId()Landroidx/lifecycle/MutableLiveData;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/w;

    .line 268
    .line 269
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/cloudarchive/w;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;)V

    .line 270
    .line 271
    .line 272
    new-instance v3, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$sam$androidx_lifecycle_Observer$0;

    .line 273
    .line 274
    invoke-direct {v3, v2}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    const-string v1, "getAccountData(...)"

    .line 293
    .line 294
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    if-nez v0, :cond_2

    .line 306
    .line 307
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    if-nez v0, :cond_2

    .line 320
    .line 321
    const/4 v0, 0x1

    .line 322
    goto :goto_1

    .line 323
    :cond_2
    const/4 v0, 0x0

    .line 324
    :goto_1
    iput-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->isLogin:Z

    .line 325
    .line 326
    return-void
.end method

.method public final isLogin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->isLogin:Z

    .line 2
    .line 3
    return v0
.end method

.method public final loadData()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

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
    iget v1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->type:I

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
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->type:I

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
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->page:I

    .line 27
    .line 28
    if-ne v0, v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

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
    iget v4, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->page:I

    .line 62
    .line 63
    iget-object v5, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->gameId:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->modgameBean:Lcom/join/mgps/dto/StandaloneCloudArchive;

    .line 66
    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/join/mgps/dto/StandaloneCloudArchive;->getLast_enter_main_page_time()J

    .line 70
    .line 71
    .line 72
    move-result-wide v0

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const-wide/16 v0, 0x0

    .line 75
    .line 76
    :goto_0
    move-wide v6, v0

    .line 77
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 78
    .line 79
    const/4 v1, 0x0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getTagId()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    move-object v8, v0

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    move-object v8, v1

    .line 89
    :goto_1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 90
    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getType()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    move-object v9, v0

    .line 102
    goto :goto_2

    .line 103
    :cond_3
    move-object v9, v1

    .line 104
    :goto_2
    invoke-virtual/range {v2 .. v9}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getModeDatas(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;Ljava/lang/Integer;)V

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_4
    if-ne v0, v2, :cond_5

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    new-instance v1, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 119
    .line 120
    invoke-direct {v1, v3}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-direct {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->updateLocaDataToShow()V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_5
    const/4 v4, 0x3

    .line 131
    if-ne v0, v4, :cond_7

    .line 132
    .line 133
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->page:I

    .line 134
    .line 135
    if-ne v0, v3, :cond_6

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    new-instance v3, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 146
    .line 147
    invoke-direct {v3, v2}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :cond_6
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget v1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->page:I

    .line 169
    .line 170
    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->gameId:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v0, v2, v1, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->loadMyInShop(Landroid/content/Context;ILjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :cond_7
    :goto_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
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
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const v0, 0x7f0a0486

    .line 22
    .line 23
    .line 24
    if-ne p1, v0, :cond_5

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getPopWindow()Landroid/widget/PopupWindow;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 31
    .line 32
    .line 33
    iget p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->type:I

    .line 34
    .line 35
    const/4 v0, 0x2

    .line 36
    if-ne p1, v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getArchiveDataPop()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveDesc()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v0, "\u6211\u7684\u9ed8\u8ba4\u5b58\u6863(\u6682\u65e0)"

    .line 47
    .line 48
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v0, "\u5220\u9664\u5931\u8d25\uff1a\u6682\u65e0\u9ed8\u8ba4\u5b58\u6863"

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getDelFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$onClick$1;

    .line 73
    .line 74
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$onClick$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;->setClickDelDialogListener(Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getDelFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    new-instance v8, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    .line 85
    .line 86
    const-string v1, "\u662f\u5426\u5220\u9664\u6b64\u5b58\u6863"

    .line 87
    .line 88
    const-string v2, ""

    .line 89
    .line 90
    const-string v3, "\u5220\u9664"

    .line 91
    .line 92
    const-string v4, "\u53d6\u6d88"

    .line 93
    .line 94
    const/4 v5, 0x0

    .line 95
    const/16 v6, 0x10

    .line 96
    .line 97
    const/4 v7, 0x0

    .line 98
    move-object v0, v8

    .line 99
    invoke-direct/range {v0 .. v7}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v8}, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;->setDatas(Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getDelFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$onClick$2;

    .line 111
    .line 112
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$onClick$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;->setClickDelDialogListener(Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getArchiveDataPop()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    const-string v0, "0"

    .line 127
    .line 128
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_4

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getDelFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    new-instance v8, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    .line 139
    .line 140
    const-string v1, "\u5220\u9664\u672c\u5730\u9ed8\u8ba4\u5b58\u6863"

    .line 141
    .line 142
    const-string v2, "\u5220\u9664\u540e\uff0c\u672c\u5730\u9ed8\u8ba4\u5b58\u6863\u8fdb\u5ea6\u5c06\u88ab\u6e05\u7a7a\uff0c\u786e\u5b9a\u5220\u9664\u5417\uff1f"

    .line 143
    .line 144
    const-string v3, "\u5220\u9664"

    .line 145
    .line 146
    const-string v4, "\u53d6\u6d88"

    .line 147
    .line 148
    const/4 v5, 0x0

    .line 149
    const/16 v6, 0x10

    .line 150
    .line 151
    const/4 v7, 0x0

    .line 152
    move-object v0, v8

    .line 153
    invoke-direct/range {v0 .. v7}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v8}, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;->setDatas(Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;)V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_4
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getDelFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    new-instance v8, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    .line 165
    .line 166
    const-string v1, "\u5220\u9664\u793e\u533a\u5185\u60a8\u53d1\u5e03\u7684\u6b64\u5b58\u6863"

    .line 167
    .line 168
    const-string v2, "\u6ce8\uff1a\u53ea\u5220\u9664\u5b58\u6863\u793e\u533a\u5185\u7684\u5b58\u6863\uff0c\u4e0d\u4f1a\u5f71\u54cd\u672c\u5730\u9ed8\u8ba4\u5b58\u6863"

    .line 169
    .line 170
    const-string v3, "\u5220\u9664"

    .line 171
    .line 172
    const-string v4, "\u53d6\u6d88"

    .line 173
    .line 174
    const/4 v5, 0x0

    .line 175
    const/16 v6, 0x10

    .line 176
    .line 177
    const/4 v7, 0x0

    .line 178
    move-object v0, v8

    .line 179
    invoke-direct/range {v0 .. v7}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v8}, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;->setDatas(Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;)V

    .line 183
    .line 184
    .line 185
    :goto_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getDelFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    const-string v1, "getChildFragmentManager(...)"

    .line 194
    .line 195
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    const-string v1, ""

    .line 199
    .line 200
    invoke-virtual {p1, v0, v1}, Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    :cond_5
    :goto_2
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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

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
    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/s;

    .line 53
    .line 54
    invoke-direct {v1, p0, p1}, Lcom/join/kotlin/ui/cloudarchive/s;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

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
    .locals 0
    .param p1    # Lcom/join/mgps/dto/DomainInfoBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onClickImage(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getImageDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;->setImageDialogPath(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getImageDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getImageDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;

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
    invoke-virtual {p0, p2}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->setArchiveDataPop(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getPopWindow()Landroid/widget/PopupWindow;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getPopWindow()Landroid/widget/PopupWindow;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getPopWindow()Landroid/widget/PopupWindow;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getDeleteCloud()Landroid/widget/TextView;

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
    iget v3, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->type:I

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getReDownload()Landroid/widget/TextView;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getReDownload()Landroid/widget/TextView;

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
    iget v3, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->type:I

    .line 91
    .line 92
    if-ne v3, v4, :cond_2

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getReDownload()Landroid/widget/TextView;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getMain()Landroid/view/View;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getTrangleTop()Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getTrangleBottom()Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getPopWindow()Landroid/widget/PopupWindow;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getMain()Landroid/view/View;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getTrangleTop()Landroid/view/View;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getTrangleBottom()Landroid/view/View;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getPopWindow()Landroid/widget/PopupWindow;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->loadData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onClickRun(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "archive"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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
    const p3, 0x7f0d02f3

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
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/np;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->setDataBinding(Lcom/join/android/app/mgsim/wufun/databinding/np;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->initData()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/np;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/np;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

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
    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/n;

    .line 53
    .line 54
    invoke-direct {v1, p0, p1}, Lcom/join/kotlin/ui/cloudarchive/n;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

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
    .locals 2
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "onRecivedDownLoadEVent: "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->onRecivedDownLoadEVent(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->page:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "getAccountData(...)"

    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v0, 0x0

    .line 50
    :goto_0
    iget-boolean v1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->isLogin:Z

    .line 51
    .line 52
    if-eq v0, v1, :cond_1

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->loadData()V

    .line 55
    .line 56
    .line 57
    iput-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->isLogin:Z

    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method public final scrollToTop()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/np;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/np;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/np;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->archiveDataPop:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setDataBinding(Lcom/join/android/app/mgsim/wufun/databinding/np;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/np;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/np;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->deleteCloud:Landroid/widget/TextView;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->gameId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setIsfirst(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->isfirst:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setLogin(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->isLogin:Z

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->main:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method

.method public final setModgameBean(Lcom/join/mgps/dto/StandaloneCloudArchive;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dto/StandaloneCloudArchive;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->modgameBean:Lcom/join/mgps/dto/StandaloneCloudArchive;

    .line 2
    .line 3
    return-void
.end method

.method public final setPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->page:I

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->reDownload:Landroid/widget/TextView;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->trangleBottom:Landroid/view/View;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->trangleTop:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method

.method public final setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->type:I

    .line 2
    .line 3
    return-void
.end method

.method public uploadCloud()V
    .locals 0

    return-void
.end method

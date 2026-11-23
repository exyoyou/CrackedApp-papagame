.class public final Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/join/kotlin/domain/common/LoadBindClickProxy;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ce\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J&\u0010#\u001a\u0004\u0018\u00010$2\u0006\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0008\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u0008\u0010+\u001a\u00020,H\u0016J\u0006\u0010K\u001a\u00020,J\u0006\u0010T\u001a\u00020,J\u0006\u0010s\u001a\u00020[J\u0010\u0010z\u001a\u00020,2\u0006\u0010{\u001a\u00020uH\u0016J\u0008\u0010|\u001a\u00020,H\u0016J\u0018\u0010}\u001a\u00020,2\u0006\u0010~\u001a\u00020$2\u0006\u0010{\u001a\u00020uH\u0016J\u0010\u0010\u007f\u001a\u00020,2\u0006\u0010{\u001a\u00020uH\u0016J\u0011\u0010\u0080\u0001\u001a\u00020,2\u0006\u0010{\u001a\u00020uH\u0016J\u0014\u0010\u0086\u0001\u001a\u00020,2\t\u0010\u0087\u0001\u001a\u0004\u0018\u00010@H\u0016J\u0014\u0010\u0092\u0001\u001a\u00020,2\t\u0010\u0093\u0001\u001a\u0004\u0018\u00010$H\u0016J\u0013\u0010\u0094\u0001\u001a\u00020,2\u0008\u0010\u0095\u0001\u001a\u00030\u0096\u0001H\u0007J\t\u0010\u0097\u0001\u001a\u00020,H\u0016J\t\u0010\u0098\u0001\u001a\u00020,H\u0016J\u0007\u0010\u0099\u0001\u001a\u00020,R\u001b\u0010\u0007\u001a\u00020\u00088FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u001b\u0010\r\u001a\u00020\u000e8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u0018\u001a\u00020\u00198FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u000c\u001a\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001c\u0010-\u001a\u0004\u0018\u00010.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u001c\u00103\u001a\u0004\u0018\u000104X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001a\u00109\u001a\u00020:X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\u001a\u0010?\u001a\u00020@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR\u001c\u0010E\u001a\u0004\u0018\u00010FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010H\"\u0004\u0008I\u0010JR\u001a\u0010L\u001a\u00020MX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008L\u0010N\"\u0004\u0008O\u0010PR\u001a\u0010Q\u001a\u00020MX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008R\u0010N\"\u0004\u0008S\u0010PR\u001b\u0010U\u001a\u00020V8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Y\u0010\u000c\u001a\u0004\u0008W\u0010XR\u001b\u0010Z\u001a\u00020[8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008^\u0010\u000c\u001a\u0004\u0008\\\u0010]R\u001a\u0010_\u001a\u00020`X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008a\u0010b\"\u0004\u0008c\u0010dR\u001a\u0010e\u001a\u00020`X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008f\u0010b\"\u0004\u0008g\u0010dR\u001a\u0010h\u001a\u00020$X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008i\u0010j\"\u0004\u0008k\u0010lR\u001a\u0010m\u001a\u00020$X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008n\u0010j\"\u0004\u0008o\u0010lR\u001a\u0010p\u001a\u00020$X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008q\u0010j\"\u0004\u0008r\u0010lR\u001a\u0010t\u001a\u00020uX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008v\u0010w\"\u0004\u0008x\u0010yR \u0010\u0081\u0001\u001a\u00030\u0082\u00018FX\u0086\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u0085\u0001\u0010\u000c\u001a\u0006\u0008\u0083\u0001\u0010\u0084\u0001R \u0010\u0088\u0001\u001a\u00030\u0089\u00018FX\u0086\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u008c\u0001\u0010\u000c\u001a\u0006\u0008\u008a\u0001\u0010\u008b\u0001R \u0010\u008d\u0001\u001a\u00030\u008e\u00018FX\u0086\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u0091\u0001\u0010\u000c\u001a\u0006\u0008\u008f\u0001\u0010\u0090\u0001\u00a8\u0006\u009a\u0001"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/join/kotlin/domain/common/LoadBindClickProxy;",
        "<init>",
        "()V",
        "viewModle",
        "Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;",
        "getViewModle",
        "()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;",
        "viewModle$delegate",
        "Lkotlin/Lazy;",
        "viewModleShareViewModle",
        "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;",
        "getViewModleShareViewModle",
        "()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;",
        "viewModleShareViewModle$delegate",
        "dataBinding",
        "Lcom/join/android/app/mgsim/wufun/databinding/GameDetailEmusCloudListLayoutDatabindingBinding;",
        "getDataBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/GameDetailEmusCloudListLayoutDatabindingBinding;",
        "setDataBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/GameDetailEmusCloudListLayoutDatabindingBinding;)V",
        "adapterx",
        "Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;",
        "getAdapterx",
        "()Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;",
        "adapterx$delegate",
        "mListener",
        "Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;",
        "getMListener",
        "()Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;",
        "setMListener",
        "(Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;)V",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
        "",
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
        "gameId",
        "",
        "getGameId",
        "()Ljava/lang/String;",
        "setGameId",
        "(Ljava/lang/String;)V",
        "modleFourBean",
        "Lcom/join/mgps/dto/GamedetialModleFourBean;",
        "getModleFourBean",
        "()Lcom/join/mgps/dto/GamedetialModleFourBean;",
        "setModleFourBean",
        "(Lcom/join/mgps/dto/GamedetialModleFourBean;)V",
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
        "Lcom/join/mgps/dto/CloudListDataBean;",
        "getArchiveDataPop",
        "()Lcom/join/mgps/dto/CloudListDataBean;",
        "setArchiveDataPop",
        "(Lcom/join/mgps/dto/CloudListDataBean;)V",
        "onClickRun",
        "archive",
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
        "delFragment",
        "Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;",
        "getDelFragment",
        "()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;",
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


# instance fields
.field private final adapterx$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public archiveDataPop:Lcom/join/mgps/dto/CloudListDataBean;

.field private archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/fp;

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

.field private mListener:Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public main:Landroid/view/View;

.field private modgameBean:Lcom/join/mgps/dto/StandaloneCloudArchive;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private modleFourBean:Lcom/join/mgps/dto/GamedetialModleFourBean;
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
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/c;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/c;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->viewModle$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/e;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/e;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->viewModleShareViewModle$delegate:Lkotlin/Lazy;

    .line 25
    .line 26
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/f;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/f;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->adapterx$delegate:Lkotlin/Lazy;

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->page:I

    .line 39
    .line 40
    const-string v1, ""

    .line 41
    .line 42
    iput-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->gameId:Ljava/lang/String;

    .line 43
    .line 44
    iput-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->isfirst:Z

    .line 45
    .line 46
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/g;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/g;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->dialog$delegate:Lkotlin/Lazy;

    .line 56
    .line 57
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/h;

    .line 58
    .line 59
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/h;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->popWindow$delegate:Lkotlin/Lazy;

    .line 67
    .line 68
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/i;

    .line 69
    .line 70
    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/i;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->imageDialog$delegate:Lkotlin/Lazy;

    .line 78
    .line 79
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/j;

    .line 80
    .line 81
    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/j;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->delFragment$delegate:Lkotlin/Lazy;

    .line 89
    .line 90
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/k;

    .line 91
    .line 92
    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/k;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->redownFragment$delegate:Lkotlin/Lazy;

    .line 100
    .line 101
    return-void
.end method

.method public static synthetic M(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->viewModleShareViewModle_delegate$lambda$1(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->adapterx_delegate$lambda$2(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->viewModle_delegate$lambda$0(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->initData$lambda$4(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->popWindow_delegate$lambda$8(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)Landroid/widget/PopupWindow;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->delFragment_delegate$lambda$10()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic S(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;Lcom/join/mgps/dto/CloudListDataBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->initData$lambda$6(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;Lcom/join/mgps/dto/CloudListDataBean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic T()Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->redownFragment_delegate$lambda$11()Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic U(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;Lcom/join/mgps/dto/ArchiveShopDataBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->initData$lambda$5(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;Lcom/join/mgps/dto/ArchiveShopDataBean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic V(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)Lcom/join/mgps/dialog/f1;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->dialog_delegate$lambda$7(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)Lcom/join/mgps/dialog/f1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic W()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->imageDialog_delegate$lambda$9()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;

    move-result-object v0

    return-object v0
.end method

.method private static final adapterx_delegate$lambda$2(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;
    .locals 3

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;

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
    invoke-direct {v0, v1, p0}, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;-><init>(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method private static final delFragment_delegate$lambda$10()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;
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

.method private static final dialog_delegate$lambda$7(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)Lcom/join/mgps/dialog/f1;
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

.method private static final imageDialog_delegate$lambda$9()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;
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

.method private static final initData$lambda$4(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;

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

.method private static final initData$lambda$5(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;Lcom/join/mgps/dto/ArchiveShopDataBean;)Lkotlin/Unit;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_7

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getCode()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/16 v3, 0x258

    .line 10
    .line 11
    if-ne v2, v3, :cond_7

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

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
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;->getPn()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-ne v3, v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Ljava/util/List;

    .line 56
    .line 57
    if-eqz v3, :cond_0

    .line 58
    .line 59
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 67
    .line 68
    .line 69
    :cond_1
    if-eqz v2, :cond_4

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;->getMarketList()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_2

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->page:I

    .line 83
    .line 84
    add-int/2addr v0, v1

    .line 85
    iput v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->page:I

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/fp;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/fp;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->loadMoreComplete()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Ljava/util/List;

    .line 109
    .line 110
    if-eqz v0, :cond_3

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;->getMarketList()Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    const-string v1, "getMarketList(...)"

    .line 121
    .line 122
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    check-cast p1, Ljava/util/Collection;

    .line 126
    .line 127
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 128
    .line 129
    .line 130
    :cond_3
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_2

    .line 138
    .line 139
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    check-cast p1, Ljava/util/List;

    .line 152
    .line 153
    if-eqz p1, :cond_5

    .line 154
    .line 155
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-nez p1, :cond_5

    .line 160
    .line 161
    const/4 v0, 0x1

    .line 162
    :cond_5
    if-eqz v0, :cond_6

    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    new-instance v0, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 173
    .line 174
    const/4 v1, 0x4

    .line 175
    invoke-direct {v0, v1}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    :cond_6
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/fp;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/fp;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_2

    .line 191
    .line 192
    :cond_7
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    check-cast v2, Ljava/util/List;

    .line 205
    .line 206
    if-eqz v2, :cond_8

    .line 207
    .line 208
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-nez v2, :cond_8

    .line 213
    .line 214
    const/4 v2, 0x1

    .line 215
    goto :goto_1

    .line 216
    :cond_8
    const/4 v2, 0x0

    .line 217
    :goto_1
    if-nez v2, :cond_9

    .line 218
    .line 219
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    new-instance p1, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 228
    .line 229
    invoke-direct {p1, v1}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 236
    .line 237
    return-object p0

    .line 238
    :cond_9
    if-eqz p1, :cond_c

    .line 239
    .line 240
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    if-eqz v2, :cond_a

    .line 245
    .line 246
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    invoke-virtual {v2}, Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;->getPn()I

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-eq v2, v1, :cond_a

    .line 255
    .line 256
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;->getPn()I

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    if-nez p1, :cond_c

    .line 265
    .line 266
    :cond_a
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    check-cast p1, Ljava/util/List;

    .line 279
    .line 280
    if-eqz p1, :cond_b

    .line 281
    .line 282
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 283
    .line 284
    .line 285
    :cond_b
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 290
    .line 291
    .line 292
    :cond_c
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    check-cast p1, Ljava/util/List;

    .line 305
    .line 306
    if-eqz p1, :cond_d

    .line 307
    .line 308
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    if-nez p1, :cond_d

    .line 313
    .line 314
    const/4 v0, 0x1

    .line 315
    :cond_d
    if-eqz v0, :cond_e

    .line 316
    .line 317
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    .line 318
    .line 319
    .line 320
    move-result-object p0

    .line 321
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 322
    .line 323
    .line 324
    move-result-object p0

    .line 325
    new-instance p1, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 326
    .line 327
    const/4 v0, 0x3

    .line 328
    invoke-direct {p1, v0}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    :cond_e
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 335
    .line 336
    return-object p0
.end method

.method private static final initData$lambda$6(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;Lcom/join/mgps/dto/CloudListDataBean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {v0, p1, p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->onitemChanged(Lcom/join/mgps/dto/CloudListDataBean;Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method private static final popWindow_delegate$lambda$8(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->createPopwindow()Landroid/widget/PopupWindow;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final redownFragment_delegate$lambda$11()Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;
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

.method private static final viewModleShareViewModle_delegate$lambda$1(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;
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

.method private static final viewModle_delegate$lambda$0(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;
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
    const-class p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

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
    invoke-virtual {p0, v2}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->setDeleteCloud(Landroid/widget/TextView;)V

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
    invoke-virtual {p0, v2}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->setReDownload(Landroid/widget/TextView;)V

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
    invoke-virtual {p0, v2}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->setMain(Landroid/view/View;)V

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
    invoke-virtual {p0, v2}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->setTrangleTop(Landroid/view/View;)V

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
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->setTrangleBottom(Landroid/view/View;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getReDownload()Landroid/widget/TextView;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getDeleteCloud()Landroid/widget/TextView;

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

.method public final getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->adapterx$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getArchiveDataPop()Lcom/join/mgps/dto/CloudListDataBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->archiveDataPop:Lcom/join/mgps/dto/CloudListDataBean;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/fp;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/fp;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->delFragment$delegate:Lkotlin/Lazy;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->deleteCloud:Landroid/widget/TextView;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->dialog$delegate:Lkotlin/Lazy;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getImageDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->imageDialog$delegate:Lkotlin/Lazy;

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
    iget-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->isfirst:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getMListener()Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->mListener:Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMain()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->main:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->modgameBean:Lcom/join/mgps/dto/StandaloneCloudArchive;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getModleFourBean()Lcom/join/mgps/dto/GamedetialModleFourBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->modleFourBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->page:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPopWindow()Landroid/widget/PopupWindow;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->popWindow$delegate:Lkotlin/Lazy;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->reDownload:Landroid/widget/TextView;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->redownFragment$delegate:Lkotlin/Lazy;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->trangleBottom:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->trangleTop:Landroid/view/View;

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

.method public final getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->viewModle$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->viewModleShareViewModle$delegate:Lkotlin/Lazy;

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
    const-string v1, "gameId"

    .line 15
    .line 16
    const-string v2, ""

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->gameId:Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, "modleFourBean"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-class v2, Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 41
    .line 42
    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->modleFourBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 49
    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->loadData()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/fp;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/fp;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const/16 v1, 0x32

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v0, v1, v2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/fp;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const/16 v1, 0x1e

    .line 78
    .line 79
    invoke-virtual {v0, v1, p0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/fp;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/fp;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/fp;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/fp;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/fp;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/fp;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 109
    .line 110
    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$2;

    .line 111
    .line 112
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/l;

    .line 131
    .line 132
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/cloudarchive/l;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)V

    .line 133
    .line 134
    .line 135
    new-instance v3, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$sam$androidx_lifecycle_Observer$0;

    .line 136
    .line 137
    invoke-direct {v3, v2}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;->getResultData()Landroidx/lifecycle/MutableLiveData;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/m;

    .line 160
    .line 161
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/cloudarchive/m;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)V

    .line 162
    .line 163
    .line 164
    new-instance v3, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$sam$androidx_lifecycle_Observer$0;

    .line 165
    .line 166
    invoke-direct {v3, v2}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getInstallInExtPlug()Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;->setInstallInExtPlug(Z)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;->getDataChangeItem()Landroidx/lifecycle/MutableLiveData;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/d;

    .line 208
    .line 209
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/cloudarchive/d;-><init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)V

    .line 210
    .line 211
    .line 212
    new-instance v3, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$sam$androidx_lifecycle_Observer$0;

    .line 213
    .line 214
    invoke-direct {v3, v2}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    if-eqz v0, :cond_1

    .line 233
    .line 234
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-nez v0, :cond_1

    .line 243
    .line 244
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-nez v0, :cond_1

    .line 257
    .line 258
    const/4 v0, 0x1

    .line 259
    goto :goto_0

    .line 260
    :cond_1
    const/4 v0, 0x0

    .line 261
    :goto_0
    iput-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->isLogin:Z

    .line 262
    .line 263
    return-void
.end method

.method public final isLogin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->isLogin:Z

    .line 2
    .line 3
    return v0
.end method

.method public final loadData()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->page:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v1, v2}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "requireContext(...)"

    .line 36
    .line 37
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget v2, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->page:I

    .line 41
    .line 42
    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->gameId:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;->getModeDatas(Landroid/content/Context;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
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

.method public onClickDislike(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 1
    .param p1    # Lcom/join/mgps/dto/CloudListDataBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "archive"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onClickImage(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getImageDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;->setImageDialogPath(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getImageDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getImageDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;

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

.method public onClickMore(Landroid/view/View;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/dto/CloudListDataBean;
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
    const-string p1, "archive"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->setArchiveDataPop(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getPopWindow()Landroid/widget/PopupWindow;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 p2, 0x1

    .line 19
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getPopWindow()Landroid/widget/PopupWindow;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getPopWindow()Landroid/widget/PopupWindow;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getDeleteCloud()Landroid/widget/TextView;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string p2, "\u5220\u9664"

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public onClickReload()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->loadData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onClickRun(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 1
    .param p1    # Lcom/join/mgps/dto/CloudListDataBean;
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
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->mListener:Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;->onRun()V

    .line 14
    .line 15
    .line 16
    :cond_0
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
    const p3, 0x7f0d02ec

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
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/fp;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->setDataBinding(Lcom/join/android/app/mgsim/wufun/databinding/fp;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->initData()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/fp;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/fp;

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

.method public onPraise(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 1
    .param p1    # Lcom/join/mgps/dto/CloudListDataBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "archive"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "onRecivedDownLoadEVent: "

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getName()Ljava/lang/String;

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
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final scrollToTop()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/fp;

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/fp;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/fp;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

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

.method public final setArchiveDataPop(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 1
    .param p1    # Lcom/join/mgps/dto/CloudListDataBean;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->archiveDataPop:Lcom/join/mgps/dto/CloudListDataBean;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->archiveTag:Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setDataBinding(Lcom/join/android/app/mgsim/wufun/databinding/fp;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/fp;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/fp;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->deleteCloud:Landroid/widget/TextView;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->gameId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setIsfirst(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->isfirst:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setLogin(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->isLogin:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setMListener(Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->mListener:Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->main:Landroid/view/View;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->modgameBean:Lcom/join/mgps/dto/StandaloneCloudArchive;

    .line 2
    .line 3
    return-void
.end method

.method public final setModleFourBean(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dto/GamedetialModleFourBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->modleFourBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->page:I

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->reDownload:Landroid/widget/TextView;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->trangleBottom:Landroid/view/View;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->trangleTop:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method

.method public uploadCloud()V
    .locals 0

    return-void
.end method

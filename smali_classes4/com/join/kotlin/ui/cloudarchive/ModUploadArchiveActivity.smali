.class public final Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;
.implements Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModUploadArchiveActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModUploadArchiveActivity.kt\ncom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,404:1\n1021#2,2:405\n*S KotlinDebug\n*F\n+ 1 ModUploadArchiveActivity.kt\ncom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity\n*L\n174#1:405,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\r\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0012\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0014J&\u00106\u001a\u00020\"2\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u000209082\u0006\u00100\u001a\u0002012\u0006\u0010*\u001a\u00020+H\u0002J\u0012\u0010?\u001a\u00020\"2\u0008\u0010@\u001a\u0004\u0018\u00010AH\u0016J\u0006\u0010G\u001a\u00020\"J\"\u0010H\u001a\u00020\"2\u0006\u0010I\u001a\u00020J2\u0006\u0010K\u001a\u00020J2\u0008\u0010L\u001a\u0004\u0018\u00010MH\u0014J\u0008\u0010N\u001a\u00020\"H\u0016J\u0008\u0010O\u001a\u00020\"H\u0016J\u0006\u0010P\u001a\u00020\"J*\u0010Q\u001a\u00020\"2\u0008\u0010R\u001a\u0004\u0018\u00010S2\u0006\u0010T\u001a\u00020J2\u0006\u0010U\u001a\u00020J2\u0006\u0010V\u001a\u00020JH\u0016J*\u0010W\u001a\u00020\"2\u0008\u0010R\u001a\u0004\u0018\u00010S2\u0006\u0010T\u001a\u00020J2\u0006\u0010V\u001a\u00020J2\u0006\u0010X\u001a\u00020JH\u0016R\u001b\u0010\u0007\u001a\u00020\u00088FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u001b\u0010\r\u001a\u00020\u000e8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0012\u001a\u00020\u00138FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u000c\u001a\u0004\u0008\u0014\u0010\u0015R\u001b\u0010\u0017\u001a\u00020\u00188FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u000c\u001a\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001c\u001a\u00020\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001b\u0010%\u001a\u00020&8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008)\u0010\u000c\u001a\u0004\u0008\'\u0010(R\u001a\u0010*\u001a\u00020+X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u001a\u00100\u001a\u000201X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R\u001b\u0010:\u001a\u00020;8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008>\u0010\u000c\u001a\u0004\u0008<\u0010=R\u001b\u0010B\u001a\u00020C8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008F\u0010\u000c\u001a\u0004\u0008D\u0010E\u00a8\u0006Y"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;",
        "Lcom/BaseAppCompatActivity;",
        "Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;",
        "Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;",
        "Landroid/view/View$OnClickListener;",
        "<init>",
        "()V",
        "viewModle",
        "Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;",
        "getViewModle",
        "()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;",
        "viewModle$delegate",
        "Lkotlin/Lazy;",
        "databinDing",
        "Lcom/join/android/app/mgsim/wufun/databinding/ModUploadArchiveActivityBinding;",
        "getDatabinDing",
        "()Lcom/join/android/app/mgsim/wufun/databinding/ModUploadArchiveActivityBinding;",
        "databinDing$delegate",
        "dialog",
        "Lcom/join/mgps/dialog/LodingProgressDialog;",
        "getDialog",
        "()Lcom/join/mgps/dialog/LodingProgressDialog;",
        "dialog$delegate",
        "viewModleLoadData",
        "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;",
        "getViewModleLoadData",
        "()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;",
        "viewModleLoadData$delegate",
        "isFromGame",
        "",
        "()Z",
        "setFromGame",
        "(Z)V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "dialogLoding",
        "Lcom/join/mgps/dialog/LodingDialog;",
        "getDialogLoding",
        "()Lcom/join/mgps/dialog/LodingDialog;",
        "dialogLoding$delegate",
        "runIngArchiveId",
        "",
        "getRunIngArchiveId",
        "()J",
        "setRunIngArchiveId",
        "(J)V",
        "imagePath",
        "",
        "getImagePath",
        "()Ljava/lang/String;",
        "setImagePath",
        "(Ljava/lang/String;)V",
        "initData",
        "datas",
        "",
        "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
        "dialogChoice",
        "Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;",
        "getDialogChoice",
        "()Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;",
        "dialogChoice$delegate",
        "onClick",
        "v",
        "Landroid/view/View;",
        "noticeDialog",
        "Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;",
        "getNoticeDialog",
        "()Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;",
        "noticeDialog$delegate",
        "goMyAlbumActivity4PickPic",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onBackPressed",
        "finish",
        "backModGame",
        "onTextChanged",
        "s",
        "",
        "start",
        "before",
        "count",
        "beforeTextChanged",
        "after",
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
        "SMAP\nModUploadArchiveActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModUploadArchiveActivity.kt\ncom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,404:1\n1021#2,2:405\n*S KotlinDebug\n*F\n+ 1 ModUploadArchiveActivity.kt\ncom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity\n*L\n174#1:405,2\n*E\n"
    }
.end annotation


# instance fields
.field private final databinDing$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dialog$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dialogChoice$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dialogLoding$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private imagePath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isFromGame:Z

.field private final noticeDialog$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private runIngArchiveId:J

.field private final viewModle$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewModleLoadData$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/l0;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/l0;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->viewModle$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/o0;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/o0;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->databinDing$delegate:Lkotlin/Lazy;

    .line 25
    .line 26
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/p0;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/p0;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->dialog$delegate:Lkotlin/Lazy;

    .line 36
    .line 37
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/q0;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/q0;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->viewModleLoadData$delegate:Lkotlin/Lazy;

    .line 47
    .line 48
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/r0;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/r0;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->dialogLoding$delegate:Lkotlin/Lazy;

    .line 58
    .line 59
    const-string v0, ""

    .line 60
    .line 61
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->imagePath:Ljava/lang/String;

    .line 62
    .line 63
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/s0;

    .line 64
    .line 65
    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/s0;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->dialogChoice$delegate:Lkotlin/Lazy;

    .line 73
    .line 74
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/t0;

    .line 75
    .line 76
    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/t0;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->noticeDialog$delegate:Lkotlin/Lazy;

    .line 84
    .line 85
    return-void
.end method

.method private static final databinDing_delegate$lambda$1(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)Lcom/join/android/app/mgsim/wufun/databinding/gm0;
    .locals 1

    .line 1
    const v0, 0x7f0d0730

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/gm0;

    .line 9
    .line 10
    return-object p0
.end method

.method private static final dialogChoice_delegate$lambda$14()Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final dialogLoding_delegate$lambda$11(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)Lcom/join/mgps/dialog/f1;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/g0;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/f1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static final dialog_delegate$lambda$2(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)Lcom/join/mgps/dialog/g1;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/g0;->F(Landroid/content/Context;)Lcom/join/mgps/dialog/g1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private final getDialogChoice()Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->dialogChoice$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;

    .line 8
    .line 9
    return-object v0
.end method

.method private final initData(Ljava/util/List;Ljava/lang/String;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 15
    :goto_1
    if-nez v2, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getImagepath()Landroidx/lifecycle/MutableLiveData;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v4, "file://"

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {v2, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    const-wide/16 v2, 0x0

    .line 46
    .line 47
    cmp-long p2, p3, v2

    .line 48
    .line 49
    if-eqz p2, :cond_3

    .line 50
    .line 51
    invoke-static {}, Lt6/g;->t()Lt6/g;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    invoke-virtual {p2, p3}, Lt6/g;->p(Ljava/lang/String;)Lcom/join/mgps/db/tables/CloudArchiveTable;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    if-eqz p2, :cond_3

    .line 64
    .line 65
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    invoke-virtual {p2}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getArchiveDataJson()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    const-class p4, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 74
    .line 75
    invoke-virtual {p3, p2, p4}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 80
    .line 81
    if-eqz p2, :cond_3

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    invoke-virtual {p3}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getNoticeWarnings()Landroidx/lifecycle/MutableLiveData;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    new-instance p4, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v2, "\u6700\u8fd1\u8fd0\u884c\u7684\u662f\u201c"

    .line 97
    .line 98
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getNickname()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string p2, "\u201d\u7684\u5b58\u6863"

    .line 109
    .line 110
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p3, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    if-le p2, v0, :cond_4

    .line 125
    .line 126
    new-instance p2, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$initData$$inlined$sortByDescending$1;

    .line 127
    .line 128
    invoke-direct {p2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$initData$$inlined$sortByDescending$1;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 132
    .line 133
    .line 134
    :cond_4
    move-object p2, p1

    .line 135
    check-cast p2, Ljava/util/Collection;

    .line 136
    .line 137
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    xor-int/2addr p2, v0

    .line 142
    if-eqz p2, :cond_c

    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchiveDatas()Landroidx/lifecycle/MutableLiveData;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p3

    .line 167
    invoke-virtual {p2, p3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 175
    .line 176
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getCoverLocation()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    if-eqz p2, :cond_5

    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getImagepath()Landroidx/lifecycle/MutableLiveData;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p3

    .line 194
    check-cast p3, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 195
    .line 196
    invoke-virtual {p3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getCoverLocation()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p3

    .line 200
    invoke-virtual {p2, p3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    :cond_5
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 219
    .line 220
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    if-eqz p2, :cond_7

    .line 225
    .line 226
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 227
    .line 228
    .line 229
    move-result p2

    .line 230
    if-nez p2, :cond_6

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_6
    const/4 v0, 0x0

    .line 234
    :cond_7
    :goto_2
    const-string p2, "0"

    .line 235
    .line 236
    if-nez v0, :cond_9

    .line 237
    .line 238
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 239
    .line 240
    .line 241
    move-result-object p3

    .line 242
    invoke-virtual {p3}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    .line 243
    .line 244
    .line 245
    move-result-object p3

    .line 246
    invoke-virtual {p3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object p3

    .line 250
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    check-cast p3, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 254
    .line 255
    invoke-virtual {p3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p3

    .line 259
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result p3

    .line 263
    if-eqz p3, :cond_8

    .line 264
    .line 265
    goto :goto_3

    .line 266
    :cond_8
    const-string p3, "\u53d1\u5e03"

    .line 267
    .line 268
    goto :goto_4

    .line 269
    :cond_9
    :goto_3
    const-string p3, "\u73a9\u8fc7"

    .line 270
    .line 271
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 272
    .line 273
    .line 274
    move-result-object p4

    .line 275
    :goto_5
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-eqz v0, :cond_a

    .line 280
    .line 281
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 286
    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getAddTime()J

    .line 293
    .line 294
    .line 295
    move-result-wide v2

    .line 296
    const/16 v4, 0x3e8

    .line 297
    .line 298
    int-to-long v4, v4

    .line 299
    mul-long v2, v2, v4

    .line 300
    .line 301
    invoke-static {v2, v3}, Lcom/join/mgps/Util/e0;->v(J)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPlayTime(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    goto :goto_5

    .line 319
    :cond_a
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 320
    .line 321
    .line 322
    move-result-object p3

    .line 323
    invoke-virtual {p3}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    .line 324
    .line 325
    .line 326
    move-result-object p3

    .line 327
    invoke-virtual {p3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object p3

    .line 331
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    check-cast p3, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 335
    .line 336
    invoke-virtual {p3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveDesc()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p3

    .line 340
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 341
    .line 342
    .line 343
    move-result-object p4

    .line 344
    invoke-virtual {p4}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    .line 345
    .line 346
    .line 347
    move-result-object p4

    .line 348
    invoke-virtual {p4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object p4

    .line 352
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    check-cast p4, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 356
    .line 357
    invoke-virtual {p4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object p4

    .line 361
    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result p2

    .line 365
    if-nez p2, :cond_b

    .line 366
    .line 367
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/gm0;

    .line 368
    .line 369
    .line 370
    move-result-object p2

    .line 371
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->f:Lcom/google/android/material/textfield/TextInputEditText;

    .line 372
    .line 373
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 377
    .line 378
    .line 379
    move-result-object p2

    .line 380
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getMessage()Landroidx/lifecycle/MutableLiveData;

    .line 381
    .line 382
    .line 383
    move-result-object p2

    .line 384
    invoke-virtual {p2, p3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/gm0;

    .line 388
    .line 389
    .line 390
    move-result-object p2

    .line 391
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->f:Lcom/google/android/material/textfield/TextInputEditText;

    .line 392
    .line 393
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 394
    .line 395
    .line 396
    move-result p3

    .line 397
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setSelection(I)V

    .line 398
    .line 399
    .line 400
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 401
    .line 402
    .line 403
    goto :goto_6

    .line 404
    :cond_c
    const-string p1, "\u672c\u5730\u9ed8\u8ba4\u5b58\u6863\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u5206\u4eab"

    .line 405
    .line 406
    invoke-static {p0, p1}, Lcom/psk/kotlin/ext/CommonExtKt;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->finish()V

    .line 410
    .line 411
    .line 412
    :goto_6
    return-void
.end method

.method public static synthetic j(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->viewModleLoadData_delegate$lambda$3(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;Lcom/join/mgps/dto/ResponseModel;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->onCreate$lambda$6(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;Lcom/join/mgps/dto/ResponseModel;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->onCreate$lambda$10(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)Lcom/join/mgps/dialog/g1;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->dialog_delegate$lambda$2(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)Lcom/join/mgps/dialog/g1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)Lcom/join/android/app/mgsim/wufun/databinding/gm0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->databinDing_delegate$lambda$1(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)Lcom/join/android/app/mgsim/wufun/databinding/gm0;

    move-result-object p0

    return-object p0
.end method

.method private static final noticeDialog_delegate$lambda$16()Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic o(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->onClick$lambda$15(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final onClick$lambda$15(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method private static final onCreate$lambda$10(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDialogLoding()Lcom/join/mgps/dialog/f1;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/dialog/f1;->b()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDialogLoding()Lcom/join/mgps/dialog/f1;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 22
    .line 23
    .line 24
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final onCreate$lambda$6(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;Lcom/join/mgps/dto/ResponseModel;)Lkotlin/Unit;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDialog()Lcom/join/mgps/dialog/g1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v1, v0

    .line 21
    :goto_0
    if-nez v1, :cond_1

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/16 v2, 0xc8

    .line 29
    .line 30
    if-ne v1, v2, :cond_4

    .line 31
    .line 32
    iget-boolean p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->isFromGame:Z

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    const-string p1, "2"

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const-string p1, "1"

    .line 40
    .line 41
    :goto_1
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    sget-object v2, Lcom/papa/sim/statistic/Event;->postArchiveSuccess:Lcom/papa/sim/statistic/Event;

    .line 46
    .line 47
    new-instance v3, Lcom/papa/sim/statistic/Ext;

    .line 48
    .line 49
    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 65
    .line 66
    if-eqz v4, :cond_3

    .line 67
    .line 68
    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    :cond_3
    invoke-virtual {v3, v0}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v1, v2, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 81
    .line 82
    .line 83
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const-string v0, "\u53d1\u5e03\u6210\u529f\uff01\u7cfb\u7edf\u81ea\u52a8\u5ba1\u6838\u4e2d"

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->finish()V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_4
    :goto_2
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    if-eqz p1, :cond_5

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    :cond_5
    invoke-virtual {p0, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 110
    .line 111
    return-object p0
.end method

.method private static final onCreate$lambda$8(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDialog()Lcom/join/mgps/dialog/g1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "\u4e0a\u4f20\u4e2d\u8bf7\u7a0d\u5019"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/g1;->b(Ljava/lang/String;)Landroid/app/Dialog;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDialog()Lcom/join/mgps/dialog/g1;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/g1;->a(I)Landroid/app/Dialog;

    .line 23
    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/16 v0, 0x64

    .line 33
    .line 34
    if-ne p1, v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDialog()Lcom/join/mgps/dialog/g1;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string p1, "\u6b63\u5728\u53d1\u5e03\u8bf7\u7a0d\u5019"

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/g1;->b(Ljava/lang/String;)Landroid/app/Dialog;

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p0
.end method

.method private static final onCreate$lambda$9(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;Ljava/util/List;)Lkotlin/Unit;
    .locals 3

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 16
    :goto_1
    if-nez v0, :cond_3

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->imagePath:Ljava/lang/String;

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    const-string v0, ""

    .line 23
    .line 24
    :cond_2
    iget-wide v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->runIngArchiveId:J

    .line 25
    .line 26
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->initData(Ljava/util/List;Ljava/lang/String;J)V

    .line 27
    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_3
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModleLoadData()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getInitFinish()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_4

    .line 39
    .line 40
    const-string p1, "\u672c\u5730\u9ed8\u8ba4\u5b58\u6863\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u5206\u4eab"

    .line 41
    .line 42
    invoke-static {p0, p1}, Lcom/psk/kotlin/ext/CommonExtKt;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->finish()V

    .line 46
    .line 47
    .line 48
    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method

.method public static synthetic p(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)Lcom/join/mgps/dialog/f1;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->dialogLoding_delegate$lambda$11(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)Lcom/join/mgps/dialog/f1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->onCreate$lambda$8(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;Ljava/lang/Integer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->viewModle_delegate$lambda$0(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t()Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->dialogChoice_delegate$lambda$14()Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic u(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->onCreate$lambda$9(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v()Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->noticeDialog_delegate$lambda$16()Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;

    move-result-object v0

    return-object v0
.end method

.method private static final viewModleLoadData_delegate$lambda$3(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;
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
    const-class p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 18
    .line 19
    return-object p0
.end method

.method private static final viewModle_delegate$lambda$0(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;
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
    const-class p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 18
    .line 19
    return-object p0
.end method


# virtual methods
.method public final backModGame()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModleLoadData()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getModGameArchivePathData()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getModPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    :cond_0
    const-string v0, ""

    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 v1, 0x0

    .line 43
    :goto_0
    sget-object v2, Lcom/join/mgps/va/overmind/i;->g:Lcom/join/mgps/va/overmind/i$a;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/join/mgps/va/overmind/i$a;->d()Lcom/join/mgps/va/overmind/i;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2, p0, v1, v0}, Lcom/join/mgps/va/overmind/i;->a0(Landroid/content/Context;ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public finish()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->isFromGame:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->backModGame()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/gm0;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->databinDing$delegate:Lkotlin/Lazy;

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
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/gm0;

    .line 13
    .line 14
    return-object v0
.end method

.method public final getDialog()Lcom/join/mgps/dialog/g1;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->dialog$delegate:Lkotlin/Lazy;

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
    check-cast v0, Lcom/join/mgps/dialog/g1;

    .line 13
    .line 14
    return-object v0
.end method

.method public final getDialogLoding()Lcom/join/mgps/dialog/f1;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->dialogLoding$delegate:Lkotlin/Lazy;

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
    check-cast v0, Lcom/join/mgps/dialog/f1;

    .line 13
    .line 14
    return-object v0
.end method

.method public final getImagePath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->imagePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNoticeDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->noticeDialog$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getRunIngArchiveId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->runIngArchiveId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->viewModle$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getViewModleLoadData()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->viewModleLoadData$delegate:Lkotlin/Lazy;

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

.method public final goMyAlbumActivity4PickPic()V
    .locals 4

    .line 1
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->e3(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 16
    .line 17
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->e3(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v2, 0x1

    .line 28
    :goto_0
    if-eqz v2, :cond_2

    .line 29
    .line 30
    new-instance v0, Landroid/content/Intent;

    .line 31
    .line 32
    const-class v1, Lcom/join/android/app/component/album/MyAlbumActivity;

    .line 33
    .line 34
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .line 36
    .line 37
    const-string v1, "MAX_PICK_SIZE"

    .line 38
    .line 39
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    const/16 v1, 0x100

    .line 43
    .line 44
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method public final isFromGame()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->isFromGame:Z

    .line 2
    .line 3
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/BaseAppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 p2, 0x100

    .line 5
    .line 6
    if-ne p1, p2, :cond_2

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object p2, p1

    .line 17
    :goto_0
    if-eqz p2, :cond_2

    .line 18
    .line 19
    const-string p3, "key_selected_images"

    .line 20
    .line 21
    invoke-virtual {p2, p3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-eqz p2, :cond_2

    .line 26
    .line 27
    move-object p3, p2

    .line 28
    check-cast p3, Ljava/util/List;

    .line 29
    .line 30
    check-cast p2, Ljava/util/Collection;

    .line 31
    .line 32
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    xor-int/lit8 p2, p2, 0x1

    .line 37
    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    const/4 p2, 0x0

    .line 41
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    check-cast p3, Ljava/lang/String;

    .line 46
    .line 47
    const-string v0, "content://"

    .line 48
    .line 49
    const/4 v1, 0x2

    .line 50
    invoke-static {p3, v0, p2, v1, p1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getImagepath()Landroidx/lifecycle/MutableLiveData;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1, p3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getImagepath()Landroidx/lifecycle/MutableLiveData;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-instance p2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v0, "file://"

    .line 82
    .line 83
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/gm0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->f:Lcom/google/android/material/textfield/TextInputEditText;

    .line 6
    .line 7
    invoke-static {v0}, Lr7/a;->b(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p1, v0

    .line 14
    :goto_0
    const-string v1, "getSupportFragmentManager(...)"

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const v4, 0x7f0a0117

    .line 26
    .line 27
    .line 28
    if-ne v3, v4, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchiveDatas()Landroidx/lifecycle/MutableLiveData;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    check-cast p1, Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-le p1, v2, :cond_1b

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/gm0;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->f:Lcom/google/android/material/textfield/TextInputEditText;

    .line 58
    .line 59
    invoke-static {p1}, Lr7/a;->b(Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    new-instance p1, Landroid/os/Bundle;

    .line 63
    .line 64
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Ljava/io/Serializable;

    .line 80
    .line 81
    const-string v2, "archive"

    .line 82
    .line 83
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchiveDatas()Landroidx/lifecycle/MutableLiveData;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const-string v2, "null cannot be cast to non-null type java.io.Serializable"

    .line 99
    .line 100
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    check-cast v0, Ljava/io/Serializable;

    .line 104
    .line 105
    const-string v2, "archiveList"

    .line 106
    .line 107
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 108
    .line 109
    .line 110
    invoke-direct {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDialogChoice()Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 115
    .line 116
    .line 117
    invoke-direct {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDialogChoice()Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/n0;

    .line 122
    .line 123
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/n0;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;->setItemChoiced(Lkotlin/jvm/functions/Function1;)V

    .line 127
    .line 128
    .line 129
    invoke-direct {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDialogChoice()Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {p1}, Lcom/join/kotlin/domain/ext/EXTKt;->dialogFragmentCanShow(Landroidx/fragment/app/DialogFragment;)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_1b

    .line 138
    .line 139
    invoke-direct {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDialogChoice()Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string v1, "dialogChoice"

    .line 151
    .line 152
    invoke-virtual {p1, v0, v1}, Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_d

    .line 156
    .line 157
    :cond_2
    :goto_1
    if-nez p1, :cond_3

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    const v4, 0x7f0a013b

    .line 165
    .line 166
    .line 167
    if-ne v3, v4, :cond_4

    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/gm0;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->f:Lcom/google/android/material/textfield/TextInputEditText;

    .line 174
    .line 175
    invoke-static {p1}, Lr7/a;->b(Landroid/view/View;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->finish()V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_d

    .line 182
    .line 183
    :cond_4
    :goto_2
    if-nez p1, :cond_5

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    const v4, 0x7f0a035e

    .line 191
    .line 192
    .line 193
    if-ne v3, v4, :cond_6

    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/gm0;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->f:Lcom/google/android/material/textfield/TextInputEditText;

    .line 200
    .line 201
    invoke-static {p1}, Lr7/a;->b(Landroid/view/View;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->goMyAlbumActivity4PickPic()V

    .line 205
    .line 206
    .line 207
    goto/16 :goto_d

    .line 208
    .line 209
    :cond_6
    :goto_3
    if-nez p1, :cond_7

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    const v4, 0x7f0a03a3

    .line 217
    .line 218
    .line 219
    if-ne v3, v4, :cond_8

    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getImagepath()Landroidx/lifecycle/MutableLiveData;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_d

    .line 233
    .line 234
    :cond_8
    :goto_4
    if-nez p1, :cond_9

    .line 235
    .line 236
    goto/16 :goto_d

    .line 237
    .line 238
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    const v3, 0x7f0a146d

    .line 243
    .line 244
    .line 245
    if-ne p1, v3, :cond_1b

    .line 246
    .line 247
    iget-boolean p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->isFromGame:Z

    .line 248
    .line 249
    if-eqz p1, :cond_a

    .line 250
    .line 251
    const-string p1, "2"

    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_a
    const-string p1, "1"

    .line 255
    .line 256
    :goto_5
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    sget-object v4, Lcom/papa/sim/statistic/Event;->clickUpCloudButton:Lcom/papa/sim/statistic/Event;

    .line 261
    .line 262
    new-instance v5, Lcom/papa/sim/statistic/Ext;

    .line 263
    .line 264
    invoke-direct {v5}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    invoke-virtual {v6}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    check-cast v6, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 280
    .line 281
    if-eqz v6, :cond_b

    .line 282
    .line 283
    invoke-virtual {v6}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    goto :goto_6

    .line 288
    :cond_b
    move-object v6, v0

    .line 289
    :goto_6
    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    invoke-virtual {v5, p1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-virtual {v3, v4, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getMessage()Landroidx/lifecycle/MutableLiveData;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    if-eqz v3, :cond_1a

    .line 313
    .line 314
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    check-cast v3, Ljava/lang/CharSequence;

    .line 322
    .line 323
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 324
    .line 325
    .line 326
    move-result v3

    .line 327
    const/4 v4, 0x0

    .line 328
    if-nez v3, :cond_c

    .line 329
    .line 330
    const/4 v3, 0x1

    .line 331
    goto :goto_7

    .line 332
    :cond_c
    const/4 v3, 0x0

    .line 333
    :goto_7
    if-nez v3, :cond_1a

    .line 334
    .line 335
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    check-cast v3, Ljava/lang/String;

    .line 343
    .line 344
    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 353
    .line 354
    .line 355
    move-result v3

    .line 356
    if-nez v3, :cond_d

    .line 357
    .line 358
    const/4 v3, 0x1

    .line 359
    goto :goto_8

    .line 360
    :cond_d
    const/4 v3, 0x0

    .line 361
    :goto_8
    if-eqz v3, :cond_e

    .line 362
    .line 363
    goto/16 :goto_c

    .line 364
    .line 365
    :cond_e
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    check-cast v3, Ljava/lang/String;

    .line 373
    .line 374
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    const/4 v5, 0x5

    .line 379
    if-ge v3, v5, :cond_f

    .line 380
    .line 381
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    const-string v0, "\u5b58\u6863\u63cf\u8ff0\u4e0d\u80fd\u5c11\u4e8e5\u4e2a\u5b57"

    .line 386
    .line 387
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    return-void

    .line 391
    :cond_f
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    check-cast p1, Ljava/lang/String;

    .line 396
    .line 397
    invoke-static {p1}, Lcom/join/mgps/Util/t;->f(Ljava/lang/String;)Z

    .line 398
    .line 399
    .line 400
    move-result p1

    .line 401
    if-eqz p1, :cond_10

    .line 402
    .line 403
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    const-string v0, "\u6682\u4e0d\u652f\u6301\u8f93\u5165\u8868\u60c5\uff01\u8bf7\u53bb\u6389\u8868\u60c5\u5b57\u7b26\uff01"

    .line 408
    .line 409
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    return-void

    .line 413
    :cond_10
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 418
    .line 419
    .line 420
    move-result p1

    .line 421
    if-eqz p1, :cond_11

    .line 422
    .line 423
    const-string p1, "\u60a8\u8fd8\u672a\u767b\u5f55\u8bf7\u5148\u767b\u5f55\u5e10\u53f7\uff01"

    .line 424
    .line 425
    invoke-static {p0, p1}, Lcom/psk/kotlin/ext/CommonExtKt;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    return-void

    .line 429
    :cond_11
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 430
    .line 431
    .line 432
    move-result-object p1

    .line 433
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getImagepath()Landroidx/lifecycle/MutableLiveData;

    .line 434
    .line 435
    .line 436
    move-result-object p1

    .line 437
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object p1

    .line 441
    if-nez p1, :cond_14

    .line 442
    .line 443
    invoke-static {}, Lcom/join/mgps/Util/w0;->n()Z

    .line 444
    .line 445
    .line 446
    move-result p1

    .line 447
    if-eqz p1, :cond_12

    .line 448
    .line 449
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 450
    .line 451
    .line 452
    move-result-object p1

    .line 453
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getImagepath()Landroidx/lifecycle/MutableLiveData;

    .line 454
    .line 455
    .line 456
    move-result-object p1

    .line 457
    const-string v1, "file:///android_asset/cloud_archive_cover_default.png"

    .line 458
    .line 459
    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 460
    .line 461
    .line 462
    goto :goto_9

    .line 463
    :cond_12
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getNoticeDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;

    .line 464
    .line 465
    .line 466
    move-result-object p1

    .line 467
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    .line 468
    .line 469
    const-string v3, "\u63d0\u793a"

    .line 470
    .line 471
    const-string v4, "\u60a8\u8fd8\u672a\u6dfb\u52a0\u5b58\u6863\u5c01\u9762"

    .line 472
    .line 473
    const-string v5, "\u53bb\u76f8\u518c\u9009\u62e9\u56fe\u7247"

    .line 474
    .line 475
    const/4 v6, 0x0

    .line 476
    const/4 v7, 0x1

    .line 477
    const/16 v8, 0x8

    .line 478
    .line 479
    const/4 v9, 0x0

    .line 480
    move-object v2, v0

    .line 481
    invoke-direct/range {v2 .. v9}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;->setDatas(Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getNoticeDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;

    .line 488
    .line 489
    .line 490
    move-result-object p1

    .line 491
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onClick$2;

    .line 492
    .line 493
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onClick$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;->setClickDelDialogListener(Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getNoticeDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;

    .line 500
    .line 501
    .line 502
    move-result-object p1

    .line 503
    invoke-static {p1}, Lcom/join/kotlin/domain/ext/EXTKt;->dialogFragmentCanShow(Landroidx/fragment/app/DialogFragment;)Z

    .line 504
    .line 505
    .line 506
    move-result p1

    .line 507
    if-eqz p1, :cond_13

    .line 508
    .line 509
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getNoticeDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;

    .line 510
    .line 511
    .line 512
    move-result-object p1

    .line 513
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    const-string v1, "noticeDialog"

    .line 521
    .line 522
    invoke-virtual {p1, v0, v1}, Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    :cond_13
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/gm0;

    .line 526
    .line 527
    .line 528
    move-result-object p1

    .line 529
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->f:Lcom/google/android/material/textfield/TextInputEditText;

    .line 530
    .line 531
    invoke-static {p1}, Lr7/a;->b(Landroid/view/View;)V

    .line 532
    .line 533
    .line 534
    return-void

    .line 535
    :cond_14
    :goto_9
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDialog()Lcom/join/mgps/dialog/g1;

    .line 536
    .line 537
    .line 538
    move-result-object p1

    .line 539
    invoke-virtual {p1}, Lcom/join/mgps/dialog/g1;->c()V

    .line 540
    .line 541
    .line 542
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDialog()Lcom/join/mgps/dialog/g1;

    .line 543
    .line 544
    .line 545
    move-result-object p1

    .line 546
    const-string v1, "\u6253\u5305\u5b58\u6863\u4e2d\u8bf7\u7a0d\u5019"

    .line 547
    .line 548
    invoke-virtual {p1, v1}, Lcom/join/mgps/dialog/g1;->b(Ljava/lang/String;)Landroid/app/Dialog;

    .line 549
    .line 550
    .line 551
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/gm0;

    .line 552
    .line 553
    .line 554
    move-result-object p1

    .line 555
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->f:Lcom/google/android/material/textfield/TextInputEditText;

    .line 556
    .line 557
    invoke-static {p1}, Lr7/a;->b(Landroid/view/View;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 561
    .line 562
    .line 563
    move-result-object p1

    .line 564
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    .line 565
    .line 566
    .line 567
    move-result-object p1

    .line 568
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object p1

    .line 572
    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 573
    .line 574
    if-eqz p1, :cond_15

    .line 575
    .line 576
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    :cond_15
    if-eqz v0, :cond_17

    .line 581
    .line 582
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 583
    .line 584
    .line 585
    move-result p1

    .line 586
    if-nez p1, :cond_16

    .line 587
    .line 588
    goto :goto_a

    .line 589
    :cond_16
    const/4 v2, 0x0

    .line 590
    :cond_17
    :goto_a
    if-nez v2, :cond_19

    .line 591
    .line 592
    const-string p1, "0"

    .line 593
    .line 594
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    move-result p1

    .line 598
    if-eqz p1, :cond_18

    .line 599
    .line 600
    goto :goto_b

    .line 601
    :cond_18
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 602
    .line 603
    .line 604
    move-result-object p1

    .line 605
    invoke-virtual {p1, p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->updateArchiveMessage(Landroid/content/Context;)V

    .line 606
    .line 607
    .line 608
    goto :goto_d

    .line 609
    :cond_19
    :goto_b
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 610
    .line 611
    .line 612
    move-result-object p1

    .line 613
    invoke-virtual {p1, p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->uploadArchive(Landroid/content/Context;)V

    .line 614
    .line 615
    .line 616
    goto :goto_d

    .line 617
    :cond_1a
    :goto_c
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 618
    .line 619
    .line 620
    move-result-object p1

    .line 621
    const-string v0, "\u8bf7\u8f93\u5165\u5b58\u6863\u63cf\u8ff0"

    .line 622
    .line 623
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    :cond_1b
    :goto_d
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/BaseAppCompatActivity;->canShowFeedBack:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/gm0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->E(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/gm0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->B(Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/gm0;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, p0}, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->D(Landroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/gm0;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/gm0;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, p0}, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->C(Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "archives"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v2, "imagePath"

    .line 57
    .line 58
    const-wide/16 v3, 0x0

    .line 59
    .line 60
    const-string v5, "runIngArchiveId"

    .line 61
    .line 62
    const-string v6, ""

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchiveFileSuffix()Landroidx/lifecycle/MutableLiveData;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v7, "archiveFileSuffix"

    .line 79
    .line 80
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-virtual {v0, v7}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-string v1, "null cannot be cast to non-null type kotlin.collections.MutableList<com.join.kotlin.ui.cloudarchive.data.ArchiveData>"

    .line 92
    .line 93
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p1, v5, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 101
    .line 102
    .line 103
    move-result-wide v3

    .line 104
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-nez p1, :cond_0

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_0
    move-object v6, p1

    .line 112
    :goto_0
    invoke-direct {p0, v0, v6, v3, v4}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->initData(Ljava/util/List;Ljava/lang/String;J)V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_1
    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->isFromGame:Z

    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDialogLoding()Lcom/join/mgps/dialog/f1;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lcom/join/mgps/dialog/f1;->b()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    const-string v7, "uploadGameId"

    .line 131
    .line 132
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    if-nez v7, :cond_2

    .line 137
    .line 138
    move-object v7, v6

    .line 139
    :cond_2
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    if-nez v2, :cond_3

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_3
    move-object v6, v2

    .line 147
    :goto_1
    iput-object v6, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->imagePath:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v1, v5, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 150
    .line 151
    .line 152
    move-result-wide v1

    .line 153
    iput-wide v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->runIngArchiveId:J

    .line 154
    .line 155
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-nez v1, :cond_4

    .line 160
    .line 161
    const/4 p1, 0x1

    .line 162
    :cond_4
    if-eqz p1, :cond_5

    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->finish()V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :cond_5
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModleLoadData()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p1, v7, p0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getDetialData(Ljava/lang/String;Landroid/content/Context;)V

    .line 173
    .line 174
    .line 175
    :goto_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getResponseReult()Landroidx/lifecycle/MutableLiveData;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/u0;

    .line 184
    .line 185
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/u0;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)V

    .line 186
    .line 187
    .line 188
    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$sam$androidx_lifecycle_Observer$0;

    .line 189
    .line 190
    invoke-direct {v1, v0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 194
    .line 195
    .line 196
    new-instance p1, Ljava/util/Timer;

    .line 197
    .line 198
    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 199
    .line 200
    .line 201
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$$inlined$schedule$1;

    .line 202
    .line 203
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$$inlined$schedule$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)V

    .line 204
    .line 205
    .line 206
    const-wide/16 v1, 0x1f4

    .line 207
    .line 208
    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getUploadProgress()Landroidx/lifecycle/MutableLiveData;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/v0;

    .line 220
    .line 221
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/v0;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)V

    .line 222
    .line 223
    .line 224
    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$sam$androidx_lifecycle_Observer$0;

    .line 225
    .line 226
    invoke-direct {v1, v0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModleLoadData()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getLocalArchiveLists()Landroidx/lifecycle/MutableLiveData;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/w0;

    .line 241
    .line 242
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/w0;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)V

    .line 243
    .line 244
    .line 245
    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$sam$androidx_lifecycle_Observer$0;

    .line 246
    .line 247
    invoke-direct {v1, v0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModleLoadData()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getShowDialog()Landroidx/lifecycle/MutableLiveData;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/m0;

    .line 262
    .line 263
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/m0;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)V

    .line 264
    .line 265
    .line 266
    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$sam$androidx_lifecycle_Observer$0;

    .line 267
    .line 268
    invoke-direct {v1, v0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 272
    .line 273
    .line 274
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getMessage()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-virtual {p2, p3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    const/16 p3, 0x3c

    .line 23
    .line 24
    if-le p2, p3, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/gm0;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->f:Lcom/google/android/material/textfield/TextInputEditText;

    .line 31
    .line 32
    const-string p4, "\u8fbe\u5230\u9650\u5236\u5b57\u6570\uff0c\u65e0\u6cd5\u7ee7\u7eed\u8f93\u5165"

    .line 33
    .line 34
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/gm0;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->f:Lcom/google/android/material/textfield/TextInputEditText;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const/4 p4, 0x0

    .line 48
    invoke-virtual {p1, p4, p3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/gm0;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->f:Lcom/google/android/material/textfield/TextInputEditText;

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/gm0;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->f:Lcom/google/android/material/textfield/TextInputEditText;

    .line 66
    .line 67
    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    if-eqz p1, :cond_1

    .line 83
    .line 84
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 85
    .line 86
    .line 87
    :cond_1
    :goto_0
    return-void
.end method

.method public final setFromGame(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->isFromGame:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setImagePath(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->imagePath:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setRunIngArchiveId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->runIngArchiveId:J

    .line 2
    .line 3
    return-void
.end method

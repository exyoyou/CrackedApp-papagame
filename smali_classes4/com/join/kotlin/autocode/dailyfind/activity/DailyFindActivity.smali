.class public final Lcom/join/kotlin/autocode/dailyfind/activity/DailyFindActivity;
.super Lcom/join/kotlin/base/activity/BaseVmVbActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/base/activity/BaseVmVbActivity<",
        "Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/j0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDailyFindActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DailyFindActivity.kt\ncom/join/kotlin/autocode/dailyfind/activity/DailyFindActivity\n+ 2 FragmentManager.kt\nandroidx/fragment/app/FragmentManagerKt\n*L\n1#1,40:1\n28#2,12:41\n*S KotlinDebug\n*F\n+ 1 DailyFindActivity.kt\ncom/join/kotlin/autocode/dailyfind/activity/DailyFindActivity\n*L\n20#1:41,12\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0012\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010\n\u001a\u00020\u0007H\u0016J\u0008\u0010\u000b\u001a\u00020\u0007H\u0002\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/join/kotlin/autocode/dailyfind/activity/DailyFindActivity;",
        "Lcom/join/kotlin/base/activity/BaseVmVbActivity;",
        "Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/ActivityDailyFindBinding;",
        "<init>",
        "()V",
        "initView",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "createObserver",
        "onBackClick",
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
        "SMAP\nDailyFindActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DailyFindActivity.kt\ncom/join/kotlin/autocode/dailyfind/activity/DailyFindActivity\n+ 2 FragmentManager.kt\nandroidx/fragment/app/FragmentManagerKt\n*L\n1#1,40:1\n28#2,12:41\n*S KotlinDebug\n*F\n+ 1 DailyFindActivity.kt\ncom/join/kotlin/autocode/dailyfind/activity/DailyFindActivity\n*L\n20#1:41,12\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/activity/BaseVmVbActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final initView$lambda$0(Lcom/join/kotlin/autocode/dailyfind/activity/DailyFindActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/autocode/dailyfind/activity/DailyFindActivity;->onBackClick()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lcom/join/kotlin/autocode/dailyfind/activity/DailyFindActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/autocode/dailyfind/activity/DailyFindActivity;->initView$lambda$0(Lcom/join/kotlin/autocode/dailyfind/activity/DailyFindActivity;Landroid/view/View;)V

    return-void
.end method

.method private final onBackClick()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createObserver()V
    .locals 0

    return-void
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmVbActivity;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/j0;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/j0;->c:Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v1, Lr5/a;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lr5/a;-><init>(Lcom/join/kotlin/autocode/dailyfind/activity/DailyFindActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "getSupportFragmentManager(...)"

    .line 24
    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "beginTransaction()"

    .line 33
    .line 34
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v1, Landroid/os/Bundle;

    .line 43
    .line 44
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 63
    .line 64
    .line 65
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 66
    .line 67
    const v1, 0x7f0a0644

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 74
    .line 75
    .line 76
    :cond_1
    return-void
.end method

.class public final Lcom/join/kotlin/quark/SourceSaveActivity;
.super Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/quark/proxy/SourceSaveClickProxy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity<",
        "Lcom/join/kotlin/quark/viewmodel/SourceSaveViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/t4;",
        ">;",
        "Lcom/join/kotlin/quark/proxy/SourceSaveClickProxy;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u0008H\u0014J\n\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u0008H\u0016J\u0008\u0010\u000f\u001a\u00020\u0008H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/join/kotlin/quark/SourceSaveActivity;",
        "Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;",
        "Lcom/join/kotlin/quark/viewmodel/SourceSaveViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/ActivitySourceSaveBinding;",
        "Lcom/join/kotlin/quark/proxy/SourceSaveClickProxy;",
        "<init>",
        "()V",
        "initView",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onResume",
        "getContentView",
        "Landroid/view/View;",
        "createObserver",
        "onSaveClick",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;-><init>()V

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

.method public getContentView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/t4;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/t4;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    .line 9
    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/p2;->v(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDialogActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/SourceSaveViewModel;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/join/kotlin/quark/viewmodel/SourceSaveViewModel;->getItemBean()Landroidx/lifecycle/MutableLiveData;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "itemBean"

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v1, "null cannot be cast to non-null type com.join.kotlin.quark.model.bean.SourceListItemBean"

    .line 27
    .line 28
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    check-cast p1, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/t4;

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDialogActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/SourceSaveViewModel;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/join/android/app/mgsim/wufun/databinding/t4;->u(Lcom/join/kotlin/quark/viewmodel/SourceSaveViewModel;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/t4;

    .line 56
    .line 57
    invoke-virtual {p1, p0}, Lcom/join/android/app/mgsim/wufun/databinding/t4;->t(Lcom/join/kotlin/quark/proxy/SourceSaveClickProxy;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N4(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onSaveClick()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDialogActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/SourceSaveViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/quark/viewmodel/SourceSaveViewModel;->getItemBean()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {}, Lcom/join/mgps/Util/d2;->q()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {v0}, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;->getDisk_url()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v0}, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;->getTitle()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v0}, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;->getIcon()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    move-object v2, p0

    .line 40
    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/Util/IntentUtil;->startQuarkBrowser(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

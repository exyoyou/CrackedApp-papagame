.class public Lcom/join/mgps/activity/HMCloudRemoteActivity;
.super Lcom/join/android/app/common/servcie/DownloadBaseActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d002e
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field isInitOm:Z

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field tv_launch_status:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private viewModel:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/join/mgps/activity/HMCloudRemoteActivity;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/HMCloudRemoteActivity;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/join/mgps/activity/HMCloudRemoteActivity;->isInitOm:Z

    .line 14
    .line 15
    return-void
.end method

.method private initObserver()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudRemoteActivity;->viewModel:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->v()Landroidx/lifecycle/MutableLiveData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/mgps/activity/y5;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/join/mgps/activity/y5;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudRemoteActivity;->viewModel:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->x()Landroidx/lifecycle/MutableLiveData;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lcom/join/mgps/activity/z5;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/z5;-><init>(Lcom/join/mgps/activity/HMCloudRemoteActivity;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudRemoteActivity;->viewModel:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->getOrientation()Landroidx/lifecycle/MutableLiveData;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Lcom/join/mgps/activity/a6;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/a6;-><init>(Lcom/join/mgps/activity/HMCloudRemoteActivity;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private static synthetic lambda$initObserver$0(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string p0, "\u6e38\u620f\u51c6\u5907\u5b8c\u6210"

    .line 8
    .line 9
    filled-new-array {p0}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private synthetic lambda$initObserver$1(Lcom/join/mgps/cloud/viewmodel/d;)V
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/join/mgps/cloud/viewmodel/d$a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/HMCloudRemoteActivity;->showDownloadArchiveDialog()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private synthetic lambda$initObserver$2(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic p(Lcom/join/mgps/activity/HMCloudRemoteActivity;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HMCloudRemoteActivity;->lambda$initObserver$2(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic q(Lcom/join/mgps/activity/HMCloudRemoteActivity;Lcom/join/mgps/cloud/viewmodel/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/HMCloudRemoteActivity;->lambda$initObserver$1(Lcom/join/mgps/cloud/viewmodel/d;)V

    return-void
.end method

.method public static synthetic s(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/HMCloudRemoteActivity;->lambda$initObserver$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method private setSystemUi()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-static {v1, v2}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/16 v1, 0x1e

    .line 20
    .line 21
    if-lt v0, v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-static {v0, v1}, Le1/a;->a(Landroid/view/Window;Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Landroidx/core/view/o2;->a(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-static {}, Landroidx/core/view/h2;->a()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-static {v0, v1}, Landroidx/core/view/d0;->a(Landroid/view/WindowInsetsController;I)V

    .line 46
    .line 47
    .line 48
    const/4 v1, 0x2

    .line 49
    invoke-static {v0, v1}, Landroidx/core/view/u2;->a(Landroid/view/WindowInsetsController;I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const/16 v1, 0x1706

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_0
    return-void
.end method

.method private showDownloadArchiveDialog()V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "\u8bf7\u68c0\u67e5\u7f51\u7edc\uff01"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/join/mgps/activity/HMCloudRemoteActivity;->viewModel:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->s()Landroidx/lifecycle/MutableLiveData;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/io/Serializable;

    .line 38
    .line 39
    const-string v3, "archive"

    .line 40
    .line 41
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 42
    .line 43
    .line 44
    const-string v2, "downloadType"

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lcom/join/mgps/activity/HMCloudRemoteActivity;->viewModel:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->t()Landroidx/lifecycle/MutableLiveData;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Ljava/io/Serializable;

    .line 61
    .line 62
    const-string v3, "cloud_archive_local_path"

    .line 63
    .line 64
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const-string v2, "downloadArchiveDialog"

    .line 75
    .line 76
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method private testStorageRW()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-le v0, v1, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudRemoteActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->needShowPermissdialog()Lorg/androidannotations/api/sharedpreferences/d;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->g()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    new-instance v1, Ljava/io/File;

    .line 40
    .line 41
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    new-instance v1, Ljava/io/File;

    .line 51
    .line 52
    const-string v2, "test_canwhite.txt"

    .line 53
    .line 54
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    :goto_0
    if-eqz v0, :cond_2

    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudRemoteActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->needShowPermissdialog()Lorg/androidannotations/api/sharedpreferences/d;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudRemoteActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->needShowPermissdialog()Lorg/androidannotations/api/sharedpreferences/d;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/HMCloudRemoteActivity;->setSystemUi()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudRemoteActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->firstShowUserPermiss()Lorg/androidannotations/api/sharedpreferences/d;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lcom/papa/sim/statistic/pref/b;->k(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/pref/b;->F(Z)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lcom/papa/sim/statistic/pref/b;->k(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/pref/b;->L(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/join/mgps/activity/HMCloudRemoteActivity;->initDownloadPath()V

    .line 32
    .line 33
    .line 34
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 37
    .line 38
    .line 39
    const-class v1, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/join/mgps/activity/HMCloudRemoteActivity;->viewModel:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 48
    .line 49
    invoke-virtual {v0, p0}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->y(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    sget-object v0, Ln6/a;->a:Ln6/a;

    .line 53
    .line 54
    invoke-virtual {v0}, Ln6/a;->c()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    const-string v0, "\u6e38\u620f\u4fe1\u606f\u83b7\u53d6\u5931\u8d25"

    .line 65
    .line 66
    filled-new-array {v0}, [Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/HMCloudRemoteActivity;->log([Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->finish()V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/HMCloudRemoteActivity;->initOM()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/join/mgps/activity/HMCloudRemoteActivity;->getRootUrl()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Lcom/join/mgps/service/CommonService_;->P2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$n0;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 92
    .line 93
    .line 94
    new-instance v0, Landroid/content/Intent;

    .line 95
    .line 96
    const-class v1, Lcom/join/mgps/va/service/MessengerService;

    .line 97
    .line 98
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 102
    .line 103
    .line 104
    invoke-direct {p0}, Lcom/join/mgps/activity/HMCloudRemoteActivity;->initObserver()V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method getRootUrl()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/android/app/common/http/c;->d(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    .line 8
    .line 9
    :goto_0
    return-void
.end method

.method initDownloadPath()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/z;->e(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lcom/join/mgps/Util/z;->e:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/pref/h;->V(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/join/mgps/activity/HMCloudRemoteActivity;->testStorageRW()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method initOM()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/HMCloudRemoteActivity;->isInitOm:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/HMCloudRemoteActivity;->isInitOm:Z

    .line 7
    .line 8
    :try_start_0
    new-instance v0, Lcom/xinzhu/overmind/shared/k;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/xinzhu/overmind/shared/k;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lcom/xinzhu/overmind/shared/k;->i(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/xinzhu/overmind/shared/k;->h()V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->g()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/Overmind;->setXPEnable(Z)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->getAppLifecycleCallback()Lcom/xinzhu/overmind/client/hook/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->doCreate()V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->isVirtualProcess()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-instance v1, Lcom/xinzhu/overmind/shared/b;

    .line 67
    .line 68
    invoke-direct {v1}, Lcom/xinzhu/overmind/shared/b;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/Overmind;->setCustomCallback(Lcom/xinzhu/overmind/custom/CustomCallback;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    return-void
.end method

.method varargs log([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/activity/x5;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudRemoteActivity;->viewModel:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->n()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onLocalArchiveUpdate(Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$UpdateLocalArchiveEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudRemoteActivity;->viewModel:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->F()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onMessageEvent(Lcom/join/mgps/cloud/bean/HMMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmMessage"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudRemoteActivity;->viewModel:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->A(Lcom/join/mgps/cloud/bean/HMMessage;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudRemoteActivity;->viewModel:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, p0, p1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->C(Landroid/content/Context;Lcom/join/mgps/cloud/bean/HMMessage;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/android/app/common/servcie/DownloadBaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/HMCloudRemoteActivity;->viewModel:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->v()Landroidx/lifecycle/MutableLiveData;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/HMCloudRemoteActivity;->viewModel:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->r()Landroidx/lifecycle/MutableLiveData;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudRemoteActivity;->viewModel:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->F()V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method varargs setTip([Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudRemoteActivity;->tv_launch_status:Landroid/widget/TextView;

    .line 2
    .line 3
    const-string v1, " "

    .line 4
    .line 5
    invoke-static {v1, p1}, Lcom/join/mgps/activity/x5;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method protected showDownFinish(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameid"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->showDownFinish(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    sget-object p1, Ln6/a;->a:Ln6/a;

    .line 11
    .line 12
    invoke-virtual {p1}, Ln6/a;->c()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudRemoteActivity;->viewModel:Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel;->F()V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.class public abstract Lcom/join/mgps/activity/Hilt_HMCloudMenuActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Ljb/c;


# instance fields
.field private volatile componentManager:Ldagger/hilt/android/internal/managers/a;

.field private final componentManagerLock:Ljava/lang/Object;

.field private injected:Z

.field private savedStateHandleHolder:Ldagger/hilt/android/internal/managers/n;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/Hilt_HMCloudMenuActivity;->componentManagerLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/Hilt_HMCloudMenuActivity;->injected:Z

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/Hilt_HMCloudMenuActivity;->_initHiltInternal()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p0"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;-><init>(I)V

    .line 6
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/Hilt_HMCloudMenuActivity;->componentManagerLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/activity/Hilt_HMCloudMenuActivity;->injected:Z

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/activity/Hilt_HMCloudMenuActivity;->_initHiltInternal()V

    return-void
.end method

.method private _initHiltInternal()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/Hilt_HMCloudMenuActivity$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/Hilt_HMCloudMenuActivity$a;-><init>(Lcom/join/mgps/activity/Hilt_HMCloudMenuActivity;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private initSavedStateHandleHolder()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/Hilt_HMCloudMenuActivity;->componentManager()Ldagger/hilt/android/internal/managers/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ldagger/hilt/android/internal/managers/a;->b()Ldagger/hilt/android/internal/managers/n;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/Hilt_HMCloudMenuActivity;->savedStateHandleHolder:Ldagger/hilt/android/internal/managers/n;

    .line 10
    .line 11
    invoke-virtual {v0}, Ldagger/hilt/android/internal/managers/n;->c()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/Hilt_HMCloudMenuActivity;->savedStateHandleHolder:Ldagger/hilt/android/internal/managers/n;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ldagger/hilt/android/internal/managers/n;->d(Landroidx/lifecycle/viewmodel/CreationExtras;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public final componentManager()Ldagger/hilt/android/internal/managers/a;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/Hilt_HMCloudMenuActivity;->componentManager:Ldagger/hilt/android/internal/managers/a;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/Hilt_HMCloudMenuActivity;->componentManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/Hilt_HMCloudMenuActivity;->componentManager:Ldagger/hilt/android/internal/managers/a;

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/Hilt_HMCloudMenuActivity;->createComponentManager()Ldagger/hilt/android/internal/managers/a;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/Hilt_HMCloudMenuActivity;->componentManager:Ldagger/hilt/android/internal/managers/a;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/Hilt_HMCloudMenuActivity;->componentManager:Ldagger/hilt/android/internal/managers/a;

    return-object v0
.end method

.method public bridge synthetic componentManager()Ljb/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/Hilt_HMCloudMenuActivity;->componentManager()Ldagger/hilt/android/internal/managers/a;

    move-result-object v0

    return-object v0
.end method

.method protected createComponentManager()Ldagger/hilt/android/internal/managers/a;
    .locals 1

    .line 1
    new-instance v0, Ldagger/hilt/android/internal/managers/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ldagger/hilt/android/internal/managers/a;-><init>(Landroid/app/Activity;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final generatedComponent()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/Hilt_HMCloudMenuActivity;->componentManager()Ldagger/hilt/android/internal/managers/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ldagger/hilt/android/internal/managers/a;->generatedComponent()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Ldagger/hilt/android/internal/lifecycle/a;->a(Landroidx/activity/ComponentActivity;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method protected inject()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/Hilt_HMCloudMenuActivity;->injected:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/Hilt_HMCloudMenuActivity;->injected:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/Hilt_HMCloudMenuActivity;->generatedComponent()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/join/mgps/activity/w5;

    .line 13
    .line 14
    invoke-static {p0}, Ljb/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/join/mgps/activity/HMCloudMenuActivity;

    .line 19
    .line 20
    invoke-interface {v0, v1}, Lcom/join/mgps/activity/w5;->e(Lcom/join/mgps/activity/HMCloudMenuActivity;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/Hilt_HMCloudMenuActivity;->initSavedStateHandleHolder()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/Hilt_HMCloudMenuActivity;->savedStateHandleHolder:Ldagger/hilt/android/internal/managers/n;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Ldagger/hilt/android/internal/managers/n;->a()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

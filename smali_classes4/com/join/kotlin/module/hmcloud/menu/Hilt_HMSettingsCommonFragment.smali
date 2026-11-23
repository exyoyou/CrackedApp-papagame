.class public abstract Lcom/join/kotlin/module/hmcloud/menu/Hilt_HMSettingsCommonFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Ljb/c;


# instance fields
.field private componentContext:Landroid/content/ContextWrapper;

.field private volatile componentManager:Ldagger/hilt/android/internal/managers/i;

.field private final componentManagerLock:Ljava/lang/Object;

.field private disableGetContextFix:Z

.field private injected:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/kotlin/module/hmcloud/menu/Hilt_HMSettingsCommonFragment;->disableGetContextFix:Z

    .line 3
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/join/kotlin/module/hmcloud/menu/Hilt_HMSettingsCommonFragment;->componentManagerLock:Ljava/lang/Object;

    .line 4
    iput-boolean v0, p0, Lcom/join/kotlin/module/hmcloud/menu/Hilt_HMSettingsCommonFragment;->injected:Z

    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p0"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Landroidx/fragment/app/Fragment;-><init>(I)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/join/kotlin/module/hmcloud/menu/Hilt_HMSettingsCommonFragment;->disableGetContextFix:Z

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/Hilt_HMSettingsCommonFragment;->componentManagerLock:Ljava/lang/Object;

    .line 8
    iput-boolean p1, p0, Lcom/join/kotlin/module/hmcloud/menu/Hilt_HMSettingsCommonFragment;->injected:Z

    return-void
.end method

.method private initializeComponentContext()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/Hilt_HMSettingsCommonFragment;->componentContext:Landroid/content/ContextWrapper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p0}, Ldagger/hilt/android/internal/managers/i;->b(Landroid/content/Context;Landroidx/fragment/app/Fragment;)Landroid/content/ContextWrapper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/Hilt_HMSettingsCommonFragment;->componentContext:Landroid/content/ContextWrapper;

    .line 14
    .line 15
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Ldagger/hilt/android/flags/FragmentGetContextFix;->a(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput-boolean v0, p0, Lcom/join/kotlin/module/hmcloud/menu/Hilt_HMSettingsCommonFragment;->disableGetContextFix:Z

    .line 24
    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public final componentManager()Ldagger/hilt/android/internal/managers/i;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/Hilt_HMSettingsCommonFragment;->componentManager:Ldagger/hilt/android/internal/managers/i;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/Hilt_HMSettingsCommonFragment;->componentManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/menu/Hilt_HMSettingsCommonFragment;->componentManager:Ldagger/hilt/android/internal/managers/i;

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/Hilt_HMSettingsCommonFragment;->createComponentManager()Ldagger/hilt/android/internal/managers/i;

    move-result-object v1

    iput-object v1, p0, Lcom/join/kotlin/module/hmcloud/menu/Hilt_HMSettingsCommonFragment;->componentManager:Ldagger/hilt/android/internal/managers/i;

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
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/Hilt_HMSettingsCommonFragment;->componentManager:Ldagger/hilt/android/internal/managers/i;

    return-object v0
.end method

.method public bridge synthetic componentManager()Ljb/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/Hilt_HMSettingsCommonFragment;->componentManager()Ldagger/hilt/android/internal/managers/i;

    move-result-object v0

    return-object v0
.end method

.method protected createComponentManager()Ldagger/hilt/android/internal/managers/i;
    .locals 1

    .line 1
    new-instance v0, Ldagger/hilt/android/internal/managers/i;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ldagger/hilt/android/internal/managers/i;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final generatedComponent()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/Hilt_HMSettingsCommonFragment;->componentManager()Ldagger/hilt/android/internal/managers/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ldagger/hilt/android/internal/managers/i;->generatedComponent()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/join/kotlin/module/hmcloud/menu/Hilt_HMSettingsCommonFragment;->disableGetContextFix:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/menu/Hilt_HMSettingsCommonFragment;->initializeComponentContext()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/Hilt_HMSettingsCommonFragment;->componentContext:Landroid/content/ContextWrapper;

    .line 17
    .line 18
    return-object v0
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Ldagger/hilt/android/internal/lifecycle/a;->b(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider$Factory;

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
    iget-boolean v0, p0, Lcom/join/kotlin/module/hmcloud/menu/Hilt_HMSettingsCommonFragment;->injected:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/join/kotlin/module/hmcloud/menu/Hilt_HMSettingsCommonFragment;->injected:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/Hilt_HMSettingsCommonFragment;->generatedComponent()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsCommonFragment_GeneratedInjector;

    .line 13
    .line 14
    invoke-static {p0}, Ljb/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsCommonFragment;

    .line 19
    .line 20
    invoke-interface {v0, v1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsCommonFragment_GeneratedInjector;->injectHMSettingsCommonFragment(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsCommonFragment;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 4
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 5
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/Hilt_HMSettingsCommonFragment;->componentContext:Landroid/content/ContextWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ldagger/hilt/android/internal/managers/i;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-string v0, "onAttach called multiple times with different Context! Hilt Fragments should not be retained."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Ljb/d;->d(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/menu/Hilt_HMSettingsCommonFragment;->initializeComponentContext()V

    .line 7
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/Hilt_HMSettingsCommonFragment;->inject()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/menu/Hilt_HMSettingsCommonFragment;->initializeComponentContext()V

    .line 3
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/Hilt_HMSettingsCommonFragment;->inject()V

    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1, p0}, Ldagger/hilt/android/internal/managers/i;->c(Landroid/view/LayoutInflater;Landroidx/fragment/app/Fragment;)Landroid/content/ContextWrapper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

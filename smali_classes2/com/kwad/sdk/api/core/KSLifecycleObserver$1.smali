.class Lcom/kwad/sdk/api/core/KSLifecycleObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/api/core/KSLifecycleObserver;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kwad/sdk/api/core/KSLifecycleObserver;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/api/core/KSLifecycleObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/api/core/KSLifecycleObserver$1;->this$0:Lcom/kwad/sdk/api/core/KSLifecycleObserver;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/api/core/KSLifecycleObserver$1;->this$0:Lcom/kwad/sdk/api/core/KSLifecycleObserver;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/kwad/sdk/api/core/KSLifecycleObserver;->access$002(Lcom/kwad/sdk/api/core/KSLifecycleObserver;Z)Z

    .line 5
    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/api/core/KSLifecycleObserver$1;->this$0:Lcom/kwad/sdk/api/core/KSLifecycleObserver;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/kwad/sdk/api/core/KSLifecycleObserver;->access$100(Lcom/kwad/sdk/api/core/KSLifecycleObserver;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/kwad/sdk/api/core/KSLifecycleListener;

    .line 28
    .line 29
    invoke-interface {v1, p1, p2}, Lcom/kwad/sdk/api/core/KSLifecycleListener;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/api/core/KSLifecycleObserver$1;->this$0:Lcom/kwad/sdk/api/core/KSLifecycleObserver;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/api/core/KSLifecycleObserver;->access$100(Lcom/kwad/sdk/api/core/KSLifecycleObserver;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/kwad/sdk/api/core/KSLifecycleListener;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Lcom/kwad/sdk/api/core/KSLifecycleListener;->onActivityDestroyed(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/api/core/KSLifecycleObserver$1;->this$0:Lcom/kwad/sdk/api/core/KSLifecycleObserver;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/api/core/KSLifecycleObserver;->access$400(Lcom/kwad/sdk/api/core/KSLifecycleObserver;)Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/sdk/api/core/KSLifecycleObserver$1;->this$0:Lcom/kwad/sdk/api/core/KSLifecycleObserver;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/kwad/sdk/api/core/KSLifecycleObserver;->access$400(Lcom/kwad/sdk/api/core/KSLifecycleObserver;)Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/kwad/sdk/api/core/KSLifecycleObserver$1;->this$0:Lcom/kwad/sdk/api/core/KSLifecycleObserver;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/kwad/sdk/api/core/KSLifecycleObserver;->access$400(Lcom/kwad/sdk/api/core/KSLifecycleObserver;)Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/app/Activity;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget-object v0, p0, Lcom/kwad/sdk/api/core/KSLifecycleObserver$1;->this$0:Lcom/kwad/sdk/api/core/KSLifecycleObserver;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-static {v0, v1}, Lcom/kwad/sdk/api/core/KSLifecycleObserver;->access$402(Lcom/kwad/sdk/api/core/KSLifecycleObserver;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/api/core/KSLifecycleObserver$1;->this$0:Lcom/kwad/sdk/api/core/KSLifecycleObserver;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/kwad/sdk/api/core/KSLifecycleObserver;->access$100(Lcom/kwad/sdk/api/core/KSLifecycleObserver;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Lcom/kwad/sdk/api/core/KSLifecycleListener;

    .line 66
    .line 67
    invoke-interface {v1, p1}, Lcom/kwad/sdk/api/core/KSLifecycleListener;->onActivityPaused(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    return-void

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/api/core/KSLifecycleObserver$1;->this$0:Lcom/kwad/sdk/api/core/KSLifecycleObserver;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/kwad/sdk/api/core/KSLifecycleObserver;->access$402(Lcom/kwad/sdk/api/core/KSLifecycleObserver;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/kwad/sdk/api/core/KSLifecycleObserver$1;->this$0:Lcom/kwad/sdk/api/core/KSLifecycleObserver;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/kwad/sdk/api/core/KSLifecycleObserver;->access$100(Lcom/kwad/sdk/api/core/KSLifecycleObserver;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/kwad/sdk/api/core/KSLifecycleListener;

    .line 32
    .line 33
    invoke-interface {v1, p1}, Lcom/kwad/sdk/api/core/KSLifecycleListener;->onActivityResumed(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/api/core/KSLifecycleObserver$1;->this$0:Lcom/kwad/sdk/api/core/KSLifecycleObserver;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/api/core/KSLifecycleObserver;->access$200(Lcom/kwad/sdk/api/core/KSLifecycleObserver;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/kwad/sdk/api/core/KSLifecycleObserver$1;->this$0:Lcom/kwad/sdk/api/core/KSLifecycleObserver;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/kwad/sdk/api/core/KSLifecycleObserver;->access$200(Lcom/kwad/sdk/api/core/KSLifecycleObserver;)Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 v0, 0x1

    .line 29
    if-ne p1, v0, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lcom/kwad/sdk/api/core/KSLifecycleObserver$1;->this$0:Lcom/kwad/sdk/api/core/KSLifecycleObserver;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/kwad/sdk/api/core/KSLifecycleObserver;->access$300(Lcom/kwad/sdk/api/core/KSLifecycleObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/api/core/KSLifecycleObserver$1;->this$0:Lcom/kwad/sdk/api/core/KSLifecycleObserver;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/api/core/KSLifecycleObserver;->access$100(Lcom/kwad/sdk/api/core/KSLifecycleObserver;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/kwad/sdk/api/core/KSLifecycleListener;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Lcom/kwad/sdk/api/core/KSLifecycleListener;->onActivityStopped(Landroid/app/Activity;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/api/core/KSLifecycleObserver$1;->this$0:Lcom/kwad/sdk/api/core/KSLifecycleObserver;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/kwad/sdk/api/core/KSLifecycleObserver;->access$200(Lcom/kwad/sdk/api/core/KSLifecycleObserver;)Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/kwad/sdk/api/core/KSLifecycleObserver$1;->this$0:Lcom/kwad/sdk/api/core/KSLifecycleObserver;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/kwad/sdk/api/core/KSLifecycleObserver;->access$200(Lcom/kwad/sdk/api/core/KSLifecycleObserver;)Ljava/util/Set;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_1

    .line 55
    .line 56
    iget-object p1, p0, Lcom/kwad/sdk/api/core/KSLifecycleObserver$1;->this$0:Lcom/kwad/sdk/api/core/KSLifecycleObserver;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/kwad/sdk/api/core/KSLifecycleObserver;->access$500(Lcom/kwad/sdk/api/core/KSLifecycleObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

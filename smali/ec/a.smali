.class public Lec/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lkwai/a/a;


# direct methods
.method public constructor <init>(Lkwai/a/a;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lec/a;->c:Lkwai/a/a;

    .line 2
    .line 3
    iput-object p2, p0, Lec/a;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lec/a;->c:Lkwai/a/a;

    .line 2
    .line 3
    iget-boolean v0, p1, Lkwai/a/a;->d:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lkwai/a/a;->a()V

    .line 8
    .line 9
    .line 10
    const-string p1, "AutomaticManager"

    .line 11
    .line 12
    const-string v0, "onForeground"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lkc/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lec/a;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Lkwai/a/a;->d(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lec/a;->c:Lkwai/a/a;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p1, v0}, Lkwai/a/a;->c(Lkwai/a/a;Z)Z

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lec/a;->c:Lkwai/a/a;

    .line 16
    .line 17
    iget-object p1, p1, Lkwai/a/a;->e:Landroid/os/Handler;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

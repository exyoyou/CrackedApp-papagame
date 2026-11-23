.class public Lcom/byazt/ddx/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1e3,
        0xcb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ddx/i;->c(Lcom/byazt/ddx/i$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ddx/i$c;

.field public final synthetic tt:Lcom/byazt/ddx/i;

.field public uj:J

.field public ve:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/byazt/ddx/i;Lcom/byazt/ddx/i$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ddx/i$1;->tt:Lcom/byazt/ddx/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ddx/i$1;->c:Lcom/byazt/ddx/i$c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private c(Landroid/app/Activity;)Z
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/byazt/ddx/i$1;->ve:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    return v0

    .line 10
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-ne p1, v1, :cond_2

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_2
    return v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/byazt/ddx/i$1;->tt:Lcom/byazt/ddx/i;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/ddx/i;->c(Lcom/byazt/ddx/i;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/byazt/ddx/i$1;->c:Lcom/byazt/ddx/i$c;

    .line 7
    .line 8
    const-string p2, "create"

    .line 9
    .line 10
    invoke-interface {p1, p2}, Lcom/byazt/ddx/i$c;->c(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/byazt/ddx/i$1;->tt:Lcom/byazt/ddx/i;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/ddx/i;->c(Lcom/byazt/ddx/i;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/byazt/ddx/i$1;->c:Lcom/byazt/ddx/i$c;

    .line 7
    .line 8
    const-string v0, "destroy"

    .line 9
    .line 10
    invoke-interface {p1, v0}, Lcom/byazt/ddx/i$c;->c(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/byazt/ddx/i$1;->ve:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p0, Lcom/byazt/ddx/i$1;->uj:J

    .line 13
    .line 14
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/byazt/ddx/i$1;->tt:Lcom/byazt/ddx/i;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/ddx/i;->c(Lcom/byazt/ddx/i;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/byazt/ddx/i$1;->c:Lcom/byazt/ddx/i$c;

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-wide v2, p0, Lcom/byazt/ddx/i$1;->uj:J

    .line 13
    .line 14
    sub-long/2addr v0, v2

    .line 15
    invoke-interface {p1, v0, v1}, Lcom/byazt/ddx/i$c;->c(J)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/byazt/ddx/i$1;->tt:Lcom/byazt/ddx/i;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/ddx/i;->c(Lcom/byazt/ddx/i;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/byazt/ddx/i$1;->c:Lcom/byazt/ddx/i$c;

    .line 7
    .line 8
    const-string v0, "start"

    .line 9
    .line 10
    invoke-interface {p1, v0}, Lcom/byazt/ddx/i$c;->c(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/byazt/ddx/i$1;->tt:Lcom/byazt/ddx/i;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ddx/i;->c(Lcom/byazt/ddx/i;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/ddx/i$1;->c:Lcom/byazt/ddx/i$c;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/byazt/ddx/i$1;->c(Landroid/app/Activity;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-interface {v0, p1}, Lcom/byazt/ddx/i$c;->c(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

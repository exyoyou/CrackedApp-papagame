.class public abstract Lcn/fly/tools/utils/ExecutorDispatcher$SafeRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/fly/tools/utils/ExecutorDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SafeRunnable"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public afterRun()V
    .locals 0

    return-void
.end method

.method public beforeRun()V
    .locals 0

    return-void
.end method

.method public handleException(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public run()V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcn/fly/tools/utils/ExecutorDispatcher$SafeRunnable;->name()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcn/fly/tools/utils/ExecutorDispatcher$SafeRunnable;->beforeRun()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcn/fly/tools/utils/ExecutorDispatcher$SafeRunnable;->safeRun()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcn/fly/tools/utils/ExecutorDispatcher$SafeRunnable;->afterRun()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    :try_start_1
    invoke-virtual {p0, v0}, Lcn/fly/tools/utils/ExecutorDispatcher$SafeRunnable;->handleException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    .line 31
    .line 32
    :catchall_1
    :goto_0
    return-void
.end method

.method public abstract safeRun()V
.end method

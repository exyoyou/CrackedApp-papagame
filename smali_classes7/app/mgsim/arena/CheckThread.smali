.class public abstract Lapp/mgsim/arena/CheckThread;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private volatile isContinue:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lapp/mgsim/arena/CheckThread;->isContinue:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public abstract check()Z
.end method

.method public abstract handle()V
.end method

.method public isContinue()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lapp/mgsim/arena/CheckThread;->isContinue:Z

    .line 2
    .line 3
    return v0
.end method

.method public abstract next()V
.end method

.method public run()V
    .locals 1

    .line 1
    :goto_0
    iget-boolean v0, p0, Lapp/mgsim/arena/CheckThread;->isContinue:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Lapp/mgsim/arena/CheckThread;->isContinue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lapp/mgsim/arena/CheckThread;->check()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-boolean v0, p0, Lapp/mgsim/arena/CheckThread;->isContinue:Z

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Lapp/mgsim/arena/CheckThread;->handle()V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Lapp/mgsim/arena/CheckThread;->next()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    nop

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    return-void
.end method

.method public setContinue(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lapp/mgsim/arena/CheckThread;->isContinue:Z

    .line 2
    .line 3
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lapp/mgsim/arena/CheckThread;->isContinue:Z

    .line 3
    .line 4
    return-void
.end method

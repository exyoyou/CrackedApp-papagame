.class public interface abstract Lcom/haima/hmcp/cloud/ITask;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getStatus()I
.end method

.method public abstract isRunning()Z
.end method

.method public abstract start(Ljava/util/List;Lcom/haima/hmcp/cloud/IWorkListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/cloud/InternalCloudFile;",
            ">;",
            "Lcom/haima/hmcp/cloud/IWorkListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract stop()V
.end method

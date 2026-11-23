.class public interface abstract Lcom/haima/hmcp/cloud/ICloudFile;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract check(Ljava/util/List;Lcom/haima/hmcp/cloud/IBaseCheckListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;",
            "Lcom/haima/hmcp/cloud/IBaseCheckListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract execute(Lcom/haima/hmcp/business/IWebSocket;Ljava/util/List;Lcom/haima/hmcp/beans/CloudFileConfig;Lcom/haima/hmcp/cloud/IWorkListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/business/IWebSocket;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/cloud/InternalCloudFile;",
            ">;",
            "Lcom/haima/hmcp/beans/CloudFileConfig;",
            "Lcom/haima/hmcp/cloud/IWorkListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getStatus()Lcom/haima/hmcp/cloud/WorkStatus;
.end method

.method public abstract interrupt()V
.end method

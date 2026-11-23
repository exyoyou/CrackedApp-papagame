.class public interface abstract Lcom/haima/hmcp/listeners/CloudOperationListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onCancel(Lcom/haima/hmcp/enums/CloudOperation;)V
.end method

.method public abstract onError(Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;)V
.end method

.method public abstract onFinish(Lcom/haima/hmcp/enums/CloudOperation;)V
.end method

.method public abstract onStop(Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Lcom/haima/hmcp/enums/CloudOperation;Lcom/haima/hmcp/beans/CloudFile;)V
.end method

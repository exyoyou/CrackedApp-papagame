.class public interface abstract Lcom/haima/hmcp/business/IHttp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/business/IHttp$RequestWrapper;,
        Lcom/haima/hmcp/business/IHttp$OnResponseListener;
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract download(Lcom/haima/hmcp/business/DownloadFileInfo;Lcom/haima/hmcp/business/DownloadResponseListener;)V
.end method

.method public abstract get(Lcom/haima/hmcp/business/IHttp$RequestWrapper;Lcom/haima/hmcp/business/IHttp$OnResponseListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/business/IHttp$RequestWrapper<",
            "*>;",
            "Lcom/haima/hmcp/business/IHttp$OnResponseListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract post(Lcom/haima/hmcp/business/IHttp$RequestWrapper;Lcom/haima/hmcp/business/IHttp$OnResponseListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/business/IHttp$RequestWrapper<",
            "*>;",
            "Lcom/haima/hmcp/business/IHttp$OnResponseListener;",
            ")V"
        }
    .end annotation
.end method

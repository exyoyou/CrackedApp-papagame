.class public interface abstract Lcom/haima/hmcp/volley/toolbox/AsyncHttpStack$OnRequestComplete;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/volley/toolbox/AsyncHttpStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRequestComplete"
.end annotation


# virtual methods
.method public abstract onAuthError(Lcom/haima/hmcp/volley/AuthFailureError;)V
.end method

.method public abstract onError(Ljava/io/IOException;)V
.end method

.method public abstract onSuccess(Lcom/haima/hmcp/volley/toolbox/HttpResponse;)V
.end method

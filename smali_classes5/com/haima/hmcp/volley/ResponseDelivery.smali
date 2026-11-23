.class public interface abstract Lcom/haima/hmcp/volley/ResponseDelivery;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract postError(Lcom/haima/hmcp/volley/Request;Lcom/haima/hmcp/volley/VolleyError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/volley/Request<",
            "*>;",
            "Lcom/haima/hmcp/volley/VolleyError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract postResponse(Lcom/haima/hmcp/volley/Request;Lcom/haima/hmcp/volley/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/volley/Request<",
            "*>;",
            "Lcom/haima/hmcp/volley/Response<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract postResponse(Lcom/haima/hmcp/volley/Request;Lcom/haima/hmcp/volley/Response;Ljava/lang/Runnable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/volley/Request<",
            "*>;",
            "Lcom/haima/hmcp/volley/Response<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation
.end method

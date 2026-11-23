.class public interface abstract Lcom/haima/hmcp/volley/Network;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract performRequest(Lcom/haima/hmcp/volley/Request;)Lcom/haima/hmcp/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/volley/Request<",
            "*>;)",
            "Lcom/haima/hmcp/volley/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/haima/hmcp/volley/VolleyError;
        }
    .end annotation
.end method

.class public interface abstract Lcom/haima/hmcp/business/RequestPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onGetResponse(Ljava/util/concurrent/ConcurrentHashMap;Lcom/haima/hmcp/volley/RequestQueue;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/haima/hmcp/business/CharsetJsonRequest;",
            ">;",
            "Lcom/haima/hmcp/volley/RequestQueue;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onPostRequest(Ljava/util/concurrent/ConcurrentHashMap;Lcom/haima/hmcp/volley/RequestQueue;Lcom/haima/hmcp/business/CharsetJsonRequest;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/haima/hmcp/business/CharsetJsonRequest;",
            ">;",
            "Lcom/haima/hmcp/volley/RequestQueue;",
            "Lcom/haima/hmcp/business/CharsetJsonRequest;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

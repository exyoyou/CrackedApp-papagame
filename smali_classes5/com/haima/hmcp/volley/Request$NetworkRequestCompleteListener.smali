.class interface abstract Lcom/haima/hmcp/volley/Request$NetworkRequestCompleteListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "NetworkRequestCompleteListener"
.end annotation


# virtual methods
.method public abstract onNoUsableResponseReceived(Lcom/haima/hmcp/volley/Request;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/volley/Request<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract onResponseReceived(Lcom/haima/hmcp/volley/Request;Lcom/haima/hmcp/volley/Response;)V
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

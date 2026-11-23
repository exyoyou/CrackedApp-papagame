.class interface abstract Lcom/cloudplay/messagesdk/network/volley/Request$NetworkRequestCompleteListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloudplay/messagesdk/network/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "NetworkRequestCompleteListener"
.end annotation


# virtual methods
.method public abstract onNoUsableResponseReceived(Lcom/cloudplay/messagesdk/network/volley/Request;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract onResponseReceived(Lcom/cloudplay/messagesdk/network/volley/Request;Lcom/cloudplay/messagesdk/network/volley/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;",
            "Lcom/cloudplay/messagesdk/network/volley/Response<",
            "*>;)V"
        }
    .end annotation
.end method

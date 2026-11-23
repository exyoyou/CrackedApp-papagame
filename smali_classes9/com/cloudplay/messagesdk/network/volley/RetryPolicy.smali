.class public interface abstract Lcom/cloudplay/messagesdk/network/volley/RetryPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCurrentRetryCount()I
.end method

.method public abstract getCurrentTimeout()I
.end method

.method public abstract retry(Lcom/cloudplay/messagesdk/network/volley/VolleyError;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/network/volley/VolleyError;
        }
    .end annotation
.end method

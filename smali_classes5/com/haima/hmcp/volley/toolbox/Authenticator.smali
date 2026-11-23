.class public interface abstract Lcom/haima/hmcp/volley/toolbox/Authenticator;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAuthToken()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/haima/hmcp/volley/AuthFailureError;
        }
    .end annotation
.end method

.method public abstract invalidateAuthToken(Ljava/lang/String;)V
.end method

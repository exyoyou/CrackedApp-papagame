.class public interface abstract Lcom/haima/hmcp/business/DownloadResponseListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onError(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onFinish()V
.end method

.method public abstract onHeaders(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onProgress(JJ)V
.end method

.method public abstract onRetry(J)V
.end method

.method public abstract onSuccess()V
.end method

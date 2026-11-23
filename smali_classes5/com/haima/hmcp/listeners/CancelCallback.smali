.class public interface abstract Lcom/haima/hmcp/listeners/CancelCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onCancelFail(Lcom/haima/hmcp/beans/CloudFile;ILjava/lang/String;)V
.end method

.method public abstract onCanceled(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;)V"
        }
    .end annotation
.end method

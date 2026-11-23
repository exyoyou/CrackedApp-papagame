.class interface abstract Lcom/haima/hmcp/cloud/IWorkListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onError(Lcom/haima/hmcp/cloud/InternalCloudFile;Ljava/lang/String;)V
.end method

.method public abstract onFinish(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/haima/hmcp/cloud/InternalCloudFile;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onHangUp()Z
.end method

.method public abstract onStop(ILjava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/cloud/InternalCloudFile;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSuccess(Lcom/haima/hmcp/cloud/InternalCloudFile;)V
.end method

.class public interface abstract Lcom/haima/hmcp/cloud/IUploadSummaryListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onHangUp()Z
.end method

.method public abstract onUploadComplete(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/listeners/BatchCloudOperationListener$FileStatus;",
            ">;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/listeners/BatchCloudOperationListener$FileStatus;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUploadError(ILjava/lang/String;)V
.end method

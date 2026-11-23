.class public interface abstract Lcom/haima/hmcp/listeners/WorkingFileCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onWorking(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onWorkingFail(ILjava/lang/String;)V
.end method

.class public interface abstract Lcom/haima/hmcp/listeners/QueryCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onQuery(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onQueryFail(ILjava/lang/String;)V
.end method

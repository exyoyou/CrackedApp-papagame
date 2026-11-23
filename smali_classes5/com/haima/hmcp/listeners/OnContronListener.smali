.class public interface abstract Lcom/haima/hmcp/listeners/OnContronListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract controlDistribute(ZLjava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/ControlInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract controlQuery(ZLjava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/ControlInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract contronLost()V
.end method

.method public abstract contronResult(ZLjava/lang/String;)V
.end method

.method public abstract pinCodeResult(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

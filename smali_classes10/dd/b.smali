.class public interface abstract Ldd/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/jboss/netty/channel/j;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract R(Ljava/lang/Integer;)Lorg/jboss/netty/channel/j;
.end method

.method public abstract await()Ldd/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract await(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract await(JLjava/util/concurrent/TimeUnit;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract awaitUninterruptibly()Ldd/b;
.end method

.method public abstract awaitUninterruptibly(J)Z
.end method

.method public abstract awaitUninterruptibly(JLjava/util/concurrent/TimeUnit;)Z
.end method

.method public abstract c(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;
.end method

.method public abstract e(Ldd/c;)V
.end method

.method public abstract g(Ldd/c;)V
.end method

.method public abstract getGroup()Ldd/a;
.end method

.method public abstract isDone()Z
.end method

.method public abstract isPartialFailure()Z
.end method

.method public abstract isPartialSuccess()Z
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jboss/netty/channel/j;",
            ">;"
        }
    .end annotation
.end method

.method public abstract q()Z
.end method

.method public abstract s()Z
.end method

.class public interface abstract Lcom/xinzhu/overmind/server/accounts/d;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(I)V
.end method

.method public abstract b(Landroid/accounts/AuthenticatorDescription;I)Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AuthenticatorDescription;",
            "I)",
            "Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c<",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c(I)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c<",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract d(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
.end method

.method public abstract e(I)V
.end method

.method public abstract f(Lcom/xinzhu/overmind/server/pm/t;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xinzhu/overmind/server/pm/t<",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation
.end method

.class public interface abstract Lorg/hmwebrtc/Predicate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract and(Lorg/hmwebrtc/Predicate;)Lorg/hmwebrtc/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hmwebrtc/Predicate<",
            "-TT;>;)",
            "Lorg/hmwebrtc/Predicate<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract negate()Lorg/hmwebrtc/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hmwebrtc/Predicate<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract or(Lorg/hmwebrtc/Predicate;)Lorg/hmwebrtc/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hmwebrtc/Predicate<",
            "-TT;>;)",
            "Lorg/hmwebrtc/Predicate<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract test(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

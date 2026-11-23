.class public interface abstract Lcom/windmill/sdk/strategy/s$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/strategy/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation


# virtual methods
.method public abstract a(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "error",
            "placementId",
            "failList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/windmill/sdk/WindMillError;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Lcom/windmill/sdk/strategy/a;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy"
        }
    .end annotation
.end method

.method public abstract a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/WindMillError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "strategy",
            "windMillError"
        }
    .end annotation
.end method

.method public abstract a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/l$a;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "strategy",
            "listener"
        }
    .end annotation
.end method

.method public abstract a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s$a;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "strategy",
            "biddingListener"
        }
    .end annotation
.end method

.method public abstract a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s$b;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "strategy",
            "listener"
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/List;Lcom/windmill/sdk/strategy/q;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adStrategyList",
            "config"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;",
            "Lcom/windmill/sdk/strategy/q;",
            ")V"
        }
    .end annotation
.end method

.method public abstract b(Lcom/windmill/sdk/strategy/a;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy"
        }
    .end annotation
.end method

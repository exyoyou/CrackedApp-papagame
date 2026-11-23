.class public interface abstract Lcom/windmill/sdk/strategy/s$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/strategy/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract a(ILjava/util/List;Lcom/windmill/sdk/strategy/q;Lcom/windmill/sdk/models/Waterfall;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "adStrategyList",
            "config",
            "waterfall"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;",
            "Lcom/windmill/sdk/strategy/q;",
            "Lcom/windmill/sdk/models/Waterfall;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/List;Lcom/windmill/sdk/strategy/a;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "failList",
            "strategy",
            "error_code",
            "error_msg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;",
            "Lcom/windmill/sdk/strategy/a;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

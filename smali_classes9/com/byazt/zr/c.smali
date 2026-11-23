.class public Lcom/byazt/zr/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x689,
        0x14
    }
.end annotation


# direct methods
.method public static c(Ljava/util/function/Function;)Lcom/byazt/fy/ve;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/byazt/fy/ve;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/byazt/zr/c$1;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/byazt/zr/c$1;-><init>(Ljava/util/function/Function;)V

    .line 6
    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return-object p0
.end method

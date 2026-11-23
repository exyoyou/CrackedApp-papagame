.class public Lcom/byazt/jj/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x124,
        0x14
    }
.end annotation


# static fields
.field public static c:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static c(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sput-object p0, Lcom/byazt/jj/c;->c:Ljava/util/function/Function;

    return-void
.end method

.method public static c(Z)V
    .locals 3

    .line 2
    sget-object v0, Lcom/byazt/jj/c;->c:Ljava/util/function/Function;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v0

    const/16 v1, 0x2710

    .line 4
    invoke-virtual {v0, v1}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object v1

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    const/16 v1, 0x4e20

    .line 5
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 6
    sget-object p0, Lcom/byazt/jj/c;->c:Ljava/util/function/Function;

    invoke-virtual {v0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {p0, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

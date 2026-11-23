.class public Lcom/byazt/jj/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x124,
        0x36
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
.method public static c(Lcom/byazt/ng/c;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->lr()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {p0, p1}, Lcom/byazt/jj/ve;->tt(Lcom/byazt/ng/c;Z)V

    return-void
.end method

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
    sput-object p0, Lcom/byazt/jj/ve;->c:Ljava/util/function/Function;

    return-void
.end method

.method private static tt(Lcom/byazt/ng/c;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/byazt/jj/ve;->c:Ljava/util/function/Function;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-class v1, Ljava/lang/Void;

    .line 10
    .line 11
    const/16 v2, 0x2712

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, v1}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    .line 20
    .line 21
    .line 22
    const/16 p1, 0x4e23

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/byazt/ng/c;->ve()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0, p1, p0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 29
    .line 30
    .line 31
    sget-object p0, Lcom/byazt/jj/ve;->c:Ljava/util/function/Function;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p0, p1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    invoke-virtual {v0, v2}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1, v1}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    .line 46
    .line 47
    .line 48
    const/16 p1, 0x4e22

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/byazt/ng/c;->ve()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v0, p1, p0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 55
    .line 56
    .line 57
    sget-object p0, Lcom/byazt/jj/ve;->c:Ljava/util/function/Function;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p0, p1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void
.end method

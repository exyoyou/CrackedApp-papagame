.class public Lcom/byazt/fk/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/fk/da;
.implements Ljava/util/function/Function;


# annotations
.annotation build Lcom/byazt/ut/ATSKeep;
.end annotation

.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x6a0,
        0x42
    }
.end annotation


# instance fields
.field public volatile c:Ljava/util/function/Function;

.field public volatile tt:Lcom/byazt/fk/da;


# direct methods
.method public constructor <init>(Lcom/byazt/fk/da;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/fk/t;->tt:Lcom/byazt/fk/da;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/fk/t;->c:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroid/util/SparseArray;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x2

    .line 23
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x3

    .line 28
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    new-instance v2, Lcom/byazt/fk/yp;

    .line 35
    .line 36
    invoke-static {v1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-direct {v2, v1}, Lcom/byazt/fk/yp;-><init>(Ljava/util/function/Function;)V

    .line 41
    .line 42
    .line 43
    move-object v1, v2

    .line 44
    :cond_1
    if-eqz p1, :cond_2

    .line 45
    .line 46
    new-instance v2, Lcom/byazt/fk/sl;

    .line 47
    .line 48
    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {v2, p1}, Lcom/byazt/fk/sl;-><init>(Ljava/util/function/Function;)V

    .line 53
    .line 54
    .line 55
    move-object p1, v2

    .line 56
    :cond_2
    iget-object v2, p0, Lcom/byazt/fk/t;->tt:Lcom/byazt/fk/da;

    .line 57
    .line 58
    check-cast v0, Landroid/content/Context;

    .line 59
    .line 60
    check-cast v1, Lcom/byazt/fk/u;

    .line 61
    .line 62
    check-cast p1, Lcom/byazt/fk/da$c;

    .line 63
    .line 64
    invoke-interface {v2, v0, v1, p1}, Lcom/byazt/fk/da;->execVideoPreload(Landroid/content/Context;Lcom/byazt/fk/u;Lcom/byazt/fk/da$c;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    const/4 p1, 0x0

    .line 68
    return-object p1
.end method

.method public execVideoPreload(Landroid/content/Context;Lcom/byazt/fk/u;Lcom/byazt/fk/da$c;)V
    .locals 4

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p2, :cond_0

    new-instance p1, Lcom/byazt/fk/yp;

    invoke-direct {p1, p2}, Lcom/byazt/fk/yp;-><init>(Lcom/byazt/fk/u;)V

    move-object p2, p1

    :cond_0
    const/4 p1, 0x2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p3, :cond_1

    new-instance p1, Lcom/byazt/fk/sl;

    invoke-direct {p1, p3}, Lcom/byazt/fk/sl;-><init>(Lcom/byazt/fk/da$c;)V

    move-object p3, p1

    :cond_1
    const/4 p1, 0x3

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/fk/t;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

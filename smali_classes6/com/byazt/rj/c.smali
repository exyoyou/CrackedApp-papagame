.class public Lcom/byazt/rj/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x811,
        0x14
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/lk/tt;

.field public final tt:Lcom/byazt/ut/c;


# direct methods
.method public constructor <init>(Lcom/byazt/lk/tt;Lcom/byazt/ut/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/rj/c;->c:Lcom/byazt/lk/tt;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/rj/c;->tt:Lcom/byazt/ut/c;

    .line 7
    .line 8
    return-void
.end method

.method public static c(Ljava/util/function/Function;Ljava/lang/String;)I
    .locals 3

    .line 9
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x2

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    invoke-static {p0, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 13
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 14
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    return v2
.end method

.method public static c(Ljava/util/function/Function;)Ljava/lang/Boolean;
    .locals 3

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x1

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    invoke-static {p0, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 25
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 26
    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    .line 27
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static c(Ljava/util/function/Function;Ljava/lang/String;Lcom/byazt/dna/c;)Ljava/lang/Object;
    .locals 3

    .line 15
    invoke-static {p0}, Lcom/byazt/rj/c;->ve(Ljava/util/function/Function;)I

    move-result v0

    const/16 v1, 0x1d4c

    if-ge v0, v1, :cond_0

    .line 16
    invoke-static {p0, p1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 17
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x3

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p2, :cond_1

    const/4 p1, 0x2

    .line 20
    invoke-interface {p2}, Lcom/byazt/dna/c;->getAppId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    :cond_1
    invoke-static {p0, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private tt(Landroid/util/SparseArray;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/byazt/rj/c;->tt:Lcom/byazt/ut/c;

    invoke-virtual {v1, p1}, Lcom/byazt/ut/c;->c(Ljava/lang/String;)Lcom/byazt/dna/c;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/byazt/rj/c;->tt:Lcom/byazt/ut/c;

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/byazt/ut/c;->c(Ljava/lang/String;Lcom/byazt/dna/c;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static tt(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 3

    .line 6
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, -0x5

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    invoke-static {p0, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object p0

    return-object p0
.end method

.method private ve(Landroid/util/SparseArray;)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/byazt/rj/c;->c:Lcom/byazt/lk/tt;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/byazt/lk/tt;->c(Ljava/lang/String;)Lcom/byazt/ut/sl;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-boolean v0, p1, Lcom/byazt/ut/sl;->n:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget p1, p1, Lcom/byazt/ut/sl;->ve:I

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public static ve(Ljava/util/function/Function;)I
    .locals 3

    .line 6
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x4

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    invoke-static {p0, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 9
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 10
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    return v2
.end method


# virtual methods
.method public c(Landroid/util/SparseArray;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 3
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/byazt/ut/uj;->getInstance()Lcom/byazt/ut/uj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ut/uj;->getVersion()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lcom/byazt/rj/c;->tt(Landroid/util/SparseArray;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    invoke-direct {p0, p1}, Lcom/byazt/rj/c;->ve(Landroid/util/SparseArray;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/byazt/rj/c;->tt:Lcom/byazt/ut/c;

    invoke-virtual {p1}, Lcom/byazt/ut/c;->tt()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/byazt/rj/c;->tt:Lcom/byazt/ut/c;

    invoke-virtual {p1, v1}, Lcom/byazt/ut/c;->c(Z)V

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.class public Lcom/byazt/dna/rh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/nu;
.implements Ljava/util/function/Function;


# annotations
.annotation build Lcom/byazt/ut/ATSKeep;
.end annotation

.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x47f,
        0x73
    }
.end annotation


# instance fields
.field public volatile c:Ljava/util/function/Function;

.field public volatile tt:Lcom/byazt/dna/nu;


# direct methods
.method public constructor <init>(Lcom/byazt/dna/nu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/dna/rh;->tt:Lcom/byazt/dna/nu;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/dna/rh;->c:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x5

    if-eq v0, v1, :cond_2

    const/4 v1, -0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object p1

    if-eqz p1, :cond_1

    iput-object v2, p0, Lcom/byazt/dna/rh;->tt:Lcom/byazt/dna/nu;

    iput-object p1, p0, Lcom/byazt/dna/rh;->c:Ljava/util/function/Function;

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    iget-object p1, p0, Lcom/byazt/dna/rh;->tt:Lcom/byazt/dna/nu;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/byazt/dna/rh;->tt:Lcom/byazt/dna/nu;

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/byazt/dna/rh;->c:Ljava/util/function/Function;

    return-object p1
.end method

.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/rh;->tt:Lcom/byazt/dna/nu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/rh;->tt:Lcom/byazt/dna/nu;

    invoke-interface {v0}, Lcom/byazt/dna/nu;->clear()V

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/rh;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/byazt/iy/n;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/dna/rh;->tt:Lcom/byazt/dna/nu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/rh;->tt:Lcom/byazt/dna/nu;

    invoke-interface {v0, p1}, Lcom/byazt/dna/nu;->get(Ljava/lang/String;)Lcom/byazt/iy/n;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/dna/rh;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/byazt/iy/a;

    invoke-direct {v0, p1}, Lcom/byazt/iy/a;-><init>(Ljava/util/function/Function;)V

    move-object p1, v0

    :cond_1
    check-cast p1, Lcom/byazt/iy/n;

    return-object p1
.end method

.method public get(Ljava/lang/String;I)Lcom/byazt/iy/n;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/byazt/dna/rh;->tt:Lcom/byazt/dna/nu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/rh;->tt:Lcom/byazt/dna/nu;

    invoke-interface {v0, p1, p2}, Lcom/byazt/dna/nu;->get(Ljava/lang/String;I)Lcom/byazt/iy/n;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/dna/rh;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Lcom/byazt/iy/a;

    invoke-direct {p2, p1}, Lcom/byazt/iy/a;-><init>(Ljava/util/function/Function;)V

    move-object p1, p2

    :cond_1
    check-cast p1, Lcom/byazt/iy/n;

    return-object p1
.end method

.method public getEncrypt(I)Lcom/byazt/iy/ve;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/rh;->tt:Lcom/byazt/dna/nu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/rh;->tt:Lcom/byazt/dna/nu;

    invoke-interface {v0, p1}, Lcom/byazt/dna/nu;->getEncrypt(I)Lcom/byazt/iy/ve;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/dna/rh;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/byazt/iy/uj;

    invoke-direct {v0, p1}, Lcom/byazt/iy/uj;-><init>(Ljava/util/function/Function;)V

    move-object p1, v0

    :cond_1
    check-cast p1, Lcom/byazt/iy/ve;

    return-object p1
.end method

.method public store()V
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/rh;->tt:Lcom/byazt/dna/nu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/rh;->tt:Lcom/byazt/dna/nu;

    invoke-interface {v0}, Lcom/byazt/dna/nu;->store()V

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/rh;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

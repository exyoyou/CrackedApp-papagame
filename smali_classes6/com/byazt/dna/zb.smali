.class public Lcom/byazt/dna/zb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/eo;
.implements Ljava/util/function/Function;


# annotations
.annotation build Lcom/byazt/ut/ATSKeep;
.end annotation

.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x47f,
        0xb8
    }
.end annotation


# instance fields
.field public volatile c:Ljava/util/function/Function;

.field public volatile tt:Lcom/byazt/dna/eo;


# direct methods
.method public constructor <init>(Lcom/byazt/dna/eo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/dna/zb;->tt:Lcom/byazt/dna/eo;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/dna/zb;->c:Ljava/util/function/Function;

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

    iput-object v2, p0, Lcom/byazt/dna/zb;->tt:Lcom/byazt/dna/eo;

    iput-object p1, p0, Lcom/byazt/dna/zb;->c:Ljava/util/function/Function;

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    iget-object p1, p0, Lcom/byazt/dna/zb;->tt:Lcom/byazt/dna/eo;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/byazt/dna/zb;->tt:Lcom/byazt/dna/eo;

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/byazt/dna/zb;->c:Ljava/util/function/Function;

    return-object p1
.end method

.method public getGlobalStorage(Lcom/byazt/dna/c;Ljava/lang/String;)Lcom/byazt/it/ve;
    .locals 4

    iget-object v0, p0, Lcom/byazt/dna/zb;->tt:Lcom/byazt/dna/eo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/zb;->tt:Lcom/byazt/dna/eo;

    invoke-interface {v0, p1, p2}, Lcom/byazt/dna/eo;->getGlobalStorage(Lcom/byazt/dna/c;Ljava/lang/String;)Lcom/byazt/it/ve;

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

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/byazt/dna/c;->getAppId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/dna/zb;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Lcom/byazt/it/uj;

    invoke-direct {p2, p1}, Lcom/byazt/it/uj;-><init>(Ljava/util/function/Function;)V

    move-object p1, p2

    :cond_2
    check-cast p1, Lcom/byazt/it/ve;

    return-object p1
.end method

.method public getLayerIsolateStore(Lcom/byazt/dna/c;Ljava/lang/String;)Lcom/byazt/it/n;
    .locals 4

    iget-object v0, p0, Lcom/byazt/dna/zb;->tt:Lcom/byazt/dna/eo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/zb;->tt:Lcom/byazt/dna/eo;

    invoke-interface {v0, p1, p2}, Lcom/byazt/dna/eo;->getLayerIsolateStore(Lcom/byazt/dna/c;Ljava/lang/String;)Lcom/byazt/it/n;

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

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/byazt/dna/c;->getAppId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/dna/zb;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Lcom/byazt/it/a;

    invoke-direct {p2, p1}, Lcom/byazt/it/a;-><init>(Ljava/util/function/Function;)V

    move-object p1, p2

    :cond_2
    check-cast p1, Lcom/byazt/it/n;

    return-object p1
.end method

.method public getVersionIsolateStore(Lcom/byazt/dna/c;Ljava/lang/String;)Lcom/byazt/it/sp;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/zb;->tt:Lcom/byazt/dna/eo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/zb;->tt:Lcom/byazt/dna/eo;

    invoke-interface {v0, p1, p2}, Lcom/byazt/dna/eo;->getVersionIsolateStore(Lcom/byazt/dna/c;Ljava/lang/String;)Lcom/byazt/it/sp;

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

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/byazt/dna/c;->getAppId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/dna/zb;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Lcom/byazt/it/x;

    invoke-direct {p2, p1}, Lcom/byazt/it/x;-><init>(Ljava/util/function/Function;)V

    move-object p1, p2

    :cond_2
    check-cast p1, Lcom/byazt/it/sp;

    return-object p1
.end method

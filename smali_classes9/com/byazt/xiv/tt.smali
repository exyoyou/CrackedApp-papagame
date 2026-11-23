.class public Lcom/byazt/xiv/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/xiv/c;
.implements Ljava/util/function/Function;


# annotations
.annotation build Lcom/byazt/ut/ATSKeep;
.end annotation

.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x75b,
        0xd
    }
.end annotation


# instance fields
.field public volatile c:Ljava/util/function/Function;

.field public volatile tt:Lcom/byazt/xiv/c;


# direct methods
.method public constructor <init>(Lcom/byazt/xiv/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/xiv/tt;->tt:Lcom/byazt/xiv/c;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/xiv/tt;->c:Ljava/util/function/Function;

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

    iput-object v2, p0, Lcom/byazt/xiv/tt;->tt:Lcom/byazt/xiv/c;

    iput-object p1, p0, Lcom/byazt/xiv/tt;->c:Ljava/util/function/Function;

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    iget-object p1, p0, Lcom/byazt/xiv/tt;->tt:Lcom/byazt/xiv/c;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/byazt/xiv/tt;->tt:Lcom/byazt/xiv/c;

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/byazt/xiv/tt;->c:Ljava/util/function/Function;

    return-object p1
.end method

.method public getAdnKeySet()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lcom/byazt/xiv/tt;->tt:Lcom/byazt/xiv/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/xiv/tt;->tt:Lcom/byazt/xiv/c;

    invoke-interface {v0}, Lcom/byazt/xiv/c;->getAdnKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/xiv/tt;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getAdnStatusMap()Ljava/util/Map;
    .locals 3

    iget-object v0, p0, Lcom/byazt/xiv/tt;->tt:Lcom/byazt/xiv/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/xiv/tt;->tt:Lcom/byazt/xiv/c;

    invoke-interface {v0}, Lcom/byazt/xiv/c;->getAdnStatusMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/xiv/tt;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getAndUpdateInitStatus(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/byazt/xiv/tt;->tt:Lcom/byazt/xiv/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/xiv/tt;->tt:Lcom/byazt/xiv/c;

    invoke-interface {v0, p1}, Lcom/byazt/xiv/c;->getAndUpdateInitStatus(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/xiv/tt;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getDexPluginStrategy(Ljava/lang/String;)Lcom/byazt/xiv/ve;
    .locals 3

    iget-object v0, p0, Lcom/byazt/xiv/tt;->tt:Lcom/byazt/xiv/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/xiv/tt;->tt:Lcom/byazt/xiv/c;

    invoke-interface {v0, p1}, Lcom/byazt/xiv/c;->getDexPluginStrategy(Ljava/lang/String;)Lcom/byazt/xiv/ve;

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

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/xiv/tt;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/byazt/xiv/uj;

    invoke-direct {v0, p1}, Lcom/byazt/xiv/uj;-><init>(Ljava/util/function/Function;)V

    move-object p1, v0

    :cond_1
    check-cast p1, Lcom/byazt/xiv/ve;

    return-object p1
.end method

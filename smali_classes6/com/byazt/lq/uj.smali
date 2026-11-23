.class public Lcom/byazt/lq/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x33,
        0xf
    }
.end annotation


# direct methods
.method public static c(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;)Lcom/bykv/vk/openvk/api/proto/PluginValueSet;
    .locals 1

    .line 6
    invoke-static {}, Lcom/byazt/mta/c;->c()Lcom/byazt/mta/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/mta/c;->tt()I

    move-result v0

    invoke-static {v0}, Lcom/byazt/lq/uj;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    const-class v0, Lcom/bykv/vk/openvk/api/proto/ValueSet;

    invoke-interface {p1, p0, v0}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bykv/vk/openvk/api/proto/ValueSet;

    .line 8
    invoke-interface {p0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->sparseArray()Landroid/util/SparseArray;

    move-result-object p0

    invoke-static {p0}, Lcom/byazt/rl/c;->c(Landroid/util/SparseArray;)Lcom/byazt/rl/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    const-class v0, Landroid/util/SparseArray;

    invoke-interface {p1, p0, v0}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    invoke-static {p0}, Lcom/byazt/rl/c;->c(Landroid/util/SparseArray;)Lcom/byazt/rl/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/util/SparseArray;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 4
    invoke-static {}, Lcom/byazt/mta/c;->c()Lcom/byazt/mta/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/mta/c;->tt()I

    move-result v0

    invoke-static {v0}, Lcom/byazt/lq/uj;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p0}, Lcom/byazt/rl/ve;->c(Landroid/util/SparseArray;)Lcom/byazt/rl/ve;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/rl/ve;->tt()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static c(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/byazt/mta/c;->c()Lcom/byazt/mta/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/mta/c;->tt()I

    move-result v0

    invoke-static {v0}, Lcom/byazt/lq/uj;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/byazt/lq/uj$1;

    invoke-direct {v0, p0}, Lcom/byazt/lq/uj$1;-><init>(Ljava/util/function/Supplier;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static c(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x1a93

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1b58

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

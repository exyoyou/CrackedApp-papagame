.class public Lcom/byazt/vif/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x81b,
        0xf
    }
.end annotation


# direct methods
.method private static c(Ljava/lang/String;)Lcom/byazt/dna/c;
    .locals 1

    .line 2
    invoke-static {}, Lcom/byazt/vxy/c;->c()Lcom/byazt/vxy/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/byazt/vxy/c;->c(Ljava/lang/String;)Lcom/byazt/dna/c;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/it/ve;
    .locals 1

    const-string v0, "storage_service"

    .line 3
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/eo;

    .line 4
    invoke-static {p0}, Lcom/byazt/vif/uj;->c(Ljava/lang/String;)Lcom/byazt/dna/c;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/byazt/dna/eo;->getGlobalStorage(Lcom/byazt/dna/c;Ljava/lang/String;)Lcom/byazt/it/ve;

    move-result-object p0

    return-object p0
.end method

.method public static c()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/qpp/c;->c()Lcom/byazt/qpp/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qpp/c;->tt()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static tt(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/it/n;
    .locals 1

    const-string v0, "storage_service"

    .line 2
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/eo;

    .line 3
    invoke-static {p0}, Lcom/byazt/vif/uj;->c(Ljava/lang/String;)Lcom/byazt/dna/c;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/byazt/dna/eo;->getLayerIsolateStore(Lcom/byazt/dna/c;Ljava/lang/String;)Lcom/byazt/it/n;

    move-result-object p0

    return-object p0
.end method

.method public static tt()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/qpp/c;->c()Lcom/byazt/qpp/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qpp/c;->tt()I

    move-result v0

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static ve(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/it/sp;
    .locals 1

    .line 1
    const-string v0, "storage_service"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/byazt/dna/eo;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/byazt/vif/uj;->c(Ljava/lang/String;)Lcom/byazt/dna/c;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {v0, p0, p1}, Lcom/byazt/dna/eo;->getVersionIsolateStore(Lcom/byazt/dna/c;Ljava/lang/String;)Lcom/byazt/it/sp;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

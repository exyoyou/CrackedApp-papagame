.class public Lcom/byazt/yv/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f3,
        0x14
    }
.end annotation


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/yv/c;->c()Lcom/byazt/dna/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/byazt/dna/u;->getVendor()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static c()Lcom/byazt/dna/u;
    .locals 1

    .line 1
    const-string v0, "device_info_new"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/byazt/dna/u;

    .line 8
    .line 9
    return-object v0
.end method

.method public static i()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/yv/c;->c()Lcom/byazt/dna/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/byazt/dna/u;->getScreenWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/yv/c;->c()Lcom/byazt/dna/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/byazt/dna/u;->getDeviceModel()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static sp()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/yv/c;->c()Lcom/byazt/dna/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/byazt/dna/u;->getDisplayDpi()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static tt()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/yv/c;->c()Lcom/byazt/dna/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Lcom/byazt/dna/u;->getWifiMac(Ljava/lang/Boolean;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public static uj()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/yv/c;->c()Lcom/byazt/dna/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/byazt/dna/u;->getRom()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static ve()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/yv/c;->c()Lcom/byazt/dna/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/byazt/dna/u;->getTimeZoneInt()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static x()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/yv/c;->c()Lcom/byazt/dna/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/byazt/dna/u;->getScreenHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

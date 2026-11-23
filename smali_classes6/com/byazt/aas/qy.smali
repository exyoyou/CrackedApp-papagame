.class public Lcom/byazt/aas/qy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x83,
        0x6e
    }
.end annotation


# direct methods
.method public static c()I
    .locals 3

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
    const-wide/32 v1, 0xea60

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1, v2}, Lcom/byazt/dna/u;->getRealNetworkType(J)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

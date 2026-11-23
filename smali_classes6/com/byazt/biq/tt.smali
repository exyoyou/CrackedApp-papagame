.class public final Lcom/byazt/biq/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xc,
        0xd
    }
.end annotation


# direct methods
.method public static c(Landroid/content/Context;FI)[F
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1
    invoke-static {p0}, Lcom/byazt/aas/pf;->x(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p0, v2}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 2
    invoke-static {p0}, Lcom/byazt/aas/pf;->i(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p0, v3}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    if-ne p2, v0, :cond_0

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 7
    :goto_0
    invoke-static {p0}, Lcom/byazt/aas/pf;->da(Landroid/content/Context;)F

    move-result v3

    invoke-static {p0, v3}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    move-result p0

    .line 8
    invoke-static {}, Lcom/byazt/aas/pf;->tt()Z

    move-result v3

    if-nez v3, :cond_1

    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float p1, p1, v3

    if-eqz p1, :cond_4

    :cond_1
    if-eq p2, v0, :cond_2

    int-to-float p0, p0

    sub-float/2addr v2, p0

    goto :goto_1

    :cond_2
    const-string p1, "device_info_new"

    .line 9
    invoke-static {p1}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/dna/u;

    invoke-interface {p1}, Lcom/byazt/dna/u;->getDeviceModel()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SM-A207F"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    mul-int/lit8 p0, p0, 0x2

    :cond_3
    int-to-float p0, p0

    sub-float/2addr v4, p0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    aput v4, v1, p0

    const/4 p0, 0x1

    aput v2, v1, p0

    return-object v1
.end method

.method public static c(Landroid/content/Context;FFI)[I
    .locals 8

    .line 10
    invoke-static {p0, p1, p3}, Lcom/byazt/biq/tt;->c(Landroid/content/Context;FI)[F

    move-result-object p0

    const/4 v0, 0x0

    .line 11
    aget v1, p0, v0

    const/4 v2, 0x1

    .line 12
    aget p0, p0, v2

    const/4 v3, 0x4

    new-array v3, v3, [I

    .line 13
    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float v4, v4, p2

    float-to-int p2, v4

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x2

    if-eq p3, v6, :cond_0

    int-to-float p3, p2

    sub-float/2addr v1, p3

    sub-float/2addr v1, p3

    div-float/2addr v1, p1

    sub-float/2addr p0, v1

    div-float/2addr p0, v5

    .line 14
    invoke-static {p0, v4}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    goto :goto_0

    :cond_0
    int-to-float p3, p2

    sub-float/2addr p0, p3

    sub-float/2addr p0, p3

    mul-float p0, p0, p1

    sub-float/2addr v1, p0

    div-float/2addr v1, v5

    .line 15
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    move v7, p2

    move p2, p0

    move p0, v7

    :goto_0
    aput p2, v3, v0

    aput p0, v3, v2

    aput p2, v3, v6

    const/4 p1, 0x3

    aput p0, v3, p1

    return-object v3
.end method

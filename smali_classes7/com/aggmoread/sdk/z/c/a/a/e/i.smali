.class public final Lcom/aggmoread/sdk/z/c/a/a/e/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(II)I
    .locals 2

    .line 1
    if-lt p0, p1, :cond_0

    return p1

    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sub-int/2addr p1, p0

    const/4 v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, p0

    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "AMGTAG"

    const-string v1, "ni %s"

    invoke-static {v0, v1, p0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public static a(D)Z
    .locals 7

    .line 2
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmpl-double v3, p0, v0

    if-lez v3, :cond_0

    const/16 v0, 0x2710

    invoke-static {v2, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/i;->a(II)I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "AMGTAG"

    const-string v5, "rn %s, v %s"

    invoke-static {v3, v5, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    int-to-double v0, v0

    const-wide v5, 0x40c3880000000000L    # 10000.0

    mul-double p0, p0, v5

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    cmpg-double v3, v0, p0

    if-gtz v3, :cond_0

    return v4

    :cond_0
    return v2
.end method

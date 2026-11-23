.class public Lcom/googlecode/mp4parser/util/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(II)I
    .locals 1

    .line 1
    :goto_0
    move v0, p1

    .line 2
    move p1, p0

    .line 3
    move p0, v0

    .line 4
    if-gtz p0, :cond_0

    .line 5
    .line 6
    return p1

    .line 7
    :cond_0
    rem-int/2addr p1, p0

    .line 8
    goto :goto_0
.end method

.method public static b(JJ)J
    .locals 5

    .line 1
    :goto_0
    move-wide v3, p0

    .line 2
    move-wide p0, p2

    .line 3
    move-wide p2, v3

    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v2, p0, v0

    .line 7
    .line 8
    if-gtz v2, :cond_0

    .line 9
    .line 10
    return-wide p2

    .line 11
    :cond_0
    rem-long/2addr p2, p0

    .line 12
    goto :goto_0
.end method

.method public static c(II)I
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/googlecode/mp4parser/util/k;->a(II)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-int/2addr p1, v0

    .line 6
    mul-int p0, p0, p1

    .line 7
    .line 8
    return p0
.end method

.method public static d(JJ)J
    .locals 2

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/googlecode/mp4parser/util/k;->b(JJ)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    div-long/2addr p2, v0

    .line 6
    mul-long p0, p0, p2

    .line 7
    .line 8
    return-wide p0
.end method

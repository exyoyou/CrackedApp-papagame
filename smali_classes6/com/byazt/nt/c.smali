.class public Lcom/byazt/nt/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x570,
        0x14
    }
.end annotation


# direct methods
.method public static c(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/byazt/nt/tt$c;->c(Ljava/lang/String;II)V

    return-void
.end method

.method public static c(Ljava/lang/String;JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const-wide/16 v0, 0x64

    mul-long p3, p3, v0

    .line 2
    div-long/2addr p3, p1

    long-to-int p1, p3

    const/4 p2, 0x3

    .line 3
    invoke-static {p0, p2, p1}, Lcom/byazt/nt/tt$c;->c(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public static tt(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x5

    const/16 v1, 0x64

    .line 3
    invoke-static {p0, v0, v1}, Lcom/byazt/nt/tt$c;->c(Ljava/lang/String;II)V

    return-void
.end method

.method public static tt(Ljava/lang/String;JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const-wide/16 v0, 0x64

    mul-long p3, p3, v0

    .line 1
    div-long/2addr p3, p1

    long-to-int p1, p3

    const/4 p2, 0x2

    .line 2
    invoke-static {p0, p2, p1}, Lcom/byazt/nt/tt$c;->c(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public static ve(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x6

    const/16 v1, 0x64

    .line 3
    invoke-static {p0, v0, v1}, Lcom/byazt/nt/tt$c;->c(Ljava/lang/String;II)V

    return-void
.end method

.method public static ve(Ljava/lang/String;JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const-wide/16 v0, 0x64

    mul-long p3, p3, v0

    .line 1
    div-long/2addr p3, p1

    long-to-int p1, p3

    const/4 p2, 0x4

    .line 2
    invoke-static {p0, p2, p1}, Lcom/byazt/nt/tt$c;->c(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

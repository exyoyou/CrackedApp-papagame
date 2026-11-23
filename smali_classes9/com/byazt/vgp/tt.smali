.class public Lcom/byazt/vgp/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x6b1,
        0xd
    }
.end annotation


# direct methods
.method public static c(J)Z
    .locals 2

    .line 2
    sget-object v0, Lcom/byazt/vgp/c;->tt:Lcom/byazt/vgp/c;

    invoke-virtual {v0}, Lcom/byazt/vgp/c;->c()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/byazt/vgp/tt;->c(JJ)Z

    move-result p0

    return p0
.end method

.method public static c(JJ)Z
    .locals 1

    .line 1
    and-long/2addr p0, p2

    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static tt(J)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/vgp/c;->ve:Lcom/byazt/vgp/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/vgp/c;->c()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {p0, p1, v0, v1}, Lcom/byazt/vgp/tt;->c(JJ)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

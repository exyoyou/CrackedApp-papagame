.class public Lcom/byazt/f/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3b9,
        0x2e
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/byazt/f/n;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:J

.field public tt:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/byazt/f/n;->c:J

    .line 5
    .line 6
    return-void
.end method

.method public static c(J)J
    .locals 9

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long/2addr p0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    long-to-double p0, p0

    mul-double p0, p0, v2

    const-wide/high16 v2, 0x41f0000000000000L    # 4.294967296E9

    div-double/2addr p0, v2

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    const-wide v2, 0x80000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3e8

    cmp-long v8, v2, v4

    if-nez v8, :cond_0

    const-wide v2, 0x1e5ae01dc00L

    :goto_0
    mul-long v0, v0, v6

    add-long/2addr v0, v2

    add-long/2addr v0, p0

    return-wide v0

    :cond_0
    const-wide v2, -0x20251fe2400L

    goto :goto_0
.end method

.method private static c(Ljava/lang/StringBuilder;J)V
    .locals 1

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    :goto_0
    const/16 v0, 0x8

    if-ge p2, v0, :cond_0

    const/16 v0, 0x30

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static tt(J)Lcom/byazt/f/n;
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/f/n;

    invoke-static {p0, p1}, Lcom/byazt/f/n;->ve(J)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lcom/byazt/f/n;-><init>(J)V

    return-object v0
.end method

.method public static uj()Lcom/byazt/f/n;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/byazt/f/n;->tt(J)Lcom/byazt/f/n;

    move-result-object v0

    return-object v0
.end method

.method public static uj(J)Ljava/lang/String;
    .locals 5

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x20

    ushr-long v1, p0, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 3
    invoke-static {v0, v1, v2}, Lcom/byazt/f/n;->c(Ljava/lang/StringBuilder;J)V

    const/16 v1, 0x2e

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-long/2addr p0, v3

    .line 5
    invoke-static {v0, p0, p1}, Lcom/byazt/f/n;->c(Ljava/lang/StringBuilder;J)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ve(J)J
    .locals 7

    const-wide v0, 0x1e5ae01dc00L

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const-wide v0, -0x20251fe2400L

    :cond_1
    sub-long/2addr p0, v0

    const-wide/16 v0, 0x3e8

    .line 3
    div-long v3, p0, v0

    .line 4
    rem-long/2addr p0, v0

    const-wide v5, 0x100000000L

    mul-long p0, p0, v5

    div-long/2addr p0, v0

    if-eqz v2, :cond_2

    const-wide v0, 0x80000000L

    or-long/2addr v3, v0

    :cond_2
    const/16 v0, 0x20

    shl-long v0, v3, v0

    or-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public c(Lcom/byazt/f/n;)I
    .locals 4

    .line 7
    iget-wide v0, p0, Lcom/byazt/f/n;->c:J

    .line 8
    iget-wide v2, p1, Lcom/byazt/f/n;->c:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/f/n;->c:J

    return-wide v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/f/n;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/byazt/f/n;->c(Lcom/byazt/f/n;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/byazt/f/n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-wide v2, p0, Lcom/byazt/f/n;->c:J

    .line 7
    .line 8
    check-cast p1, Lcom/byazt/f/n;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/byazt/f/n;->c()J

    .line 11
    .line 12
    .line 13
    move-result-wide v4

    .line 14
    cmp-long p1, v2, v4

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    return p1

    .line 20
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/byazt/f/n;->c:J

    .line 2
    .line 3
    const/16 v2, 0x20

    .line 4
    .line 5
    ushr-long v2, v0, v2

    .line 6
    .line 7
    xor-long/2addr v0, v2

    .line 8
    long-to-int v1, v0

    .line 9
    return v1
.end method

.method public n()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/f/n;->tt:Ljava/text/DateFormat;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 6
    .line 7
    const-string v1, "EEE, MMM dd yyyy HH:mm:ss.SSS"

    .line 8
    .line 9
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/byazt/f/n;->tt:Ljava/text/DateFormat;

    .line 15
    .line 16
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/f/n;->ve()Ljava/util/Date;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/byazt/f/n;->tt:Ljava/text/DateFormat;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/f/n;->c:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lcom/byazt/f/n;->uj(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public tt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/f/n;->c:J

    invoke-static {v0, v1}, Lcom/byazt/f/n;->c(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public ve()Ljava/util/Date;
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/byazt/f/n;->c:J

    invoke-static {v0, v1}, Lcom/byazt/f/n;->c(J)J

    move-result-wide v0

    .line 2
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

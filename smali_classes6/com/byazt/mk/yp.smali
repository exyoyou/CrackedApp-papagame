.class public final Lcom/byazt/mk/yp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/mk/n;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x287,
        0xd7
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/mk/ve;

.field public final tt:Lcom/byazt/mk/my;

.field public ve:Z


# direct methods
.method public constructor <init>(Lcom/byazt/mk/my;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/mk/ve;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/byazt/mk/ve;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iput-object p1, p0, Lcom/byazt/mk/yp;->tt:Lcom/byazt/mk/my;

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 17
    .line 18
    const-string v0, "source == null"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/mk/yp$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/byazt/mk/yp$1;-><init>(Lcom/byazt/mk/yp;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public c(B)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/byazt/mk/yp;->c(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(BJJ)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    iget-boolean v0, p0, Lcom/byazt/mk/yp;->ve:Z

    if-nez v0, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    cmp-long v0, p4, p2

    if-ltz v0, :cond_3

    :goto_0
    const-wide/16 v7, -0x1

    cmp-long v0, p2, p4

    if-gez v0, :cond_2

    .line 21
    iget-object v1, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/byazt/mk/ve;->c(BJJ)J

    move-result-wide v0

    cmp-long v2, v0, v7

    if-eqz v2, :cond_0

    return-wide v0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    iget-wide v1, v0, Lcom/byazt/mk/ve;->tt:J

    cmp-long v3, v1, p4

    if-gez v3, :cond_2

    .line 23
    iget-object v3, p0, Lcom/byazt/mk/yp;->tt:Lcom/byazt/mk/my;

    const-wide/16 v4, 0x2000

    invoke-interface {v3, v0, v4, v5}, Lcom/byazt/mk/my;->c(Lcom/byazt/mk/ve;J)J

    move-result-wide v3

    cmp-long v0, v3, v7

    if-nez v0, :cond_1

    goto :goto_1

    .line 24
    :cond_1
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v7

    .line 25
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 26
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "fromIndex=%s toIndex=%s"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lcom/byazt/mk/ve;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    .line 1
    iget-boolean v2, p0, Lcom/byazt/mk/yp;->ve:Z

    if-nez v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    iget-wide v3, v2, Lcom/byazt/mk/ve;->tt:J

    cmp-long v5, v3, v0

    if-nez v5, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/mk/yp;->tt:Lcom/byazt/mk/my;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Lcom/byazt/mk/my;->c(Lcom/byazt/mk/ve;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    iget-wide v0, v0, Lcom/byazt/mk/ve;->tt:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 5
    iget-object v0, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/mk/ve;->c(Lcom/byazt/mk/ve;J)J

    move-result-wide p1

    return-wide p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteCount < 0: "

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Lcom/byazt/mk/gt;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/byazt/mk/yp;->tt:Lcom/byazt/mk/my;

    invoke-interface {v0}, Lcom/byazt/mk/my;->c()Lcom/byazt/mk/gt;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 16
    iget-object v0, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    iget-object v1, p0, Lcom/byazt/mk/yp;->tt:Lcom/byazt/mk/my;

    invoke-virtual {v0, v1}, Lcom/byazt/mk/ve;->c(Lcom/byazt/mk/my;)J

    .line 17
    iget-object v0, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    invoke-virtual {v0, p1}, Lcom/byazt/mk/ve;->c(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "charset == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/byazt/mk/yp;->tt(J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public c([B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    :try_start_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/byazt/mk/yp;->c(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    iget-object v0, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    invoke-virtual {v0, p1}, Lcom/byazt/mk/ve;->c([B)V

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    iget-wide v3, v2, Lcom/byazt/mk/ve;->tt:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    long-to-int v4, v3

    .line 13
    invoke-virtual {v2, p1, v1, v4}, Lcom/byazt/mk/ve;->c([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_1
    throw v0
.end method

.method public c(JLcom/byazt/mk/a;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    .line 28
    invoke-virtual {p3}, Lcom/byazt/mk/a;->sp()I

    move-result v5

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/byazt/mk/yp;->c(JLcom/byazt/mk/a;II)Z

    move-result p1

    return p1
.end method

.method public c(JLcom/byazt/mk/a;II)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    iget-boolean v0, p0, Lcom/byazt/mk/yp;->ve:Z

    if-nez v0, :cond_5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-ltz v3, :cond_4

    if-ltz p4, :cond_4

    if-ltz p5, :cond_4

    .line 30
    invoke-virtual {p3}, Lcom/byazt/mk/a;->sp()I

    move-result v0

    sub-int/2addr v0, p4

    if-ge v0, p5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_3

    int-to-long v3, v0

    add-long/2addr v3, p1

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    .line 31
    invoke-virtual {p0, v5, v6}, Lcom/byazt/mk/yp;->tt(J)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    invoke-virtual {v1, v3, v4}, Lcom/byazt/mk/ve;->tt(J)B

    move-result v1

    add-int v3, p4, v0

    invoke-virtual {p3, v3}, Lcom/byazt/mk/a;->c(I)B

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v2

    .line 33
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/byazt/mk/yp;->ve:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/byazt/mk/yp;->ve:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/mk/yp;->tt:Lcom/byazt/mk/my;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/byazt/mk/my;->close()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/byazt/mk/ve;->rh()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public da()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x4

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/byazt/mk/yp;->c(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/mk/ve;->da()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public i()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x2

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/byazt/mk/yp;->c(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/mk/ve;->i()S

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/mk/yp;->ve:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/byazt/mk/yp;->n(J)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public n(J)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    const-wide/16 v0, 0x1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    add-long v4, p1, v0

    :goto_0
    const/16 v7, 0xa

    const-wide/16 v8, 0x0

    move-object v6, p0

    move-wide v10, v4

    .line 4
    invoke-virtual/range {v6 .. v11}, Lcom/byazt/mk/yp;->c(BJJ)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-eqz v10, :cond_1

    .line 5
    iget-object p1, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    invoke-virtual {p1, v6, v7}, Lcom/byazt/mk/ve;->a(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    cmp-long v6, v4, v2

    if-gez v6, :cond_2

    .line 6
    invoke-virtual {p0, v4, v5}, Lcom/byazt/mk/yp;->tt(J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    sub-long v6, v4, v0

    invoke-virtual {v2, v6, v7}, Lcom/byazt/mk/ve;->tt(J)B

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    add-long/2addr v0, v4

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/byazt/mk/yp;->tt(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    invoke-virtual {v0, v4, v5}, Lcom/byazt/mk/ve;->tt(J)B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    invoke-virtual {p1, v4, v5}, Lcom/byazt/mk/ve;->a(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    new-instance v6, Lcom/byazt/mk/ve;

    invoke-direct {v6}, Lcom/byazt/mk/ve;-><init>()V

    .line 10
    iget-object v0, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    invoke-virtual {v0}, Lcom/byazt/mk/ve;->tt()J

    move-result-wide v7

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/byazt/mk/ve;->c(Lcom/byazt/mk/ve;JJ)Lcom/byazt/mk/ve;

    .line 11
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\n not found: limit="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    invoke-virtual {v2}, Lcom/byazt/mk/ve;->tt()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v6}, Lcom/byazt/mk/ve;->yp()Lcom/byazt/mk/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/mk/a;->n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2026

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "limit < 0: "

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/byazt/mk/yp;->ve:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    invoke-virtual {v0}, Lcom/byazt/mk/ve;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/mk/yp;->tt:Lcom/byazt/mk/my;

    iget-object v1, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/byazt/mk/my;->c(Lcom/byazt/mk/ve;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nu()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/mk/yp;->tt:Lcom/byazt/mk/my;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/byazt/mk/ve;->c(Lcom/byazt/mk/my;)J

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/byazt/mk/ve;->nu()[B

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/byazt/mk/ve;->tt:J

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    cmp-long v5, v1, v3

    .line 8
    .line 9
    if-nez v5, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/byazt/mk/yp;->tt:Lcom/byazt/mk/my;

    .line 12
    .line 13
    const-wide/16 v2, 0x2000

    .line 14
    .line 15
    invoke-interface {v1, v0, v2, v3}, Lcom/byazt/mk/my;->c(Lcom/byazt/mk/ve;J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    const-wide/16 v2, -0x1

    .line 20
    .line 21
    cmp-long v4, v0, v2

    .line 22
    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    const/4 p1, -0x1

    .line 26
    return p1

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/byazt/mk/ve;->read(Ljava/nio/ByteBuffer;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method public sl()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x2

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/byazt/mk/yp;->c(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/mk/ve;->sl()S

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public sp(J)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/byazt/mk/yp;->c(J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/byazt/mk/ve;->sp(J)[B

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public t()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x4

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/byazt/mk/yp;->c(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/mk/ve;->t()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "buffer("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/mk/yp;->tt:Lcom/byazt/mk/my;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ")"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public tt(J)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_3

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/byazt/mk/yp;->ve:Z

    .line 8
    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    .line 12
    .line 13
    iget-wide v1, v0, Lcom/byazt/mk/ve;->tt:J

    .line 14
    .line 15
    cmp-long v3, v1, p1

    .line 16
    .line 17
    if-gez v3, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/byazt/mk/yp;->tt:Lcom/byazt/mk/my;

    .line 20
    .line 21
    const-wide/16 v2, 0x2000

    .line 22
    .line 23
    invoke-interface {v1, v0, v2, v3}, Lcom/byazt/mk/my;->c(Lcom/byazt/mk/ve;J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    const-wide/16 v2, -0x1

    .line 28
    .line 29
    cmp-long v4, v0, v2

    .line 30
    .line 31
    if-nez v4, :cond_0

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    return p1

    .line 35
    :cond_1
    const/4 p1, 0x1

    .line 36
    return p1

    .line 37
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string p2, "closed"

    .line 40
    .line 41
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    const-string v1, "byteCount < 0: "

    .line 48
    .line 49
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0
.end method

.method public u()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/byazt/mk/yp;->c(J)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 9
    .line 10
    int-to-long v3, v2

    .line 11
    invoke-virtual {p0, v3, v4}, Lcom/byazt/mk/yp;->tt(J)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_5

    .line 16
    .line 17
    iget-object v3, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    .line 18
    .line 19
    int-to-long v4, v1

    .line 20
    invoke-virtual {v3, v4, v5}, Lcom/byazt/mk/ve;->tt(J)B

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/16 v4, 0x30

    .line 25
    .line 26
    if-lt v3, v4, :cond_0

    .line 27
    .line 28
    const/16 v4, 0x39

    .line 29
    .line 30
    if-le v3, v4, :cond_2

    .line 31
    .line 32
    :cond_0
    const/16 v4, 0x61

    .line 33
    .line 34
    if-lt v3, v4, :cond_1

    .line 35
    .line 36
    const/16 v4, 0x66

    .line 37
    .line 38
    if-le v3, v4, :cond_2

    .line 39
    .line 40
    :cond_1
    const/16 v4, 0x41

    .line 41
    .line 42
    if-lt v3, v4, :cond_3

    .line 43
    .line 44
    const/16 v4, 0x46

    .line 45
    .line 46
    if-le v3, v4, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move v1, v2

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_4
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    new-array v2, v2, [Ljava/lang/Object;

    .line 58
    .line 59
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    aput-object v3, v2, v0

    .line 64
    .line 65
    const-string v0, "Expected leading [0-9a-fA-F] character but was %#x"

    .line 66
    .line 67
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v1

    .line 75
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/byazt/mk/ve;->u()J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    return-wide v0
.end method

.method public ve(J)Lcom/byazt/mk/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/byazt/mk/yp;->c(J)V

    .line 3
    iget-object v0, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/mk/ve;->ve(J)Lcom/byazt/mk/a;

    move-result-object p1

    return-object p1
.end method

.method public ve()Lcom/byazt/mk/ve;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    return-object v0
.end method

.method public x()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/byazt/mk/yp;->c(J)V

    .line 2
    iget-object v0, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    invoke-virtual {v0}, Lcom/byazt/mk/ve;->x()B

    move-result v0

    return v0
.end method

.method public x(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-boolean v0, p0, Lcom/byazt/mk/yp;->ve:Z

    if-nez v0, :cond_3

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 4
    iget-object v2, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    iget-wide v3, v2, Lcom/byazt/mk/ve;->tt:J

    cmp-long v5, v3, v0

    if-nez v5, :cond_1

    iget-object v0, p0, Lcom/byazt/mk/yp;->tt:Lcom/byazt/mk/my;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Lcom/byazt/mk/my;->c(Lcom/byazt/mk/ve;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    invoke-virtual {v0}, Lcom/byazt/mk/ve;->tt()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/byazt/mk/yp;->c:Lcom/byazt/mk/ve;

    invoke-virtual {v2, v0, v1}, Lcom/byazt/mk/ve;->x(J)V

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_2
    return-void

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

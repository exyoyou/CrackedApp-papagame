.class public final Lcom/byazt/mk/sl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/mk/my;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x287,
        0x9e
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/mk/n;

.field public final tt:Ljava/util/zip/Inflater;

.field public uj:Z

.field public ve:I


# direct methods
.method public constructor <init>(Lcom/byazt/mk/n;Ljava/util/zip/Inflater;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Lcom/byazt/mk/sl;->c:Lcom/byazt/mk/n;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/byazt/mk/sl;->tt:Ljava/util/zip/Inflater;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string p2, "inflater == null"

    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string p2, "source == null"

    .line 24
    .line 25
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method private ve()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/byazt/mk/sl;->ve:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/byazt/mk/sl;->tt:Ljava/util/zip/Inflater;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    sub-int/2addr v0, v1

    .line 13
    iget v1, p0, Lcom/byazt/mk/sl;->ve:I

    .line 14
    .line 15
    sub-int/2addr v1, v0

    .line 16
    iput v1, p0, Lcom/byazt/mk/sl;->ve:I

    .line 17
    .line 18
    iget-object v1, p0, Lcom/byazt/mk/sl;->c:Lcom/byazt/mk/n;

    .line 19
    .line 20
    int-to-long v2, v0

    .line 21
    invoke-interface {v1, v2, v3}, Lcom/byazt/mk/n;->x(J)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/mk/ve;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_7

    .line 1
    iget-boolean v3, p0, Lcom/byazt/mk/sl;->uj:Z

    if-nez v3, :cond_6

    if-nez v2, :cond_0

    return-wide v0

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/byazt/mk/sl;->tt()Z

    move-result v0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/byazt/mk/ve;->n(I)Lcom/byazt/mk/z;

    move-result-object v1

    .line 4
    iget v2, v1, Lcom/byazt/mk/z;->ve:I

    rsub-int v2, v2, 0x2000

    int-to-long v2, v2

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    .line 5
    iget-object v2, p0, Lcom/byazt/mk/sl;->tt:Ljava/util/zip/Inflater;

    iget-object v4, v1, Lcom/byazt/mk/z;->c:[B

    iget v5, v1, Lcom/byazt/mk/z;->ve:I

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v2

    if-lez v2, :cond_1

    .line 6
    iget p2, v1, Lcom/byazt/mk/z;->ve:I

    add-int/2addr p2, v2

    iput p2, v1, Lcom/byazt/mk/z;->ve:I

    .line 7
    iget-wide p2, p1, Lcom/byazt/mk/ve;->tt:J

    int-to-long v0, v2

    add-long/2addr p2, v0

    iput-wide p2, p1, Lcom/byazt/mk/ve;->tt:J

    return-wide v0

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/byazt/mk/sl;->tt:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/byazt/mk/sl;->tt:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "source exhausted prematurely"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/byazt/mk/sl;->ve()V

    .line 11
    iget p2, v1, Lcom/byazt/mk/z;->tt:I

    iget p3, v1, Lcom/byazt/mk/z;->ve:I

    if-ne p2, p3, :cond_5

    .line 12
    invoke-virtual {v1}, Lcom/byazt/mk/z;->tt()Lcom/byazt/mk/z;

    move-result-object p2

    iput-object p2, p1, Lcom/byazt/mk/ve;->c:Lcom/byazt/mk/z;

    .line 13
    invoke-static {v1}, Lcom/byazt/mk/m;->c(Lcom/byazt/mk/z;)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    const-wide/16 p1, -0x1

    return-wide p1

    :catch_0
    move-exception p1

    .line 14
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 15
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteCount < 0: "

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Lcom/byazt/mk/gt;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/byazt/mk/sl;->c:Lcom/byazt/mk/n;

    invoke-interface {v0}, Lcom/byazt/mk/my;->c()Lcom/byazt/mk/gt;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/byazt/mk/sl;->uj:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/mk/sl;->tt:Ljava/util/zip/Inflater;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/byazt/mk/sl;->uj:Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/mk/sl;->c:Lcom/byazt/mk/n;

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/byazt/mk/my;->close()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final tt()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/mk/sl;->tt:Ljava/util/zip/Inflater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/byazt/mk/sl;->ve()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/mk/sl;->tt:Ljava/util/zip/Inflater;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/mk/sl;->c:Lcom/byazt/mk/n;

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/byazt/mk/n;->n()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    return v0

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/byazt/mk/sl;->c:Lcom/byazt/mk/n;

    .line 33
    .line 34
    invoke-interface {v0}, Lcom/byazt/mk/n;->ve()Lcom/byazt/mk/ve;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v0, v0, Lcom/byazt/mk/ve;->c:Lcom/byazt/mk/z;

    .line 39
    .line 40
    iget v2, v0, Lcom/byazt/mk/z;->ve:I

    .line 41
    .line 42
    iget v3, v0, Lcom/byazt/mk/z;->tt:I

    .line 43
    .line 44
    sub-int/2addr v2, v3

    .line 45
    iput v2, p0, Lcom/byazt/mk/sl;->ve:I

    .line 46
    .line 47
    iget-object v4, p0, Lcom/byazt/mk/sl;->tt:Ljava/util/zip/Inflater;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/byazt/mk/z;->c:[B

    .line 50
    .line 51
    invoke-virtual {v4, v0, v3, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 52
    .line 53
    .line 54
    return v1

    .line 55
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string v1, "?"

    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0
.end method

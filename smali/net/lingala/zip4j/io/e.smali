.class public Lnet/lingala/zip4j/io/e;
.super Lnet/lingala/zip4j/io/f;
.source "SourceFile"


# instance fields
.field private l:Ljava/util/zip/Inflater;

.field private m:[B

.field private n:[B

.field private o:Lnet/lingala/zip4j/unzip/d;

.field private p:J

.field private q:J


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;JJLnet/lingala/zip4j/unzip/d;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lnet/lingala/zip4j/io/f;-><init>(Ljava/io/RandomAccessFile;JJLnet/lingala/zip4j/unzip/d;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    new-array p2, p1, [B

    .line 6
    .line 7
    iput-object p2, p0, Lnet/lingala/zip4j/io/e;->n:[B

    .line 8
    .line 9
    new-instance p2, Ljava/util/zip/Inflater;

    .line 10
    .line 11
    invoke-direct {p2, p1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lnet/lingala/zip4j/io/e;->l:Ljava/util/zip/Inflater;

    .line 15
    .line 16
    const/16 p1, 0x1000

    .line 17
    .line 18
    new-array p1, p1, [B

    .line 19
    .line 20
    iput-object p1, p0, Lnet/lingala/zip4j/io/e;->m:[B

    .line 21
    .line 22
    iput-object p6, p0, Lnet/lingala/zip4j/io/e;->o:Lnet/lingala/zip4j/unzip/d;

    .line 23
    .line 24
    const-wide/16 p1, 0x0

    .line 25
    .line 26
    iput-wide p1, p0, Lnet/lingala/zip4j/io/e;->p:J

    .line 27
    .line 28
    invoke-virtual {p6}, Lnet/lingala/zip4j/unzip/d;->j()Lpc/h;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lpc/h;->x()J

    .line 33
    .line 34
    .line 35
    move-result-wide p1

    .line 36
    iput-wide p1, p0, Lnet/lingala/zip4j/io/e;->q:J

    .line 37
    .line 38
    return-void
.end method

.method private e()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/e;->m:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-super {p0, v0, v2, v1}, Lnet/lingala/zip4j/io/f;->read([BII)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lnet/lingala/zip4j/io/e;->l:Ljava/util/zip/Inflater;

    .line 13
    .line 14
    iget-object v3, p0, Lnet/lingala/zip4j/io/e;->m:[B

    .line 15
    .line 16
    invoke-virtual {v1, v3, v2, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    .line 21
    .line 22
    const-string v1, "Unexpected end of ZLIB input stream"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method private f()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x400

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    :cond_0
    const/4 v2, 0x0

    .line 6
    invoke-super {p0, v1, v2, v0}, Lnet/lingala/zip4j/io/f;->read([BII)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, -0x1

    .line 11
    if-ne v2, v3, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/f;->d()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/e;->l:Ljava/util/zip/Inflater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method

.method public b()Lnet/lingala/zip4j/unzip/d;
    .locals 1

    .line 1
    invoke-super {p0}, Lnet/lingala/zip4j/io/f;->b()Lnet/lingala/zip4j/unzip/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
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
    iget-object v0, p0, Lnet/lingala/zip4j/io/e;->l:Ljava/util/zip/Inflater;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lnet/lingala/zip4j/io/f;->close()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/e;->n:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lnet/lingala/zip4j/io/e;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/e;->n:[B

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/e;->read([BII)I

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "input buffer is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_8

    if-ltz p2, :cond_7

    if-ltz p3, :cond_7

    .line 4
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_7

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lnet/lingala/zip4j/io/e;->p:J

    iget-wide v2, p0, Lnet/lingala/zip4j/io/e;->q:J

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-ltz v5, :cond_1

    .line 6
    invoke-direct {p0}, Lnet/lingala/zip4j/io/e;->f()V

    return v4

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/e;->l:Ljava/util/zip/Inflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-wide p1, p0, Lnet/lingala/zip4j/io/e;->p:J

    int-to-long v1, v0

    add-long/2addr p1, v1

    iput-wide p1, p0, Lnet/lingala/zip4j/io/e;->p:J

    return v0

    .line 9
    :cond_2
    iget-object v0, p0, Lnet/lingala/zip4j/io/e;->l:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/lingala/zip4j/io/e;->l:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    iget-object v0, p0, Lnet/lingala/zip4j/io/e;->l:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-direct {p0}, Lnet/lingala/zip4j/io/e;->e()V

    goto :goto_0

    .line 12
    :cond_4
    :goto_1
    invoke-direct {p0}, Lnet/lingala/zip4j/io/e;->f()V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    const-string p1, "Invalid ZLIB data format"

    .line 15
    :goto_2
    iget-object p2, p0, Lnet/lingala/zip4j/io/e;->o:Lnet/lingala/zip4j/unzip/d;

    if-eqz p2, :cond_6

    .line 16
    invoke-virtual {p2}, Lnet/lingala/zip4j/unzip/d;->l()Lpc/i;

    move-result-object p2

    invoke-virtual {p2}, Lpc/i;->u()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 17
    iget-object p2, p0, Lnet/lingala/zip4j/io/e;->o:Lnet/lingala/zip4j/unzip/d;

    invoke-virtual {p2}, Lnet/lingala/zip4j/unzip/d;->l()Lpc/i;

    move-result-object p2

    invoke-virtual {p2}, Lpc/i;->f()I

    move-result p2

    if-nez p2, :cond_6

    .line 18
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p1, " - Wrong Password?"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    :cond_6
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 20
    :cond_7
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 21
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "input buffer is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public seek(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lnet/lingala/zip4j/io/f;->seek(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public skip(J)J
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
    const-wide/32 v0, 0x7fffffff

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    long-to-int p2, p1

    .line 15
    const/16 p1, 0x200

    .line 16
    .line 17
    new-array v0, p1, [B

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-lt v2, p2, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    sub-int v3, p2, v2

    .line 25
    .line 26
    if-le v3, p1, :cond_1

    .line 27
    .line 28
    const/16 v3, 0x200

    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0, v0, v1, v3}, Lnet/lingala/zip4j/io/e;->read([BII)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v4, -0x1

    .line 35
    if-ne v3, v4, :cond_2

    .line 36
    .line 37
    :goto_1
    int-to-long p1, v2

    .line 38
    return-wide p1

    .line 39
    :cond_2
    add-int/2addr v2, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string p2, "negative skip length"

    .line 44
    .line 45
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1
.end method

.class public Lnet/lingala/zip4j/io/d;
.super Lnet/lingala/zip4j/io/c;
.source "SourceFile"


# instance fields
.field private o:[B

.field protected p:Ljava/util/zip/Deflater;

.field private q:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lpc/o;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/io/c;-><init>(Ljava/io/OutputStream;Lpc/o;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/zip/Deflater;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/zip/Deflater;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lnet/lingala/zip4j/io/d;->p:Ljava/util/zip/Deflater;

    .line 10
    .line 11
    const/16 p1, 0x1000

    .line 12
    .line 13
    new-array p1, p1, [B

    .line 14
    .line 15
    iput-object p1, p0, Lnet/lingala/zip4j/io/d;->o:[B

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lnet/lingala/zip4j/io/d;->q:Z

    .line 19
    .line 20
    return-void
.end method

.method private v()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/d;->p:Ljava/util/zip/Deflater;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/lingala/zip4j/io/d;->o:[B

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_4

    .line 12
    .line 13
    iget-object v1, p0, Lnet/lingala/zip4j/io/d;->p:Ljava/util/zip/Deflater;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finished()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    if-ge v0, v1, :cond_1

    .line 26
    .line 27
    sub-int/2addr v1, v0

    .line 28
    invoke-virtual {p0, v1}, Lnet/lingala/zip4j/io/c;->f(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    add-int/lit8 v0, v0, -0x4

    .line 33
    .line 34
    :cond_2
    iget-boolean v1, p0, Lnet/lingala/zip4j/io/d;->q:Z

    .line 35
    .line 36
    if-nez v1, :cond_3

    .line 37
    .line 38
    iget-object v1, p0, Lnet/lingala/zip4j/io/d;->o:[B

    .line 39
    .line 40
    const/4 v2, 0x2

    .line 41
    sub-int/2addr v0, v2

    .line 42
    invoke-super {p0, v1, v2, v0}, Lnet/lingala/zip4j/io/c;->write([BII)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/d;->q:Z

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    iget-object v1, p0, Lnet/lingala/zip4j/io/d;->o:[B

    .line 50
    .line 51
    invoke-super {p0, v1, v3, v0}, Lnet/lingala/zip4j/io/c;->write([BII)V

    .line 52
    .line 53
    .line 54
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Lpc/p;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-ne v0, v1, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lnet/lingala/zip4j/io/d;->p:Ljava/util/zip/Deflater;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lnet/lingala/zip4j/io/d;->p:Ljava/util/zip/Deflater;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/d;->p:Ljava/util/zip/Deflater;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    invoke-direct {p0}, Lnet/lingala/zip4j/io/d;->v()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/d;->q:Z

    .line 39
    .line 40
    :cond_2
    invoke-super {p0}, Lnet/lingala/zip4j/io/c;->b()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public h()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lnet/lingala/zip4j/io/c;->h()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public q(Ljava/io/File;Lpc/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lnet/lingala/zip4j/io/c;->q(Ljava/io/File;Lpc/p;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lpc/p;->d()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    if-ne p1, v0, :cond_3

    .line 11
    .line 12
    iget-object p1, p0, Lnet/lingala/zip4j/io/d;->p:Ljava/util/zip/Deflater;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/util/zip/Deflater;->reset()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lpc/p;->b()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-ltz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2}, Lpc/p;->b()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/16 v0, 0x9

    .line 28
    .line 29
    if-le p1, v0, :cond_1

    .line 30
    .line 31
    :cond_0
    invoke-virtual {p2}, Lpc/p;->b()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/4 v0, -0x1

    .line 36
    if-ne p1, v0, :cond_2

    .line 37
    .line 38
    :cond_1
    iget-object p1, p0, Lnet/lingala/zip4j/io/d;->p:Ljava/util/zip/Deflater;

    .line 39
    .line 40
    invoke-virtual {p2}, Lpc/p;->b()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    invoke-virtual {p1, p2}, Ljava/util/zip/Deflater;->setLevel(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 49
    .line 50
    const-string p2, "invalid compression level for deflater. compression level should be in the range of 0-9"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_3
    :goto_0
    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 2
    invoke-virtual {p0, v1, v2, v0}, Lnet/lingala/zip4j/io/d;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/io/d;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->g:Lpc/p;

    invoke-virtual {v0}, Lpc/p;->d()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/c;->write([BII)V

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/d;->p:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 6
    :goto_0
    iget-object p1, p0, Lnet/lingala/zip4j/io/d;->p:Ljava/util/zip/Deflater;

    invoke-virtual {p1}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_1
    return-void

    .line 7
    :cond_1
    invoke-direct {p0}, Lnet/lingala/zip4j/io/d;->v()V

    goto :goto_0
.end method

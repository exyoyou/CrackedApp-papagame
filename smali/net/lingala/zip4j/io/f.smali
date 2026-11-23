.class public Lnet/lingala/zip4j/io/f;
.super Lnet/lingala/zip4j/io/a;
.source "SourceFile"


# instance fields
.field private b:Ljava/io/RandomAccessFile;

.field private c:J

.field private d:J

.field private e:Lnet/lingala/zip4j/unzip/d;

.field private f:Lnet/lingala/zip4j/crypto/c;

.field private g:[B

.field private h:[B

.field private i:I

.field private j:Z

.field private k:I


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;JJLnet/lingala/zip4j/unzip/d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnet/lingala/zip4j/io/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x1

    .line 5
    new-array p3, p2, [B

    .line 6
    .line 7
    iput-object p3, p0, Lnet/lingala/zip4j/io/f;->g:[B

    .line 8
    .line 9
    const/16 p3, 0x10

    .line 10
    .line 11
    new-array p3, p3, [B

    .line 12
    .line 13
    iput-object p3, p0, Lnet/lingala/zip4j/io/f;->h:[B

    .line 14
    .line 15
    const/4 p3, 0x0

    .line 16
    iput p3, p0, Lnet/lingala/zip4j/io/f;->i:I

    .line 17
    .line 18
    iput-boolean p3, p0, Lnet/lingala/zip4j/io/f;->j:Z

    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lnet/lingala/zip4j/io/f;->k:I

    .line 22
    .line 23
    iput-object p1, p0, Lnet/lingala/zip4j/io/f;->b:Ljava/io/RandomAccessFile;

    .line 24
    .line 25
    iput-object p6, p0, Lnet/lingala/zip4j/io/f;->e:Lnet/lingala/zip4j/unzip/d;

    .line 26
    .line 27
    invoke-virtual {p6}, Lnet/lingala/zip4j/unzip/d;->i()Lnet/lingala/zip4j/crypto/c;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lnet/lingala/zip4j/io/f;->f:Lnet/lingala/zip4j/crypto/c;

    .line 32
    .line 33
    const-wide/16 v0, 0x0

    .line 34
    .line 35
    iput-wide v0, p0, Lnet/lingala/zip4j/io/f;->c:J

    .line 36
    .line 37
    iput-wide p4, p0, Lnet/lingala/zip4j/io/f;->d:J

    .line 38
    .line 39
    invoke-virtual {p6}, Lnet/lingala/zip4j/unzip/d;->j()Lpc/h;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lpc/h;->D()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    invoke-virtual {p6}, Lnet/lingala/zip4j/unzip/d;->j()Lpc/h;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lpc/h;->j()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    const/16 p4, 0x63

    .line 58
    .line 59
    if-ne p1, p4, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 p2, 0x0

    .line 63
    :goto_0
    iput-boolean p2, p0, Lnet/lingala/zip4j/io/f;->j:Z

    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public available()I
    .locals 5

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/io/f;->d:J

    .line 2
    .line 3
    iget-wide v2, p0, Lnet/lingala/zip4j/io/f;->c:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    const-wide/32 v2, 0x7fffffff

    .line 7
    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-lez v4, :cond_0

    .line 12
    .line 13
    const v0, 0x7fffffff

    .line 14
    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    long-to-int v1, v0

    .line 18
    return v1
.end method

.method public b()Lnet/lingala/zip4j/unzip/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/f;->e:Lnet/lingala/zip4j/unzip/d;

    .line 2
    .line 3
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
    iget-object v0, p0, Lnet/lingala/zip4j/io/f;->b:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected d()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnet/lingala/zip4j/io/f;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lnet/lingala/zip4j/io/f;->f:Lnet/lingala/zip4j/crypto/c;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    instance-of v1, v0, Lnet/lingala/zip4j/crypto/a;

    .line 10
    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    check-cast v0, Lnet/lingala/zip4j/crypto/a;

    .line 14
    .line 15
    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/a;->g()[B

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/16 v0, 0xa

    .line 23
    .line 24
    new-array v1, v0, [B

    .line 25
    .line 26
    iget-object v2, p0, Lnet/lingala/zip4j/io/f;->b:Ljava/io/RandomAccessFile;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eq v2, v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lnet/lingala/zip4j/io/f;->e:Lnet/lingala/zip4j/unzip/d;

    .line 35
    .line 36
    invoke-virtual {v0}, Lnet/lingala/zip4j/unzip/d;->p()Lpc/o;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lpc/o;->p()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Lnet/lingala/zip4j/io/f;->b:Ljava/io/RandomAccessFile;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lnet/lingala/zip4j/io/f;->e:Lnet/lingala/zip4j/unzip/d;

    .line 52
    .line 53
    invoke-virtual {v0}, Lnet/lingala/zip4j/unzip/d;->s()Ljava/io/RandomAccessFile;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lnet/lingala/zip4j/io/f;->b:Ljava/io/RandomAccessFile;

    .line 58
    .line 59
    rsub-int/lit8 v3, v2, 0xa

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 66
    .line 67
    const-string v1, "Error occured while reading stored AES authentication bytes"

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :cond_2
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/f;->e:Lnet/lingala/zip4j/unzip/d;

    .line 74
    .line 75
    invoke-virtual {v0}, Lnet/lingala/zip4j/unzip/d;->i()Lnet/lingala/zip4j/crypto/c;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Lnet/lingala/zip4j/crypto/a;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/crypto/a;->i([B)V

    .line 82
    .line 83
    .line 84
    :cond_3
    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/io/f;->c:J

    iget-wide v2, p0, Lnet/lingala/zip4j/io/f;->d:J

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-ltz v5, :cond_0

    return v4

    .line 2
    :cond_0
    iget-boolean v0, p0, Lnet/lingala/zip4j/io/f;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 3
    iget v0, p0, Lnet/lingala/zip4j/io/f;->i:I

    if-eqz v0, :cond_1

    const/16 v2, 0x10

    if-ne v0, v2, :cond_3

    .line 4
    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/io/f;->h:[B

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/f;->read([B)I

    move-result v0

    if-ne v0, v4, :cond_2

    return v4

    .line 5
    :cond_2
    iput v1, p0, Lnet/lingala/zip4j/io/f;->i:I

    .line 6
    :cond_3
    iget-object v0, p0, Lnet/lingala/zip4j/io/f;->h:[B

    iget v1, p0, Lnet/lingala/zip4j/io/f;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/lingala/zip4j/io/f;->i:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 7
    :cond_4
    iget-object v0, p0, Lnet/lingala/zip4j/io/f;->g:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lnet/lingala/zip4j/io/f;->read([BII)I

    move-result v0

    if-ne v0, v4, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lnet/lingala/zip4j/io/f;->g:[B

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    :goto_0
    return v4
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/io/f;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p3

    .line 9
    iget-wide v2, p0, Lnet/lingala/zip4j/io/f;->d:J

    iget-wide v4, p0, Lnet/lingala/zip4j/io/f;->c:J

    sub-long v6, v2, v4

    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    sub-long/2addr v2, v4

    long-to-int p3, v2

    if-nez p3, :cond_0

    .line 10
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/f;->d()V

    const/4 p1, -0x1

    return p1

    .line 11
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/f;->e:Lnet/lingala/zip4j/unzip/d;

    invoke-virtual {v0}, Lnet/lingala/zip4j/unzip/d;->i()Lnet/lingala/zip4j/crypto/c;

    move-result-object v0

    instance-of v0, v0, Lnet/lingala/zip4j/crypto/a;

    if-eqz v0, :cond_1

    .line 12
    iget-wide v0, p0, Lnet/lingala/zip4j/io/f;->c:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget-wide v2, p0, Lnet/lingala/zip4j/io/f;->d:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 13
    rem-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_1

    sub-int/2addr p3, v0

    .line 14
    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/io/f;->b:Ljava/io/RandomAccessFile;

    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lnet/lingala/zip4j/io/f;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    iput v1, p0, Lnet/lingala/zip4j/io/f;->k:I

    if-ge v1, p3, :cond_3

    .line 16
    iget-object v1, p0, Lnet/lingala/zip4j/io/f;->e:Lnet/lingala/zip4j/unzip/d;

    invoke-virtual {v1}, Lnet/lingala/zip4j/unzip/d;->p()Lpc/o;

    move-result-object v1

    invoke-virtual {v1}, Lpc/o;->p()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    iget-object v1, p0, Lnet/lingala/zip4j/io/f;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 18
    iget-object v1, p0, Lnet/lingala/zip4j/io/f;->e:Lnet/lingala/zip4j/unzip/d;

    invoke-virtual {v1}, Lnet/lingala/zip4j/unzip/d;->s()Ljava/io/RandomAccessFile;

    move-result-object v1

    iput-object v1, p0, Lnet/lingala/zip4j/io/f;->b:Ljava/io/RandomAccessFile;

    .line 19
    iget v2, p0, Lnet/lingala/zip4j/io/f;->k:I

    if-gez v2, :cond_2

    const/4 v2, 0x0

    iput v2, p0, Lnet/lingala/zip4j/io/f;->k:I

    .line 20
    :cond_2
    iget v2, p0, Lnet/lingala/zip4j/io/f;->k:I

    sub-int/2addr p3, v2

    invoke-virtual {v1, p1, v2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p3

    if-lez p3, :cond_3

    .line 21
    iget v1, p0, Lnet/lingala/zip4j/io/f;->k:I

    add-int/2addr v1, p3

    iput v1, p0, Lnet/lingala/zip4j/io/f;->k:I

    .line 22
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget p3, p0, Lnet/lingala/zip4j/io/f;->k:I

    if-lez p3, :cond_5

    .line 24
    iget-object v0, p0, Lnet/lingala/zip4j/io/f;->f:Lnet/lingala/zip4j/crypto/c;

    if-eqz v0, :cond_4

    .line 25
    :try_start_1
    invoke-interface {v0, p1, p2, p3}, Lnet/lingala/zip4j/crypto/c;->b([BII)I
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 27
    :cond_4
    :goto_0
    iget-wide p1, p0, Lnet/lingala/zip4j/io/f;->c:J

    iget p3, p0, Lnet/lingala/zip4j/io/f;->k:I

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lnet/lingala/zip4j/io/f;->c:J

    .line 28
    :cond_5
    iget-wide p1, p0, Lnet/lingala/zip4j/io/f;->c:J

    iget-wide v0, p0, Lnet/lingala/zip4j/io/f;->d:J

    cmp-long p3, p1, v0

    if-ltz p3, :cond_6

    .line 29
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/f;->d()V

    .line 30
    :cond_6
    iget p1, p0, Lnet/lingala/zip4j/io/f;->k:I

    return p1

    :catchall_0
    move-exception p1

    .line 31
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public seek(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/f;->b:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public skip(J)J
    .locals 7
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
    if-ltz v2, :cond_1

    .line 6
    .line 7
    iget-wide v0, p0, Lnet/lingala/zip4j/io/f;->d:J

    .line 8
    .line 9
    iget-wide v2, p0, Lnet/lingala/zip4j/io/f;->c:J

    .line 10
    .line 11
    sub-long v4, v0, v2

    .line 12
    .line 13
    cmp-long v6, p1, v4

    .line 14
    .line 15
    if-lez v6, :cond_0

    .line 16
    .line 17
    sub-long p1, v0, v2

    .line 18
    .line 19
    :cond_0
    add-long/2addr v2, p1

    .line 20
    iput-wide v2, p0, Lnet/lingala/zip4j/io/f;->c:J

    .line 21
    .line 22
    return-wide p1

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

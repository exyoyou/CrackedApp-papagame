.class public Lmc/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x32

    .line 5
    .line 6
    iput v0, p0, Lmc/b;->a:I

    .line 7
    .line 8
    return-void
.end method

.method private a(Ljava/util/List;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    new-array v0, v0, [B

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-lt v1, v2, :cond_1

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    aput-byte v2, v0, v1

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 41
    .line 42
    const-string v0, "input byte array list is null, cannot conver to byte array"

    .line 43
    .line 44
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method private b([BLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    array-length v1, p1

    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    aget-byte v1, p1, v0

    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 23
    .line 24
    const-string p2, "one of the input parameters is null, cannot copy byte array to array list"

    .line 25
    .line 26
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method private c(Ljava/util/ArrayList;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-lt v0, v2, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lpc/h;

    .line 17
    .line 18
    invoke-virtual {v2}, Lpc/h;->i()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ne v2, p2, :cond_1

    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 30
    .line 31
    const-string p2, "file headers are null, cannot calculate number of entries on this disk"

    .line 32
    .line 33
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method private f(Lpc/o;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    :try_start_0
    instance-of v0, p2, Lnet/lingala/zip4j/io/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lpc/o;->f()Lpc/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v1, p2

    .line 10
    check-cast v1, Lnet/lingala/zip4j/io/g;

    .line 11
    .line 12
    invoke-virtual {v1}, Lnet/lingala/zip4j/io/g;->d()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-virtual {v0, v1, v2}, Lpc/f;->p(J)V

    .line 17
    .line 18
    .line 19
    check-cast p2, Lnet/lingala/zip4j/io/g;

    .line 20
    .line 21
    invoke-virtual {p2}, Lnet/lingala/zip4j/io/g;->b()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p2, 0x0

    .line 27
    :goto_0
    invoke-virtual {p1}, Lpc/o;->q()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {p1}, Lpc/o;->l()Lpc/m;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    new-instance v0, Lpc/m;

    .line 40
    .line 41
    invoke-direct {v0}, Lpc/m;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lpc/o;->D(Lpc/m;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {p1}, Lpc/o;->k()Lpc/l;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    new-instance v0, Lpc/l;

    .line 54
    .line 55
    invoke-direct {v0}, Lpc/l;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lpc/o;->C(Lpc/l;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-virtual {p1}, Lpc/o;->k()Lpc/l;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0, p2}, Lpc/l;->e(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lpc/o;->k()Lpc/l;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    add-int/lit8 v1, p2, 0x1

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lpc/l;->h(I)V

    .line 75
    .line 76
    .line 77
    :cond_3
    invoke-virtual {p1}, Lpc/o;->f()Lpc/f;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0, p2}, Lpc/f;->n(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lpc/o;->f()Lpc/f;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1, p2}, Lpc/f;->o(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :catch_0
    move-exception p1

    .line 93
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 94
    .line 95
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    throw p2
.end method

.method private g(Lnet/lingala/zip4j/io/g;Lpc/i;JJ[BZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p2}, Lpc/i;->w()Z

    .line 4
    .line 5
    .line 6
    move-result p8

    .line 7
    if-eqz p8, :cond_2

    .line 8
    .line 9
    array-length p8, p7

    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    if-ne p8, v0, :cond_1

    .line 13
    .line 14
    add-long/2addr p3, p5

    .line 15
    const-wide/16 v0, 0x4

    .line 16
    .line 17
    add-long/2addr p3, v0

    .line 18
    add-long/2addr p3, v0

    .line 19
    const-wide/16 v0, 0x2

    .line 20
    .line 21
    add-long/2addr p3, v0

    .line 22
    add-long/2addr p3, v0

    .line 23
    invoke-virtual {p2}, Lpc/i;->k()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    int-to-long v2, p2

    .line 28
    add-long/2addr p3, v2

    .line 29
    add-long/2addr p3, v0

    .line 30
    add-long/2addr p3, v0

    .line 31
    const-wide/16 v0, 0x8

    .line 32
    .line 33
    add-long/2addr p3, v0

    .line 34
    const-wide/16 v2, 0x16

    .line 35
    .line 36
    cmp-long p2, p5, v2

    .line 37
    .line 38
    if-nez p2, :cond_0

    .line 39
    .line 40
    add-long/2addr p3, v0

    .line 41
    :cond_0
    invoke-virtual {p1, p3, p4}, Lnet/lingala/zip4j/io/g;->seek(J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p7}, Lnet/lingala/zip4j/io/g;->write([B)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 49
    .line 50
    const-string p2, "attempting to write a non 8-byte compressed size block for a zip64 file"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    add-long/2addr p3, p5

    .line 57
    invoke-virtual {p1, p3, p4}, Lnet/lingala/zip4j/io/g;->seek(J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p7}, Lnet/lingala/zip4j/io/g;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception p1

    .line 65
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 66
    .line 67
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    throw p2

    .line 71
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 72
    .line 73
    const-string p2, "invalid output stream, cannot update compressed size for local file header"

    .line 74
    .line 75
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1
.end method

.method private i(Lpc/o;Ljava/io/OutputStream;Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    if-eqz p2, :cond_3

    .line 4
    .line 5
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-gtz v0, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-lt v1, v2, :cond_1

    .line 51
    .line 52
    return v0

    .line 53
    :cond_1
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Lpc/h;

    .line 66
    .line 67
    invoke-direct {p0, p1, v2, p2, p3}, Lmc/b;->l(Lpc/o;Lpc/h;Ljava/io/OutputStream;Ljava/util/List;)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    add-int/2addr v0, v2

    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    :goto_1
    return v1

    .line 76
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 77
    .line 78
    const-string p2, "input parameters is null, cannot write central directory"

    .line 79
    .line 80
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1
.end method

.method private j(Lpc/o;Ljava/io/OutputStream;IJLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    if-eqz p2, :cond_5

    .line 4
    .line 5
    const/4 p2, 0x2

    .line 6
    :try_start_0
    new-array p2, p2, [B

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    new-array v1, v0, [B

    .line 10
    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    new-array v2, v2, [B

    .line 14
    .line 15
    invoke-virtual {p1}, Lpc/o;->f()Lpc/f;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3}, Lpc/f;->g()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    long-to-int v4, v3

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static {v1, v3, v4}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v1, p6}, Lmc/b;->b([BLjava/util/List;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lpc/o;->f()Lpc/f;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4}, Lpc/f;->d()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    int-to-short v4, v4

    .line 40
    invoke-static {p2, v3, v4}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, p2, p6}, Lmc/b;->b([BLjava/util/List;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lpc/o;->f()Lpc/f;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4}, Lpc/f;->e()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    int-to-short v4, v4

    .line 55
    invoke-static {p2, v3, v4}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, p2, p6}, Lmc/b;->b([BLjava/util/List;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    if-eqz v4, :cond_4

    .line 66
    .line 67
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    if-eqz v4, :cond_4

    .line 76
    .line 77
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v4}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    invoke-virtual {p1}, Lpc/o;->p()Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-eqz v5, :cond_0

    .line 94
    .line 95
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v5}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {p1}, Lpc/o;->f()Lpc/f;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v6}, Lpc/f;->d()I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    invoke-direct {p0, v5, v6}, Lmc/b;->c(Ljava/util/ArrayList;I)I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    goto :goto_0

    .line 116
    :cond_0
    move v5, v4

    .line 117
    :goto_0
    int-to-short v5, v5

    .line 118
    invoke-static {p2, v3, v5}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 119
    .line 120
    .line 121
    invoke-direct {p0, p2, p6}, Lmc/b;->b([BLjava/util/List;)V

    .line 122
    .line 123
    .line 124
    int-to-short v4, v4

    .line 125
    invoke-static {p2, v3, v4}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 126
    .line 127
    .line 128
    invoke-direct {p0, p2, p6}, Lmc/b;->b([BLjava/util/List;)V

    .line 129
    .line 130
    .line 131
    invoke-static {v1, v3, p3}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 132
    .line 133
    .line 134
    invoke-direct {p0, v1, p6}, Lmc/b;->b([BLjava/util/List;)V

    .line 135
    .line 136
    .line 137
    const-wide v4, 0xffffffffL

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    cmp-long p3, p4, v4

    .line 143
    .line 144
    if-lez p3, :cond_1

    .line 145
    .line 146
    invoke-static {v2, v3, v4, v5}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 147
    .line 148
    .line 149
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    .line 151
    .line 152
    invoke-direct {p0, v1, p6}, Lmc/b;->b([BLjava/util/List;)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_1
    invoke-static {v2, v3, p4, p5}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 157
    .line 158
    .line 159
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    .line 161
    .line 162
    invoke-direct {p0, v1, p6}, Lmc/b;->b([BLjava/util/List;)V

    .line 163
    .line 164
    .line 165
    :goto_1
    invoke-virtual {p1}, Lpc/o;->f()Lpc/f;

    .line 166
    .line 167
    .line 168
    move-result-object p3

    .line 169
    invoke-virtual {p3}, Lpc/f;->a()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p3

    .line 173
    if-eqz p3, :cond_2

    .line 174
    .line 175
    invoke-virtual {p1}, Lpc/o;->f()Lpc/f;

    .line 176
    .line 177
    .line 178
    move-result-object p3

    .line 179
    invoke-virtual {p3}, Lpc/f;->c()I

    .line 180
    .line 181
    .line 182
    move-result p3

    .line 183
    goto :goto_2

    .line 184
    :cond_2
    const/4 p3, 0x0

    .line 185
    :goto_2
    int-to-short p4, p3

    .line 186
    invoke-static {p2, v3, p4}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 187
    .line 188
    .line 189
    invoke-direct {p0, p2, p6}, Lmc/b;->b([BLjava/util/List;)V

    .line 190
    .line 191
    .line 192
    if-lez p3, :cond_3

    .line 193
    .line 194
    invoke-virtual {p1}, Lpc/o;->f()Lpc/f;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p1}, Lpc/f;->b()[B

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-direct {p0, p1, p6}, Lmc/b;->b([BLjava/util/List;)V

    .line 203
    .line 204
    .line 205
    :cond_3
    return-void

    .line 206
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 207
    .line 208
    const-string p2, "invalid central directory/file headers, cannot write end of central directory record"

    .line 209
    .line 210
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :catch_0
    move-exception p1

    .line 215
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 216
    .line 217
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 218
    .line 219
    .line 220
    throw p2

    .line 221
    :cond_5
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 222
    .line 223
    const-string p2, "zip model or output stream is null, cannot write end of central directory record"

    .line 224
    .line 225
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw p1
.end method

.method private l(Lpc/o;Lpc/h;Ljava/io/OutputStream;Ljava/util/List;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p4

    .line 4
    .line 5
    if-eqz p2, :cond_10

    .line 6
    .line 7
    if-eqz p3, :cond_10

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    :try_start_0
    new-array v3, v2, [B

    .line 11
    .line 12
    const/4 v4, 0x4

    .line 13
    new-array v5, v4, [B

    .line 14
    .line 15
    const/16 v6, 0x8

    .line 16
    .line 17
    new-array v7, v6, [B

    .line 18
    .line 19
    new-array v8, v2, [B

    .line 20
    .line 21
    new-array v9, v4, [B

    .line 22
    .line 23
    invoke-virtual/range {p2 .. p2}, Lpc/h;->w()I

    .line 24
    .line 25
    .line 26
    move-result v10

    .line 27
    const/4 v11, 0x0

    .line 28
    invoke-static {v5, v11, v10}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v5, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {p2 .. p2}, Lpc/h;->y()I

    .line 35
    .line 36
    .line 37
    move-result v10

    .line 38
    int-to-short v10, v10

    .line 39
    invoke-static {v3, v11, v10}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v3, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual/range {p2 .. p2}, Lpc/h;->z()I

    .line 46
    .line 47
    .line 48
    move-result v10

    .line 49
    int-to-short v10, v10

    .line 50
    invoke-static {v3, v11, v10}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 51
    .line 52
    .line 53
    invoke-direct {v1, v3, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual/range {p2 .. p2}, Lpc/h;->r()[B

    .line 57
    .line 58
    .line 59
    move-result-object v10

    .line 60
    invoke-direct {v1, v10, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual/range {p2 .. p2}, Lpc/h;->f()I

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    int-to-short v10, v10

    .line 68
    invoke-static {v3, v11, v10}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 69
    .line 70
    .line 71
    invoke-direct {v1, v3, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual/range {p2 .. p2}, Lpc/h;->t()I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    invoke-static {v5, v11, v10}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 79
    .line 80
    .line 81
    invoke-direct {v1, v5, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual/range {p2 .. p2}, Lpc/h;->g()J

    .line 85
    .line 86
    .line 87
    move-result-wide v12

    .line 88
    long-to-int v10, v12

    .line 89
    invoke-static {v5, v11, v10}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 90
    .line 91
    .line 92
    invoke-direct {v1, v5, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual/range {p2 .. p2}, Lpc/h;->e()J

    .line 96
    .line 97
    .line 98
    move-result-wide v12

    .line 99
    const/4 v10, 0x1

    .line 100
    const-wide v14, 0xffffffffL

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    cmp-long v16, v12, v14

    .line 106
    .line 107
    if-gez v16, :cond_1

    .line 108
    .line 109
    invoke-virtual/range {p2 .. p2}, Lpc/h;->x()J

    .line 110
    .line 111
    .line 112
    move-result-wide v12

    .line 113
    const-wide/16 v16, 0x32

    .line 114
    .line 115
    add-long v12, v12, v16

    .line 116
    .line 117
    cmp-long v16, v12, v14

    .line 118
    .line 119
    if-ltz v16, :cond_0

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lpc/h;->e()J

    .line 123
    .line 124
    .line 125
    move-result-wide v12

    .line 126
    invoke-static {v7, v11, v12, v13}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 127
    .line 128
    .line 129
    invoke-static {v7, v11, v5, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    .line 131
    .line 132
    invoke-direct {v1, v5, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual/range {p2 .. p2}, Lpc/h;->x()J

    .line 136
    .line 137
    .line 138
    move-result-wide v12

    .line 139
    invoke-static {v7, v11, v12, v13}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 140
    .line 141
    .line 142
    invoke-static {v7, v11, v5, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    .line 144
    .line 145
    invoke-direct {v1, v5, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 146
    .line 147
    .line 148
    const/4 v5, 0x0

    .line 149
    goto :goto_1

    .line 150
    :cond_1
    :goto_0
    invoke-static {v7, v11, v14, v15}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 151
    .line 152
    .line 153
    invoke-static {v7, v11, v5, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    .line 155
    .line 156
    invoke-direct {v1, v5, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 157
    .line 158
    .line 159
    invoke-direct {v1, v5, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 160
    .line 161
    .line 162
    const/4 v5, 0x1

    .line 163
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lpc/h;->q()I

    .line 164
    .line 165
    .line 166
    move-result v12

    .line 167
    int-to-short v12, v12

    .line 168
    invoke-static {v3, v11, v12}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 169
    .line 170
    .line 171
    invoke-direct {v1, v3, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 172
    .line 173
    .line 174
    new-array v12, v4, [B

    .line 175
    .line 176
    invoke-virtual/range {p2 .. p2}, Lpc/h;->u()J

    .line 177
    .line 178
    .line 179
    move-result-wide v16

    .line 180
    cmp-long v13, v16, v14

    .line 181
    .line 182
    if-lez v13, :cond_2

    .line 183
    .line 184
    invoke-static {v7, v11, v14, v15}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 185
    .line 186
    .line 187
    invoke-static {v7, v11, v12, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    .line 189
    .line 190
    const/4 v13, 0x1

    .line 191
    goto :goto_2

    .line 192
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lpc/h;->u()J

    .line 193
    .line 194
    .line 195
    move-result-wide v13

    .line 196
    invoke-static {v7, v11, v13, v14}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 197
    .line 198
    .line 199
    invoke-static {v7, v11, v12, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    .line 201
    .line 202
    const/4 v13, 0x0

    .line 203
    :goto_2
    if-nez v5, :cond_4

    .line 204
    .line 205
    if-eqz v13, :cond_3

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_3
    const/4 v4, 0x0

    .line 209
    goto :goto_4

    .line 210
    :cond_4
    :goto_3
    if-eqz v5, :cond_5

    .line 211
    .line 212
    const/16 v4, 0x14

    .line 213
    .line 214
    :cond_5
    if-eqz v13, :cond_6

    .line 215
    .line 216
    add-int/lit8 v4, v4, 0x8

    .line 217
    .line 218
    :cond_6
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lpc/h;->d()Lpc/a;

    .line 219
    .line 220
    .line 221
    move-result-object v14

    .line 222
    if-eqz v14, :cond_7

    .line 223
    .line 224
    add-int/lit8 v4, v4, 0xb

    .line 225
    .line 226
    :cond_7
    int-to-short v4, v4

    .line 227
    invoke-static {v3, v11, v4}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 228
    .line 229
    .line 230
    invoke-direct {v1, v3, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 231
    .line 232
    .line 233
    invoke-direct {v1, v8, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual/range {p2 .. p2}, Lpc/h;->i()I

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    int-to-short v4, v4

    .line 241
    invoke-static {v3, v11, v4}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 242
    .line 243
    .line 244
    invoke-direct {v1, v3, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 245
    .line 246
    .line 247
    invoke-direct {v1, v8, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual/range {p2 .. p2}, Lpc/h;->k()[B

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    if-eqz v4, :cond_8

    .line 255
    .line 256
    invoke-virtual/range {p2 .. p2}, Lpc/h;->k()[B

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    invoke-direct {v1, v4, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 261
    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_8
    invoke-direct {v1, v9, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 265
    .line 266
    .line 267
    :goto_5
    invoke-direct {v1, v12, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual/range {p1 .. p1}, Lpc/o;->g()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    invoke-static {v4}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    .line 275
    .line 276
    .line 277
    move-result v4

    .line 278
    const/16 v8, 0x2e

    .line 279
    .line 280
    if-eqz v4, :cond_9

    .line 281
    .line 282
    invoke-virtual/range {p2 .. p2}, Lpc/h;->p()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    invoke-virtual/range {p1 .. p1}, Lpc/o;->g()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v9

    .line 290
    invoke-virtual {v4, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    invoke-direct {v1, v4, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 295
    .line 296
    .line 297
    array-length v4, v4

    .line 298
    goto :goto_6

    .line 299
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lpc/h;->p()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    invoke-static {v4}, Lnet/lingala/zip4j/util/h;->g(Ljava/lang/String;)[B

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    invoke-direct {v1, v4, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual/range {p2 .. p2}, Lpc/h;->p()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    invoke-static {v4}, Lnet/lingala/zip4j/util/h;->n(Ljava/lang/String;)I

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    :goto_6
    add-int/2addr v8, v4

    .line 319
    if-nez v5, :cond_a

    .line 320
    .line 321
    if-eqz v13, :cond_e

    .line 322
    .line 323
    :cond_a
    move-object/from16 v4, p1

    .line 324
    .line 325
    invoke-virtual {v4, v10}, Lpc/o;->E(Z)V

    .line 326
    .line 327
    .line 328
    invoke-static {v3, v11, v10}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 329
    .line 330
    .line 331
    invoke-direct {v1, v3, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 332
    .line 333
    .line 334
    add-int/lit8 v8, v8, 0x2

    .line 335
    .line 336
    if-eqz v5, :cond_b

    .line 337
    .line 338
    const/16 v4, 0x10

    .line 339
    .line 340
    goto :goto_7

    .line 341
    :cond_b
    const/4 v4, 0x0

    .line 342
    :goto_7
    if-eqz v13, :cond_c

    .line 343
    .line 344
    add-int/lit8 v4, v4, 0x8

    .line 345
    .line 346
    :cond_c
    int-to-short v4, v4

    .line 347
    invoke-static {v3, v11, v4}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 348
    .line 349
    .line 350
    invoke-direct {v1, v3, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 351
    .line 352
    .line 353
    add-int/2addr v8, v2

    .line 354
    if-eqz v5, :cond_d

    .line 355
    .line 356
    invoke-virtual/range {p2 .. p2}, Lpc/h;->x()J

    .line 357
    .line 358
    .line 359
    move-result-wide v4

    .line 360
    invoke-static {v7, v11, v4, v5}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 361
    .line 362
    .line 363
    invoke-direct {v1, v7, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 364
    .line 365
    .line 366
    add-int/lit8 v8, v8, 0x8

    .line 367
    .line 368
    invoke-virtual/range {p2 .. p2}, Lpc/h;->e()J

    .line 369
    .line 370
    .line 371
    move-result-wide v4

    .line 372
    invoke-static {v7, v11, v4, v5}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 373
    .line 374
    .line 375
    invoke-direct {v1, v7, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 376
    .line 377
    .line 378
    add-int/2addr v8, v6

    .line 379
    :cond_d
    if-eqz v13, :cond_e

    .line 380
    .line 381
    invoke-virtual/range {p2 .. p2}, Lpc/h;->u()J

    .line 382
    .line 383
    .line 384
    move-result-wide v4

    .line 385
    invoke-static {v7, v11, v4, v5}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 386
    .line 387
    .line 388
    invoke-direct {v1, v7, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 389
    .line 390
    .line 391
    add-int/lit8 v8, v8, 0x8

    .line 392
    .line 393
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lpc/h;->d()Lpc/a;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    if-eqz v2, :cond_f

    .line 398
    .line 399
    invoke-virtual/range {p2 .. p2}, Lpc/h;->d()Lpc/a;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    invoke-virtual {v2}, Lpc/a;->d()J

    .line 404
    .line 405
    .line 406
    move-result-wide v4

    .line 407
    long-to-int v5, v4

    .line 408
    int-to-short v4, v5

    .line 409
    invoke-static {v3, v11, v4}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 410
    .line 411
    .line 412
    invoke-direct {v1, v3, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v2}, Lpc/a;->c()I

    .line 416
    .line 417
    .line 418
    move-result v4

    .line 419
    int-to-short v4, v4

    .line 420
    invoke-static {v3, v11, v4}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 421
    .line 422
    .line 423
    invoke-direct {v1, v3, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v2}, Lpc/a;->f()I

    .line 427
    .line 428
    .line 429
    move-result v4

    .line 430
    int-to-short v4, v4

    .line 431
    invoke-static {v3, v11, v4}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 432
    .line 433
    .line 434
    invoke-direct {v1, v3, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v2}, Lpc/a;->e()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v4

    .line 441
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 442
    .line 443
    .line 444
    move-result-object v4

    .line 445
    invoke-direct {v1, v4, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 446
    .line 447
    .line 448
    new-array v4, v10, [B

    .line 449
    .line 450
    invoke-virtual {v2}, Lpc/a;->a()I

    .line 451
    .line 452
    .line 453
    move-result v5

    .line 454
    int-to-byte v5, v5

    .line 455
    aput-byte v5, v4, v11

    .line 456
    .line 457
    invoke-direct {v1, v4, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v2}, Lpc/a;->b()I

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    int-to-short v2, v2

    .line 465
    invoke-static {v3, v11, v2}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 466
    .line 467
    .line 468
    invoke-direct {v1, v3, v0}, Lmc/b;->b([BLjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    .line 470
    .line 471
    add-int/lit8 v8, v8, 0xb

    .line 472
    .line 473
    :cond_f
    return v8

    .line 474
    :catch_0
    move-exception v0

    .line 475
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    .line 476
    .line 477
    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 478
    .line 479
    .line 480
    throw v2

    .line 481
    :cond_10
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 482
    .line 483
    const-string v2, "input parameters is null, cannot write local file header"

    .line 484
    .line 485
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    throw v0
.end method

.method private n(Lpc/o;Ljava/io/OutputStream;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x4

    .line 6
    :try_start_0
    new-array p2, p2, [B

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    const v1, 0x7064b50

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {p2, v2, v1}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p2, p3}, Lmc/b;->b([BLjava/util/List;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lpc/o;->k()Lpc/l;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lpc/l;->a()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-static {p2, v2, v1}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p2, p3}, Lmc/b;->b([BLjava/util/List;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lpc/o;->k()Lpc/l;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lpc/l;->b()J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    invoke-static {v0, v2, v3, v4}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v0, p3}, Lmc/b;->b([BLjava/util/List;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lpc/o;->k()Lpc/l;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lpc/l;->d()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-static {p2, v2, p1}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, p2, p3}, Lmc/b;->b([BLjava/util/List;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :catch_0
    move-exception p1

    .line 66
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 67
    .line 68
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    throw p2

    .line 72
    :catch_1
    move-exception p1

    .line 73
    throw p1

    .line 74
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 75
    .line 76
    const-string p2, "zip model or output stream is null, cannot write zip64 end of central directory locator"

    .line 77
    .line 78
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1
.end method

.method private o(Lpc/o;Ljava/io/OutputStream;IJLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    if-eqz p2, :cond_3

    .line 4
    .line 5
    const/4 p2, 0x2

    .line 6
    :try_start_0
    new-array v0, p2, [B

    .line 7
    .line 8
    new-array p2, p2, [B

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    new-array v1, v1, [B

    .line 12
    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    new-array v2, v2, [B

    .line 16
    .line 17
    const v3, 0x6064b50

    .line 18
    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-static {v1, v4, v3}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v1, p6}, Lmc/b;->b([BLjava/util/List;)V

    .line 25
    .line 26
    .line 27
    const-wide/16 v5, 0x2c

    .line 28
    .line 29
    invoke-static {v2, v4, v5, v6}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v2, p6}, Lmc/b;->b([BLjava/util/List;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-lez v3, :cond_0

    .line 64
    .line 65
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p2}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    check-cast p2, Lpc/h;

    .line 78
    .line 79
    invoke-virtual {p2}, Lpc/h;->y()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    int-to-short p2, p2

    .line 84
    invoke-static {v0, v4, p2}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, v0, p6}, Lmc/b;->b([BLjava/util/List;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p2}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    check-cast p2, Lpc/h;

    .line 103
    .line 104
    invoke-virtual {p2}, Lpc/h;->z()I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    int-to-short p2, p2

    .line 109
    invoke-static {v0, v4, p2}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 110
    .line 111
    .line 112
    invoke-direct {p0, v0, p6}, Lmc/b;->b([BLjava/util/List;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    invoke-direct {p0, p2, p6}, Lmc/b;->b([BLjava/util/List;)V

    .line 117
    .line 118
    .line 119
    invoke-direct {p0, p2, p6}, Lmc/b;->b([BLjava/util/List;)V

    .line 120
    .line 121
    .line 122
    :goto_0
    invoke-virtual {p1}, Lpc/o;->f()Lpc/f;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p2}, Lpc/f;->d()I

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    invoke-static {v1, v4, p2}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 131
    .line 132
    .line 133
    invoke-direct {p0, v1, p6}, Lmc/b;->b([BLjava/util/List;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Lpc/o;->f()Lpc/f;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-virtual {p2}, Lpc/f;->e()I

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    invoke-static {v1, v4, p2}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 145
    .line 146
    .line 147
    invoke-direct {p0, v1, p6}, Lmc/b;->b([BLjava/util/List;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    if-eqz p2, :cond_2

    .line 155
    .line 156
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-virtual {p2}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    if-eqz p2, :cond_2

    .line 165
    .line 166
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    invoke-virtual {p2}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 175
    .line 176
    .line 177
    move-result p2

    .line 178
    invoke-virtual {p1}, Lpc/o;->p()Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_1

    .line 183
    .line 184
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {p1}, Lpc/o;->f()Lpc/f;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {p1}, Lpc/f;->d()I

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    invoke-direct {p0, v0, p1}, Lmc/b;->c(Ljava/util/ArrayList;I)I

    .line 201
    .line 202
    .line 203
    const/4 p1, 0x0

    .line 204
    goto :goto_1

    .line 205
    :cond_1
    move p1, p2

    .line 206
    :goto_1
    int-to-long v0, p1

    .line 207
    invoke-static {v2, v4, v0, v1}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 208
    .line 209
    .line 210
    invoke-direct {p0, v2, p6}, Lmc/b;->b([BLjava/util/List;)V

    .line 211
    .line 212
    .line 213
    int-to-long p1, p2

    .line 214
    invoke-static {v2, v4, p1, p2}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 215
    .line 216
    .line 217
    invoke-direct {p0, v2, p6}, Lmc/b;->b([BLjava/util/List;)V

    .line 218
    .line 219
    .line 220
    int-to-long p1, p3

    .line 221
    invoke-static {v2, v4, p1, p2}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 222
    .line 223
    .line 224
    invoke-direct {p0, v2, p6}, Lmc/b;->b([BLjava/util/List;)V

    .line 225
    .line 226
    .line 227
    invoke-static {v2, v4, p4, p5}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 228
    .line 229
    .line 230
    invoke-direct {p0, v2, p6}, Lmc/b;->b([BLjava/util/List;)V

    .line 231
    .line 232
    .line 233
    return-void

    .line 234
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 235
    .line 236
    const-string p2, "invalid central directory/file headers, cannot write end of central directory record"

    .line 237
    .line 238
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    throw p1
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :catch_0
    move-exception p1

    .line 243
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 244
    .line 245
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 246
    .line 247
    .line 248
    throw p2

    .line 249
    :catch_1
    move-exception p1

    .line 250
    throw p1

    .line 251
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 252
    .line 253
    const-string p2, "zip model or output stream is null, cannot write zip64 end of central directory record"

    .line 254
    .line 255
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    throw p1
.end method

.method private p(Lpc/o;Ljava/io/OutputStream;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    :try_start_0
    instance-of v0, p2, Lnet/lingala/zip4j/io/g;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-object v0, p2

    .line 8
    check-cast v0, Lnet/lingala/zip4j/io/g;

    .line 9
    .line 10
    array-length v1, p3

    .line 11
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/io/g;->a(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2}, Lmc/b;->d(Lpc/o;Ljava/io/OutputStream;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catch_0
    move-exception p1

    .line 26
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 27
    .line 28
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    throw p2

    .line 32
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 33
    .line 34
    const-string p2, "invalid buff to write as zip headers"

    .line 35
    .line 36
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method


# virtual methods
.method public d(Lpc/o;Ljava/io/OutputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    if-eqz p2, :cond_4

    .line 4
    .line 5
    :try_start_0
    invoke-direct {p0, p1, p2}, Lmc/b;->f(Lpc/o;Ljava/io/OutputStream;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lpc/o;->f()Lpc/f;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lpc/f;->f()J

    .line 13
    .line 14
    .line 15
    move-result-wide v8

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1, p2, v0}, Lmc/b;->i(Lpc/o;Ljava/io/OutputStream;Ljava/util/List;)I

    .line 22
    .line 23
    .line 24
    move-result v10

    .line 25
    invoke-virtual {p1}, Lpc/o;->q()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    invoke-virtual {p1}, Lpc/o;->l()Lpc/m;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    new-instance v1, Lpc/m;

    .line 38
    .line 39
    invoke-direct {v1}, Lpc/m;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1}, Lpc/o;->D(Lpc/m;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {p1}, Lpc/o;->k()Lpc/l;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    new-instance v1, Lpc/l;

    .line 52
    .line 53
    invoke-direct {v1}, Lpc/l;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v1}, Lpc/o;->C(Lpc/l;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-virtual {p1}, Lpc/o;->k()Lpc/l;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    int-to-long v2, v10

    .line 64
    add-long/2addr v2, v8

    .line 65
    invoke-virtual {v1, v2, v3}, Lpc/l;->f(J)V

    .line 66
    .line 67
    .line 68
    instance-of v1, p2, Lnet/lingala/zip4j/io/g;

    .line 69
    .line 70
    const/4 v2, 0x1

    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    invoke-virtual {p1}, Lpc/o;->k()Lpc/l;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    move-object v3, p2

    .line 78
    check-cast v3, Lnet/lingala/zip4j/io/g;

    .line 79
    .line 80
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/g;->b()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    invoke-virtual {v1, v3}, Lpc/l;->e(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lpc/o;->k()Lpc/l;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    move-object v3, p2

    .line 92
    check-cast v3, Lnet/lingala/zip4j/io/g;

    .line 93
    .line 94
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/g;->b()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    add-int/2addr v3, v2

    .line 99
    invoke-virtual {v1, v3}, Lpc/l;->h(I)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p1}, Lpc/o;->k()Lpc/l;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const/4 v3, 0x0

    .line 108
    invoke-virtual {v1, v3}, Lpc/l;->e(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Lpc/o;->k()Lpc/l;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1, v2}, Lpc/l;->h(I)V

    .line 116
    .line 117
    .line 118
    :goto_0
    move-object v1, p0

    .line 119
    move-object v2, p1

    .line 120
    move-object v3, p2

    .line 121
    move v4, v10

    .line 122
    move-wide v5, v8

    .line 123
    move-object v7, v0

    .line 124
    invoke-direct/range {v1 .. v7}, Lmc/b;->o(Lpc/o;Ljava/io/OutputStream;IJLjava/util/List;)V

    .line 125
    .line 126
    .line 127
    invoke-direct {p0, p1, p2, v0}, Lmc/b;->n(Lpc/o;Ljava/io/OutputStream;Ljava/util/List;)V

    .line 128
    .line 129
    .line 130
    :cond_3
    move-object v1, p0

    .line 131
    move-object v2, p1

    .line 132
    move-object v3, p2

    .line 133
    move v4, v10

    .line 134
    move-wide v5, v8

    .line 135
    move-object v7, v0

    .line 136
    invoke-direct/range {v1 .. v7}, Lmc/b;->j(Lpc/o;Ljava/io/OutputStream;IJLjava/util/List;)V

    .line 137
    .line 138
    .line 139
    invoke-direct {p0, v0}, Lmc/b;->a(Ljava/util/List;)[B

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-direct {p0, p1, p2, v0}, Lmc/b;->p(Lpc/o;Ljava/io/OutputStream;[B)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :catch_0
    move-exception p1

    .line 148
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 149
    .line 150
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    throw p2

    .line 154
    :catch_1
    move-exception p1

    .line 155
    throw p1

    .line 156
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 157
    .line 158
    const-string p2, "input parameters is null, cannot finalize zip file"

    .line 159
    .line 160
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p1
.end method

.method public e(Lpc/o;Ljava/io/OutputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    if-eqz p2, :cond_3

    .line 4
    .line 5
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lpc/o;->f()Lpc/f;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lpc/f;->f()J

    .line 15
    .line 16
    .line 17
    move-result-wide v8

    .line 18
    invoke-direct {p0, p1, p2, v7}, Lmc/b;->i(Lpc/o;Ljava/io/OutputStream;Ljava/util/List;)I

    .line 19
    .line 20
    .line 21
    move-result v10

    .line 22
    invoke-virtual {p1}, Lpc/o;->q()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1}, Lpc/o;->l()Lpc/m;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    new-instance v0, Lpc/m;

    .line 35
    .line 36
    invoke-direct {v0}, Lpc/m;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lpc/o;->D(Lpc/m;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p1}, Lpc/o;->k()Lpc/l;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    new-instance v0, Lpc/l;

    .line 49
    .line 50
    invoke-direct {v0}, Lpc/l;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lpc/o;->C(Lpc/l;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {p1}, Lpc/o;->k()Lpc/l;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    int-to-long v1, v10

    .line 61
    add-long/2addr v1, v8

    .line 62
    invoke-virtual {v0, v1, v2}, Lpc/l;->f(J)V

    .line 63
    .line 64
    .line 65
    move-object v0, p0

    .line 66
    move-object v1, p1

    .line 67
    move-object v2, p2

    .line 68
    move v3, v10

    .line 69
    move-wide v4, v8

    .line 70
    move-object v6, v7

    .line 71
    invoke-direct/range {v0 .. v6}, Lmc/b;->o(Lpc/o;Ljava/io/OutputStream;IJLjava/util/List;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, p1, p2, v7}, Lmc/b;->n(Lpc/o;Ljava/io/OutputStream;Ljava/util/List;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    move-object v0, p0

    .line 78
    move-object v1, p1

    .line 79
    move-object v2, p2

    .line 80
    move v3, v10

    .line 81
    move-wide v4, v8

    .line 82
    move-object v6, v7

    .line 83
    invoke-direct/range {v0 .. v6}, Lmc/b;->j(Lpc/o;Ljava/io/OutputStream;IJLjava/util/List;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, v7}, Lmc/b;->a(Ljava/util/List;)[B

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-direct {p0, p1, p2, v0}, Lmc/b;->p(Lpc/o;Ljava/io/OutputStream;[B)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :catch_0
    move-exception p1

    .line 95
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 96
    .line 97
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    throw p2

    .line 101
    :catch_1
    move-exception p1

    .line 102
    throw p1

    .line 103
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 104
    .line 105
    const-string p2, "input parameters is null, cannot finalize zip file without validations"

    .line 106
    .line 107
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p1
.end method

.method public h(Lpc/i;JILpc/o;[BILnet/lingala/zip4j/io/g;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    move/from16 v0, p4

    .line 2
    .line 3
    move/from16 v1, p7

    .line 4
    .line 5
    if-eqz p1, :cond_5

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v4, p2, v2

    .line 10
    .line 11
    if-ltz v4, :cond_5

    .line 12
    .line 13
    if-eqz p5, :cond_5

    .line 14
    .line 15
    :try_start_0
    invoke-virtual/range {p8 .. p8}, Lnet/lingala/zip4j/io/g;->b()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eq v1, v2, :cond_1

    .line 20
    .line 21
    new-instance v2, Ljava/io/File;

    .line 22
    .line 23
    invoke-virtual/range {p5 .. p5}, Lpc/o;->m()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v2}, Lnet/lingala/zip4j/util/h;->z(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    new-instance v4, Ljava/lang/StringBuffer;

    .line 43
    .line 44
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v3, "file.separator"

    .line 52
    .line 53
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    const/16 v4, 0x9

    .line 65
    .line 66
    const/4 v5, 0x1

    .line 67
    if-ge v1, v4, :cond_0

    .line 68
    .line 69
    new-instance v4, Ljava/lang/StringBuffer;

    .line 70
    .line 71
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    .line 80
    .line 81
    const-string v2, ".z0"

    .line 82
    .line 83
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    .line 85
    .line 86
    add-int/2addr v1, v5

    .line 87
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    goto :goto_0

    .line 95
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    .line 96
    .line 97
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    .line 106
    .line 107
    const-string v2, ".z"

    .line 108
    .line 109
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    .line 111
    .line 112
    add-int/2addr v1, v5

    .line 113
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    :goto_0
    new-instance v2, Lnet/lingala/zip4j/io/g;

    .line 121
    .line 122
    new-instance v3, Ljava/io/File;

    .line 123
    .line 124
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-direct {v2, v3}, Lnet/lingala/zip4j/io/g;-><init>(Ljava/io/File;)V

    .line 128
    .line 129
    .line 130
    move-object v10, v2

    .line 131
    const/4 v11, 0x1

    .line 132
    goto :goto_1

    .line 133
    :cond_1
    const/4 v5, 0x0

    .line 134
    move-object/from16 v10, p8

    .line 135
    .line 136
    const/4 v11, 0x0

    .line 137
    :goto_1
    invoke-virtual {v10}, Lnet/lingala/zip4j/io/g;->d()J

    .line 138
    .line 139
    .line 140
    move-result-wide v12

    .line 141
    const/16 v1, 0xe

    .line 142
    .line 143
    if-eq v0, v1, :cond_3

    .line 144
    .line 145
    const/16 v1, 0x12

    .line 146
    .line 147
    if-eq v0, v1, :cond_2

    .line 148
    .line 149
    const/16 v1, 0x16

    .line 150
    .line 151
    if-eq v0, v1, :cond_2

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_2
    int-to-long v6, v0

    .line 155
    invoke-virtual/range {p5 .. p5}, Lpc/o;->q()Z

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    move-object v1, p0

    .line 160
    move-object v2, v10

    .line 161
    move-object v3, p1

    .line 162
    move-wide/from16 v4, p2

    .line 163
    .line 164
    move-object/from16 v8, p6

    .line 165
    .line 166
    invoke-direct/range {v1 .. v9}, Lmc/b;->g(Lnet/lingala/zip4j/io/g;Lpc/i;JJ[BZ)V

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_3
    int-to-long v0, v0

    .line 171
    add-long v0, p2, v0

    .line 172
    .line 173
    invoke-virtual {v10, v0, v1}, Lnet/lingala/zip4j/io/g;->seek(J)V

    .line 174
    .line 175
    .line 176
    move-object/from16 v0, p6

    .line 177
    .line 178
    invoke-virtual {v10, v0}, Lnet/lingala/zip4j/io/g;->write([B)V

    .line 179
    .line 180
    .line 181
    :goto_2
    if-eqz v11, :cond_4

    .line 182
    .line 183
    invoke-virtual {v10}, Lnet/lingala/zip4j/io/g;->close()V

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_4
    move-object/from16 v0, p8

    .line 188
    .line 189
    invoke-virtual {v0, v12, v13}, Lnet/lingala/zip4j/io/g;->seek(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .line 191
    .line 192
    :goto_3
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 195
    .line 196
    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 197
    .line 198
    .line 199
    throw v1

    .line 200
    :cond_5
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 201
    .line 202
    const-string v1, "invalid input parameters, cannot update local file header"

    .line 203
    .line 204
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw v0
.end method

.method public k(Lpc/i;Ljava/io/OutputStream;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    if-eqz p2, :cond_2

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    new-array v1, v1, [B

    .line 12
    .line 13
    const v2, 0x8074b50

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {v1, v3, v2}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v1, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lpc/i;->d()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    long-to-int v2, v4

    .line 28
    invoke-static {v1, v3, v2}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v1, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lpc/i;->b()J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    const-wide/32 v6, 0x7fffffff

    .line 39
    .line 40
    .line 41
    cmp-long v2, v4, v6

    .line 42
    .line 43
    if-ltz v2, :cond_0

    .line 44
    .line 45
    move-wide v4, v6

    .line 46
    :cond_0
    long-to-int v2, v4

    .line 47
    invoke-static {v1, v3, v2}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v1, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lpc/i;->q()J

    .line 54
    .line 55
    .line 56
    move-result-wide v4

    .line 57
    cmp-long p1, v4, v6

    .line 58
    .line 59
    if-ltz p1, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move-wide v6, v4

    .line 63
    :goto_0
    long-to-int p1, v6

    .line 64
    invoke-static {v1, v3, p1}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, v1, v0}, Lmc/b;->b([BLjava/util/List;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, v0}, Lmc/b;->a(Ljava/util/List;)[B

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 75
    .line 76
    .line 77
    array-length p1, p1

    .line 78
    return p1

    .line 79
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 80
    .line 81
    const-string p2, "input parameters is null, cannot write extended local header"

    .line 82
    .line 83
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1
.end method

.method public m(Lpc/o;Lpc/i;Ljava/io/OutputStream;)I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    move-object v1, p0

    .line 2
    move-object/from16 v0, p2

    .line 3
    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    new-array v3, v3, [B

    .line 13
    .line 14
    const/4 v4, 0x4

    .line 15
    new-array v5, v4, [B

    .line 16
    .line 17
    const/16 v6, 0x8

    .line 18
    .line 19
    new-array v7, v6, [B

    .line 20
    .line 21
    new-array v6, v6, [B

    .line 22
    .line 23
    invoke-virtual/range {p2 .. p2}, Lpc/i;->p()I

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    const/4 v9, 0x0

    .line 28
    invoke-static {v5, v9, v8}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v5, v2}, Lmc/b;->b([BLjava/util/List;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {p2 .. p2}, Lpc/i;->r()I

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    int-to-short v8, v8

    .line 39
    invoke-static {v3, v9, v8}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v3, v2}, Lmc/b;->b([BLjava/util/List;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual/range {p2 .. p2}, Lpc/i;->l()[B

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    invoke-direct {p0, v8, v2}, Lmc/b;->b([BLjava/util/List;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual/range {p2 .. p2}, Lpc/i;->c()I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    int-to-short v8, v8

    .line 57
    invoke-static {v3, v9, v8}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, v3, v2}, Lmc/b;->b([BLjava/util/List;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual/range {p2 .. p2}, Lpc/i;->m()I

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    invoke-static {v5, v9, v8}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, v5, v2}, Lmc/b;->b([BLjava/util/List;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual/range {p2 .. p2}, Lpc/i;->d()J

    .line 74
    .line 75
    .line 76
    move-result-wide v10

    .line 77
    long-to-int v8, v10

    .line 78
    invoke-static {v5, v9, v8}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, v5, v2}, Lmc/b;->b([BLjava/util/List;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual/range {p2 .. p2}, Lpc/i;->q()J

    .line 85
    .line 86
    .line 87
    move-result-wide v10

    .line 88
    const-wide/16 v12, 0x32

    .line 89
    .line 90
    add-long/2addr v10, v12

    .line 91
    const-wide v12, 0xffffffffL

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    const/4 v8, 0x1

    .line 97
    cmp-long v14, v10, v12

    .line 98
    .line 99
    if-ltz v14, :cond_0

    .line 100
    .line 101
    invoke-static {v7, v9, v12, v13}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 102
    .line 103
    .line 104
    invoke-static {v7, v9, v5, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    .line 106
    .line 107
    invoke-direct {p0, v5, v2}, Lmc/b;->b([BLjava/util/List;)V

    .line 108
    .line 109
    .line 110
    invoke-direct {p0, v5, v2}, Lmc/b;->b([BLjava/util/List;)V

    .line 111
    .line 112
    .line 113
    move-object/from16 v10, p1

    .line 114
    .line 115
    invoke-virtual {v10, v8}, Lpc/o;->E(Z)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v8}, Lpc/i;->S(Z)V

    .line 119
    .line 120
    .line 121
    const/4 v4, 0x1

    .line 122
    goto :goto_0

    .line 123
    :cond_0
    move-object/from16 v10, p1

    .line 124
    .line 125
    invoke-virtual/range {p2 .. p2}, Lpc/i;->b()J

    .line 126
    .line 127
    .line 128
    move-result-wide v11

    .line 129
    invoke-static {v7, v9, v11, v12}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 130
    .line 131
    .line 132
    invoke-static {v7, v9, v5, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    .line 134
    .line 135
    invoke-direct {p0, v5, v2}, Lmc/b;->b([BLjava/util/List;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual/range {p2 .. p2}, Lpc/i;->q()J

    .line 139
    .line 140
    .line 141
    move-result-wide v11

    .line 142
    invoke-static {v7, v9, v11, v12}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 143
    .line 144
    .line 145
    invoke-static {v7, v9, v5, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    .line 147
    .line 148
    invoke-direct {p0, v5, v2}, Lmc/b;->b([BLjava/util/List;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v9}, Lpc/i;->S(Z)V

    .line 152
    .line 153
    .line 154
    const/4 v4, 0x0

    .line 155
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lpc/i;->k()I

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    int-to-short v5, v5

    .line 160
    invoke-static {v3, v9, v5}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 161
    .line 162
    .line 163
    invoke-direct {p0, v3, v2}, Lmc/b;->b([BLjava/util/List;)V

    .line 164
    .line 165
    .line 166
    if-eqz v4, :cond_1

    .line 167
    .line 168
    const/16 v5, 0x14

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_1
    const/4 v5, 0x0

    .line 172
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lpc/i;->a()Lpc/a;

    .line 173
    .line 174
    .line 175
    move-result-object v11

    .line 176
    if-eqz v11, :cond_2

    .line 177
    .line 178
    add-int/lit8 v5, v5, 0xb

    .line 179
    .line 180
    :cond_2
    int-to-short v5, v5

    .line 181
    invoke-static {v3, v9, v5}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 182
    .line 183
    .line 184
    invoke-direct {p0, v3, v2}, Lmc/b;->b([BLjava/util/List;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual/range {p1 .. p1}, Lpc/o;->g()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    invoke-static {v5}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    if-eqz v5, :cond_3

    .line 196
    .line 197
    invoke-virtual/range {p2 .. p2}, Lpc/i;->j()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    invoke-virtual/range {p1 .. p1}, Lpc/o;->g()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v10

    .line 205
    invoke-virtual {v5, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    invoke-direct {p0, v5, v2}, Lmc/b;->b([BLjava/util/List;)V

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lpc/i;->j()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    invoke-static {v5}, Lnet/lingala/zip4j/util/h;->g(Ljava/lang/String;)[B

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    invoke-direct {p0, v5, v2}, Lmc/b;->b([BLjava/util/List;)V

    .line 222
    .line 223
    .line 224
    :goto_2
    if-eqz v4, :cond_4

    .line 225
    .line 226
    invoke-static {v3, v9, v8}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 227
    .line 228
    .line 229
    invoke-direct {p0, v3, v2}, Lmc/b;->b([BLjava/util/List;)V

    .line 230
    .line 231
    .line 232
    const/16 v4, 0x10

    .line 233
    .line 234
    invoke-static {v3, v9, v4}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 235
    .line 236
    .line 237
    invoke-direct {p0, v3, v2}, Lmc/b;->b([BLjava/util/List;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual/range {p2 .. p2}, Lpc/i;->q()J

    .line 241
    .line 242
    .line 243
    move-result-wide v4

    .line 244
    invoke-static {v7, v9, v4, v5}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 245
    .line 246
    .line 247
    invoke-direct {p0, v7, v2}, Lmc/b;->b([BLjava/util/List;)V

    .line 248
    .line 249
    .line 250
    invoke-direct {p0, v6, v2}, Lmc/b;->b([BLjava/util/List;)V

    .line 251
    .line 252
    .line 253
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lpc/i;->a()Lpc/a;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    if-eqz v4, :cond_5

    .line 258
    .line 259
    invoke-virtual/range {p2 .. p2}, Lpc/i;->a()Lpc/a;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {v0}, Lpc/a;->d()J

    .line 264
    .line 265
    .line 266
    move-result-wide v4

    .line 267
    long-to-int v5, v4

    .line 268
    int-to-short v4, v5

    .line 269
    invoke-static {v3, v9, v4}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 270
    .line 271
    .line 272
    invoke-direct {p0, v3, v2}, Lmc/b;->b([BLjava/util/List;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0}, Lpc/a;->c()I

    .line 276
    .line 277
    .line 278
    move-result v4

    .line 279
    int-to-short v4, v4

    .line 280
    invoke-static {v3, v9, v4}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 281
    .line 282
    .line 283
    invoke-direct {p0, v3, v2}, Lmc/b;->b([BLjava/util/List;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0}, Lpc/a;->f()I

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    int-to-short v4, v4

    .line 291
    invoke-static {v3, v9, v4}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 292
    .line 293
    .line 294
    invoke-direct {p0, v3, v2}, Lmc/b;->b([BLjava/util/List;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0}, Lpc/a;->e()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    invoke-direct {p0, v4, v2}, Lmc/b;->b([BLjava/util/List;)V

    .line 306
    .line 307
    .line 308
    new-array v4, v8, [B

    .line 309
    .line 310
    invoke-virtual {v0}, Lpc/a;->a()I

    .line 311
    .line 312
    .line 313
    move-result v5

    .line 314
    int-to-byte v5, v5

    .line 315
    aput-byte v5, v4, v9

    .line 316
    .line 317
    invoke-direct {p0, v4, v2}, Lmc/b;->b([BLjava/util/List;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0}, Lpc/a;->b()I

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    int-to-short v0, v0

    .line 325
    invoke-static {v3, v9, v0}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 326
    .line 327
    .line 328
    invoke-direct {p0, v3, v2}, Lmc/b;->b([BLjava/util/List;)V

    .line 329
    .line 330
    .line 331
    :cond_5
    invoke-direct {p0, v2}, Lmc/b;->a(Ljava/util/List;)[B

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    move-object/from16 v2, p3

    .line 336
    .line 337
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 338
    .line 339
    .line 340
    array-length v0, v0
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    return v0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    .line 344
    .line 345
    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 346
    .line 347
    .line 348
    throw v2

    .line 349
    :catch_1
    move-exception v0

    .line 350
    throw v0

    .line 351
    :cond_6
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 352
    .line 353
    const-string v2, "input parameters are null, cannot write local file header"

    .line 354
    .line 355
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    throw v0
.end method

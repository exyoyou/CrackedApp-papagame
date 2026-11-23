.class public Lmc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/RandomAccessFile;

.field private b:Lpc/o;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 5
    .line 6
    return-void
.end method

.method private a([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    const/4 v1, 0x4

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    new-array v0, v0, [B

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    aget-byte v2, p1, v1

    .line 13
    .line 14
    aput-byte v2, v0, v1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    aget-byte v2, p1, v1

    .line 18
    .line 19
    aput-byte v2, v0, v1

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    aget-byte v2, p1, v1

    .line 23
    .line 24
    aput-byte v2, v0, v1

    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    aget-byte p1, p1, v1

    .line 28
    .line 29
    aput-byte p1, v0, v1

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 33
    .line 34
    const-string v0, "invalid byte length, cannot expand to 8 bytes"

    .line 35
    .line 36
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 41
    .line 42
    const-string v0, "input parameter is null, cannot expand to 8 bytes"

    .line 43
    .line 44
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method private b(Ljava/util/ArrayList;)Lpc/a;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-lt v2, v3, :cond_1

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lpc/g;

    .line 19
    .line 20
    if-nez v3, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    invoke-virtual {v3}, Lpc/g;->b()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    const-wide/32 v6, 0x9901

    .line 28
    .line 29
    .line 30
    cmp-long v8, v4, v6

    .line 31
    .line 32
    if-nez v8, :cond_4

    .line 33
    .line 34
    invoke-virtual {v3}, Lpc/g;->a()[B

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    new-instance p1, Lpc/a;

    .line 41
    .line 42
    invoke-direct {p1}, Lpc/a;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v6, v7}, Lpc/a;->j(J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Lpc/g;->c()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-virtual {p1, v0}, Lpc/a;->i(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Lpc/g;->a()[B

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0, v1}, Lnet/lingala/zip4j/util/f;->i([BI)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-virtual {p1, v2}, Lpc/a;->l(I)V

    .line 64
    .line 65
    .line 66
    const/4 v2, 0x2

    .line 67
    new-array v3, v2, [B

    .line 68
    .line 69
    invoke-static {v0, v2, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    .line 71
    .line 72
    new-instance v1, Ljava/lang/String;

    .line 73
    .line 74
    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v1}, Lpc/a;->k(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/4 v1, 0x4

    .line 81
    aget-byte v1, v0, v1

    .line 82
    .line 83
    and-int/lit16 v1, v1, 0xff

    .line 84
    .line 85
    invoke-virtual {p1, v1}, Lpc/a;->g(I)V

    .line 86
    .line 87
    .line 88
    const/4 v1, 0x5

    .line 89
    invoke-static {v0, v1}, Lnet/lingala/zip4j/util/f;->i([BI)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-virtual {p1, v0}, Lpc/a;->h(I)V

    .line 94
    .line 95
    .line 96
    return-object p1

    .line 97
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 98
    .line 99
    const-string v0, "corrput AES extra data records"

    .line 100
    .line 101
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1

    .line 105
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 106
    .line 107
    goto :goto_0
.end method

.method private e(Lpc/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Lpc/h;->l()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Lpc/h;->l()Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-gtz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1}, Lpc/h;->l()Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p0, v0}, Lmc/a;->b(Ljava/util/ArrayList;)Lpc/a;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lpc/h;->F(Lpc/a;)V

    .line 31
    .line 32
    .line 33
    const/16 v0, 0x63

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lpc/h;->O(I)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void

    .line 39
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 40
    .line 41
    const-string v0, "file header is null in reading Zip64 Extended Info"

    .line 42
    .line 43
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method private f(Lpc/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Lpc/i;->g()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Lpc/i;->g()Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-gtz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1}, Lpc/i;->g()Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p0, v0}, Lmc/a;->b(Ljava/util/ArrayList;)Lpc/a;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lpc/i;->x(Lpc/a;)V

    .line 31
    .line 32
    .line 33
    const/16 v0, 0x63

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lpc/i;->E(I)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void

    .line 39
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 40
    .line 41
    const-string v0, "file header is null in reading Zip64 Extended Info"

    .line 42
    .line 43
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method private g(Lpc/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lpc/h;->m()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-direct {p0, v0}, Lmc/a;->m(I)Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Lpc/h;->Q(Ljava/util/ArrayList;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 23
    .line 24
    const-string v0, "file header is null"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 31
    .line 32
    const-string v0, "invalid file handler when trying to read extra data record"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method private h(Lpc/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lpc/i;->i()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-direct {p0, v0}, Lmc/a;->m(I)Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Lpc/i;->F(Ljava/util/ArrayList;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 23
    .line 24
    const-string v0, "file header is null"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 31
    .line 32
    const-string v0, "invalid file handler when trying to read extra data record"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method private i(Lpc/h;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    invoke-virtual {p1}, Lpc/h;->l()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    invoke-virtual {p1}, Lpc/h;->l()Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-gtz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1}, Lpc/h;->l()Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p1}, Lpc/h;->x()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-virtual {p1}, Lpc/h;->e()J

    .line 29
    .line 30
    .line 31
    move-result-wide v5

    .line 32
    invoke-virtual {p1}, Lpc/h;->u()J

    .line 33
    .line 34
    .line 35
    move-result-wide v7

    .line 36
    invoke-virtual {p1}, Lpc/h;->i()I

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    move-object v1, p0

    .line 41
    invoke-direct/range {v1 .. v9}, Lmc/a;->r(Ljava/util/ArrayList;JJJI)Lpc/n;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lpc/h;->g0(Lpc/n;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lpc/n;->f()J

    .line 51
    .line 52
    .line 53
    move-result-wide v1

    .line 54
    const-wide/16 v3, -0x1

    .line 55
    .line 56
    cmp-long v5, v1, v3

    .line 57
    .line 58
    if-eqz v5, :cond_1

    .line 59
    .line 60
    invoke-virtual {v0}, Lpc/n;->f()J

    .line 61
    .line 62
    .line 63
    move-result-wide v1

    .line 64
    invoke-virtual {p1, v1, v2}, Lpc/h;->d0(J)V

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-virtual {v0}, Lpc/n;->a()J

    .line 68
    .line 69
    .line 70
    move-result-wide v1

    .line 71
    cmp-long v5, v1, v3

    .line 72
    .line 73
    if-eqz v5, :cond_2

    .line 74
    .line 75
    invoke-virtual {v0}, Lpc/n;->a()J

    .line 76
    .line 77
    .line 78
    move-result-wide v1

    .line 79
    invoke-virtual {p1, v1, v2}, Lpc/h;->G(J)V

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-virtual {v0}, Lpc/n;->d()J

    .line 83
    .line 84
    .line 85
    move-result-wide v1

    .line 86
    cmp-long v5, v1, v3

    .line 87
    .line 88
    if-eqz v5, :cond_3

    .line 89
    .line 90
    invoke-virtual {v0}, Lpc/n;->d()J

    .line 91
    .line 92
    .line 93
    move-result-wide v1

    .line 94
    invoke-virtual {p1, v1, v2}, Lpc/h;->a0(J)V

    .line 95
    .line 96
    .line 97
    :cond_3
    invoke-virtual {v0}, Lpc/n;->b()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    const/4 v2, -0x1

    .line 102
    if-eq v1, v2, :cond_4

    .line 103
    .line 104
    invoke-virtual {v0}, Lpc/n;->b()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-virtual {p1, v0}, Lpc/h;->M(I)V

    .line 109
    .line 110
    .line 111
    :cond_4
    :goto_0
    return-void

    .line 112
    :cond_5
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 113
    .line 114
    const-string v0, "file header is null in reading Zip64 Extended Info"

    .line 115
    .line 116
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p1
.end method

.method private j(Lpc/i;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Lpc/i;->g()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p1}, Lpc/i;->g()Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-gtz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1}, Lpc/i;->g()Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p1}, Lpc/i;->q()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-virtual {p1}, Lpc/i;->b()J

    .line 29
    .line 30
    .line 31
    move-result-wide v5

    .line 32
    const-wide/16 v7, -0x1

    .line 33
    .line 34
    const/4 v9, -0x1

    .line 35
    move-object v1, p0

    .line 36
    invoke-direct/range {v1 .. v9}, Lmc/a;->r(Ljava/util/ArrayList;JJJI)Lpc/n;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lpc/i;->T(Lpc/n;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lpc/n;->f()J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    const-wide/16 v3, -0x1

    .line 50
    .line 51
    cmp-long v5, v1, v3

    .line 52
    .line 53
    if-eqz v5, :cond_1

    .line 54
    .line 55
    invoke-virtual {v0}, Lpc/n;->f()J

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    invoke-virtual {p1, v1, v2}, Lpc/i;->Q(J)V

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-virtual {v0}, Lpc/n;->a()J

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    cmp-long v5, v1, v3

    .line 67
    .line 68
    if-eqz v5, :cond_2

    .line 69
    .line 70
    invoke-virtual {v0}, Lpc/n;->a()J

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    invoke-virtual {p1, v0, v1}, Lpc/i;->y(J)V

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_0
    return-void

    .line 78
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 79
    .line 80
    const-string v0, "file header is null in reading Zip64 Extended Info"

    .line 81
    .line 82
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1
.end method

.method private k()Lpc/c;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "file.separator"

    .line 4
    .line 5
    const-string v2, ":"

    .line 6
    .line 7
    iget-object v3, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 8
    .line 9
    if-eqz v3, :cond_f

    .line 10
    .line 11
    iget-object v3, v1, Lmc/a;->b:Lpc/o;

    .line 12
    .line 13
    invoke-virtual {v3}, Lpc/o;->f()Lpc/f;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eqz v3, :cond_e

    .line 18
    .line 19
    :try_start_0
    new-instance v3, Lpc/c;

    .line 20
    .line 21
    invoke-direct {v3}, Lpc/c;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v4, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v5, v1, Lmc/a;->b:Lpc/o;

    .line 30
    .line 31
    invoke-virtual {v5}, Lpc/o;->f()Lpc/f;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v5}, Lpc/f;->f()J

    .line 36
    .line 37
    .line 38
    move-result-wide v6

    .line 39
    invoke-virtual {v5}, Lpc/f;->i()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    iget-object v8, v1, Lmc/a;->b:Lpc/o;

    .line 44
    .line 45
    invoke-virtual {v8}, Lpc/o;->q()Z

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    if-eqz v8, :cond_0

    .line 50
    .line 51
    iget-object v5, v1, Lmc/a;->b:Lpc/o;

    .line 52
    .line 53
    invoke-virtual {v5}, Lpc/o;->l()Lpc/m;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v5}, Lpc/m;->d()J

    .line 58
    .line 59
    .line 60
    move-result-wide v6

    .line 61
    iget-object v5, v1, Lmc/a;->b:Lpc/o;

    .line 62
    .line 63
    invoke-virtual {v5}, Lpc/o;->l()Lpc/m;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v5}, Lpc/m;->h()J

    .line 68
    .line 69
    .line 70
    move-result-wide v8

    .line 71
    long-to-int v5, v8

    .line 72
    :cond_0
    iget-object v8, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 73
    .line 74
    invoke-virtual {v8, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 75
    .line 76
    .line 77
    const/4 v6, 0x4

    .line 78
    new-array v6, v6, [B

    .line 79
    .line 80
    const/4 v7, 0x2

    .line 81
    new-array v8, v7, [B

    .line 82
    .line 83
    const/4 v9, 0x0

    .line 84
    const/4 v10, 0x0

    .line 85
    :goto_0
    if-lt v10, v5, :cond_3

    .line 86
    .line 87
    invoke-virtual {v3, v4}, Lpc/c;->d(Ljava/util/ArrayList;)V

    .line 88
    .line 89
    .line 90
    new-instance v0, Lpc/e;

    .line 91
    .line 92
    invoke-direct {v0}, Lpc/e;-><init>()V

    .line 93
    .line 94
    .line 95
    iget-object v2, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 96
    .line 97
    invoke-direct {v1, v2, v6}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 98
    .line 99
    .line 100
    invoke-static {v6, v9}, Lnet/lingala/zip4j/util/f;->e([BI)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    int-to-long v4, v2

    .line 105
    const-wide/32 v6, 0x5054b50

    .line 106
    .line 107
    .line 108
    cmp-long v10, v4, v6

    .line 109
    .line 110
    if-eqz v10, :cond_1

    .line 111
    .line 112
    return-object v3

    .line 113
    :cond_1
    invoke-virtual {v0, v2}, Lpc/e;->d(I)V

    .line 114
    .line 115
    .line 116
    iget-object v2, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 117
    .line 118
    invoke-direct {v1, v2, v8}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 119
    .line 120
    .line 121
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/f;->i([BI)I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    invoke-virtual {v0, v2}, Lpc/e;->f(I)V

    .line 126
    .line 127
    .line 128
    if-lez v2, :cond_2

    .line 129
    .line 130
    new-array v2, v2, [B

    .line 131
    .line 132
    iget-object v4, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 133
    .line 134
    invoke-direct {v1, v4, v2}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 135
    .line 136
    .line 137
    new-instance v4, Ljava/lang/String;

    .line 138
    .line 139
    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v4}, Lpc/e;->e(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :cond_2
    return-object v3

    .line 146
    :cond_3
    new-instance v11, Lpc/h;

    .line 147
    .line 148
    invoke-direct {v11}, Lpc/h;-><init>()V

    .line 149
    .line 150
    .line 151
    iget-object v12, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 152
    .line 153
    invoke-direct {v1, v12, v6}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 154
    .line 155
    .line 156
    invoke-static {v6, v9}, Lnet/lingala/zip4j/util/f;->e([BI)I

    .line 157
    .line 158
    .line 159
    move-result v12

    .line 160
    int-to-long v13, v12

    .line 161
    const-wide/32 v15, 0x2014b50    # 1.6619997E-316

    .line 162
    .line 163
    .line 164
    const/4 v7, 0x1

    .line 165
    cmp-long v17, v13, v15

    .line 166
    .line 167
    if-nez v17, :cond_d

    .line 168
    .line 169
    invoke-virtual {v11, v12}, Lpc/h;->c0(I)V

    .line 170
    .line 171
    .line 172
    iget-object v12, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 173
    .line 174
    invoke-direct {v1, v12, v8}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 175
    .line 176
    .line 177
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/f;->i([BI)I

    .line 178
    .line 179
    .line 180
    move-result v12

    .line 181
    invoke-virtual {v11, v12}, Lpc/h;->e0(I)V

    .line 182
    .line 183
    .line 184
    iget-object v12, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 185
    .line 186
    invoke-direct {v1, v12, v8}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 187
    .line 188
    .line 189
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/f;->i([BI)I

    .line 190
    .line 191
    .line 192
    move-result v12

    .line 193
    invoke-virtual {v11, v12}, Lpc/h;->f0(I)V

    .line 194
    .line 195
    .line 196
    iget-object v12, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 197
    .line 198
    invoke-direct {v1, v12, v8}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 199
    .line 200
    .line 201
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/f;->i([BI)I

    .line 202
    .line 203
    .line 204
    move-result v12

    .line 205
    and-int/lit16 v12, v12, 0x800

    .line 206
    .line 207
    if-eqz v12, :cond_4

    .line 208
    .line 209
    const/4 v12, 0x1

    .line 210
    goto :goto_1

    .line 211
    :cond_4
    const/4 v12, 0x0

    .line 212
    :goto_1
    invoke-virtual {v11, v12}, Lpc/h;->W(Z)V

    .line 213
    .line 214
    .line 215
    aget-byte v12, v8, v9

    .line 216
    .line 217
    and-int/lit8 v13, v12, 0x1

    .line 218
    .line 219
    if-eqz v13, :cond_5

    .line 220
    .line 221
    invoke-virtual {v11, v7}, Lpc/h;->N(Z)V

    .line 222
    .line 223
    .line 224
    :cond_5
    invoke-virtual {v8}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v13

    .line 228
    check-cast v13, [B

    .line 229
    .line 230
    invoke-virtual {v11, v13}, Lpc/h;->X([B)V

    .line 231
    .line 232
    .line 233
    shr-int/lit8 v12, v12, 0x3

    .line 234
    .line 235
    if-ne v12, v7, :cond_6

    .line 236
    .line 237
    const/4 v12, 0x1

    .line 238
    goto :goto_2

    .line 239
    :cond_6
    const/4 v12, 0x0

    .line 240
    :goto_2
    invoke-virtual {v11, v12}, Lpc/h;->K(Z)V

    .line 241
    .line 242
    .line 243
    iget-object v12, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 244
    .line 245
    invoke-direct {v1, v12, v8}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 246
    .line 247
    .line 248
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/f;->i([BI)I

    .line 249
    .line 250
    .line 251
    move-result v12

    .line 252
    invoke-virtual {v11, v12}, Lpc/h;->H(I)V

    .line 253
    .line 254
    .line 255
    iget-object v12, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 256
    .line 257
    invoke-direct {v1, v12, v6}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 258
    .line 259
    .line 260
    invoke-static {v6, v9}, Lnet/lingala/zip4j/util/f;->e([BI)I

    .line 261
    .line 262
    .line 263
    move-result v12

    .line 264
    invoke-virtual {v11, v12}, Lpc/h;->Z(I)V

    .line 265
    .line 266
    .line 267
    iget-object v12, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 268
    .line 269
    invoke-direct {v1, v12, v6}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 270
    .line 271
    .line 272
    invoke-static {v6, v9}, Lnet/lingala/zip4j/util/f;->e([BI)I

    .line 273
    .line 274
    .line 275
    move-result v12

    .line 276
    int-to-long v12, v12

    .line 277
    invoke-virtual {v11, v12, v13}, Lpc/h;->I(J)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v6}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v12

    .line 284
    check-cast v12, [B

    .line 285
    .line 286
    invoke-virtual {v11, v12}, Lpc/h;->J([B)V

    .line 287
    .line 288
    .line 289
    iget-object v12, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 290
    .line 291
    invoke-direct {v1, v12, v6}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 292
    .line 293
    .line 294
    invoke-direct {v1, v6}, Lmc/a;->a([B)[B

    .line 295
    .line 296
    .line 297
    move-result-object v12

    .line 298
    invoke-static {v12, v9}, Lnet/lingala/zip4j/util/f;->g([BI)J

    .line 299
    .line 300
    .line 301
    move-result-wide v12

    .line 302
    invoke-virtual {v11, v12, v13}, Lpc/h;->G(J)V

    .line 303
    .line 304
    .line 305
    iget-object v12, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 306
    .line 307
    invoke-direct {v1, v12, v6}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 308
    .line 309
    .line 310
    invoke-direct {v1, v6}, Lmc/a;->a([B)[B

    .line 311
    .line 312
    .line 313
    move-result-object v12

    .line 314
    invoke-static {v12, v9}, Lnet/lingala/zip4j/util/f;->g([BI)J

    .line 315
    .line 316
    .line 317
    move-result-wide v12

    .line 318
    invoke-virtual {v11, v12, v13}, Lpc/h;->d0(J)V

    .line 319
    .line 320
    .line 321
    iget-object v12, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 322
    .line 323
    invoke-direct {v1, v12, v8}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 324
    .line 325
    .line 326
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/f;->i([BI)I

    .line 327
    .line 328
    .line 329
    move-result v12

    .line 330
    invoke-virtual {v11, v12}, Lpc/h;->V(I)V

    .line 331
    .line 332
    .line 333
    iget-object v13, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 334
    .line 335
    invoke-direct {v1, v13, v8}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 336
    .line 337
    .line 338
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/f;->i([BI)I

    .line 339
    .line 340
    .line 341
    move-result v13

    .line 342
    invoke-virtual {v11, v13}, Lpc/h;->R(I)V

    .line 343
    .line 344
    .line 345
    iget-object v13, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 346
    .line 347
    invoke-direct {v1, v13, v8}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 348
    .line 349
    .line 350
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/f;->i([BI)I

    .line 351
    .line 352
    .line 353
    move-result v13

    .line 354
    new-instance v14, Ljava/lang/String;

    .line 355
    .line 356
    invoke-direct {v14, v8}, Ljava/lang/String;-><init>([B)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v11, v14}, Lpc/h;->S(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    iget-object v14, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 363
    .line 364
    invoke-direct {v1, v14, v8}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 365
    .line 366
    .line 367
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/f;->i([BI)I

    .line 368
    .line 369
    .line 370
    move-result v14

    .line 371
    invoke-virtual {v11, v14}, Lpc/h;->M(I)V

    .line 372
    .line 373
    .line 374
    iget-object v14, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 375
    .line 376
    invoke-direct {v1, v14, v8}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 377
    .line 378
    .line 379
    invoke-virtual {v8}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v14

    .line 383
    check-cast v14, [B

    .line 384
    .line 385
    invoke-virtual {v11, v14}, Lpc/h;->Y([B)V

    .line 386
    .line 387
    .line 388
    iget-object v14, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 389
    .line 390
    invoke-direct {v1, v14, v6}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 391
    .line 392
    .line 393
    invoke-virtual {v6}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v14

    .line 397
    check-cast v14, [B

    .line 398
    .line 399
    invoke-virtual {v11, v14}, Lpc/h;->P([B)V

    .line 400
    .line 401
    .line 402
    iget-object v14, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 403
    .line 404
    invoke-direct {v1, v14, v6}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 405
    .line 406
    .line 407
    invoke-direct {v1, v6}, Lmc/a;->a([B)[B

    .line 408
    .line 409
    .line 410
    move-result-object v14

    .line 411
    invoke-static {v14, v9}, Lnet/lingala/zip4j/util/f;->g([BI)J

    .line 412
    .line 413
    .line 414
    move-result-wide v14

    .line 415
    const-wide v17, 0xffffffffL

    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    and-long v14, v14, v17

    .line 421
    .line 422
    invoke-virtual {v11, v14, v15}, Lpc/h;->a0(J)V

    .line 423
    .line 424
    .line 425
    if-lez v12, :cond_b

    .line 426
    .line 427
    new-array v12, v12, [B

    .line 428
    .line 429
    iget-object v14, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 430
    .line 431
    invoke-direct {v1, v14, v12}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 432
    .line 433
    .line 434
    iget-object v14, v1, Lmc/a;->b:Lpc/o;

    .line 435
    .line 436
    invoke-virtual {v14}, Lpc/o;->g()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v14

    .line 440
    invoke-static {v14}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    .line 441
    .line 442
    .line 443
    move-result v14

    .line 444
    if-eqz v14, :cond_7

    .line 445
    .line 446
    new-instance v14, Ljava/lang/String;

    .line 447
    .line 448
    iget-object v15, v1, Lmc/a;->b:Lpc/o;

    .line 449
    .line 450
    invoke-virtual {v15}, Lpc/o;->g()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v15

    .line 454
    invoke-direct {v14, v12, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 455
    .line 456
    .line 457
    goto :goto_3

    .line 458
    :cond_7
    invoke-virtual {v11}, Lpc/h;->E()Z

    .line 459
    .line 460
    .line 461
    move-result v14

    .line 462
    invoke-static {v12, v14}, Lnet/lingala/zip4j/util/h;->h([BZ)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v14

    .line 466
    :goto_3
    if-eqz v14, :cond_a

    .line 467
    .line 468
    new-instance v12, Ljava/lang/StringBuffer;

    .line 469
    .line 470
    invoke-direct {v12, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v15

    .line 477
    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v12

    .line 484
    invoke-virtual {v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 485
    .line 486
    .line 487
    move-result v12

    .line 488
    if-ltz v12, :cond_8

    .line 489
    .line 490
    new-instance v12, Ljava/lang/StringBuffer;

    .line 491
    .line 492
    invoke-direct {v12, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v15

    .line 499
    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v12

    .line 506
    invoke-virtual {v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 507
    .line 508
    .line 509
    move-result v12

    .line 510
    const/4 v15, 0x2

    .line 511
    add-int/2addr v12, v15

    .line 512
    invoke-virtual {v14, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v14

    .line 516
    goto :goto_4

    .line 517
    :cond_8
    const/4 v15, 0x2

    .line 518
    :goto_4
    invoke-virtual {v11, v14}, Lpc/h;->U(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    const-string v12, "/"

    .line 522
    .line 523
    invoke-virtual {v14, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 524
    .line 525
    .line 526
    move-result v12

    .line 527
    if-nez v12, :cond_9

    .line 528
    .line 529
    const-string v12, "\\"

    .line 530
    .line 531
    invoke-virtual {v14, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 532
    .line 533
    .line 534
    move-result v12

    .line 535
    if-nez v12, :cond_9

    .line 536
    .line 537
    const/4 v7, 0x0

    .line 538
    :cond_9
    invoke-virtual {v11, v7}, Lpc/h;->L(Z)V

    .line 539
    .line 540
    .line 541
    goto :goto_5

    .line 542
    :cond_a
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 543
    .line 544
    const-string v2, "fileName is null when reading central directory"

    .line 545
    .line 546
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    throw v0

    .line 550
    :cond_b
    const/4 v15, 0x2

    .line 551
    const/4 v7, 0x0

    .line 552
    invoke-virtual {v11, v7}, Lpc/h;->U(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    :goto_5
    invoke-direct {v1, v11}, Lmc/a;->g(Lpc/h;)V

    .line 556
    .line 557
    .line 558
    invoke-direct {v1, v11}, Lmc/a;->i(Lpc/h;)V

    .line 559
    .line 560
    .line 561
    invoke-direct {v1, v11}, Lmc/a;->e(Lpc/h;)V

    .line 562
    .line 563
    .line 564
    if-lez v13, :cond_c

    .line 565
    .line 566
    new-array v7, v13, [B

    .line 567
    .line 568
    iget-object v12, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 569
    .line 570
    invoke-direct {v1, v12, v7}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 571
    .line 572
    .line 573
    new-instance v12, Ljava/lang/String;

    .line 574
    .line 575
    invoke-direct {v12, v7}, Ljava/lang/String;-><init>([B)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v11, v12}, Lpc/h;->S(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    :cond_c
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    add-int/lit8 v10, v10, 0x1

    .line 585
    .line 586
    const/4 v7, 0x2

    .line 587
    goto/16 :goto_0

    .line 588
    .line 589
    :cond_d
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 590
    .line 591
    new-instance v2, Ljava/lang/StringBuffer;

    .line 592
    .line 593
    const-string v3, "Expected central directory entry not found (#"

    .line 594
    .line 595
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    add-int/2addr v10, v7

    .line 599
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 600
    .line 601
    .line 602
    const-string v3, ")"

    .line 603
    .line 604
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 605
    .line 606
    .line 607
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v2

    .line 611
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :catch_0
    move-exception v0

    .line 616
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    .line 617
    .line 618
    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 619
    .line 620
    .line 621
    throw v2

    .line 622
    :cond_e
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 623
    .line 624
    const-string v2, "EndCentralRecord was null, maybe a corrupt zip file"

    .line 625
    .line 626
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    throw v0

    .line 630
    :cond_f
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 631
    .line 632
    const-string v2, "random access file was null"

    .line 633
    .line 634
    const/4 v3, 0x3

    .line 635
    invoke-direct {v0, v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    .line 636
    .line 637
    .line 638
    throw v0
.end method

.method private l()Lpc/f;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    :try_start_0
    new-array v2, v1, [B

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    const-wide/16 v5, 0x16

    .line 13
    .line 14
    sub-long/2addr v3, v5

    .line 15
    new-instance v0, Lpc/f;

    .line 16
    .line 17
    invoke-direct {v0}, Lpc/f;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x0

    .line 22
    :goto_0
    iget-object v7, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 23
    .line 24
    const-wide/16 v8, 0x1

    .line 25
    .line 26
    sub-long v8, v3, v8

    .line 27
    .line 28
    invoke-virtual {v7, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 29
    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    add-int/2addr v6, v3

    .line 33
    iget-object v4, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 34
    .line 35
    invoke-static {v4, v2}, Lnet/lingala/zip4j/util/f;->f(Ljava/io/DataInput;[B)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    int-to-long v10, v4

    .line 40
    const-wide/32 v12, 0x6054b50

    .line 41
    .line 42
    .line 43
    cmp-long v4, v10, v12

    .line 44
    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    const/16 v4, 0xbb8

    .line 48
    .line 49
    if-le v6, v4, :cond_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    move-wide v3, v8

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    :goto_1
    invoke-static {v2, v5}, Lnet/lingala/zip4j/util/f;->e([BI)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    int-to-long v6, v2

    .line 59
    cmp-long v2, v6, v12

    .line 60
    .line 61
    if-nez v2, :cond_4

    .line 62
    .line 63
    new-array v2, v1, [B

    .line 64
    .line 65
    const/4 v4, 0x2

    .line 66
    new-array v4, v4, [B

    .line 67
    .line 68
    invoke-virtual {v0, v12, v13}, Lpc/f;->q(J)V

    .line 69
    .line 70
    .line 71
    iget-object v6, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 72
    .line 73
    invoke-direct {p0, v6, v4}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 74
    .line 75
    .line 76
    invoke-static {v4, v5}, Lnet/lingala/zip4j/util/f;->i([BI)I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    invoke-virtual {v0, v6}, Lpc/f;->n(I)V

    .line 81
    .line 82
    .line 83
    iget-object v6, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 84
    .line 85
    invoke-direct {p0, v6, v4}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 86
    .line 87
    .line 88
    invoke-static {v4, v5}, Lnet/lingala/zip4j/util/f;->i([BI)I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    invoke-virtual {v0, v6}, Lpc/f;->o(I)V

    .line 93
    .line 94
    .line 95
    iget-object v6, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 96
    .line 97
    invoke-direct {p0, v6, v4}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 98
    .line 99
    .line 100
    invoke-static {v4, v5}, Lnet/lingala/zip4j/util/f;->i([BI)I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    invoke-virtual {v0, v6}, Lpc/f;->t(I)V

    .line 105
    .line 106
    .line 107
    iget-object v6, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 108
    .line 109
    invoke-direct {p0, v6, v4}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 110
    .line 111
    .line 112
    invoke-static {v4, v5}, Lnet/lingala/zip4j/util/f;->i([BI)I

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    invoke-virtual {v0, v6}, Lpc/f;->s(I)V

    .line 117
    .line 118
    .line 119
    iget-object v6, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 120
    .line 121
    invoke-direct {p0, v6, v2}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 122
    .line 123
    .line 124
    invoke-static {v2, v5}, Lnet/lingala/zip4j/util/f;->e([BI)I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    invoke-virtual {v0, v6}, Lpc/f;->r(I)V

    .line 129
    .line 130
    .line 131
    iget-object v6, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 132
    .line 133
    invoke-direct {p0, v6, v2}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 134
    .line 135
    .line 136
    invoke-direct {p0, v2}, Lmc/a;->a([B)[B

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-static {v2, v5}, Lnet/lingala/zip4j/util/f;->g([BI)J

    .line 141
    .line 142
    .line 143
    move-result-wide v6

    .line 144
    invoke-virtual {v0, v6, v7}, Lpc/f;->p(J)V

    .line 145
    .line 146
    .line 147
    iget-object v2, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 148
    .line 149
    invoke-direct {p0, v2, v4}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 150
    .line 151
    .line 152
    invoke-static {v4, v5}, Lnet/lingala/zip4j/util/f;->i([BI)I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    invoke-virtual {v0, v2}, Lpc/f;->m(I)V

    .line 157
    .line 158
    .line 159
    if-lez v2, :cond_2

    .line 160
    .line 161
    new-array v2, v2, [B

    .line 162
    .line 163
    iget-object v4, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 164
    .line 165
    invoke-direct {p0, v4, v2}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 166
    .line 167
    .line 168
    new-instance v4, Ljava/lang/String;

    .line 169
    .line 170
    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v4}, Lpc/f;->k(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v2}, Lpc/f;->l([B)V

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_2
    const/4 v2, 0x0

    .line 181
    invoke-virtual {v0, v2}, Lpc/f;->k(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :goto_2
    invoke-virtual {v0}, Lpc/f;->d()I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-lez v2, :cond_3

    .line 189
    .line 190
    iget-object v2, p0, Lmc/a;->b:Lpc/o;

    .line 191
    .line 192
    invoke-virtual {v2, v3}, Lpc/o;->z(Z)V

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_3
    iget-object v2, p0, Lmc/a;->b:Lpc/o;

    .line 197
    .line 198
    invoke-virtual {v2, v5}, Lpc/o;->z(Z)V

    .line 199
    .line 200
    .line 201
    :goto_3
    return-object v0

    .line 202
    :cond_4
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 203
    .line 204
    const-string v2, "zip headers not found. probably not a zip file"

    .line 205
    .line 206
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    .line 212
    .line 213
    const-string v3, "Probably not a zip file or a corrupted zip file"

    .line 214
    .line 215
    invoke-direct {v2, v3, v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 216
    .line 217
    .line 218
    throw v2

    .line 219
    :cond_5
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 220
    .line 221
    const-string v1, "random access file was null"

    .line 222
    .line 223
    const/4 v2, 0x3

    .line 224
    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    .line 225
    .line 226
    .line 227
    throw v0
.end method

.method private m(I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-gtz p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    new-array v1, p1, [B

    .line 6
    .line 7
    iget-object v2, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    :goto_0
    if-lt v4, p1, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    new-instance v5, Lpc/g;

    .line 23
    .line 24
    invoke-direct {v5}, Lpc/g;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v4}, Lnet/lingala/zip4j/util/f;->i([BI)I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    int-to-long v6, v6

    .line 32
    invoke-virtual {v5, v6, v7}, Lpc/g;->e(J)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v4, v4, 0x2

    .line 36
    .line 37
    invoke-static {v1, v4}, Lnet/lingala/zip4j/util/f;->i([BI)I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    add-int/lit8 v7, v6, 0x2

    .line 42
    .line 43
    if-le v7, p1, :cond_3

    .line 44
    .line 45
    invoke-static {v1, v4}, Lnet/lingala/zip4j/util/f;->h([BI)S

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    add-int/lit8 v7, v6, 0x2

    .line 50
    .line 51
    if-le v7, p1, :cond_3

    .line 52
    .line 53
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-lez p1, :cond_2

    .line 58
    .line 59
    return-object v2

    .line 60
    :cond_2
    return-object v0

    .line 61
    :cond_3
    invoke-virtual {v5, v6}, Lpc/g;->f(I)V

    .line 62
    .line 63
    .line 64
    add-int/lit8 v4, v4, 0x2

    .line 65
    .line 66
    if-lez v6, :cond_4

    .line 67
    .line 68
    new-array v7, v6, [B

    .line 69
    .line 70
    invoke-static {v1, v4, v7, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v7}, Lpc/g;->d([B)V

    .line 74
    .line 75
    .line 76
    :cond_4
    add-int/2addr v4, v6

    .line 77
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception p1

    .line 82
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 83
    .line 84
    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    throw v0
.end method

.method private n(Ljava/io/RandomAccessFile;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    :try_start_0
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, p2, v1, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, -0x1

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    return-object p2

    .line 11
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 12
    .line 13
    const-string p2, "unexpected end of file when reading short buff"

    .line 14
    .line 15
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 21
    .line 22
    const-string v0, "IOException when reading short buff"

    .line 23
    .line 24
    invoke-direct {p2, v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    throw p2
.end method

.method private p()Lpc/l;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    new-instance v0, Lpc/l;

    .line 6
    .line 7
    invoke-direct {v0}, Lpc/l;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lmc/a;->s()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    new-array v1, v1, [B

    .line 15
    .line 16
    const/16 v2, 0x8

    .line 17
    .line 18
    new-array v2, v2, [B

    .line 19
    .line 20
    iget-object v3, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 21
    .line 22
    invoke-direct {p0, v3, v1}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 23
    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static {v1, v3}, Lnet/lingala/zip4j/util/f;->e([BI)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    int-to-long v4, v4

    .line 31
    const-wide/32 v6, 0x7064b50

    .line 32
    .line 33
    .line 34
    cmp-long v8, v4, v6

    .line 35
    .line 36
    if-nez v8, :cond_0

    .line 37
    .line 38
    iget-object v6, p0, Lmc/a;->b:Lpc/o;

    .line 39
    .line 40
    const/4 v7, 0x1

    .line 41
    invoke-virtual {v6, v7}, Lpc/o;->E(Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v4, v5}, Lpc/l;->g(J)V

    .line 45
    .line 46
    .line 47
    iget-object v4, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 48
    .line 49
    invoke-direct {p0, v4, v1}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v3}, Lnet/lingala/zip4j/util/f;->e([BI)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    invoke-virtual {v0, v4}, Lpc/l;->e(I)V

    .line 57
    .line 58
    .line 59
    iget-object v4, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 60
    .line 61
    invoke-direct {p0, v4, v2}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 62
    .line 63
    .line 64
    invoke-static {v2, v3}, Lnet/lingala/zip4j/util/f;->g([BI)J

    .line 65
    .line 66
    .line 67
    move-result-wide v4

    .line 68
    invoke-virtual {v0, v4, v5}, Lpc/l;->f(J)V

    .line 69
    .line 70
    .line 71
    iget-object v2, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 72
    .line 73
    invoke-direct {p0, v2, v1}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v3}, Lnet/lingala/zip4j/util/f;->e([BI)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-virtual {v0, v1}, Lpc/l;->h(I)V

    .line 81
    .line 82
    .line 83
    return-object v0

    .line 84
    :cond_0
    iget-object v0, p0, Lmc/a;->b:Lpc/o;

    .line 85
    .line 86
    invoke-virtual {v0, v3}, Lpc/o;->E(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    .line 89
    const/4 v0, 0x0

    .line 90
    return-object v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 93
    .line 94
    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    throw v1

    .line 98
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 99
    .line 100
    const-string v1, "invalid file handler when trying to read Zip64EndCentralDirLocator"

    .line 101
    .line 102
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v0
.end method

.method private q()Lpc/m;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmc/a;->b:Lpc/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lpc/o;->k()Lpc/l;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lmc/a;->b:Lpc/o;

    .line 10
    .line 11
    invoke-virtual {v0}, Lpc/o;->k()Lpc/l;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lpc/l;->b()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    cmp-long v4, v0, v2

    .line 22
    .line 23
    if-ltz v4, :cond_2

    .line 24
    .line 25
    :try_start_0
    iget-object v4, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 26
    .line 27
    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lpc/m;

    .line 31
    .line 32
    invoke-direct {v0}, Lpc/m;-><init>()V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x2

    .line 36
    new-array v1, v1, [B

    .line 37
    .line 38
    const/4 v4, 0x4

    .line 39
    new-array v4, v4, [B

    .line 40
    .line 41
    const/16 v5, 0x8

    .line 42
    .line 43
    new-array v5, v5, [B

    .line 44
    .line 45
    iget-object v6, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 46
    .line 47
    invoke-direct {p0, v6, v4}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 48
    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    invoke-static {v4, v6}, Lnet/lingala/zip4j/util/f;->e([BI)I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    int-to-long v7, v7

    .line 56
    const-wide/32 v9, 0x6064b50

    .line 57
    .line 58
    .line 59
    cmp-long v11, v7, v9

    .line 60
    .line 61
    if-nez v11, :cond_1

    .line 62
    .line 63
    invoke-virtual {v0, v7, v8}, Lpc/m;->p(J)V

    .line 64
    .line 65
    .line 66
    iget-object v7, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 67
    .line 68
    invoke-direct {p0, v7, v5}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 69
    .line 70
    .line 71
    invoke-static {v5, v6}, Lnet/lingala/zip4j/util/f;->g([BI)J

    .line 72
    .line 73
    .line 74
    move-result-wide v7

    .line 75
    invoke-virtual {v0, v7, v8}, Lpc/m;->r(J)V

    .line 76
    .line 77
    .line 78
    iget-object v7, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 79
    .line 80
    invoke-direct {p0, v7, v1}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 81
    .line 82
    .line 83
    invoke-static {v1, v6}, Lnet/lingala/zip4j/util/f;->i([BI)I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    invoke-virtual {v0, v7}, Lpc/m;->u(I)V

    .line 88
    .line 89
    .line 90
    iget-object v7, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 91
    .line 92
    invoke-direct {p0, v7, v1}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 93
    .line 94
    .line 95
    invoke-static {v1, v6}, Lnet/lingala/zip4j/util/f;->i([BI)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-virtual {v0, v1}, Lpc/m;->v(I)V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 103
    .line 104
    invoke-direct {p0, v1, v4}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 105
    .line 106
    .line 107
    invoke-static {v4, v6}, Lnet/lingala/zip4j/util/f;->e([BI)I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    invoke-virtual {v0, v1}, Lpc/m;->m(I)V

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 115
    .line 116
    invoke-direct {p0, v1, v4}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 117
    .line 118
    .line 119
    invoke-static {v4, v6}, Lnet/lingala/zip4j/util/f;->e([BI)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-virtual {v0, v1}, Lpc/m;->n(I)V

    .line 124
    .line 125
    .line 126
    iget-object v1, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 127
    .line 128
    invoke-direct {p0, v1, v5}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 129
    .line 130
    .line 131
    invoke-static {v5, v6}, Lnet/lingala/zip4j/util/f;->g([BI)J

    .line 132
    .line 133
    .line 134
    move-result-wide v7

    .line 135
    invoke-virtual {v0, v7, v8}, Lpc/m;->t(J)V

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 139
    .line 140
    invoke-direct {p0, v1, v5}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 141
    .line 142
    .line 143
    invoke-static {v5, v6}, Lnet/lingala/zip4j/util/f;->g([BI)J

    .line 144
    .line 145
    .line 146
    move-result-wide v7

    .line 147
    invoke-virtual {v0, v7, v8}, Lpc/m;->s(J)V

    .line 148
    .line 149
    .line 150
    iget-object v1, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 151
    .line 152
    invoke-direct {p0, v1, v5}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 153
    .line 154
    .line 155
    invoke-static {v5, v6}, Lnet/lingala/zip4j/util/f;->g([BI)J

    .line 156
    .line 157
    .line 158
    move-result-wide v7

    .line 159
    invoke-virtual {v0, v7, v8}, Lpc/m;->q(J)V

    .line 160
    .line 161
    .line 162
    iget-object v1, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 163
    .line 164
    invoke-direct {p0, v1, v5}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 165
    .line 166
    .line 167
    invoke-static {v5, v6}, Lnet/lingala/zip4j/util/f;->g([BI)J

    .line 168
    .line 169
    .line 170
    move-result-wide v4

    .line 171
    invoke-virtual {v0, v4, v5}, Lpc/m;->o(J)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Lpc/m;->g()J

    .line 175
    .line 176
    .line 177
    move-result-wide v4

    .line 178
    const-wide/16 v6, 0x2c

    .line 179
    .line 180
    sub-long/2addr v4, v6

    .line 181
    cmp-long v1, v4, v2

    .line 182
    .line 183
    if-lez v1, :cond_0

    .line 184
    .line 185
    long-to-int v1, v4

    .line 186
    new-array v1, v1, [B

    .line 187
    .line 188
    iget-object v2, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 189
    .line 190
    invoke-direct {p0, v2, v1}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v1}, Lpc/m;->l([B)V

    .line 194
    .line 195
    .line 196
    :cond_0
    return-object v0

    .line 197
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 198
    .line 199
    const-string v1, "invalid signature for zip64 end of central directory record"

    .line 200
    .line 201
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 207
    .line 208
    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 209
    .line 210
    .line 211
    throw v1

    .line 212
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 213
    .line 214
    const-string v1, "invalid offset for start of end of central directory record"

    .line 215
    .line 216
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw v0

    .line 220
    :cond_3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 221
    .line 222
    const-string v1, "invalid zip64 end of central directory locator"

    .line 223
    .line 224
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw v0
.end method

.method private r(Ljava/util/ArrayList;JJJI)Lpc/n;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-lt v1, v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    move-object/from16 v2, p1

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lpc/g;

    .line 18
    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :cond_1
    invoke-virtual {v3}, Lpc/g;->b()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    const-wide/16 v6, 0x1

    .line 28
    .line 29
    cmp-long v8, v4, v6

    .line 30
    .line 31
    if-nez v8, :cond_8

    .line 32
    .line 33
    new-instance v1, Lpc/n;

    .line 34
    .line 35
    invoke-direct {v1}, Lpc/n;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Lpc/g;->a()[B

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v3}, Lpc/g;->c()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-gtz v4, :cond_2

    .line 47
    .line 48
    goto/16 :goto_3

    .line 49
    .line 50
    :cond_2
    const/16 v4, 0x8

    .line 51
    .line 52
    new-array v5, v4, [B

    .line 53
    .line 54
    const/4 v6, 0x4

    .line 55
    new-array v7, v6, [B

    .line 56
    .line 57
    const-wide/32 v8, 0xffff

    .line 58
    .line 59
    .line 60
    and-long v10, p2, v8

    .line 61
    .line 62
    const/4 v12, 0x1

    .line 63
    cmp-long v13, v10, v8

    .line 64
    .line 65
    if-nez v13, :cond_3

    .line 66
    .line 67
    invoke-virtual {v3}, Lpc/g;->c()I

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    if-lez v10, :cond_3

    .line 72
    .line 73
    invoke-static {v2, v0, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    .line 75
    .line 76
    invoke-static {v5, v0}, Lnet/lingala/zip4j/util/f;->g([BI)J

    .line 77
    .line 78
    .line 79
    move-result-wide v10

    .line 80
    invoke-virtual {v1, v10, v11}, Lpc/n;->l(J)V

    .line 81
    .line 82
    .line 83
    const/16 v10, 0x8

    .line 84
    .line 85
    const/4 v11, 0x1

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    const/4 v10, 0x0

    .line 88
    const/4 v11, 0x0

    .line 89
    :goto_1
    and-long v13, p4, v8

    .line 90
    .line 91
    cmp-long v15, v13, v8

    .line 92
    .line 93
    if-nez v15, :cond_4

    .line 94
    .line 95
    invoke-virtual {v3}, Lpc/g;->c()I

    .line 96
    .line 97
    .line 98
    move-result v13

    .line 99
    if-ge v10, v13, :cond_4

    .line 100
    .line 101
    invoke-static {v2, v10, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    .line 103
    .line 104
    invoke-static {v5, v0}, Lnet/lingala/zip4j/util/f;->g([BI)J

    .line 105
    .line 106
    .line 107
    move-result-wide v13

    .line 108
    invoke-virtual {v1, v13, v14}, Lpc/n;->g(J)V

    .line 109
    .line 110
    .line 111
    add-int/lit8 v10, v10, 0x8

    .line 112
    .line 113
    const/4 v11, 0x1

    .line 114
    :cond_4
    and-long v13, p6, v8

    .line 115
    .line 116
    cmp-long v15, v13, v8

    .line 117
    .line 118
    if-nez v15, :cond_5

    .line 119
    .line 120
    invoke-virtual {v3}, Lpc/g;->c()I

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    if-ge v10, v8, :cond_5

    .line 125
    .line 126
    invoke-static {v2, v10, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    .line 128
    .line 129
    invoke-static {v5, v0}, Lnet/lingala/zip4j/util/f;->g([BI)J

    .line 130
    .line 131
    .line 132
    move-result-wide v4

    .line 133
    invoke-virtual {v1, v4, v5}, Lpc/n;->j(J)V

    .line 134
    .line 135
    .line 136
    add-int/lit8 v10, v10, 0x8

    .line 137
    .line 138
    const/4 v11, 0x1

    .line 139
    :cond_5
    const v4, 0xffff

    .line 140
    .line 141
    .line 142
    and-int v5, p8, v4

    .line 143
    .line 144
    if-ne v5, v4, :cond_6

    .line 145
    .line 146
    invoke-virtual {v3}, Lpc/g;->c()I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-ge v10, v3, :cond_6

    .line 151
    .line 152
    invoke-static {v2, v10, v7, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    .line 154
    .line 155
    invoke-static {v7, v0}, Lnet/lingala/zip4j/util/f;->e([BI)I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    invoke-virtual {v1, v0}, Lpc/n;->h(I)V

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_6
    move v12, v11

    .line 164
    :goto_2
    if-eqz v12, :cond_7

    .line 165
    .line 166
    return-object v1

    .line 167
    :cond_7
    :goto_3
    const/4 v0, 0x0

    .line 168
    return-object v0

    .line 169
    :cond_8
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 170
    .line 171
    goto/16 :goto_0
.end method

.method private s()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    :try_start_0
    new-array v0, v0, [B

    .line 3
    .line 4
    iget-object v1, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const-wide/16 v3, 0x16

    .line 11
    .line 12
    sub-long/2addr v1, v3

    .line 13
    :goto_0
    iget-object v3, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 14
    .line 15
    const-wide/16 v4, 0x1

    .line 16
    .line 17
    sub-long v4, v1, v4

    .line 18
    .line 19
    invoke-virtual {v3, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 23
    .line 24
    invoke-static {v1, v0}, Lnet/lingala/zip4j/util/f;->f(Ljava/io/DataInput;[B)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    int-to-long v1, v1

    .line 29
    const-wide/32 v6, 0x6054b50

    .line 30
    .line 31
    .line 32
    cmp-long v3, v1, v6

    .line 33
    .line 34
    if-nez v3, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    const-wide/16 v3, 0x4

    .line 43
    .line 44
    sub-long/2addr v1, v3

    .line 45
    sub-long/2addr v1, v3

    .line 46
    const-wide/16 v5, 0x8

    .line 47
    .line 48
    sub-long/2addr v1, v5

    .line 49
    sub-long/2addr v1, v3

    .line 50
    sub-long/2addr v1, v3

    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    move-wide v1, v4

    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 59
    .line 60
    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    throw v1
.end method


# virtual methods
.method public c()Lpc/o;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmc/a;->d(Ljava/lang/String;)Lpc/o;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public d(Ljava/lang/String;)Lpc/o;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    new-instance v0, Lpc/o;

    .line 2
    .line 3
    invoke-direct {v0}, Lpc/o;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lmc/a;->b:Lpc/o;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lpc/o;->w(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lmc/a;->b:Lpc/o;

    .line 12
    .line 13
    invoke-direct {p0}, Lmc/a;->l()Lpc/f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Lpc/o;->v(Lpc/f;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lmc/a;->b:Lpc/o;

    .line 21
    .line 22
    invoke-direct {p0}, Lmc/a;->p()Lpc/l;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lpc/o;->C(Lpc/l;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lmc/a;->b:Lpc/o;

    .line 30
    .line 31
    invoke-virtual {p1}, Lpc/o;->q()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lmc/a;->b:Lpc/o;

    .line 38
    .line 39
    invoke-direct {p0}, Lmc/a;->q()Lpc/m;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Lpc/o;->D(Lpc/m;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lmc/a;->b:Lpc/o;

    .line 47
    .line 48
    invoke-virtual {p1}, Lpc/o;->l()Lpc/m;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    iget-object p1, p0, Lmc/a;->b:Lpc/o;

    .line 55
    .line 56
    invoke-virtual {p1}, Lpc/o;->l()Lpc/m;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lpc/m;->b()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-lez p1, :cond_0

    .line 65
    .line 66
    iget-object p1, p0, Lmc/a;->b:Lpc/o;

    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    invoke-virtual {p1, v0}, Lpc/o;->z(Z)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    iget-object p1, p0, Lmc/a;->b:Lpc/o;

    .line 74
    .line 75
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, v0}, Lpc/o;->z(Z)V

    .line 77
    .line 78
    .line 79
    :cond_1
    :goto_0
    iget-object p1, p0, Lmc/a;->b:Lpc/o;

    .line 80
    .line 81
    invoke-direct {p0}, Lmc/a;->k()Lpc/c;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p1, v0}, Lpc/o;->s(Lpc/c;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lmc/a;->b:Lpc/o;

    .line 89
    .line 90
    return-object p1
.end method

.method public o(Lpc/h;)Lpc/i;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "file.separator"

    .line 4
    .line 5
    const-string v2, ":"

    .line 6
    .line 7
    if-eqz p1, :cond_f

    .line 8
    .line 9
    iget-object v3, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 10
    .line 11
    if-eqz v3, :cond_f

    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Lpc/h;->u()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    invoke-virtual/range {p1 .. p1}, Lpc/h;->A()Lpc/n;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const-wide/16 v6, 0x0

    .line 22
    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    invoke-virtual/range {p1 .. p1}, Lpc/h;->A()Lpc/n;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {v5}, Lpc/n;->d()J

    .line 30
    .line 31
    .line 32
    move-result-wide v8

    .line 33
    cmp-long v5, v8, v6

    .line 34
    .line 35
    if-lez v5, :cond_0

    .line 36
    .line 37
    invoke-virtual/range {p1 .. p1}, Lpc/h;->u()J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    :cond_0
    cmp-long v5, v3, v6

    .line 42
    .line 43
    if-ltz v5, :cond_e

    .line 44
    .line 45
    :try_start_0
    iget-object v5, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 46
    .line 47
    invoke-virtual {v5, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 48
    .line 49
    .line 50
    new-instance v5, Lpc/i;

    .line 51
    .line 52
    invoke-direct {v5}, Lpc/i;-><init>()V

    .line 53
    .line 54
    .line 55
    const/4 v8, 0x2

    .line 56
    new-array v9, v8, [B

    .line 57
    .line 58
    const/4 v10, 0x4

    .line 59
    new-array v11, v10, [B

    .line 60
    .line 61
    iget-object v12, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 62
    .line 63
    invoke-direct {v1, v12, v11}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 64
    .line 65
    .line 66
    const/4 v12, 0x0

    .line 67
    invoke-static {v11, v12}, Lnet/lingala/zip4j/util/f;->e([BI)I

    .line 68
    .line 69
    .line 70
    move-result v13

    .line 71
    int-to-long v14, v13

    .line 72
    const-wide/32 v16, 0x4034b50

    .line 73
    .line 74
    .line 75
    cmp-long v18, v14, v16

    .line 76
    .line 77
    if-nez v18, :cond_d

    .line 78
    .line 79
    invoke-virtual {v5, v13}, Lpc/i;->P(I)V

    .line 80
    .line 81
    .line 82
    iget-object v13, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 83
    .line 84
    invoke-direct {v1, v13, v9}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 85
    .line 86
    .line 87
    invoke-static {v9, v12}, Lnet/lingala/zip4j/util/f;->i([BI)I

    .line 88
    .line 89
    .line 90
    move-result v13

    .line 91
    invoke-virtual {v5, v13}, Lpc/i;->R(I)V

    .line 92
    .line 93
    .line 94
    iget-object v13, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 95
    .line 96
    invoke-direct {v1, v13, v9}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 97
    .line 98
    .line 99
    invoke-static {v9, v12}, Lnet/lingala/zip4j/util/f;->i([BI)I

    .line 100
    .line 101
    .line 102
    move-result v13

    .line 103
    and-int/lit16 v13, v13, 0x800

    .line 104
    .line 105
    const/4 v14, 0x1

    .line 106
    if-eqz v13, :cond_1

    .line 107
    .line 108
    const/4 v13, 0x1

    .line 109
    goto :goto_0

    .line 110
    :cond_1
    const/4 v13, 0x0

    .line 111
    :goto_0
    invoke-virtual {v5, v13}, Lpc/i;->K(Z)V

    .line 112
    .line 113
    .line 114
    aget-byte v13, v9, v12

    .line 115
    .line 116
    and-int/lit8 v15, v13, 0x1

    .line 117
    .line 118
    if-eqz v15, :cond_2

    .line 119
    .line 120
    invoke-virtual {v5, v14}, Lpc/i;->D(Z)V

    .line 121
    .line 122
    .line 123
    :cond_2
    invoke-virtual {v5, v9}, Lpc/i;->L([B)V

    .line 124
    .line 125
    .line 126
    invoke-static {v13}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v15

    .line 130
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-lt v6, v10, :cond_4

    .line 135
    .line 136
    const/4 v6, 0x3

    .line 137
    invoke-virtual {v15, v6}, Ljava/lang/String;->charAt(I)C

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    const/16 v7, 0x31

    .line 142
    .line 143
    if-ne v6, v7, :cond_3

    .line 144
    .line 145
    const/4 v6, 0x1

    .line 146
    goto :goto_1

    .line 147
    :cond_3
    const/4 v6, 0x0

    .line 148
    :goto_1
    invoke-virtual {v5, v6}, Lpc/i;->C(Z)V

    .line 149
    .line 150
    .line 151
    :cond_4
    iget-object v6, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 152
    .line 153
    invoke-direct {v1, v6, v9}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 154
    .line 155
    .line 156
    invoke-static {v9, v12}, Lnet/lingala/zip4j/util/f;->i([BI)I

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    invoke-virtual {v5, v6}, Lpc/i;->z(I)V

    .line 161
    .line 162
    .line 163
    iget-object v6, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 164
    .line 165
    invoke-direct {v1, v6, v11}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 166
    .line 167
    .line 168
    invoke-static {v11, v12}, Lnet/lingala/zip4j/util/f;->e([BI)I

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    invoke-virtual {v5, v6}, Lpc/i;->M(I)V

    .line 173
    .line 174
    .line 175
    iget-object v6, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 176
    .line 177
    invoke-direct {v1, v6, v11}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 178
    .line 179
    .line 180
    invoke-static {v11, v12}, Lnet/lingala/zip4j/util/f;->e([BI)I

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    int-to-long v6, v6

    .line 185
    invoke-virtual {v5, v6, v7}, Lpc/i;->A(J)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v11}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    check-cast v6, [B

    .line 193
    .line 194
    invoke-virtual {v5, v6}, Lpc/i;->B([B)V

    .line 195
    .line 196
    .line 197
    iget-object v6, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 198
    .line 199
    invoke-direct {v1, v6, v11}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 200
    .line 201
    .line 202
    invoke-direct {v1, v11}, Lmc/a;->a([B)[B

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    invoke-static {v6, v12}, Lnet/lingala/zip4j/util/f;->g([BI)J

    .line 207
    .line 208
    .line 209
    move-result-wide v6

    .line 210
    invoke-virtual {v5, v6, v7}, Lpc/i;->y(J)V

    .line 211
    .line 212
    .line 213
    iget-object v6, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 214
    .line 215
    invoke-direct {v1, v6, v11}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 216
    .line 217
    .line 218
    invoke-direct {v1, v11}, Lmc/a;->a([B)[B

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    invoke-static {v6, v12}, Lnet/lingala/zip4j/util/f;->g([BI)J

    .line 223
    .line 224
    .line 225
    move-result-wide v6

    .line 226
    invoke-virtual {v5, v6, v7}, Lpc/i;->Q(J)V

    .line 227
    .line 228
    .line 229
    iget-object v6, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 230
    .line 231
    invoke-direct {v1, v6, v9}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 232
    .line 233
    .line 234
    invoke-static {v9, v12}, Lnet/lingala/zip4j/util/f;->i([BI)I

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    invoke-virtual {v5, v6}, Lpc/i;->J(I)V

    .line 239
    .line 240
    .line 241
    iget-object v7, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 242
    .line 243
    invoke-direct {v1, v7, v9}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 244
    .line 245
    .line 246
    invoke-static {v9, v12}, Lnet/lingala/zip4j/util/f;->i([BI)I

    .line 247
    .line 248
    .line 249
    move-result v7

    .line 250
    invoke-virtual {v5, v7}, Lpc/i;->H(I)V

    .line 251
    .line 252
    .line 253
    const/16 v9, 0x1e

    .line 254
    .line 255
    if-lez v6, :cond_7

    .line 256
    .line 257
    new-array v10, v6, [B

    .line 258
    .line 259
    iget-object v11, v1, Lmc/a;->a:Ljava/io/RandomAccessFile;

    .line 260
    .line 261
    invoke-direct {v1, v11, v10}, Lmc/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 262
    .line 263
    .line 264
    invoke-virtual {v5}, Lpc/i;->v()Z

    .line 265
    .line 266
    .line 267
    move-result v11

    .line 268
    invoke-static {v10, v11}, Lnet/lingala/zip4j/util/h;->h([BZ)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v10

    .line 272
    if-eqz v10, :cond_6

    .line 273
    .line 274
    new-instance v11, Ljava/lang/StringBuffer;

    .line 275
    .line 276
    invoke-direct {v11, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v15

    .line 283
    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v11

    .line 290
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    move-result v11

    .line 294
    if-ltz v11, :cond_5

    .line 295
    .line 296
    new-instance v11, Ljava/lang/StringBuffer;

    .line 297
    .line 298
    invoke-direct {v11, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    add-int/2addr v0, v8

    .line 317
    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v10

    .line 321
    :cond_5
    invoke-virtual {v5, v10}, Lpc/i;->I(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    add-int/2addr v9, v6

    .line 325
    goto :goto_2

    .line 326
    :cond_6
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 327
    .line 328
    const-string v2, "file name is null, cannot assign file name to local file header"

    .line 329
    .line 330
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    throw v0

    .line 334
    :cond_7
    const/4 v0, 0x0

    .line 335
    invoke-virtual {v5, v0}, Lpc/i;->I(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    :goto_2
    invoke-direct {v1, v5}, Lmc/a;->h(Lpc/i;)V

    .line 339
    .line 340
    .line 341
    add-int/2addr v9, v7

    .line 342
    int-to-long v6, v9

    .line 343
    add-long/2addr v3, v6

    .line 344
    invoke-virtual {v5, v3, v4}, Lpc/i;->N(J)V

    .line 345
    .line 346
    .line 347
    invoke-virtual/range {p1 .. p1}, Lpc/h;->v()[C

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {v5, v0}, Lpc/i;->O([C)V

    .line 352
    .line 353
    .line 354
    invoke-direct {v1, v5}, Lmc/a;->j(Lpc/i;)V

    .line 355
    .line 356
    .line 357
    invoke-direct {v1, v5}, Lmc/a;->f(Lpc/i;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v5}, Lpc/i;->u()Z

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-eqz v0, :cond_9

    .line 365
    .line 366
    invoke-virtual {v5}, Lpc/i;->f()I

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    const/16 v2, 0x63

    .line 371
    .line 372
    if-eq v0, v2, :cond_9

    .line 373
    .line 374
    const/16 v0, 0x40

    .line 375
    .line 376
    and-int/lit8 v2, v13, 0x40

    .line 377
    .line 378
    if-ne v2, v0, :cond_8

    .line 379
    .line 380
    invoke-virtual {v5, v14}, Lpc/i;->E(I)V

    .line 381
    .line 382
    .line 383
    goto :goto_3

    .line 384
    :cond_8
    invoke-virtual {v5, v12}, Lpc/i;->E(I)V

    .line 385
    .line 386
    .line 387
    :cond_9
    :goto_3
    invoke-virtual {v5}, Lpc/i;->d()J

    .line 388
    .line 389
    .line 390
    move-result-wide v2

    .line 391
    const-wide/16 v6, 0x0

    .line 392
    .line 393
    cmp-long v0, v2, v6

    .line 394
    .line 395
    if-gtz v0, :cond_a

    .line 396
    .line 397
    invoke-virtual/range {p1 .. p1}, Lpc/h;->g()J

    .line 398
    .line 399
    .line 400
    move-result-wide v2

    .line 401
    invoke-virtual {v5, v2, v3}, Lpc/i;->A(J)V

    .line 402
    .line 403
    .line 404
    invoke-virtual/range {p1 .. p1}, Lpc/h;->h()[B

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-virtual {v5, v0}, Lpc/i;->B([B)V

    .line 409
    .line 410
    .line 411
    :cond_a
    invoke-virtual {v5}, Lpc/i;->b()J

    .line 412
    .line 413
    .line 414
    move-result-wide v2

    .line 415
    const-wide/16 v6, 0x0

    .line 416
    .line 417
    cmp-long v0, v2, v6

    .line 418
    .line 419
    if-gtz v0, :cond_b

    .line 420
    .line 421
    invoke-virtual/range {p1 .. p1}, Lpc/h;->e()J

    .line 422
    .line 423
    .line 424
    move-result-wide v2

    .line 425
    invoke-virtual {v5, v2, v3}, Lpc/i;->y(J)V

    .line 426
    .line 427
    .line 428
    :cond_b
    invoke-virtual {v5}, Lpc/i;->q()J

    .line 429
    .line 430
    .line 431
    move-result-wide v2

    .line 432
    const-wide/16 v6, 0x0

    .line 433
    .line 434
    cmp-long v0, v2, v6

    .line 435
    .line 436
    if-gtz v0, :cond_c

    .line 437
    .line 438
    invoke-virtual/range {p1 .. p1}, Lpc/h;->x()J

    .line 439
    .line 440
    .line 441
    move-result-wide v2

    .line 442
    invoke-virtual {v5, v2, v3}, Lpc/i;->Q(J)V

    .line 443
    .line 444
    .line 445
    :cond_c
    return-object v5

    .line 446
    :cond_d
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 447
    .line 448
    new-instance v2, Ljava/lang/StringBuffer;

    .line 449
    .line 450
    const-string v3, "invalid local header signature for file: "

    .line 451
    .line 452
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual/range {p1 .. p1}, Lpc/h;->p()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    .line 472
    .line 473
    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 474
    .line 475
    .line 476
    throw v2

    .line 477
    :cond_e
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 478
    .line 479
    const-string v2, "invalid local header offset"

    .line 480
    .line 481
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    throw v0

    .line 485
    :cond_f
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 486
    .line 487
    const-string v2, "invalid read parameters for local header"

    .line 488
    .line 489
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    throw v0
.end method

.class public Lnet/lingala/zip4j/util/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic a(Lnet/lingala/zip4j/util/c;Lpc/o;Ljava/io/File;Lqc/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/util/c;->g(Lpc/o;Ljava/io/File;Lqc/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private b(Lpc/o;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lpc/o;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p1}, Lpc/o;->f()Lpc/f;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lpc/f;->d()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1}, Lpc/o;->m()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    :goto_0
    if-le v5, v0, :cond_0

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    invoke-virtual {p1}, Lpc/o;->f()Lpc/f;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-virtual {v6}, Lpc/f;->d()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-nez v6, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Lpc/o;->m()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    new-instance v6, Ljava/lang/StringBuffer;

    .line 42
    .line 43
    const-string v7, "."

    .line 44
    .line 45
    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v7, ".z0"

    .line 61
    .line 62
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    .line 64
    .line 65
    const/4 v7, 0x1

    .line 66
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    :goto_1
    new-instance v7, Ljava/io/File;

    .line 74
    .line 75
    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v7}, Lnet/lingala/zip4j/util/h;->r(Ljava/io/File;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v6

    .line 82
    add-long/2addr v1, v6

    .line 83
    add-int/lit8 v5, v5, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    :goto_2
    return-wide v1
.end method

.method private c(Lpc/o;Lpc/h;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p1}, Lpc/o;->m()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->r(Ljava/io/File;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-virtual {p2}, Lpc/h;->e()J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    sub-long/2addr v0, p1

    .line 19
    return-wide v0
.end method

.method private d(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLqc/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_a

    .line 2
    .line 3
    if-eqz p2, :cond_a

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long v2, p3, v0

    .line 8
    .line 9
    if-ltz v2, :cond_9

    .line 10
    .line 11
    cmp-long v2, p5, v0

    .line 12
    .line 13
    if-ltz v2, :cond_8

    .line 14
    .line 15
    cmp-long v2, p3, p5

    .line 16
    .line 17
    if-gtz v2, :cond_7

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p7}, Lqc/a;->m()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x3

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p7, v4}, Lqc/a;->setResult(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p7, v3}, Lqc/a;->u(I)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    :try_start_0
    invoke-virtual {p1, p3, p4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 38
    .line 39
    .line 40
    sub-long/2addr p5, p3

    .line 41
    const-wide/16 p3, 0x1000

    .line 42
    .line 43
    cmp-long v2, p5, p3

    .line 44
    .line 45
    if-gez v2, :cond_2

    .line 46
    .line 47
    long-to-int p3, p5

    .line 48
    new-array p3, p3, [B

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/16 p3, 0x1000

    .line 52
    .line 53
    new-array p3, p3, [B

    .line 54
    .line 55
    :cond_3
    :goto_0
    invoke-virtual {p1, p3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 56
    .line 57
    .line 58
    move-result p4

    .line 59
    const/4 v2, -0x1

    .line 60
    if-ne p4, v2, :cond_4

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_4
    invoke-virtual {p2, p3, v3, p4}, Ljava/io/OutputStream;->write([BII)V

    .line 64
    .line 65
    .line 66
    int-to-long v5, p4

    .line 67
    invoke-virtual {p7, v5, v6}, Lqc/a;->w(J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p7}, Lqc/a;->m()Z

    .line 71
    .line 72
    .line 73
    move-result p4

    .line 74
    if-eqz p4, :cond_5

    .line 75
    .line 76
    invoke-virtual {p7, v4}, Lqc/a;->setResult(I)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_5
    add-long/2addr v0, v5

    .line 81
    cmp-long p4, v0, p5

    .line 82
    .line 83
    if-nez p4, :cond_6

    .line 84
    .line 85
    :goto_1
    return-void

    .line 86
    :cond_6
    array-length p4, p3

    .line 87
    int-to-long v5, p4

    .line 88
    add-long/2addr v5, v0

    .line 89
    cmp-long p4, v5, p5

    .line 90
    .line 91
    if-lez p4, :cond_3

    .line 92
    .line 93
    sub-long p3, p5, v0

    .line 94
    .line 95
    long-to-int p4, p3

    .line 96
    new-array p3, p4, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catch_0
    move-exception p1

    .line 100
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 101
    .line 102
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    throw p2

    .line 106
    :catch_1
    move-exception p1

    .line 107
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 108
    .line 109
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    throw p2

    .line 113
    :cond_7
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 114
    .line 115
    const-string p2, "start offset is greater than end offset, cannot copy file"

    .line 116
    .line 117
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p1

    .line 121
    :cond_8
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 122
    .line 123
    const-string p2, "end offset is negative, cannot copy file"

    .line 124
    .line 125
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p1

    .line 129
    :cond_9
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 130
    .line 131
    const-string p2, "starting offset is negative, cannot copy file"

    .line 132
    .line 133
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p1

    .line 137
    :cond_a
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 138
    .line 139
    const-string p2, "input or output stream is null, cannot copy file"

    .line 140
    .line 141
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p1
.end method

.method private e(Lpc/o;Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lpc/o;->m()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 14
    .line 15
    new-instance v1, Ljava/io/File;

    .line 16
    .line 17
    invoke-virtual {p1}, Lpc/o;->m()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 30
    .line 31
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    throw p2

    .line 35
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 36
    .line 37
    const-string p2, "input parameter is null in getFilePointer, cannot create file handler to remove file"

    .line 38
    .line 39
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method

.method private f(Lpc/o;I)Ljava/io/RandomAccessFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    if-ltz p2, :cond_3

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1}, Lpc/o;->m()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lpc/o;->f()Lpc/f;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lpc/f;->d()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ne p2, v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lpc/o;->m()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 p1, 0x9

    .line 25
    .line 26
    const-string v1, "."

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    if-lt p2, p1, :cond_1

    .line 30
    .line 31
    :try_start_1
    new-instance p1, Ljava/lang/StringBuffer;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v0, ".z"

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    .line 52
    .line 53
    add-int/lit8 p2, p2, 0x1

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    new-instance p1, Ljava/lang/StringBuffer;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v0, ".z0"

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    .line 84
    .line 85
    add-int/lit8 p2, p2, 0x1

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    :goto_0
    new-instance p2, Ljava/io/File;

    .line 95
    .line 96
    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-static {p2}, Lnet/lingala/zip4j/util/h;->b(Ljava/io/File;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_2

    .line 104
    .line 105
    new-instance p1, Ljava/io/RandomAccessFile;

    .line 106
    .line 107
    const-string v0, "r"

    .line 108
    .line 109
    invoke-direct {p1, p2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-object p1

    .line 113
    :cond_2
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 114
    .line 115
    new-instance v0, Ljava/lang/StringBuffer;

    .line 116
    .line 117
    const-string v1, "split file does not exist: "

    .line 118
    .line 119
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 133
    :catch_0
    move-exception p1

    .line 134
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 135
    .line 136
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    throw p2

    .line 140
    :catch_1
    move-exception p1

    .line 141
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 142
    .line 143
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 144
    .line 145
    .line 146
    throw p2

    .line 147
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 148
    .line 149
    const-string p2, "invlaid part number, cannot create split file handler"

    .line 150
    .line 151
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p1

    .line 155
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 156
    .line 157
    const-string p2, "zip model is null, cannot create split file handler"

    .line 158
    .line 159
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p1
.end method

.method private g(Lpc/o;Ljava/io/File;Lqc/a;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v10, p3

    .line 6
    .line 7
    if-eqz v0, :cond_c

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Lpc/o;->p()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_b

    .line 14
    .line 15
    new-instance v11, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lpc/o;->f()Lpc/f;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lpc/f;->d()I

    .line 26
    .line 27
    .line 28
    move-result v12

    .line 29
    if-lez v12, :cond_8

    .line 30
    .line 31
    move-object/from16 v2, p2

    .line 32
    .line 33
    invoke-direct {v9, v2}, Lnet/lingala/zip4j/util/c;->l(Ljava/io/File;)Ljava/io/OutputStream;

    .line 34
    .line 35
    .line 36
    move-result-object v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 37
    const-wide/16 v14, 0x0

    .line 38
    .line 39
    move-wide v4, v14

    .line 40
    const/4 v2, 0x0

    .line 41
    const/4 v6, 0x0

    .line 42
    :goto_0
    if-le v6, v12, :cond_2

    .line 43
    .line 44
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lpc/o;->clone()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lpc/o;

    .line 49
    .line 50
    invoke-virtual {v0}, Lpc/o;->f()Lpc/f;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3, v4, v5}, Lpc/f;->p(J)V

    .line 55
    .line 56
    .line 57
    invoke-direct {v9, v0, v11, v2}, Lnet/lingala/zip4j/util/c;->t(Lpc/o;Ljava/util/ArrayList;Z)V

    .line 58
    .line 59
    .line 60
    new-instance v2, Lmc/b;

    .line 61
    .line 62
    invoke-direct {v2}, Lmc/b;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v0, v13}, Lmc/b;->e(Lpc/o;Ljava/io/OutputStream;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {p3 .. p3}, Lqc/a;->c()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 69
    .line 70
    .line 71
    if-eqz v13, :cond_0

    .line 72
    .line 73
    :try_start_2
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catch_0
    nop

    .line 78
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 79
    .line 80
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 81
    .line 82
    .line 83
    :catch_1
    :cond_1
    return-void

    .line 84
    :cond_2
    :try_start_4
    invoke-direct {v9, v0, v6}, Lnet/lingala/zip4j/util/c;->f(Lpc/o;I)Ljava/io/RandomAccessFile;

    .line 85
    .line 86
    .line 87
    move-result-object v7
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 88
    :try_start_5
    new-instance v1, Ljava/lang/Long;

    .line 89
    .line 90
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    .line 91
    .line 92
    .line 93
    move-result-wide v8

    .line 94
    invoke-direct {v1, v8, v9}, Ljava/lang/Long;-><init>(J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 95
    .line 96
    .line 97
    if-nez v6, :cond_3

    .line 98
    .line 99
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lpc/o;->b()Lpc/c;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    if-eqz v3, :cond_3

    .line 104
    .line 105
    invoke-virtual/range {p1 .. p1}, Lpc/o;->b()Lpc/c;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v3}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    if-eqz v3, :cond_3

    .line 114
    .line 115
    invoke-virtual/range {p1 .. p1}, Lpc/o;->b()Lpc/c;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v3}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-lez v3, :cond_3

    .line 128
    .line 129
    const/4 v3, 0x4

    .line 130
    new-array v8, v3, [B

    .line 131
    .line 132
    invoke-virtual {v7, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v7, v8}, Ljava/io/RandomAccessFile;->read([B)I

    .line 136
    .line 137
    .line 138
    const/4 v9, 0x0

    .line 139
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/f;->e([BI)I

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    move-wide/from16 v16, v4

    .line 144
    .line 145
    int-to-long v3, v8

    .line 146
    const-wide/32 v18, 0x8074b50

    .line 147
    .line 148
    .line 149
    cmp-long v5, v3, v18

    .line 150
    .line 151
    if-nez v5, :cond_4

    .line 152
    .line 153
    const/4 v2, 0x1

    .line 154
    const/4 v3, 0x4

    .line 155
    const/16 v18, 0x1

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :catchall_0
    move-exception v0

    .line 159
    goto/16 :goto_3

    .line 160
    .line 161
    :catch_2
    move-exception v0

    .line 162
    goto/16 :goto_4

    .line 163
    .line 164
    :catch_3
    move-exception v0

    .line 165
    goto/16 :goto_5

    .line 166
    .line 167
    :cond_3
    move-wide/from16 v16, v4

    .line 168
    .line 169
    const/4 v9, 0x0

    .line 170
    :cond_4
    move/from16 v18, v2

    .line 171
    .line 172
    const/4 v3, 0x0

    .line 173
    :goto_2
    if-ne v6, v12, :cond_5

    .line 174
    .line 175
    new-instance v1, Ljava/lang/Long;

    .line 176
    .line 177
    invoke-virtual/range {p1 .. p1}, Lpc/o;->f()Lpc/f;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v2}, Lpc/f;->f()J

    .line 182
    .line 183
    .line 184
    move-result-wide v4

    .line 185
    invoke-direct {v1, v4, v5}, Ljava/lang/Long;-><init>(J)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 186
    .line 187
    .line 188
    :cond_5
    move-object v8, v1

    .line 189
    int-to-long v4, v3

    .line 190
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 191
    .line 192
    .line 193
    move-result-wide v19
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 194
    move-object/from16 v1, p0

    .line 195
    .line 196
    move-object v2, v7

    .line 197
    move-object v3, v13

    .line 198
    move-wide/from16 v21, v4

    .line 199
    .line 200
    move/from16 v23, v6

    .line 201
    .line 202
    move-object/from16 v24, v7

    .line 203
    .line 204
    move-wide/from16 v6, v19

    .line 205
    .line 206
    move-object v9, v8

    .line 207
    const/4 v14, 0x0

    .line 208
    move-object/from16 v8, p3

    .line 209
    .line 210
    :try_start_8
    invoke-direct/range {v1 .. v8}, Lnet/lingala/zip4j/util/c;->d(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLqc/a;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 214
    .line 215
    .line 216
    move-result-wide v1

    .line 217
    sub-long v1, v1, v21

    .line 218
    .line 219
    add-long v4, v16, v1

    .line 220
    .line 221
    invoke-virtual/range {p3 .. p3}, Lqc/a;->m()Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-eqz v1, :cond_7

    .line 226
    .line 227
    const/4 v0, 0x3

    .line 228
    invoke-virtual {v10, v0}, Lqc/a;->setResult(I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v10, v14}, Lqc/a;->u(I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 232
    .line 233
    .line 234
    if-eqz v13, :cond_6

    .line 235
    .line 236
    :try_start_9
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 237
    .line 238
    .line 239
    :catch_4
    :cond_6
    :try_start_a
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 240
    .line 241
    .line 242
    :catch_5
    return-void

    .line 243
    :cond_7
    :try_start_b
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 244
    .line 245
    .line 246
    :try_start_c
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 247
    .line 248
    .line 249
    :catch_6
    add-int/lit8 v6, v23, 0x1

    .line 250
    .line 251
    const-wide/16 v14, 0x0

    .line 252
    .line 253
    move-object/from16 v9, p0

    .line 254
    .line 255
    move/from16 v2, v18

    .line 256
    .line 257
    move-object/from16 v1, v24

    .line 258
    .line 259
    goto/16 :goto_0

    .line 260
    .line 261
    :catchall_1
    move-exception v0

    .line 262
    move-object v1, v13

    .line 263
    move-object/from16 v7, v24

    .line 264
    .line 265
    goto :goto_8

    .line 266
    :catch_7
    move-exception v0

    .line 267
    move-object v1, v13

    .line 268
    move-object/from16 v7, v24

    .line 269
    .line 270
    goto :goto_6

    .line 271
    :catch_8
    move-exception v0

    .line 272
    move-object v1, v13

    .line 273
    move-object/from16 v7, v24

    .line 274
    .line 275
    goto :goto_7

    .line 276
    :catchall_2
    move-exception v0

    .line 277
    move-object/from16 v24, v7

    .line 278
    .line 279
    goto :goto_3

    .line 280
    :catch_9
    move-exception v0

    .line 281
    move-object/from16 v24, v7

    .line 282
    .line 283
    goto :goto_4

    .line 284
    :catch_a
    move-exception v0

    .line 285
    move-object/from16 v24, v7

    .line 286
    .line 287
    goto :goto_5

    .line 288
    :catchall_3
    move-exception v0

    .line 289
    move-object v7, v1

    .line 290
    :goto_3
    move-object v1, v13

    .line 291
    goto :goto_8

    .line 292
    :catch_b
    move-exception v0

    .line 293
    move-object v7, v1

    .line 294
    :goto_4
    move-object v1, v13

    .line 295
    goto :goto_6

    .line 296
    :catch_c
    move-exception v0

    .line 297
    move-object v7, v1

    .line 298
    :goto_5
    move-object v1, v13

    .line 299
    goto :goto_7

    .line 300
    :cond_8
    :try_start_d
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 301
    .line 302
    const-string v2, "corrupt zip model, archive not a split zip file"

    .line 303
    .line 304
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    throw v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 308
    :catchall_4
    move-exception v0

    .line 309
    move-object v7, v1

    .line 310
    goto :goto_8

    .line 311
    :catch_d
    move-exception v0

    .line 312
    move-object v7, v1

    .line 313
    :goto_6
    :try_start_e
    invoke-virtual {v10, v0}, Lqc/a;->b(Ljava/lang/Throwable;)V

    .line 314
    .line 315
    .line 316
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    .line 317
    .line 318
    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 319
    .line 320
    .line 321
    throw v2

    .line 322
    :catch_e
    move-exception v0

    .line 323
    move-object v7, v1

    .line 324
    :goto_7
    invoke-virtual {v10, v0}, Lqc/a;->b(Ljava/lang/Throwable;)V

    .line 325
    .line 326
    .line 327
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    .line 328
    .line 329
    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 330
    .line 331
    .line 332
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 333
    :catchall_5
    move-exception v0

    .line 334
    :goto_8
    if-eqz v1, :cond_9

    .line 335
    .line 336
    :try_start_f
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_f

    .line 337
    .line 338
    .line 339
    goto :goto_9

    .line 340
    :catch_f
    nop

    .line 341
    :cond_9
    :goto_9
    if-eqz v7, :cond_a

    .line 342
    .line 343
    :try_start_10
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_10

    .line 344
    .line 345
    .line 346
    :catch_10
    :cond_a
    throw v0

    .line 347
    :cond_b
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 348
    .line 349
    const-string v1, "archive not a split zip file"

    .line 350
    .line 351
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v10, v0}, Lqc/a;->b(Ljava/lang/Throwable;)V

    .line 355
    .line 356
    .line 357
    throw v0

    .line 358
    :cond_c
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 359
    .line 360
    const-string v1, "one of the input parameters is null, cannot merge split zip file"

    .line 361
    .line 362
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v10, v0}, Lqc/a;->b(Ljava/lang/Throwable;)V

    .line 366
    .line 367
    .line 368
    throw v0
.end method

.method private l(Ljava/io/File;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-object v0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    throw v0

    .line 16
    :catch_1
    move-exception p1

    .line 17
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 24
    .line 25
    const-string v0, "outFile is null, cannot create outputstream"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method private n(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    new-instance v0, Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 20
    .line 21
    const-string p2, "cannot rename modified zip file"

    .line 22
    .line 23
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 28
    .line 29
    const-string p2, "cannot delete old zip file"

    .line 30
    .line 31
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method private p(Lpc/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lpc/o;->f()Lpc/f;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Lpc/f;->n(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lpc/o;->f()Lpc/f;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, v1}, Lpc/f;->o(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lpc/o;->f()Lpc/f;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0, v1}, Lpc/f;->s(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lpc/o;->f()Lpc/f;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-virtual {v0, p1}, Lpc/f;->t(I)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 64
    .line 65
    const-string v0, "corrupt zip model - getCentralDirectory, cannot update split zip model"

    .line 66
    .line 67
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :catch_0
    move-exception p1

    .line 72
    goto :goto_0

    .line 73
    :catch_1
    move-exception p1

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 76
    .line 77
    const-string v0, "zip model is null - cannot update end of central directory for split zip model"

    .line 78
    .line 79
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 84
    .line 85
    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    throw v0

    .line 89
    :goto_1
    throw p1
.end method

.method private q(Lpc/o;Ljava/util/ArrayList;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    const/4 p3, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p3, 0x0

    .line 25
    :goto_0
    const/4 v2, 0x0

    .line 26
    :goto_1
    if-lt v2, v0, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    const-wide/16 v3, 0x0

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    :goto_2
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {v6}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    check-cast v6, Lpc/h;

    .line 45
    .line 46
    invoke-virtual {v6}, Lpc/h;->i()I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-lt v5, v6, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v5}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    check-cast v5, Lpc/h;

    .line 65
    .line 66
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-virtual {v6}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    check-cast v6, Lpc/h;

    .line 79
    .line 80
    invoke-virtual {v6}, Lpc/h;->u()J

    .line 81
    .line 82
    .line 83
    move-result-wide v6

    .line 84
    add-long/2addr v6, v3

    .line 85
    int-to-long v3, p3

    .line 86
    sub-long/2addr v6, v3

    .line 87
    invoke-virtual {v5, v6, v7}, Lpc/h;->a0(J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lpc/o;->b()Lpc/c;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v3}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Lpc/h;

    .line 103
    .line 104
    invoke-virtual {v3, v1}, Lpc/h;->M(I)V

    .line 105
    .line 106
    .line 107
    add-int/lit8 v2, v2, 0x1

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    check-cast v6, Ljava/lang/Long;

    .line 115
    .line 116
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 117
    .line 118
    .line 119
    move-result-wide v6

    .line 120
    add-long/2addr v3, v6

    .line 121
    add-int/lit8 v5, v5, 0x1

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 125
    .line 126
    const-string p2, "corrupt zip model - getCentralDirectory, cannot update split zip model"

    .line 127
    .line 128
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p1
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :catch_0
    move-exception p1

    .line 133
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 134
    .line 135
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    throw p2

    .line 139
    :catch_1
    move-exception p1

    .line 140
    throw p1
.end method

.method private r(Lpc/o;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Lpc/o;->k()Lpc/l;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Lpc/o;->k()Lpc/l;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lpc/l;->e(I)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-lt v1, v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Lpc/o;->k()Lpc/l;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p1}, Lpc/o;->k()Lpc/l;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lpc/l;->b()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    add-long/2addr v0, v2

    .line 39
    invoke-virtual {p2, v0, v1}, Lpc/l;->f(J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lpc/o;->k()Lpc/l;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const/4 p2, 0x1

    .line 47
    invoke-virtual {p1, p2}, Lpc/l;->h(I)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Ljava/lang/Long;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 58
    .line 59
    .line 60
    move-result-wide v4

    .line 61
    add-long/2addr v2, v4

    .line 62
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 66
    .line 67
    const-string p2, "zip model is null, cannot update split Zip64 end of central directory locator"

    .line 68
    .line 69
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1
.end method

.method private s(Lpc/o;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Lpc/o;->l()Lpc/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Lpc/o;->l()Lpc/m;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lpc/m;->m(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lpc/o;->l()Lpc/m;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, v1}, Lpc/m;->n(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lpc/o;->l()Lpc/m;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1}, Lpc/o;->f()Lpc/f;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lpc/f;->i()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    int-to-long v2, v2

    .line 38
    invoke-virtual {v0, v2, v3}, Lpc/m;->t(J)V

    .line 39
    .line 40
    .line 41
    const-wide/16 v2, 0x0

    .line 42
    .line 43
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-lt v1, v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {p1}, Lpc/o;->l()Lpc/m;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p1}, Lpc/o;->l()Lpc/m;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lpc/m;->d()J

    .line 58
    .line 59
    .line 60
    move-result-wide v0

    .line 61
    add-long/2addr v0, v2

    .line 62
    invoke-virtual {p2, v0, v1}, Lpc/m;->o(J)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Ljava/lang/Long;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 73
    .line 74
    .line 75
    move-result-wide v4

    .line 76
    add-long/2addr v2, v4

    .line 77
    add-int/lit8 v1, v1, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 81
    .line 82
    const-string p2, "zip model is null, cannot update split Zip64 end of central directory record"

    .line 83
    .line 84
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1
.end method

.method private t(Lpc/o;Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lpc/o;->z(Z)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/util/c;->q(Lpc/o;Ljava/util/ArrayList;Z)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/util/c;->p(Lpc/o;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lpc/o;->q()Z

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/util/c;->r(Lpc/o;Ljava/util/ArrayList;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/util/c;->s(Lpc/o;Ljava/util/ArrayList;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void

    .line 26
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 27
    .line 28
    const-string p2, "zip model is null, cannot update split zip model"

    .line 29
    .line 30
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1
.end method


# virtual methods
.method public h(Lpc/o;Lqc/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    invoke-virtual {p2, v0}, Lqc/a;->p(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lpc/o;->m()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p2, v0}, Lqc/a;->r(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/util/c;->b(Lpc/o;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-virtual {p2, v0, v1}, Lqc/a;->v(J)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    invoke-virtual {p2, p1}, Lqc/a;->u(I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 27
    .line 28
    const-string p2, "zip model is null, cannot calculate total work for merge op"

    .line 29
    .line 30
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public i(Lpc/o;Lpc/h;Lqc/a;)V
    .locals 1
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
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    invoke-virtual {p3, v0}, Lqc/a;->p(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lpc/h;->p()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p3, v0}, Lqc/a;->r(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/util/c;->c(Lpc/o;Lpc/h;)J

    .line 19
    .line 20
    .line 21
    move-result-wide p1

    .line 22
    invoke-virtual {p3, p1, p2}, Lqc/a;->v(J)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    invoke-virtual {p3, p1}, Lqc/a;->u(I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 31
    .line 32
    const-string p2, "one of the input parameters is null, cannot calculate total work"

    .line 33
    .line 34
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public j(Lpc/o;Lpc/h;Lqc/a;)Ljava/util/HashMap;
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    move-object/from16 v10, p3

    .line 8
    .line 9
    const-string v11, "cannot close input stream or output stream when trying to delete a file from zip file"

    .line 10
    .line 11
    if-eqz v1, :cond_15

    .line 12
    .line 13
    if-eqz v0, :cond_15

    .line 14
    .line 15
    new-instance v12, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v13, 0x0

    .line 21
    :try_start_0
    invoke-static/range {p1 .. p2}, Lnet/lingala/zip4j/util/h;->v(Lpc/o;Lpc/h;)I

    .line 22
    .line 23
    .line 24
    move-result v15

    .line 25
    if-ltz v15, :cond_11

    .line 26
    .line 27
    invoke-virtual/range {p1 .. p1}, Lpc/o;->p()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_10

    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    new-instance v4, Ljava/lang/StringBuffer;

    .line 38
    .line 39
    invoke-virtual/range {p1 .. p1}, Lpc/o;->m()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-wide/16 v5, 0x3e8

    .line 51
    .line 52
    rem-long/2addr v2, v5

    .line 53
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_21
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    .line 60
    :try_start_1
    new-instance v3, Ljava/io/File;

    .line 61
    .line 62
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1d
    .catchall {:try_start_1 .. :try_end_1} :catchall_d

    .line 63
    .line 64
    .line 65
    move-object v8, v2

    .line 66
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 67
    .line 68
    .line 69
    move-result v2
    :try_end_2
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_2 .. :try_end_2} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1b
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    .line 70
    if-nez v2, :cond_f

    .line 71
    .line 72
    :try_start_3
    new-instance v6, Lnet/lingala/zip4j/io/g;

    .line 73
    .line 74
    new-instance v2, Ljava/io/File;

    .line 75
    .line 76
    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {v6, v2}, Lnet/lingala/zip4j/io/g;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_16
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_3 .. :try_end_3} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1b
    .catchall {:try_start_3 .. :try_end_3} :catchall_c

    .line 80
    .line 81
    .line 82
    :try_start_4
    new-instance v7, Ljava/io/File;

    .line 83
    .line 84
    invoke-virtual/range {p1 .. p1}, Lpc/o;->m()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_4 .. :try_end_4} :catch_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_14
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    .line 89
    .line 90
    .line 91
    :try_start_5
    const-string v2, "r"

    .line 92
    .line 93
    invoke-direct {v9, v0, v2}, Lnet/lingala/zip4j/util/c;->e(Lpc/o;Ljava/lang/String;)Ljava/io/RandomAccessFile;

    .line 94
    .line 95
    .line 96
    move-result-object v4
    :try_end_5
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_5 .. :try_end_5} :catch_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_12
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .line 97
    :try_start_6
    new-instance v2, Lmc/a;

    .line 98
    .line 99
    invoke-direct {v2, v4}, Lmc/a;-><init>(Ljava/io/RandomAccessFile;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v1}, Lmc/a;->o(Lpc/h;)Lpc/i;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-eqz v2, :cond_e

    .line 107
    .line 108
    invoke-virtual/range {p2 .. p2}, Lpc/h;->u()J

    .line 109
    .line 110
    .line 111
    move-result-wide v2

    .line 112
    invoke-virtual/range {p2 .. p2}, Lpc/h;->A()Lpc/n;

    .line 113
    .line 114
    .line 115
    move-result-object v5
    :try_end_6
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_10
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 116
    const-wide/16 v16, -0x1

    .line 117
    .line 118
    if-eqz v5, :cond_0

    .line 119
    .line 120
    :try_start_7
    invoke-virtual/range {p2 .. p2}, Lpc/h;->A()Lpc/n;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v5}, Lpc/n;->d()J

    .line 125
    .line 126
    .line 127
    move-result-wide v18

    .line 128
    cmp-long v5, v18, v16

    .line 129
    .line 130
    if-eqz v5, :cond_0

    .line 131
    .line 132
    invoke-virtual/range {p2 .. p2}, Lpc/h;->A()Lpc/n;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lpc/n;->d()J

    .line 137
    .line 138
    .line 139
    move-result-wide v2
    :try_end_7
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 140
    goto :goto_1

    .line 141
    :catchall_0
    move-exception v0

    .line 142
    move-object v14, v4

    .line 143
    move-object v2, v6

    .line 144
    move-object v1, v7

    .line 145
    goto/16 :goto_11

    .line 146
    .line 147
    :catch_0
    move-exception v0

    .line 148
    move-object/from16 v28, v4

    .line 149
    .line 150
    move-object v14, v6

    .line 151
    move-object v1, v7

    .line 152
    goto/16 :goto_12

    .line 153
    .line 154
    :catch_1
    move-exception v0

    .line 155
    move-object/from16 v28, v4

    .line 156
    .line 157
    move-object v14, v6

    .line 158
    move-object v1, v7

    .line 159
    goto/16 :goto_13

    .line 160
    .line 161
    :cond_0
    :goto_1
    move-wide/from16 v18, v2

    .line 162
    .line 163
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Lpc/o;->f()Lpc/f;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v1}, Lpc/f;->f()J

    .line 168
    .line 169
    .line 170
    move-result-wide v1

    .line 171
    invoke-virtual/range {p1 .. p1}, Lpc/o;->q()Z

    .line 172
    .line 173
    .line 174
    move-result v3
    :try_end_8
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_10
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 175
    if-eqz v3, :cond_1

    .line 176
    .line 177
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Lpc/o;->l()Lpc/m;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    if-eqz v3, :cond_1

    .line 182
    .line 183
    invoke-virtual/range {p1 .. p1}, Lpc/o;->l()Lpc/m;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v1}, Lpc/m;->d()J

    .line 188
    .line 189
    .line 190
    move-result-wide v1
    :try_end_9
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 191
    :cond_1
    move-wide/from16 v20, v1

    .line 192
    .line 193
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Lpc/o;->b()Lpc/c;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v1}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    const/4 v5, 0x1

    .line 206
    sub-int/2addr v2, v5

    .line 207
    const-wide/16 v22, 0x1

    .line 208
    .line 209
    if-ne v15, v2, :cond_2

    .line 210
    .line 211
    sub-long v2, v20, v22

    .line 212
    .line 213
    :goto_2
    move-wide/from16 v24, v2

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_2
    add-int/lit8 v2, v15, 0x1

    .line 217
    .line 218
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    check-cast v2, Lpc/h;
    :try_end_a
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_a .. :try_end_a} :catch_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_10
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 223
    .line 224
    if-eqz v2, :cond_3

    .line 225
    .line 226
    :try_start_b
    invoke-virtual {v2}, Lpc/h;->u()J

    .line 227
    .line 228
    .line 229
    move-result-wide v24

    .line 230
    sub-long v24, v24, v22

    .line 231
    .line 232
    invoke-virtual {v2}, Lpc/h;->A()Lpc/n;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    if-eqz v3, :cond_4

    .line 237
    .line 238
    invoke-virtual {v2}, Lpc/h;->A()Lpc/n;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-virtual {v3}, Lpc/n;->d()J

    .line 243
    .line 244
    .line 245
    move-result-wide v26

    .line 246
    cmp-long v3, v26, v16

    .line 247
    .line 248
    if-eqz v3, :cond_4

    .line 249
    .line 250
    invoke-virtual {v2}, Lpc/h;->A()Lpc/n;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-virtual {v2}, Lpc/n;->d()J

    .line 255
    .line 256
    .line 257
    move-result-wide v2
    :try_end_b
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 258
    sub-long v2, v2, v22

    .line 259
    .line 260
    goto :goto_2

    .line 261
    :cond_3
    move-wide/from16 v24, v16

    .line 262
    .line 263
    :cond_4
    :goto_3
    const-wide/16 v2, 0x0

    .line 264
    .line 265
    cmp-long v26, v18, v2

    .line 266
    .line 267
    if-ltz v26, :cond_d

    .line 268
    .line 269
    cmp-long v26, v24, v2

    .line 270
    .line 271
    if-ltz v26, :cond_d

    .line 272
    .line 273
    if-nez v15, :cond_6

    .line 274
    .line 275
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Lpc/o;->b()Lpc/c;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-virtual {v1}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 284
    .line 285
    .line 286
    move-result v1
    :try_end_c
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 287
    if-le v1, v5, :cond_5

    .line 288
    .line 289
    add-long v26, v24, v22

    .line 290
    .line 291
    move-object/from16 v1, p0

    .line 292
    .line 293
    move-object v2, v4

    .line 294
    move-object v3, v6

    .line 295
    move-object/from16 v28, v4

    .line 296
    .line 297
    const/16 v29, 0x1

    .line 298
    .line 299
    move-wide/from16 v4, v26

    .line 300
    .line 301
    move-object/from16 p2, v6

    .line 302
    .line 303
    move-object/from16 v30, v7

    .line 304
    .line 305
    move-wide/from16 v6, v20

    .line 306
    .line 307
    move-object v14, v8

    .line 308
    move-object/from16 v8, p3

    .line 309
    .line 310
    :try_start_d
    invoke-direct/range {v1 .. v8}, Lnet/lingala/zip4j/util/c;->d(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLqc/a;)V
    :try_end_d
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 311
    .line 312
    .line 313
    goto/16 :goto_7

    .line 314
    .line 315
    :cond_5
    move-object/from16 v28, v4

    .line 316
    .line 317
    move-object/from16 p2, v6

    .line 318
    .line 319
    move-object/from16 v30, v7

    .line 320
    .line 321
    move-object v14, v8

    .line 322
    const/16 v29, 0x1

    .line 323
    .line 324
    goto/16 :goto_7

    .line 325
    .line 326
    :catchall_1
    move-exception v0

    .line 327
    move-object/from16 v28, v4

    .line 328
    .line 329
    move-object/from16 p2, v6

    .line 330
    .line 331
    move-object/from16 v30, v7

    .line 332
    .line 333
    move-object v14, v8

    .line 334
    :goto_4
    move-object/from16 v2, p2

    .line 335
    .line 336
    move-object v3, v14

    .line 337
    move-object/from16 v14, v28

    .line 338
    .line 339
    move-object/from16 v1, v30

    .line 340
    .line 341
    goto/16 :goto_1e

    .line 342
    .line 343
    :catch_2
    move-exception v0

    .line 344
    move-object/from16 v28, v4

    .line 345
    .line 346
    move-object/from16 p2, v6

    .line 347
    .line 348
    move-object/from16 v30, v7

    .line 349
    .line 350
    move-object v14, v8

    .line 351
    :goto_5
    move-object v3, v14

    .line 352
    move-object/from16 v1, v30

    .line 353
    .line 354
    move-object/from16 v14, p2

    .line 355
    .line 356
    goto/16 :goto_1a

    .line 357
    .line 358
    :catch_3
    move-exception v0

    .line 359
    move-object/from16 v28, v4

    .line 360
    .line 361
    move-object/from16 p2, v6

    .line 362
    .line 363
    move-object/from16 v30, v7

    .line 364
    .line 365
    move-object v14, v8

    .line 366
    :goto_6
    move-object v3, v14

    .line 367
    move-object/from16 v1, v30

    .line 368
    .line 369
    move-object/from16 v14, p2

    .line 370
    .line 371
    goto/16 :goto_1c

    .line 372
    .line 373
    :cond_6
    move-object/from16 v28, v4

    .line 374
    .line 375
    move-object/from16 p2, v6

    .line 376
    .line 377
    move-object/from16 v30, v7

    .line 378
    .line 379
    move-object v14, v8

    .line 380
    const/16 v29, 0x1

    .line 381
    .line 382
    :try_start_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 383
    .line 384
    .line 385
    move-result v1
    :try_end_e
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_e .. :try_end_e} :catch_d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 386
    add-int/lit8 v1, v1, -0x1

    .line 387
    .line 388
    if-ne v15, v1, :cond_7

    .line 389
    .line 390
    const-wide/16 v4, 0x0

    .line 391
    .line 392
    move-object/from16 v1, p0

    .line 393
    .line 394
    move-object/from16 v2, v28

    .line 395
    .line 396
    move-object/from16 v3, p2

    .line 397
    .line 398
    move-wide/from16 v6, v18

    .line 399
    .line 400
    move-object/from16 v8, p3

    .line 401
    .line 402
    :try_start_f
    invoke-direct/range {v1 .. v8}, Lnet/lingala/zip4j/util/c;->d(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLqc/a;)V
    :try_end_f
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 403
    .line 404
    .line 405
    goto :goto_7

    .line 406
    :catchall_2
    move-exception v0

    .line 407
    goto :goto_4

    .line 408
    :catch_4
    move-exception v0

    .line 409
    goto :goto_5

    .line 410
    :catch_5
    move-exception v0

    .line 411
    goto :goto_6

    .line 412
    :cond_7
    const-wide/16 v4, 0x0

    .line 413
    .line 414
    move-object/from16 v1, p0

    .line 415
    .line 416
    move-object/from16 v2, v28

    .line 417
    .line 418
    move-object/from16 v3, p2

    .line 419
    .line 420
    move-wide/from16 v6, v18

    .line 421
    .line 422
    move-object/from16 v8, p3

    .line 423
    .line 424
    :try_start_10
    invoke-direct/range {v1 .. v8}, Lnet/lingala/zip4j/util/c;->d(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLqc/a;)V

    .line 425
    .line 426
    .line 427
    add-long v4, v24, v22

    .line 428
    .line 429
    move-object/from16 v1, p0

    .line 430
    .line 431
    move-object/from16 v2, v28

    .line 432
    .line 433
    move-object/from16 v3, p2

    .line 434
    .line 435
    move-wide/from16 v6, v20

    .line 436
    .line 437
    move-object/from16 v8, p3

    .line 438
    .line 439
    invoke-direct/range {v1 .. v8}, Lnet/lingala/zip4j/util/c;->d(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLqc/a;)V

    .line 440
    .line 441
    .line 442
    :goto_7
    invoke-virtual/range {p3 .. p3}, Lqc/a;->m()Z

    .line 443
    .line 444
    .line 445
    move-result v1
    :try_end_10
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_10 .. :try_end_10} :catch_d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 446
    if-eqz v1, :cond_9

    .line 447
    .line 448
    const/4 v0, 0x3

    .line 449
    :try_start_11
    invoke-virtual {v10, v0}, Lqc/a;->setResult(I)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v10, v13}, Lqc/a;->u(I)V
    :try_end_11
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 453
    .line 454
    .line 455
    if-eqz v28, :cond_8

    .line 456
    .line 457
    :try_start_12
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->close()V

    .line 458
    .line 459
    .line 460
    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    .line 461
    .line 462
    .line 463
    new-instance v0, Ljava/io/File;

    .line 464
    .line 465
    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 469
    .line 470
    .line 471
    const/4 v3, 0x0

    .line 472
    return-object v3

    .line 473
    :catch_6
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 474
    .line 475
    invoke-direct {v0, v11}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    throw v0

    .line 479
    :cond_9
    :try_start_13
    invoke-virtual/range {p1 .. p1}, Lpc/o;->f()Lpc/f;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/io/g;->d()J

    .line 484
    .line 485
    .line 486
    move-result-wide v2

    .line 487
    invoke-virtual {v1, v2, v3}, Lpc/f;->p(J)V

    .line 488
    .line 489
    .line 490
    invoke-virtual/range {p1 .. p1}, Lpc/o;->f()Lpc/f;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    invoke-virtual/range {p1 .. p1}, Lpc/o;->f()Lpc/f;

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    invoke-virtual {v2}, Lpc/f;->i()I

    .line 499
    .line 500
    .line 501
    move-result v2

    .line 502
    add-int/lit8 v2, v2, -0x1

    .line 503
    .line 504
    invoke-virtual {v1, v2}, Lpc/f;->s(I)V

    .line 505
    .line 506
    .line 507
    invoke-virtual/range {p1 .. p1}, Lpc/o;->f()Lpc/f;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    invoke-virtual/range {p1 .. p1}, Lpc/o;->f()Lpc/f;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    invoke-virtual {v2}, Lpc/f;->j()I

    .line 516
    .line 517
    .line 518
    move-result v2

    .line 519
    add-int/lit8 v2, v2, -0x1

    .line 520
    .line 521
    invoke-virtual {v1, v2}, Lpc/f;->t(I)V

    .line 522
    .line 523
    .line 524
    invoke-virtual/range {p1 .. p1}, Lpc/o;->b()Lpc/c;

    .line 525
    .line 526
    .line 527
    move-result-object v1

    .line 528
    invoke-virtual {v1}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 529
    .line 530
    .line 531
    move-result-object v1

    .line 532
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lpc/o;->b()Lpc/c;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    invoke-virtual {v1}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 544
    .line 545
    .line 546
    move-result v1

    .line 547
    if-lt v15, v1, :cond_b

    .line 548
    .line 549
    new-instance v1, Lmc/b;

    .line 550
    .line 551
    invoke-direct {v1}, Lmc/b;-><init>()V
    :try_end_13
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_13 .. :try_end_13} :catch_d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 552
    .line 553
    .line 554
    move-object/from16 v2, p2

    .line 555
    .line 556
    :try_start_14
    invoke-virtual {v1, v0, v2}, Lmc/b;->d(Lpc/o;Ljava/io/OutputStream;)V
    :try_end_14
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 557
    .line 558
    .line 559
    :try_start_15
    const-string v1, "offsetCentralDir"

    .line 560
    .line 561
    invoke-virtual/range {p1 .. p1}, Lpc/o;->f()Lpc/f;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    invoke-virtual {v0}, Lpc/f;->f()J

    .line 566
    .line 567
    .line 568
    move-result-wide v3

    .line 569
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    invoke-virtual {v12, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_15 .. :try_end_15} :catch_9
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_8
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 574
    .line 575
    .line 576
    if-eqz v28, :cond_a

    .line 577
    .line 578
    :try_start_16
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->close()V

    .line 579
    .line 580
    .line 581
    :cond_a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7

    .line 582
    .line 583
    .line 584
    move-object/from16 v1, v30

    .line 585
    .line 586
    invoke-direct {v9, v1, v14}, Lnet/lingala/zip4j/util/c;->n(Ljava/io/File;Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    return-object v12

    .line 590
    :catch_7
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 591
    .line 592
    invoke-direct {v0, v11}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    throw v0

    .line 596
    :catchall_3
    move-exception v0

    .line 597
    move-object/from16 v1, v30

    .line 598
    .line 599
    move-object v3, v14

    .line 600
    move-object/from16 v14, v28

    .line 601
    .line 602
    const/4 v13, 0x1

    .line 603
    goto/16 :goto_1e

    .line 604
    .line 605
    :catch_8
    move-exception v0

    .line 606
    move-object/from16 v1, v30

    .line 607
    .line 608
    move-object v3, v14

    .line 609
    const/4 v13, 0x1

    .line 610
    goto/16 :goto_e

    .line 611
    .line 612
    :catch_9
    move-exception v0

    .line 613
    move-object/from16 v1, v30

    .line 614
    .line 615
    move-object v3, v14

    .line 616
    const/4 v13, 0x1

    .line 617
    goto/16 :goto_10

    .line 618
    .line 619
    :catchall_4
    move-exception v0

    .line 620
    goto/16 :goto_9

    .line 621
    .line 622
    :catch_a
    move-exception v0

    .line 623
    goto/16 :goto_a

    .line 624
    .line 625
    :catch_b
    move-exception v0

    .line 626
    goto/16 :goto_b

    .line 627
    .line 628
    :cond_b
    move-object/from16 v2, p2

    .line 629
    .line 630
    move-object/from16 v1, v30

    .line 631
    .line 632
    :try_start_17
    invoke-virtual/range {p1 .. p1}, Lpc/o;->b()Lpc/c;

    .line 633
    .line 634
    .line 635
    move-result-object v3

    .line 636
    invoke-virtual {v3}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 637
    .line 638
    .line 639
    move-result-object v3

    .line 640
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object v3

    .line 644
    check-cast v3, Lpc/h;

    .line 645
    .line 646
    invoke-virtual {v3}, Lpc/h;->u()J

    .line 647
    .line 648
    .line 649
    move-result-wide v3

    .line 650
    invoke-virtual/range {p1 .. p1}, Lpc/o;->b()Lpc/c;

    .line 651
    .line 652
    .line 653
    move-result-object v5

    .line 654
    invoke-virtual {v5}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 655
    .line 656
    .line 657
    move-result-object v5

    .line 658
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v5

    .line 662
    check-cast v5, Lpc/h;

    .line 663
    .line 664
    invoke-virtual {v5}, Lpc/h;->A()Lpc/n;

    .line 665
    .line 666
    .line 667
    move-result-object v5

    .line 668
    if-eqz v5, :cond_c

    .line 669
    .line 670
    invoke-virtual/range {p1 .. p1}, Lpc/o;->b()Lpc/c;

    .line 671
    .line 672
    .line 673
    move-result-object v5

    .line 674
    invoke-virtual {v5}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 675
    .line 676
    .line 677
    move-result-object v5

    .line 678
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 679
    .line 680
    .line 681
    move-result-object v5

    .line 682
    check-cast v5, Lpc/h;

    .line 683
    .line 684
    invoke-virtual {v5}, Lpc/h;->A()Lpc/n;

    .line 685
    .line 686
    .line 687
    move-result-object v5

    .line 688
    invoke-virtual {v5}, Lpc/n;->d()J

    .line 689
    .line 690
    .line 691
    move-result-wide v5

    .line 692
    cmp-long v7, v5, v16

    .line 693
    .line 694
    if-eqz v7, :cond_c

    .line 695
    .line 696
    invoke-virtual/range {p1 .. p1}, Lpc/o;->b()Lpc/c;

    .line 697
    .line 698
    .line 699
    move-result-object v3

    .line 700
    invoke-virtual {v3}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 701
    .line 702
    .line 703
    move-result-object v3

    .line 704
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object v3

    .line 708
    check-cast v3, Lpc/h;

    .line 709
    .line 710
    invoke-virtual {v3}, Lpc/h;->A()Lpc/n;

    .line 711
    .line 712
    .line 713
    move-result-object v3

    .line 714
    invoke-virtual {v3}, Lpc/n;->d()J

    .line 715
    .line 716
    .line 717
    move-result-wide v3

    .line 718
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lpc/o;->b()Lpc/c;

    .line 719
    .line 720
    .line 721
    move-result-object v5

    .line 722
    invoke-virtual {v5}, Lpc/c;->b()Ljava/util/ArrayList;

    .line 723
    .line 724
    .line 725
    move-result-object v5

    .line 726
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    move-result-object v5

    .line 730
    check-cast v5, Lpc/h;

    .line 731
    .line 732
    sub-long v6, v24, v18

    .line 733
    .line 734
    sub-long/2addr v3, v6

    .line 735
    sub-long v3, v3, v22

    .line 736
    .line 737
    invoke-virtual {v5, v3, v4}, Lpc/h;->a0(J)V

    .line 738
    .line 739
    .line 740
    add-int/lit8 v15, v15, 0x1

    .line 741
    .line 742
    move-object/from16 v30, v1

    .line 743
    .line 744
    move-object/from16 p2, v2

    .line 745
    .line 746
    goto/16 :goto_8

    .line 747
    .line 748
    :catchall_5
    move-exception v0

    .line 749
    move-object/from16 v2, p2

    .line 750
    .line 751
    :goto_9
    move-object/from16 v1, v30

    .line 752
    .line 753
    goto :goto_c

    .line 754
    :catch_c
    move-exception v0

    .line 755
    move-object/from16 v2, p2

    .line 756
    .line 757
    :goto_a
    move-object/from16 v1, v30

    .line 758
    .line 759
    goto/16 :goto_d

    .line 760
    .line 761
    :catch_d
    move-exception v0

    .line 762
    move-object/from16 v2, p2

    .line 763
    .line 764
    :goto_b
    move-object/from16 v1, v30

    .line 765
    .line 766
    goto/16 :goto_f

    .line 767
    .line 768
    :cond_d
    move-object/from16 v28, v4

    .line 769
    .line 770
    move-object v2, v6

    .line 771
    move-object v1, v7

    .line 772
    move-object v14, v8

    .line 773
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 774
    .line 775
    const-string v3, "invalid offset for start and end of local file, cannot remove file"

    .line 776
    .line 777
    invoke-direct {v0, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    throw v0

    .line 781
    :cond_e
    move-object/from16 v28, v4

    .line 782
    .line 783
    move-object v2, v6

    .line 784
    move-object v1, v7

    .line 785
    move-object v14, v8

    .line 786
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 787
    .line 788
    const-string v3, "invalid local file header, cannot remove file from archive"

    .line 789
    .line 790
    invoke-direct {v0, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 791
    .line 792
    .line 793
    throw v0
    :try_end_17
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_17 .. :try_end_17} :catch_f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_e
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 794
    :catchall_6
    move-exception v0

    .line 795
    goto :goto_c

    .line 796
    :catch_e
    move-exception v0

    .line 797
    goto/16 :goto_d

    .line 798
    .line 799
    :catch_f
    move-exception v0

    .line 800
    goto/16 :goto_f

    .line 801
    .line 802
    :catchall_7
    move-exception v0

    .line 803
    move-object/from16 v28, v4

    .line 804
    .line 805
    move-object v2, v6

    .line 806
    move-object v1, v7

    .line 807
    move-object v14, v8

    .line 808
    :goto_c
    move-object v3, v14

    .line 809
    goto/16 :goto_1d

    .line 810
    .line 811
    :catch_10
    move-exception v0

    .line 812
    move-object/from16 v28, v4

    .line 813
    .line 814
    move-object v2, v6

    .line 815
    move-object v1, v7

    .line 816
    move-object v14, v8

    .line 817
    goto :goto_d

    .line 818
    :catch_11
    move-exception v0

    .line 819
    move-object/from16 v28, v4

    .line 820
    .line 821
    move-object v2, v6

    .line 822
    move-object v1, v7

    .line 823
    move-object v14, v8

    .line 824
    goto :goto_f

    .line 825
    :catchall_8
    move-exception v0

    .line 826
    move-object v2, v6

    .line 827
    move-object v1, v7

    .line 828
    move-object v14, v8

    .line 829
    const/4 v3, 0x0

    .line 830
    move-object/from16 v31, v14

    .line 831
    .line 832
    move-object v14, v3

    .line 833
    move-object/from16 v3, v31

    .line 834
    .line 835
    goto/16 :goto_1e

    .line 836
    .line 837
    :catch_12
    move-exception v0

    .line 838
    move-object v2, v6

    .line 839
    move-object v1, v7

    .line 840
    move-object v14, v8

    .line 841
    const/4 v3, 0x0

    .line 842
    move-object/from16 v28, v3

    .line 843
    .line 844
    goto :goto_d

    .line 845
    :catch_13
    move-exception v0

    .line 846
    move-object v2, v6

    .line 847
    move-object v1, v7

    .line 848
    move-object v14, v8

    .line 849
    const/4 v3, 0x0

    .line 850
    move-object/from16 v28, v3

    .line 851
    .line 852
    goto :goto_f

    .line 853
    :catchall_9
    move-exception v0

    .line 854
    move-object v2, v6

    .line 855
    move-object v14, v8

    .line 856
    const/4 v3, 0x0

    .line 857
    move-object v1, v3

    .line 858
    move-object v3, v14

    .line 859
    move-object v14, v1

    .line 860
    goto/16 :goto_1e

    .line 861
    .line 862
    :catch_14
    move-exception v0

    .line 863
    move-object v2, v6

    .line 864
    move-object v14, v8

    .line 865
    const/4 v3, 0x0

    .line 866
    move-object v1, v3

    .line 867
    move-object/from16 v28, v1

    .line 868
    .line 869
    :goto_d
    move-object v3, v14

    .line 870
    :goto_e
    move-object v14, v2

    .line 871
    goto/16 :goto_1a

    .line 872
    .line 873
    :catch_15
    move-exception v0

    .line 874
    move-object v2, v6

    .line 875
    move-object v14, v8

    .line 876
    const/4 v3, 0x0

    .line 877
    move-object v1, v3

    .line 878
    move-object/from16 v28, v1

    .line 879
    .line 880
    :goto_f
    move-object v3, v14

    .line 881
    :goto_10
    move-object v14, v2

    .line 882
    goto/16 :goto_1c

    .line 883
    .line 884
    :catch_16
    move-exception v0

    .line 885
    move-object v14, v8

    .line 886
    const/4 v3, 0x0

    .line 887
    :try_start_18
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 888
    .line 889
    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 890
    .line 891
    .line 892
    throw v1

    .line 893
    :cond_f
    move-object v14, v8

    .line 894
    const/4 v3, 0x0

    .line 895
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 896
    .line 897
    .line 898
    move-result-wide v7

    .line 899
    new-instance v2, Ljava/lang/StringBuffer;

    .line 900
    .line 901
    invoke-virtual/range {p1 .. p1}, Lpc/o;->m()Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v4

    .line 905
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v4

    .line 909
    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 910
    .line 911
    .line 912
    rem-long/2addr v7, v5

    .line 913
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 914
    .line 915
    .line 916
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v8
    :try_end_18
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_18 .. :try_end_18} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_19
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    .line 920
    :try_start_19
    new-instance v2, Ljava/io/File;

    .line 921
    .line 922
    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_19 .. :try_end_19} :catch_18
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_17
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    .line 923
    .line 924
    .line 925
    move-object v3, v2

    .line 926
    goto/16 :goto_0

    .line 927
    .line 928
    :catchall_a
    move-exception v0

    .line 929
    move-object v1, v3

    .line 930
    move-object v2, v1

    .line 931
    move-object v14, v2

    .line 932
    :goto_11
    move-object v3, v8

    .line 933
    goto/16 :goto_1e

    .line 934
    .line 935
    :catch_17
    move-exception v0

    .line 936
    move-object v1, v3

    .line 937
    move-object v14, v1

    .line 938
    move-object/from16 v28, v14

    .line 939
    .line 940
    :goto_12
    move-object v3, v8

    .line 941
    goto/16 :goto_1a

    .line 942
    .line 943
    :catch_18
    move-exception v0

    .line 944
    move-object v1, v3

    .line 945
    move-object v14, v1

    .line 946
    move-object/from16 v28, v14

    .line 947
    .line 948
    :goto_13
    move-object v3, v8

    .line 949
    goto/16 :goto_1c

    .line 950
    .line 951
    :catchall_b
    move-exception v0

    .line 952
    goto :goto_14

    .line 953
    :catch_19
    move-exception v0

    .line 954
    goto :goto_15

    .line 955
    :catch_1a
    move-exception v0

    .line 956
    goto :goto_16

    .line 957
    :catchall_c
    move-exception v0

    .line 958
    move-object v14, v8

    .line 959
    const/4 v3, 0x0

    .line 960
    :goto_14
    move-object v1, v3

    .line 961
    move-object v2, v1

    .line 962
    move-object v3, v14

    .line 963
    goto/16 :goto_18

    .line 964
    .line 965
    :catch_1b
    move-exception v0

    .line 966
    move-object v14, v8

    .line 967
    const/4 v3, 0x0

    .line 968
    :goto_15
    move-object v1, v3

    .line 969
    move-object/from16 v28, v1

    .line 970
    .line 971
    move-object v3, v14

    .line 972
    move-object/from16 v14, v28

    .line 973
    .line 974
    goto/16 :goto_1a

    .line 975
    .line 976
    :catch_1c
    move-exception v0

    .line 977
    move-object v14, v8

    .line 978
    const/4 v3, 0x0

    .line 979
    :goto_16
    move-object v1, v3

    .line 980
    move-object/from16 v28, v1

    .line 981
    .line 982
    move-object v3, v14

    .line 983
    move-object/from16 v14, v28

    .line 984
    .line 985
    goto/16 :goto_1c

    .line 986
    .line 987
    :catchall_d
    move-exception v0

    .line 988
    const/4 v3, 0x0

    .line 989
    move-object v1, v3

    .line 990
    move-object v14, v1

    .line 991
    move-object v3, v2

    .line 992
    move-object v2, v14

    .line 993
    goto :goto_1e

    .line 994
    :catch_1d
    move-exception v0

    .line 995
    const/4 v3, 0x0

    .line 996
    move-object v1, v3

    .line 997
    move-object v14, v1

    .line 998
    move-object/from16 v28, v14

    .line 999
    .line 1000
    move-object v3, v2

    .line 1001
    goto :goto_1a

    .line 1002
    :catch_1e
    move-exception v0

    .line 1003
    const/4 v3, 0x0

    .line 1004
    move-object v1, v3

    .line 1005
    move-object v14, v1

    .line 1006
    move-object/from16 v28, v14

    .line 1007
    .line 1008
    move-object v3, v2

    .line 1009
    goto :goto_1c

    .line 1010
    :cond_10
    const/4 v3, 0x0

    .line 1011
    :try_start_1a
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 1012
    .line 1013
    const-string v1, "This is a split archive. Zip file format does not allow updating split/spanned files"

    .line 1014
    .line 1015
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 1016
    .line 1017
    .line 1018
    throw v0

    .line 1019
    :cond_11
    const/4 v3, 0x0

    .line 1020
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 1021
    .line 1022
    const-string v1, "file header not found in zip model, cannot remove file"

    .line 1023
    .line 1024
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 1025
    .line 1026
    .line 1027
    throw v0
    :try_end_1a
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1a .. :try_end_1a} :catch_20
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1f
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    .line 1028
    :catchall_e
    move-exception v0

    .line 1029
    goto :goto_17

    .line 1030
    :catch_1f
    move-exception v0

    .line 1031
    goto :goto_19

    .line 1032
    :catch_20
    move-exception v0

    .line 1033
    goto :goto_1b

    .line 1034
    :catchall_f
    move-exception v0

    .line 1035
    const/4 v3, 0x0

    .line 1036
    :goto_17
    move-object v1, v3

    .line 1037
    move-object v2, v1

    .line 1038
    :goto_18
    move-object v14, v2

    .line 1039
    goto :goto_1e

    .line 1040
    :catch_21
    move-exception v0

    .line 1041
    const/4 v3, 0x0

    .line 1042
    :goto_19
    move-object v1, v3

    .line 1043
    move-object v14, v1

    .line 1044
    move-object/from16 v28, v14

    .line 1045
    .line 1046
    :goto_1a
    :try_start_1b
    invoke-virtual {v10, v0}, Lqc/a;->b(Ljava/lang/Throwable;)V

    .line 1047
    .line 1048
    .line 1049
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    .line 1050
    .line 1051
    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 1052
    .line 1053
    .line 1054
    throw v2

    .line 1055
    :catch_22
    move-exception v0

    .line 1056
    const/4 v3, 0x0

    .line 1057
    :goto_1b
    move-object v1, v3

    .line 1058
    move-object v14, v1

    .line 1059
    move-object/from16 v28, v14

    .line 1060
    .line 1061
    :goto_1c
    invoke-virtual {v10, v0}, Lqc/a;->b(Ljava/lang/Throwable;)V

    .line 1062
    .line 1063
    .line 1064
    throw v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_10

    .line 1065
    :catchall_10
    move-exception v0

    .line 1066
    move-object v2, v14

    .line 1067
    :goto_1d
    move-object/from16 v14, v28

    .line 1068
    .line 1069
    :goto_1e
    if-eqz v14, :cond_12

    .line 1070
    .line 1071
    :try_start_1c
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V

    .line 1072
    .line 1073
    .line 1074
    :cond_12
    if-eqz v2, :cond_13

    .line 1075
    .line 1076
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_23

    .line 1077
    .line 1078
    .line 1079
    goto :goto_1f

    .line 1080
    :catch_23
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 1081
    .line 1082
    invoke-direct {v0, v11}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 1083
    .line 1084
    .line 1085
    throw v0

    .line 1086
    :cond_13
    :goto_1f
    if-eqz v13, :cond_14

    .line 1087
    .line 1088
    invoke-direct {v9, v1, v3}, Lnet/lingala/zip4j/util/c;->n(Ljava/io/File;Ljava/lang/String;)V

    .line 1089
    .line 1090
    .line 1091
    goto :goto_20

    .line 1092
    :cond_14
    new-instance v1, Ljava/io/File;

    .line 1093
    .line 1094
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1095
    .line 1096
    .line 1097
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1098
    .line 1099
    .line 1100
    :goto_20
    throw v0

    .line 1101
    :cond_15
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 1102
    .line 1103
    const-string v1, "input parameters is null in maintain zip file, cannot remove file from archive"

    .line 1104
    .line 1105
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 1106
    .line 1107
    .line 1108
    throw v0
.end method

.method public k(Lpc/o;Ljava/io/File;Lqc/a;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    new-instance p4, Lnet/lingala/zip4j/util/b;

    .line 4
    .line 5
    const-string v2, "Zip4j"

    .line 6
    .line 7
    move-object v0, p4

    .line 8
    move-object v1, p0

    .line 9
    move-object v3, p1

    .line 10
    move-object v4, p2

    .line 11
    move-object v5, p3

    .line 12
    invoke-direct/range {v0 .. v5}, Lnet/lingala/zip4j/util/b;-><init>(Lnet/lingala/zip4j/util/c;Ljava/lang/String;Lpc/o;Ljava/io/File;Lqc/a;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/util/c;->g(Lpc/o;Ljava/io/File;Lqc/a;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public m(Lpc/o;Lpc/h;Lqc/a;Z)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    new-instance p4, Lnet/lingala/zip4j/util/a;

    .line 4
    .line 5
    const-string v2, "Zip4j"

    .line 6
    .line 7
    move-object v0, p4

    .line 8
    move-object v1, p0

    .line 9
    move-object v3, p1

    .line 10
    move-object v4, p2

    .line 11
    move-object v5, p3

    .line 12
    invoke-direct/range {v0 .. v5}, Lnet/lingala/zip4j/util/a;-><init>(Lnet/lingala/zip4j/util/c;Ljava/lang/String;Lpc/o;Lpc/h;Lqc/a;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return-object p1

    .line 20
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lnet/lingala/zip4j/util/c;->j(Lpc/o;Lpc/h;Lqc/a;)Ljava/util/HashMap;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p3}, Lqc/a;->c()V

    .line 25
    .line 26
    .line 27
    return-object p1
.end method

.method public o(Lpc/o;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_5

    .line 2
    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "windows-1254"

    .line 14
    .line 15
    invoke-static {v2}, Lnet/lingala/zip4j/util/h;->B(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    move-object v4, v1

    .line 39
    move v1, p2

    .line 40
    move-object p2, v0

    .line 41
    move-object v0, v4

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    :cond_0
    :goto_0
    const v2, 0xffff

    .line 52
    .line 53
    .line 54
    if-gt v1, v2, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1}, Lpc/o;->f()Lpc/f;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2, p2}, Lpc/f;->k(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lpc/o;->f()Lpc/f;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2, v0}, Lpc/f;->l([B)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lpc/o;->f()Lpc/f;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-virtual {p2, v1}, Lpc/f;->m(I)V

    .line 75
    .line 76
    .line 77
    const/4 p2, 0x0

    .line 78
    :try_start_1
    new-instance v0, Lmc/b;

    .line 79
    .line 80
    invoke-direct {v0}, Lmc/b;-><init>()V

    .line 81
    .line 82
    .line 83
    new-instance v1, Lnet/lingala/zip4j/io/g;

    .line 84
    .line 85
    invoke-virtual {p1}, Lpc/o;->m()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-direct {v1, v2}, Lnet/lingala/zip4j/io/g;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    .line 91
    .line 92
    :try_start_2
    invoke-virtual {p1}, Lpc/o;->q()Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    if-eqz p2, :cond_1

    .line 97
    .line 98
    invoke-virtual {p1}, Lpc/o;->l()Lpc/m;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-virtual {p2}, Lpc/m;->d()J

    .line 103
    .line 104
    .line 105
    move-result-wide v2

    .line 106
    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/io/g;->seek(J)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_1
    invoke-virtual {p1}, Lpc/o;->f()Lpc/f;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p2}, Lpc/f;->f()J

    .line 115
    .line 116
    .line 117
    move-result-wide v2

    .line 118
    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/io/g;->seek(J)V

    .line 119
    .line 120
    .line 121
    :goto_1
    invoke-virtual {v0, p1, v1}, Lmc/b;->e(Lpc/o;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    .line 123
    .line 124
    :try_start_3
    invoke-virtual {v1}, Lnet/lingala/zip4j/io/g;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 125
    .line 126
    .line 127
    :catch_1
    return-void

    .line 128
    :catchall_0
    move-exception p1

    .line 129
    move-object p2, v1

    .line 130
    goto :goto_4

    .line 131
    :catch_2
    move-exception p1

    .line 132
    move-object p2, v1

    .line 133
    goto :goto_2

    .line 134
    :catch_3
    move-exception p1

    .line 135
    move-object p2, v1

    .line 136
    goto :goto_3

    .line 137
    :catchall_1
    move-exception p1

    .line 138
    goto :goto_4

    .line 139
    :catch_4
    move-exception p1

    .line 140
    :goto_2
    :try_start_4
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 141
    .line 142
    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    throw v0

    .line 146
    :catch_5
    move-exception p1

    .line 147
    :goto_3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 148
    .line 149
    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 153
    :goto_4
    if-eqz p2, :cond_2

    .line 154
    .line 155
    :try_start_5
    invoke-virtual {p2}, Lnet/lingala/zip4j/io/g;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 156
    .line 157
    .line 158
    :catch_6
    :cond_2
    throw p1

    .line 159
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 160
    .line 161
    const-string p2, "comment length exceeds maximum length"

    .line 162
    .line 163
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p1

    .line 167
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 168
    .line 169
    const-string p2, "zipModel is null, cannot update Zip file with comment"

    .line 170
    .line 171
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p1

    .line 175
    :cond_5
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 176
    .line 177
    const-string p2, "comment is null, cannot update Zip file with comment"

    .line 178
    .line 179
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw p1
.end method

.class public Lnet/lingala/zip4j/unzip/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lpc/o;

.field private b:Lpc/h;

.field private c:I

.field private d:Lpc/i;

.field private e:Lnet/lingala/zip4j/crypto/c;

.field private f:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Lpc/o;Lpc/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lnet/lingala/zip4j/unzip/d;->c:I

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lnet/lingala/zip4j/unzip/d;->a:Lpc/o;

    .line 12
    .line 13
    iput-object p2, p0, Lnet/lingala/zip4j/unzip/d;->b:Lpc/h;

    .line 14
    .line 15
    new-instance p1, Ljava/util/zip/CRC32;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lnet/lingala/zip4j/unzip/d;->f:Ljava/util/zip/CRC32;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 24
    .line 25
    const-string p2, "Invalid parameters passed to StoreUnzip. One or more of the parameters were null"

    .line 26
    .line 27
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method private a(Lpc/a;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Lpc/a;->a()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p1, v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    const/16 p1, 0x10

    .line 17
    .line 18
    return p1

    .line 19
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 20
    .line 21
    const-string v0, "unable to determine salt length: invalid aes key strength"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    const/16 p1, 0xc

    .line 28
    .line 29
    return p1

    .line 30
    :cond_2
    const/16 p1, 0x8

    .line 31
    .line 32
    return p1

    .line 33
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 34
    .line 35
    const-string v0, "unable to determine salt length: AESExtraDataRecord is null"

    .line 36
    .line 37
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method private c()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lnet/lingala/zip4j/unzip/d;->d()Ljava/io/RandomAccessFile;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 9
    .line 10
    new-instance v2, Ljava/io/File;

    .line 11
    .line 12
    iget-object v3, p0, Lnet/lingala/zip4j/unzip/d;->a:Lpc/o;

    .line 13
    .line 14
    invoke-virtual {v3}, Lpc/o;->m()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v3, "r"

    .line 22
    .line 23
    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    move-object v0, v1

    .line 27
    :cond_0
    new-instance v1, Lmc/a;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Lmc/a;-><init>(Ljava/io/RandomAccessFile;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/d;->b:Lpc/h;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lmc/a;->o(Lpc/h;)Lpc/i;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, p0, Lnet/lingala/zip4j/unzip/d;->d:Lpc/i;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1}, Lpc/i;->c()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/d;->b:Lpc/h;

    .line 47
    .line 48
    invoke-virtual {v2}, Lpc/h;->f()I

    .line 49
    .line 50
    .line 51
    move-result v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    if-eq v1, v2, :cond_1

    .line 53
    .line 54
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    .line 56
    .line 57
    :catch_0
    const/4 v0, 0x0

    .line 58
    return v0

    .line 59
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 60
    .line 61
    .line 62
    :catch_1
    const/4 v0, 0x1

    .line 63
    return v0

    .line 64
    :cond_2
    :try_start_3
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 65
    .line 66
    const-string v2, "error reading local file header. Is this a valid zip file?"

    .line 67
    .line 68
    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v1
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    :catchall_0
    move-exception v1

    .line 73
    goto :goto_0

    .line 74
    :catch_2
    move-exception v1

    .line 75
    :try_start_4
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    .line 76
    .line 77
    invoke-direct {v2, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 81
    :goto_0
    if-eqz v0, :cond_3

    .line 82
    .line 83
    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 84
    .line 85
    .line 86
    :catch_3
    :cond_3
    throw v1
.end method

.method private d()Ljava/io/RandomAccessFile;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->a:Lpc/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lpc/o;->p()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->b:Lpc/h;

    .line 10
    .line 11
    invoke-virtual {v0}, Lpc/h;->i()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    add-int/lit8 v1, v0, 0x1

    .line 16
    .line 17
    iput v1, p0, Lnet/lingala/zip4j/unzip/d;->c:I

    .line 18
    .line 19
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/d;->a:Lpc/o;

    .line 20
    .line 21
    invoke-virtual {v2}, Lpc/o;->m()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v3, p0, Lnet/lingala/zip4j/unzip/d;->a:Lpc/o;

    .line 26
    .line 27
    invoke-virtual {v3}, Lpc/o;->f()Lpc/f;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Lpc/f;->d()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v4, 0x0

    .line 36
    if-ne v0, v3, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->a:Lpc/o;

    .line 39
    .line 40
    invoke-virtual {v0}, Lpc/o;->m()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/16 v3, 0x9

    .line 46
    .line 47
    const-string v5, "."

    .line 48
    .line 49
    if-lt v0, v3, :cond_1

    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuffer;

    .line 52
    .line 53
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v2, ".z"

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 82
    .line 83
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string v2, ".z0"

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 111
    .line 112
    const-string v2, "r"

    .line 113
    .line 114
    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget v0, p0, Lnet/lingala/zip4j/unzip/d;->c:I

    .line 118
    .line 119
    const/4 v2, 0x1

    .line 120
    if-ne v0, v2, :cond_3

    .line 121
    .line 122
    const/4 v0, 0x4

    .line 123
    new-array v0, v0, [B

    .line 124
    .line 125
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 126
    .line 127
    .line 128
    invoke-static {v0, v4}, Lnet/lingala/zip4j/util/f;->e([BI)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    int-to-long v2, v0

    .line 133
    const-wide/32 v4, 0x8074b50

    .line 134
    .line 135
    .line 136
    cmp-long v0, v2, v4

    .line 137
    .line 138
    if-nez v0, :cond_2

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 142
    .line 143
    const-string v1, "invalid first part split file signature"

    .line 144
    .line 145
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_3
    :goto_1
    return-object v1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 152
    .line 153
    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 154
    .line 155
    .line 156
    throw v1

    .line 157
    :catch_1
    move-exception v0

    .line 158
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 159
    .line 160
    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 161
    .line 162
    .line 163
    throw v1

    .line 164
    :cond_4
    const/4 v0, 0x0

    .line 165
    return-object v0
.end method

.method private e(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
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
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    goto :goto_3

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    goto :goto_2

    .line 9
    :catch_0
    move-exception p1

    .line 10
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, " - Wrong Password?"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-gez v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :cond_1
    :goto_0
    if-eqz p2, :cond_4

    .line 44
    .line 45
    :goto_1
    :try_start_2
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 46
    .line 47
    .line 48
    goto :goto_4

    .line 49
    :goto_2
    if-eqz p2, :cond_2

    .line 50
    .line 51
    :try_start_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 52
    .line 53
    .line 54
    :catch_1
    :cond_2
    throw p1

    .line 55
    :cond_3
    :goto_3
    if-eqz p2, :cond_4

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catch_2
    :cond_4
    :goto_4
    return-void
.end method

.method private f(Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->a:Lpc/o;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lpc/o;->m()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->a:Lpc/o;

    .line 16
    .line 17
    invoke-virtual {v0}, Lpc/o;->p()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-direct {p0}, Lnet/lingala/zip4j/unzip/d;->d()Ljava/io/RandomAccessFile;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 29
    .line 30
    new-instance v1, Ljava/io/File;

    .line 31
    .line 32
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/d;->a:Lpc/o;

    .line 33
    .line 34
    invoke-virtual {v2}, Lpc/o;->m()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v1, p1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    move-object p1, v0

    .line 45
    :goto_0
    return-object p1

    .line 46
    :catch_0
    move-exception p1

    .line 47
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 48
    .line 49
    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :catch_1
    move-exception p1

    .line 54
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 55
    .line 56
    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 61
    .line 62
    const-string v0, "input parameter is null in getFilePointer"

    .line 63
    .line 64
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1
.end method

.method private g(Ljava/io/RandomAccessFile;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    :try_start_0
    new-array v0, v0, [B

    .line 3
    .line 4
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    return-object v0

    .line 8
    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method private h(Ljava/io/RandomAccessFile;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->d:Lpc/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lpc/i;->a()Lpc/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->d:Lpc/i;

    .line 12
    .line 13
    invoke-virtual {v0}, Lpc/i;->a()Lpc/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/unzip/d;->a(Lpc/a;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    new-array v0, v0, [B

    .line 22
    .line 23
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/d;->d:Lpc/i;

    .line 24
    .line 25
    invoke-virtual {v1}, Lpc/i;->n()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 38
    .line 39
    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    throw v0
.end method

.method private m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p2, p0, Lnet/lingala/zip4j/unzip/d;->b:Lpc/h;

    .line 9
    .line 10
    invoke-virtual {p2}, Lpc/h;->p()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string p1, "file.separator"

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method private n(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/unzip/d;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 40
    .line 41
    .line 42
    :cond_1
    new-instance p1, Ljava/io/FileOutputStream;

    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    return-object p1

    .line 48
    :catch_0
    move-exception p1

    .line 49
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 50
    .line 51
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    throw p2

    .line 55
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 56
    .line 57
    const-string p2, "invalid output path"

    .line 58
    .line 59
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1
.end method

.method private o(Ljava/io/RandomAccessFile;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    :try_start_0
    new-array v1, v0, [B

    .line 4
    .line 5
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/d;->d:Lpc/i;

    .line 6
    .line 7
    invoke-virtual {v2}, Lpc/i;->n()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :catch_0
    move-exception p1

    .line 20
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    throw v0

    .line 26
    :catch_1
    move-exception p1

    .line 27
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 28
    .line 29
    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method private q(Ljava/io/RandomAccessFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->d:Lpc/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/unzip/d;->r(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

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
    throw p1

    .line 18
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 19
    .line 20
    const-string v0, "local file header is null, cannot initialize input stream"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method private r(Ljava/io/RandomAccessFile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->d:Lpc/i;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Lpc/i;->u()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->d:Lpc/i;

    .line 12
    .line 13
    invoke-virtual {v0}, Lpc/i;->f()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Lnet/lingala/zip4j/crypto/e;

    .line 20
    .line 21
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/d;->b:Lpc/h;

    .line 22
    .line 23
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/unzip/d;->o(Ljava/io/RandomAccessFile;)[B

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {v0, v1, p1}, Lnet/lingala/zip4j/crypto/e;-><init>(Lpc/h;[B)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lnet/lingala/zip4j/unzip/d;->e:Lnet/lingala/zip4j/crypto/c;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->d:Lpc/i;

    .line 34
    .line 35
    invoke-virtual {v0}, Lpc/i;->f()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/16 v1, 0x63

    .line 40
    .line 41
    if-ne v0, v1, :cond_1

    .line 42
    .line 43
    new-instance v0, Lnet/lingala/zip4j/crypto/a;

    .line 44
    .line 45
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/d;->d:Lpc/i;

    .line 46
    .line 47
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/unzip/d;->h(Ljava/io/RandomAccessFile;)[B

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/unzip/d;->g(Ljava/io/RandomAccessFile;)[B

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {v0, v1, v2, p1}, Lnet/lingala/zip4j/crypto/a;-><init>(Lpc/i;[B[B)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lnet/lingala/zip4j/unzip/d;->e:Lnet/lingala/zip4j/crypto/c;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 62
    .line 63
    const-string v0, "unsupported encryption method"

    .line 64
    .line 65
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :cond_2
    :goto_0
    return-void

    .line 70
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 71
    .line 72
    const-string v0, "local file header is null, cannot init decrypter"

    .line 73
    .line 74
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1
.end method


# virtual methods
.method public b()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->b:Lpc/h;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {v0}, Lpc/h;->j()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x63

    .line 10
    .line 11
    if-ne v0, v1, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->e:Lnet/lingala/zip4j/crypto/c;

    .line 14
    .line 15
    if-eqz v0, :cond_4

    .line 16
    .line 17
    instance-of v1, v0, Lnet/lingala/zip4j/crypto/a;

    .line 18
    .line 19
    if-eqz v1, :cond_4

    .line 20
    .line 21
    check-cast v0, Lnet/lingala/zip4j/crypto/a;

    .line 22
    .line 23
    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/a;->d()[B

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/d;->e:Lnet/lingala/zip4j/crypto/c;

    .line 28
    .line 29
    check-cast v1, Lnet/lingala/zip4j/crypto/a;

    .line 30
    .line 31
    invoke-virtual {v1}, Lnet/lingala/zip4j/crypto/a;->g()[B

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/16 v2, 0xa

    .line 36
    .line 37
    new-array v3, v2, [B

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuffer;

    .line 56
    .line 57
    const-string v2, "invalid CRC (MAC) for file: "

    .line 58
    .line 59
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/d;->b:Lpc/h;

    .line 63
    .line 64
    invoke-virtual {v2}, Lpc/h;->p()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v0

    .line 79
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 80
    .line 81
    new-instance v1, Ljava/lang/StringBuffer;

    .line 82
    .line 83
    const-string v2, "CRC (MAC) check failed for "

    .line 84
    .line 85
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/d;->b:Lpc/h;

    .line 89
    .line 90
    invoke-virtual {v2}, Lpc/h;->p()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v0

    .line 105
    :cond_2
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->f:Ljava/util/zip/CRC32;

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    .line 108
    .line 109
    .line 110
    move-result-wide v0

    .line 111
    const-wide v2, 0xffffffffL

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    and-long/2addr v0, v2

    .line 117
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/d;->b:Lpc/h;

    .line 118
    .line 119
    invoke-virtual {v2}, Lpc/h;->g()J

    .line 120
    .line 121
    .line 122
    move-result-wide v2

    .line 123
    cmp-long v4, v0, v2

    .line 124
    .line 125
    if-eqz v4, :cond_4

    .line 126
    .line 127
    new-instance v0, Ljava/lang/StringBuffer;

    .line 128
    .line 129
    const-string v1, "invalid CRC for file: "

    .line 130
    .line 131
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/d;->b:Lpc/h;

    .line 135
    .line 136
    invoke-virtual {v1}, Lpc/h;->p()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/d;->d:Lpc/i;

    .line 148
    .line 149
    invoke-virtual {v1}, Lpc/i;->u()Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_3

    .line 154
    .line 155
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/d;->d:Lpc/i;

    .line 156
    .line 157
    invoke-virtual {v1}, Lpc/i;->f()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-nez v1, :cond_3

    .line 162
    .line 163
    new-instance v1, Ljava/lang/StringBuffer;

    .line 164
    .line 165
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    const-string v0, " - Wrong Password?"

    .line 173
    .line 174
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    :cond_3
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 182
    .line 183
    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw v1

    .line 187
    :cond_4
    :goto_0
    return-void
.end method

.method public i()Lnet/lingala/zip4j/crypto/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->e:Lnet/lingala/zip4j/crypto/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Lpc/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->b:Lpc/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Lnet/lingala/zip4j/io/h;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->b:Lpc/h;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    const-string v1, "r"

    .line 7
    .line 8
    invoke-direct {p0, v1}, Lnet/lingala/zip4j/unzip/d;->f(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "local header and file header do not match"

    .line 13
    .line 14
    invoke-direct {p0}, Lnet/lingala/zip4j/unzip/d;->c()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_7

    .line 19
    .line 20
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/unzip/d;->q(Ljava/io/RandomAccessFile;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/d;->d:Lpc/i;

    .line 24
    .line 25
    invoke-virtual {v1}, Lpc/i;->b()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    iget-object v3, p0, Lnet/lingala/zip4j/unzip/d;->d:Lpc/i;

    .line 30
    .line 31
    invoke-virtual {v3}, Lpc/i;->n()J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    iget-object v5, p0, Lnet/lingala/zip4j/unzip/d;->d:Lpc/i;

    .line 36
    .line 37
    invoke-virtual {v5}, Lpc/i;->u()Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    const/16 v6, 0x63

    .line 42
    .line 43
    if-eqz v5, :cond_2

    .line 44
    .line 45
    iget-object v5, p0, Lnet/lingala/zip4j/unzip/d;->d:Lpc/i;

    .line 46
    .line 47
    invoke-virtual {v5}, Lpc/i;->f()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-ne v5, v6, :cond_1

    .line 52
    .line 53
    iget-object v5, p0, Lnet/lingala/zip4j/unzip/d;->e:Lnet/lingala/zip4j/crypto/c;

    .line 54
    .line 55
    instance-of v7, v5, Lnet/lingala/zip4j/crypto/a;

    .line 56
    .line 57
    if-eqz v7, :cond_0

    .line 58
    .line 59
    check-cast v5, Lnet/lingala/zip4j/crypto/a;

    .line 60
    .line 61
    invoke-virtual {v5}, Lnet/lingala/zip4j/crypto/a;->f()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    iget-object v7, p0, Lnet/lingala/zip4j/unzip/d;->e:Lnet/lingala/zip4j/crypto/c;

    .line 66
    .line 67
    check-cast v7, Lnet/lingala/zip4j/crypto/a;

    .line 68
    .line 69
    invoke-virtual {v7}, Lnet/lingala/zip4j/crypto/a;->e()I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    add-int/2addr v5, v7

    .line 74
    add-int/lit8 v5, v5, 0xa

    .line 75
    .line 76
    int-to-long v7, v5

    .line 77
    sub-long/2addr v1, v7

    .line 78
    iget-object v5, p0, Lnet/lingala/zip4j/unzip/d;->e:Lnet/lingala/zip4j/crypto/c;

    .line 79
    .line 80
    check-cast v5, Lnet/lingala/zip4j/crypto/a;

    .line 81
    .line 82
    invoke-virtual {v5}, Lnet/lingala/zip4j/crypto/a;->f()I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    iget-object v7, p0, Lnet/lingala/zip4j/unzip/d;->e:Lnet/lingala/zip4j/crypto/c;

    .line 87
    .line 88
    check-cast v7, Lnet/lingala/zip4j/crypto/a;

    .line 89
    .line 90
    invoke-virtual {v7}, Lnet/lingala/zip4j/crypto/a;->e()I

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    add-int/2addr v5, v7

    .line 95
    int-to-long v7, v5

    .line 96
    goto :goto_0

    .line 97
    :cond_0
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 98
    .line 99
    new-instance v2, Ljava/lang/StringBuffer;

    .line 100
    .line 101
    const-string v3, "invalid decryptor when trying to calculate compressed size for AES encrypted file: "

    .line 102
    .line 103
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v3, p0, Lnet/lingala/zip4j/unzip/d;->b:Lpc/h;

    .line 107
    .line 108
    invoke-virtual {v3}, Lpc/h;->p()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v1

    .line 123
    :cond_1
    iget-object v5, p0, Lnet/lingala/zip4j/unzip/d;->d:Lpc/i;

    .line 124
    .line 125
    invoke-virtual {v5}, Lpc/i;->f()I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-nez v5, :cond_2

    .line 130
    .line 131
    const-wide/16 v7, 0xc

    .line 132
    .line 133
    sub-long/2addr v1, v7

    .line 134
    :goto_0
    add-long/2addr v3, v7

    .line 135
    :cond_2
    move-wide v7, v1

    .line 136
    move-wide v4, v3

    .line 137
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/d;->b:Lpc/h;

    .line 138
    .line 139
    invoke-virtual {v1}, Lpc/h;->f()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/d;->b:Lpc/h;

    .line 144
    .line 145
    invoke-virtual {v2}, Lpc/h;->j()I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-ne v2, v6, :cond_4

    .line 150
    .line 151
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/d;->b:Lpc/h;

    .line 152
    .line 153
    invoke-virtual {v1}, Lpc/h;->d()Lpc/a;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    if-eqz v1, :cond_3

    .line 158
    .line 159
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/d;->b:Lpc/h;

    .line 160
    .line 161
    invoke-virtual {v1}, Lpc/h;->d()Lpc/a;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v1}, Lpc/a;->b()I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    goto :goto_1

    .line 170
    :cond_3
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 171
    .line 172
    new-instance v2, Ljava/lang/StringBuffer;

    .line 173
    .line 174
    const-string v3, "AESExtraDataRecord does not exist for AES encrypted file: "

    .line 175
    .line 176
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object v3, p0, Lnet/lingala/zip4j/unzip/d;->b:Lpc/h;

    .line 180
    .line 181
    invoke-virtual {v3}, Lpc/h;->p()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw v1

    .line 196
    :cond_4
    :goto_1
    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 197
    .line 198
    .line 199
    if-eqz v1, :cond_6

    .line 200
    .line 201
    const/16 v2, 0x8

    .line 202
    .line 203
    if-ne v1, v2, :cond_5

    .line 204
    .line 205
    new-instance v1, Lnet/lingala/zip4j/io/h;

    .line 206
    .line 207
    new-instance v9, Lnet/lingala/zip4j/io/e;

    .line 208
    .line 209
    move-object v2, v9

    .line 210
    move-object v3, v0

    .line 211
    move-wide v6, v7

    .line 212
    move-object v8, p0

    .line 213
    invoke-direct/range {v2 .. v8}, Lnet/lingala/zip4j/io/e;-><init>(Ljava/io/RandomAccessFile;JJLnet/lingala/zip4j/unzip/d;)V

    .line 214
    .line 215
    .line 216
    invoke-direct {v1, v9}, Lnet/lingala/zip4j/io/h;-><init>(Lnet/lingala/zip4j/io/a;)V

    .line 217
    .line 218
    .line 219
    return-object v1

    .line 220
    :cond_5
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 221
    .line 222
    const-string v2, "compression type not supported"

    .line 223
    .line 224
    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw v1

    .line 228
    :cond_6
    new-instance v1, Lnet/lingala/zip4j/io/h;

    .line 229
    .line 230
    new-instance v9, Lnet/lingala/zip4j/io/f;

    .line 231
    .line 232
    move-object v2, v9

    .line 233
    move-object v3, v0

    .line 234
    move-wide v6, v7

    .line 235
    move-object v8, p0

    .line 236
    invoke-direct/range {v2 .. v8}, Lnet/lingala/zip4j/io/f;-><init>(Ljava/io/RandomAccessFile;JJLnet/lingala/zip4j/unzip/d;)V

    .line 237
    .line 238
    .line 239
    invoke-direct {v1, v9}, Lnet/lingala/zip4j/io/h;-><init>(Lnet/lingala/zip4j/io/a;)V

    .line 240
    .line 241
    .line 242
    return-object v1

    .line 243
    :cond_7
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    .line 244
    .line 245
    invoke-direct {v2, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw v2
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :catch_0
    move-exception v1

    .line 250
    if-eqz v0, :cond_8

    .line 251
    .line 252
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 253
    .line 254
    .line 255
    :catch_1
    :cond_8
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 256
    .line 257
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 258
    .line 259
    .line 260
    throw v0

    .line 261
    :catch_2
    move-exception v1

    .line 262
    if-eqz v0, :cond_9

    .line 263
    .line 264
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 265
    .line 266
    .line 267
    :catch_3
    :cond_9
    throw v1

    .line 268
    :cond_a
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 269
    .line 270
    const-string v1, "file header is null, cannot get inputstream"

    .line 271
    .line 272
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    throw v0
.end method

.method public l()Lpc/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->d:Lpc/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public p()Lpc/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->a:Lpc/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public s()Ljava/io/RandomAccessFile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->a:Lpc/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lpc/o;->m()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lnet/lingala/zip4j/unzip/d;->c:I

    .line 8
    .line 9
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/d;->a:Lpc/o;

    .line 10
    .line 11
    invoke-virtual {v2}, Lpc/o;->f()Lpc/f;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lpc/f;->d()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->a:Lpc/o;

    .line 22
    .line 23
    invoke-virtual {v0}, Lpc/o;->m()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget v1, p0, Lnet/lingala/zip4j/unzip/d;->c:I

    .line 29
    .line 30
    const/16 v2, 0x9

    .line 31
    .line 32
    const-string v3, "."

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    if-lt v1, v2, :cond_1

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuffer;

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v0, ".z"

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    .line 58
    .line 59
    iget v0, p0, Lnet/lingala/zip4j/unzip/d;->c:I

    .line 60
    .line 61
    add-int/lit8 v0, v0, 0x1

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    .line 72
    .line 73
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v0, ".z0"

    .line 89
    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    .line 92
    .line 93
    iget v0, p0, Lnet/lingala/zip4j/unzip/d;->c:I

    .line 94
    .line 95
    add-int/lit8 v0, v0, 0x1

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    :goto_0
    iget v1, p0, Lnet/lingala/zip4j/unzip/d;->c:I

    .line 105
    .line 106
    add-int/lit8 v1, v1, 0x1

    .line 107
    .line 108
    iput v1, p0, Lnet/lingala/zip4j/unzip/d;->c:I

    .line 109
    .line 110
    :try_start_0
    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->c(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v1
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    if-eqz v1, :cond_2

    .line 115
    .line 116
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 117
    .line 118
    const-string v2, "r"

    .line 119
    .line 120
    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    return-object v1

    .line 124
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    .line 125
    .line 126
    new-instance v2, Ljava/lang/StringBuffer;

    .line 127
    .line 128
    const-string v3, "zip split file does not exist: "

    .line 129
    .line 130
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v1
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    new-instance v1, Ljava/io/IOException;

    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v1
.end method

.method public t(Lqc/a;Ljava/lang/String;Ljava/lang/String;Lpc/k;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->a:Lpc/o;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->b:Lpc/h;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-static {p2}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    const/16 v0, 0x1000

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :try_start_0
    new-array v0, v0, [B

    .line 19
    .line 20
    invoke-virtual {p0}, Lnet/lingala/zip4j/unzip/d;->k()Lnet/lingala/zip4j/io/h;

    .line 21
    .line 22
    .line 23
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    :try_start_1
    invoke-direct {p0, p2, p3}, Lnet/lingala/zip4j/unzip/d;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :cond_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v4, -0x1

    .line 33
    if-ne v3, v4, :cond_1

    .line 34
    .line 35
    invoke-direct {p0, v2, v1}, Lnet/lingala/zip4j/unzip/d;->e(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lnet/lingala/zip4j/unzip/d;->b:Lpc/h;

    .line 39
    .line 40
    new-instance v0, Ljava/io/File;

    .line 41
    .line 42
    invoke-direct {p0, p2, p3}, Lnet/lingala/zip4j/unzip/d;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v0, p4}, Lnet/lingala/zip4j/unzip/e;->b(Lpc/h;Ljava/io/File;Lpc/k;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v2, v1}, Lnet/lingala/zip4j/unzip/d;->e(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    const/4 v4, 0x0

    .line 57
    :try_start_2
    invoke-virtual {v1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 58
    .line 59
    .line 60
    int-to-long v5, v3

    .line 61
    invoke-virtual {p1, v5, v6}, Lqc/a;->w(J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lqc/a;->m()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_0

    .line 69
    .line 70
    const/4 p2, 0x3

    .line 71
    invoke-virtual {p1, p2}, Lqc/a;->setResult(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v4}, Lqc/a;->u(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, v2, v1}, Lnet/lingala/zip4j/unzip/d;->e(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    move-object p2, v1

    .line 83
    move-object v1, v2

    .line 84
    goto :goto_2

    .line 85
    :catch_0
    move-exception p1

    .line 86
    move-object p2, v1

    .line 87
    move-object v1, v2

    .line 88
    goto :goto_0

    .line 89
    :catch_1
    move-exception p1

    .line 90
    move-object p2, v1

    .line 91
    move-object v1, v2

    .line 92
    goto :goto_1

    .line 93
    :catchall_1
    move-exception p1

    .line 94
    move-object p2, v1

    .line 95
    goto :goto_2

    .line 96
    :catch_2
    move-exception p1

    .line 97
    move-object p2, v1

    .line 98
    :goto_0
    :try_start_3
    new-instance p3, Lnet/lingala/zip4j/exception/ZipException;

    .line 99
    .line 100
    invoke-direct {p3, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    throw p3

    .line 104
    :catch_3
    move-exception p1

    .line 105
    move-object p2, v1

    .line 106
    :goto_1
    new-instance p3, Lnet/lingala/zip4j/exception/ZipException;

    .line 107
    .line 108
    invoke-direct {p3, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    throw p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 112
    :catchall_2
    move-exception p1

    .line 113
    :goto_2
    invoke-direct {p0, v1, p2}, Lnet/lingala/zip4j/unzip/d;->e(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 114
    .line 115
    .line 116
    throw p1

    .line 117
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 118
    .line 119
    const-string p2, "Invalid parameters passed during unzipping file. One or more of the parameters were null"

    .line 120
    .line 121
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p1
.end method

.method public u(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->f:Ljava/util/zip/CRC32;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public v([BII)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->f:Ljava/util/zip/CRC32;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

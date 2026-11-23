.class public Lnet/lingala/zip4j/util/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0x4000


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

.method public static a(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lnet/lingala/zip4j/util/d;->b(Ljava/lang/String;Lqc/a;)J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    return-wide v0
.end method

.method public static b(Ljava/lang/String;Lqc/a;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    const-string v0, "error while closing the file after calculating crc"

    .line 2
    .line 3
    invoke-static {p0}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :try_start_0
    invoke-static {p0}, Lnet/lingala/zip4j/util/h;->d(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    new-instance v2, Ljava/io/FileInputStream;

    .line 14
    .line 15
    new-instance v3, Ljava/io/File;

    .line 16
    .line 17
    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    .line 22
    .line 23
    const/16 p0, 0x4000

    .line 24
    .line 25
    :try_start_1
    new-array p0, p0, [B

    .line 26
    .line 27
    new-instance v1, Ljava/util/zip/CRC32;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {v2, p0}, Ljava/io/InputStream;->read([B)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/4 v4, -0x1

    .line 37
    if-ne v3, v4, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    .line 40
    .line 41
    .line 42
    move-result-wide p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 44
    .line 45
    .line 46
    return-wide p0

    .line 47
    :catch_0
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 48
    .line 49
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_1
    const/4 v4, 0x0

    .line 54
    :try_start_3
    invoke-virtual {v1, p0, v4, v3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 55
    .line 56
    .line 57
    if-eqz p1, :cond_0

    .line 58
    .line 59
    int-to-long v5, v3

    .line 60
    invoke-virtual {p1, v5, v6}, Lqc/a;->w(J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lqc/a;->m()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_0

    .line 68
    .line 69
    const/4 p0, 0x3

    .line 70
    invoke-virtual {p1, p0}, Lqc/a;->setResult(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v4}, Lqc/a;->u(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    .line 75
    .line 76
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 77
    .line 78
    .line 79
    const-wide/16 p0, 0x0

    .line 80
    .line 81
    return-wide p0

    .line 82
    :catch_1
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 83
    .line 84
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p0

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    move-object v1, v2

    .line 90
    goto :goto_2

    .line 91
    :catch_2
    move-exception p0

    .line 92
    move-object v1, v2

    .line 93
    goto :goto_0

    .line 94
    :catch_3
    move-exception p0

    .line 95
    move-object v1, v2

    .line 96
    goto :goto_1

    .line 97
    :catchall_1
    move-exception p0

    .line 98
    goto :goto_2

    .line 99
    :catch_4
    move-exception p0

    .line 100
    :goto_0
    :try_start_5
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 101
    .line 102
    invoke-direct {p1, p0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    throw p1

    .line 106
    :catch_5
    move-exception p0

    .line 107
    :goto_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 108
    .line 109
    invoke-direct {p1, p0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 113
    :goto_2
    if-eqz v1, :cond_2

    .line 114
    .line 115
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :catch_6
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 120
    .line 121
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p0

    .line 125
    :cond_2
    :goto_3
    throw p0

    .line 126
    :cond_3
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 127
    .line 128
    const-string p1, "input file is null or empty, cannot calculate CRC for the file"

    .line 129
    .line 130
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p0
.end method

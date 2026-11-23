.class public Lorg/apache/http/client/entity/DeflateInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/client/entity/DeflateInputStream$DeflateStream;
    }
.end annotation


# instance fields
.field private sourceStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x6

    .line 5
    new-array v1, v0, [B

    .line 6
    .line 7
    new-instance v2, Ljava/io/PushbackInputStream;

    .line 8
    .line 9
    invoke-direct {v2, p1, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const-string v0, "Unable to read the response"

    .line 17
    .line 18
    const/4 v3, -0x1

    .line 19
    if-eq p1, v3, :cond_5

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    new-array v5, v4, [B

    .line 23
    .line 24
    new-instance v6, Ljava/util/zip/Inflater;

    .line 25
    .line 26
    invoke-direct {v6}, Ljava/util/zip/Inflater;-><init>()V

    .line 27
    .line 28
    .line 29
    :cond_0
    :goto_0
    const/4 v7, 0x0

    .line 30
    :try_start_0
    invoke-virtual {v6, v5}, Ljava/util/zip/Inflater;->inflate([B)I

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    if-nez v8, :cond_3

    .line 35
    .line 36
    invoke-virtual {v6}, Ljava/util/zip/Inflater;->finished()Z

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    if-nez v9, :cond_2

    .line 41
    .line 42
    invoke-virtual {v6}, Ljava/util/zip/Inflater;->needsDictionary()Z

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    if-eqz v9, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {v6}, Ljava/util/zip/Inflater;->needsInput()Z

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    if-eqz v8, :cond_0

    .line 54
    .line 55
    invoke-virtual {v6, v1}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    new-instance v3, Ljava/io/IOException;

    .line 60
    .line 61
    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v3

    .line 65
    :cond_3
    :goto_1
    if-eq v8, v3, :cond_4

    .line 66
    .line 67
    invoke-virtual {v2, v1, v7, p1}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 68
    .line 69
    .line 70
    new-instance v0, Lorg/apache/http/client/entity/DeflateInputStream$DeflateStream;

    .line 71
    .line 72
    new-instance v3, Ljava/util/zip/Inflater;

    .line 73
    .line 74
    invoke-direct {v3}, Ljava/util/zip/Inflater;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-direct {v0, v2, v3}, Lorg/apache/http/client/entity/DeflateInputStream$DeflateStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    new-instance v3, Ljava/io/IOException;

    .line 84
    .line 85
    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v3
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    goto :goto_3

    .line 91
    :catch_0
    :try_start_1
    invoke-virtual {v2, v1, v7, p1}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 92
    .line 93
    .line 94
    new-instance p1, Lorg/apache/http/client/entity/DeflateInputStream$DeflateStream;

    .line 95
    .line 96
    new-instance v0, Ljava/util/zip/Inflater;

    .line 97
    .line 98
    invoke-direct {v0, v4}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 99
    .line 100
    .line 101
    invoke-direct {p1, v2, v0}, Lorg/apache/http/client/entity/DeflateInputStream$DeflateStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 102
    .line 103
    .line 104
    iput-object p1, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .line 106
    :goto_2
    invoke-virtual {v6}, Ljava/util/zip/Inflater;->end()V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :goto_3
    invoke-virtual {v6}, Ljava/util/zip/Inflater;->end()V

    .line 111
    .line 112
    .line 113
    throw p1

    .line 114
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 115
    .line 116
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p1
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public mark(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/http/client/entity/DeflateInputStream;->sourceStream:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

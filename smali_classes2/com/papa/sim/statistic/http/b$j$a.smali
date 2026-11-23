.class Lcom/papa/sim/statistic/http/b$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/http/b$j;->b(Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/sim/statistic/http/b$p;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/papa/sim/statistic/http/b$j;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/http/b$j;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/http/b$j$a;->d:Lcom/papa/sim/statistic/http/b$j;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa/sim/statistic/http/b$j$a;->a:Lcom/papa/sim/statistic/http/b$p;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa/sim/statistic/http/b$j$a;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/papa/sim/statistic/http/b$j$a;->c:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Request;Ljava/io/IOException;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b$j$a;->d:Lcom/papa/sim/statistic/http/b$j;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/papa/sim/statistic/http/b$j;->a:Lcom/papa/sim/statistic/http/b;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/papa/sim/statistic/http/b$j$a;->a:Lcom/papa/sim/statistic/http/b$p;

    .line 6
    .line 7
    invoke-static {v0, p1, p2, v1}, Lcom/papa/sim/statistic/http/b;->f(Lcom/papa/sim/statistic/http/b;Lokhttp3/Request;Ljava/lang/Exception;Lcom/papa/sim/statistic/http/b$p;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public b(Lokhttp3/Response;)V
    .locals 7

    .line 1
    const/16 v0, 0x800

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    .line 11
    .line 12
    .line 13
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 14
    :try_start_1
    new-instance v3, Ljava/io/File;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/papa/sim/statistic/http/b$j$a;->b:Ljava/lang/String;

    .line 17
    .line 18
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-nez v4, :cond_0

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 28
    .line 29
    .line 30
    :cond_0
    new-instance v4, Ljava/io/File;

    .line 31
    .line 32
    iget-object v5, p0, Lcom/papa/sim/statistic/http/b$j$a;->d:Lcom/papa/sim/statistic/http/b$j;

    .line 33
    .line 34
    iget-object v5, v5, Lcom/papa/sim/statistic/http/b$j;->a:Lcom/papa/sim/statistic/http/b;

    .line 35
    .line 36
    iget-object v6, p0, Lcom/papa/sim/statistic/http/b$j$a;->c:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v5, v6}, Lcom/papa/sim/statistic/http/b;->j(Lcom/papa/sim/statistic/http/b;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v3, Ljava/io/FileOutputStream;

    .line 46
    .line 47
    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    .line 49
    .line 50
    :goto_0
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const/4 v5, -0x1

    .line 55
    if-eq v1, v5, :cond_1

    .line 56
    .line 57
    const/4 v5, 0x0

    .line 58
    invoke-virtual {v3, v0, v5, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b$j$a;->d:Lcom/papa/sim/statistic/http/b$j;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/papa/sim/statistic/http/b$j;->a:Lcom/papa/sim/statistic/http/b;

    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget-object v4, p0, Lcom/papa/sim/statistic/http/b$j$a;->a:Lcom/papa/sim/statistic/http/b$p;

    .line 74
    .line 75
    invoke-static {v0, v1, v4}, Lcom/papa/sim/statistic/http/b;->g(Lcom/papa/sim/statistic/http/b;Ljava/lang/Object;Lcom/papa/sim/statistic/http/b$p;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    .line 77
    .line 78
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 79
    .line 80
    .line 81
    :catch_0
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 82
    .line 83
    .line 84
    goto :goto_6

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    goto :goto_2

    .line 87
    :catch_1
    move-exception v0

    .line 88
    goto :goto_3

    .line 89
    :catchall_1
    move-exception p1

    .line 90
    move-object v3, v1

    .line 91
    :goto_2
    move-object v1, v2

    .line 92
    goto :goto_7

    .line 93
    :catch_2
    move-exception v0

    .line 94
    move-object v3, v1

    .line 95
    :goto_3
    move-object v1, v2

    .line 96
    goto :goto_4

    .line 97
    :catchall_2
    move-exception p1

    .line 98
    move-object v3, v1

    .line 99
    goto :goto_7

    .line 100
    :catch_3
    move-exception v0

    .line 101
    move-object v3, v1

    .line 102
    :goto_4
    :try_start_5
    iget-object v2, p0, Lcom/papa/sim/statistic/http/b$j$a;->d:Lcom/papa/sim/statistic/http/b$j;

    .line 103
    .line 104
    iget-object v2, v2, Lcom/papa/sim/statistic/http/b$j;->a:Lcom/papa/sim/statistic/http/b;

    .line 105
    .line 106
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iget-object v4, p0, Lcom/papa/sim/statistic/http/b$j$a;->a:Lcom/papa/sim/statistic/http/b$p;

    .line 111
    .line 112
    invoke-static {v2, p1, v0, v4}, Lcom/papa/sim/statistic/http/b;->f(Lcom/papa/sim/statistic/http/b;Lokhttp3/Request;Ljava/lang/Exception;Lcom/papa/sim/statistic/http/b$p;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 113
    .line 114
    .line 115
    if-eqz v1, :cond_2

    .line 116
    .line 117
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 118
    .line 119
    .line 120
    goto :goto_5

    .line 121
    :catch_4
    nop

    .line 122
    :cond_2
    :goto_5
    if-eqz v3, :cond_3

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :catch_5
    :cond_3
    :goto_6
    return-void

    .line 126
    :catchall_3
    move-exception p1

    .line 127
    :goto_7
    if-eqz v1, :cond_4

    .line 128
    .line 129
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 130
    .line 131
    .line 132
    goto :goto_8

    .line 133
    :catch_6
    nop

    .line 134
    :cond_4
    :goto_8
    if-eqz v3, :cond_5

    .line 135
    .line 136
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 137
    .line 138
    .line 139
    :catch_7
    :cond_5
    throw p1
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/papa/sim/statistic/http/b$j$a;->a(Lokhttp3/Request;Ljava/io/IOException;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/papa/sim/statistic/http/b$j$a;->b(Lokhttp3/Response;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

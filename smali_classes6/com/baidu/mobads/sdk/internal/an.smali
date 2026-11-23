.class public Lcom/baidu/mobads/sdk/internal/an;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobads/sdk/internal/an$a;,
        Lcom/baidu/mobads/sdk/internal/an$c;,
        Lcom/baidu/mobads/sdk/internal/an$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "OAdURLConnection"

.field public static final b:Ljava/lang/String; = "POST"

.field public static final c:Ljava/lang/String; = "GET"

.field public static final d:Ljava/lang/String; = "application/json"

.field public static final e:Ljava/lang/String; = "text/plain"


# instance fields
.field private f:Ljava/net/HttpURLConnection;

.field private g:Lcom/baidu/mobads/sdk/internal/bv;

.field private h:Lcom/baidu/mobads/sdk/internal/an$b;

.field private i:Lcom/baidu/mobads/sdk/internal/an$c;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:Z

.field private q:Landroid/net/Uri$Builder;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "GET"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobads/sdk/internal/an;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobads/sdk/internal/an;->g:Lcom/baidu/mobads/sdk/internal/bv;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/baidu/mobads/sdk/internal/an;->h:Lcom/baidu/mobads/sdk/internal/an$b;

    .line 5
    iput-object v0, p0, Lcom/baidu/mobads/sdk/internal/an;->i:Lcom/baidu/mobads/sdk/internal/an$c;

    const-string v1, "text/plain"

    .line 6
    iput-object v1, p0, Lcom/baidu/mobads/sdk/internal/an;->m:Ljava/lang/String;

    const/16 v1, 0x2710

    .line 7
    iput v1, p0, Lcom/baidu/mobads/sdk/internal/an;->n:I

    .line 8
    iput v1, p0, Lcom/baidu/mobads/sdk/internal/an;->o:I

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/baidu/mobads/sdk/internal/an;->p:Z

    .line 10
    iput-object v0, p0, Lcom/baidu/mobads/sdk/internal/an;->q:Landroid/net/Uri$Builder;

    .line 11
    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/an;->j:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/baidu/mobads/sdk/internal/an;->k:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 26
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12d

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "Location"

    .line 27
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 30
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URLConnection;->getConnectTimeout()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/4 p1, 0x0

    .line 31
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string p1, "Range"

    const-string v1, "bytes=0-"

    .line 32
    invoke-virtual {v0, p1, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-object p1, v0

    :catch_1
    :cond_1
    return-object p1
.end method

.method static synthetic a(Lcom/baidu/mobads/sdk/internal/an;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/mobads/sdk/internal/an;->e()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/net/HttpURLConnection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 12
    :try_start_0
    invoke-virtual {p2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 13
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "UTF-8"

    invoke-direct {v2, p2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    if-eqz p2, :cond_0

    .line 17
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object p2, v0

    :goto_0
    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    :cond_1
    if-eqz p2, :cond_2

    .line 19
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 20
    :cond_2
    throw p1
.end method

.method static synthetic b(Lcom/baidu/mobads/sdk/internal/an;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/mobads/sdk/internal/an;->f()V

    return-void
.end method

.method private e()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/an;->j:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/cs;->a()Lcom/baidu/mobads/sdk/internal/cs;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/an;->j:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/internal/cs;->f(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/an;->j:Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/cs;->a()Lcom/baidu/mobads/sdk/internal/cs;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, v0}, Lcom/baidu/mobads/sdk/internal/cs;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/baidu/mobads/sdk/internal/an;->f:Ljava/net/HttpURLConnection;

    .line 37
    .line 38
    iget v1, p0, Lcom/baidu/mobads/sdk/internal/an;->n:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-static {v0}, Lcom/baidu/mobads/sdk/internal/bn;->a(Landroid/content/Context;)Lcom/baidu/mobads/sdk/internal/bn;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/internal/bn;->b()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/16 v1, 0x8

    .line 57
    .line 58
    if-ge v0, v1, :cond_0

    .line 59
    .line 60
    const-string v0, "http.keepAlive"

    .line 61
    .line 62
    const-string v1, "false"

    .line 63
    .line 64
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/an;->f:Ljava/net/HttpURLConnection;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/an;->k:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/an;->f:Ljava/net/HttpURLConnection;

    .line 75
    .line 76
    iget-boolean v1, p0, Lcom/baidu/mobads/sdk/internal/an;->p:Z

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/an;->l:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_1

    .line 88
    .line 89
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/an;->f:Ljava/net/HttpURLConnection;

    .line 90
    .line 91
    const-string v1, "User-Agent"

    .line 92
    .line 93
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/an;->l:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/an;->f:Ljava/net/HttpURLConnection;

    .line 99
    .line 100
    const-string v1, "Content-type"

    .line 101
    .line 102
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/an;->m:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/an;->f:Ljava/net/HttpURLConnection;

    .line 108
    .line 109
    const-string v1, "Connection"

    .line 110
    .line 111
    const-string v2, "keep-alive"

    .line 112
    .line 113
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/an;->f:Ljava/net/HttpURLConnection;

    .line 117
    .line 118
    const-string v1, "Cache-Control"

    .line 119
    .line 120
    const-string v2, "no-cache"

    .line 121
    .line 122
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/an;->k:Ljava/lang/String;

    .line 126
    .line 127
    const-string v1, "POST"

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_3

    .line 134
    .line 135
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/an;->f:Ljava/net/HttpURLConnection;

    .line 136
    .line 137
    const/4 v1, 0x1

    .line 138
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/an;->f:Ljava/net/HttpURLConnection;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/an;->q:Landroid/net/Uri$Builder;

    .line 147
    .line 148
    if-eqz v0, :cond_3

    .line 149
    .line 150
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/an;->f:Ljava/net/HttpURLConnection;

    .line 159
    .line 160
    invoke-direct {p0, v0, v1}, Lcom/baidu/mobads/sdk/internal/an;->a(Ljava/lang/String;Ljava/net/HttpURLConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/an;->h:Lcom/baidu/mobads/sdk/internal/an$b;

    .line 166
    .line 167
    const/4 v2, 0x0

    .line 168
    const-string v3, "Net Create RuntimeError: "

    .line 169
    .line 170
    if-eqz v1, :cond_2

    .line 171
    .line 172
    new-instance v4, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    invoke-interface {v1, v4, v2}, Lcom/baidu/mobads/sdk/internal/an$b;->a(Ljava/lang/String;I)V

    .line 192
    .line 193
    .line 194
    :cond_2
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/an;->i:Lcom/baidu/mobads/sdk/internal/an$c;

    .line 195
    .line 196
    if-eqz v1, :cond_3

    .line 197
    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-interface {v1, v0, v2}, Lcom/baidu/mobads/sdk/internal/an$c;->a(Ljava/lang/String;I)V

    .line 218
    .line 219
    .line 220
    :cond_3
    :goto_0
    return-void
.end method

.method private f()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/an;->f:Ljava/net/HttpURLConnection;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/an;->g:Lcom/baidu/mobads/sdk/internal/bv;

    .line 8
    .line 9
    const-string v2, "OAdURLConnection"

    .line 10
    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v4, p0, Lcom/baidu/mobads/sdk/internal/an;->f:Ljava/net/HttpURLConnection;

    .line 17
    .line 18
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v4, " connect code :"

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v4, p0, Lcom/baidu/mobads/sdk/internal/an;->f:Ljava/net/HttpURLConnection;

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v1, v2, v3}, Lcom/baidu/mobads/sdk/internal/bv;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/an;->f:Ljava/net/HttpURLConnection;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/16 v2, 0x12e

    .line 53
    .line 54
    if-eq v1, v2, :cond_0

    .line 55
    .line 56
    const/16 v2, 0x12d

    .line 57
    .line 58
    if-ne v1, v2, :cond_1

    .line 59
    .line 60
    :cond_0
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/an;->f:Ljava/net/HttpURLConnection;

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/an;->f:Ljava/net/HttpURLConnection;

    .line 66
    .line 67
    invoke-direct {p0, v1}, Lcom/baidu/mobads/sdk/internal/an;->a(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iput-object v1, p0, Lcom/baidu/mobads/sdk/internal/an;->f:Ljava/net/HttpURLConnection;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    :cond_1
    div-int/lit8 v2, v1, 0x64

    .line 78
    .line 79
    const/4 v3, 0x2

    .line 80
    if-eq v2, v3, :cond_3

    .line 81
    .line 82
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/an;->h:Lcom/baidu/mobads/sdk/internal/an$b;

    .line 83
    .line 84
    if-eqz v2, :cond_2

    .line 85
    .line 86
    iget-object v3, p0, Lcom/baidu/mobads/sdk/internal/an;->f:Ljava/net/HttpURLConnection;

    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-interface {v2, v3, v1}, Lcom/baidu/mobads/sdk/internal/an$b;->a(Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    :cond_2
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/an;->i:Lcom/baidu/mobads/sdk/internal/an$c;

    .line 96
    .line 97
    if-eqz v2, :cond_5

    .line 98
    .line 99
    iget-object v3, p0, Lcom/baidu/mobads/sdk/internal/an;->f:Ljava/net/HttpURLConnection;

    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-interface {v2, v3, v1}, Lcom/baidu/mobads/sdk/internal/an$c;->a(Ljava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/cs;->a()Lcom/baidu/mobads/sdk/internal/cs;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/an;->j:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Lcom/baidu/mobads/sdk/internal/cs;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/an;->h:Lcom/baidu/mobads/sdk/internal/an$b;

    .line 120
    .line 121
    if-eqz v2, :cond_4

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/baidu/mobads/sdk/internal/an;->c()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-interface {v2, v3, v1}, Lcom/baidu/mobads/sdk/internal/an$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_4
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/an;->i:Lcom/baidu/mobads/sdk/internal/an$c;

    .line 131
    .line 132
    if-eqz v2, :cond_5

    .line 133
    .line 134
    iget-object v3, p0, Lcom/baidu/mobads/sdk/internal/an;->f:Ljava/net/HttpURLConnection;

    .line 135
    .line 136
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-interface {v2, v3, v1}, Lcom/baidu/mobads/sdk/internal/an$c;->a(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .line 142
    .line 143
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/an;->f:Ljava/net/HttpURLConnection;

    .line 144
    .line 145
    if-eqz v0, :cond_8

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    goto :goto_2

    .line 150
    :catch_0
    move-exception v1

    .line 151
    :try_start_1
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/an;->h:Lcom/baidu/mobads/sdk/internal/an$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    .line 153
    const-string v3, "Net Connect RuntimeError: "

    .line 154
    .line 155
    if-eqz v2, :cond_6

    .line 156
    .line 157
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-interface {v2, v4, v0}, Lcom/baidu/mobads/sdk/internal/an$b;->a(Ljava/lang/String;I)V

    .line 177
    .line 178
    .line 179
    :cond_6
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/an;->i:Lcom/baidu/mobads/sdk/internal/an$c;

    .line 180
    .line 181
    if-eqz v2, :cond_7

    .line 182
    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-interface {v2, v1, v0}, Lcom/baidu/mobads/sdk/internal/an$c;->a(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    .line 204
    .line 205
    :cond_7
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/an;->f:Ljava/net/HttpURLConnection;

    .line 206
    .line 207
    if-eqz v0, :cond_8

    .line 208
    .line 209
    :goto_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 210
    .line 211
    .line 212
    :cond_8
    return-void

    .line 213
    :goto_2
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/an;->f:Ljava/net/HttpURLConnection;

    .line 214
    .line 215
    if-eqz v1, :cond_9

    .line 216
    .line 217
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 218
    .line 219
    .line 220
    :cond_9
    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/baidu/mobads/sdk/internal/an;->e()V

    .line 3
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/an;->f:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    div-int/lit8 v0, v0, 0x64
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 5
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/an;->f:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object v1

    .line 7
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/mobads/sdk/internal/an;->c()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/an;->f:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    return-object v0

    :catchall_0
    nop

    .line 10
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/an;->f:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    return-object v1
.end method

.method public a(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/baidu/mobads/sdk/internal/an;->n:I

    return-void
.end method

.method public a(Landroid/net/Uri$Builder;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/an;->q:Landroid/net/Uri$Builder;

    return-void
.end method

.method public a(Lcom/baidu/mobads/sdk/internal/an$b;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/an;->h:Lcom/baidu/mobads/sdk/internal/an$b;

    return-void
.end method

.method public a(Lcom/baidu/mobads/sdk/internal/an$c;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/an;->i:Lcom/baidu/mobads/sdk/internal/an$c;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/an;->m:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/an;->f:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 22
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 24
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 25
    iget-object v2, p0, Lcom/baidu/mobads/sdk/internal/an;->f:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    :try_start_0
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/be;->a()Lcom/baidu/mobads/sdk/internal/be;

    move-result-object v0

    new-instance v1, Lcom/baidu/mobads/sdk/internal/an$a;

    invoke-direct {v1, p0}, Lcom/baidu/mobads/sdk/internal/an$a;-><init>(Lcom/baidu/mobads/sdk/internal/an;)V

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/internal/be;->a(Lcom/baidu/mobads/sdk/internal/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/baidu/mobads/sdk/internal/an;->o:I

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/an;->f:Ljava/net/HttpURLConnection;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 11
    .line 12
    .line 13
    const/16 v2, 0x80

    .line 14
    .line 15
    new-array v2, v2, [B

    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, -0x1

    .line 22
    if-eq v3, v4, :cond_0

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 44
    .line 45
    .line 46
    :cond_1
    throw v1
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/an;->f:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    const-string v1, "OAdURLConnection"

    .line 17
    .line 18
    invoke-static {v1}, Lcom/baidu/mobads/sdk/internal/az;->h(Ljava/lang/String;)Lcom/baidu/mobads/sdk/internal/az$a;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, Lcom/baidu/mobads/sdk/internal/az$a;->f(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    :goto_0
    return-void
.end method

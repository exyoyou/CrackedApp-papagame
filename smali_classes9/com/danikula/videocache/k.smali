.class public Lcom/danikula/videocache/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/danikula/videocache/q;


# static fields
.field private static final f:I = 0x5


# instance fields
.field private final a:Lcom/danikula/videocache/sourcestorage/c;

.field private final b:Ly2/b;

.field private c:Lcom/danikula/videocache/r;

.field private d:Ljava/net/HttpURLConnection;

.field private e:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/danikula/videocache/k;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iget-object v0, p1, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    iput-object v0, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    .line 11
    iget-object v0, p1, Lcom/danikula/videocache/k;->a:Lcom/danikula/videocache/sourcestorage/c;

    iput-object v0, p0, Lcom/danikula/videocache/k;->a:Lcom/danikula/videocache/sourcestorage/c;

    .line 12
    iget-object p1, p1, Lcom/danikula/videocache/k;->b:Ly2/b;

    iput-object p1, p0, Lcom/danikula/videocache/k;->b:Ly2/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/danikula/videocache/sourcestorage/d;->a()Lcom/danikula/videocache/sourcestorage/c;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/danikula/videocache/k;-><init>(Ljava/lang/String;Lcom/danikula/videocache/sourcestorage/c;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/danikula/videocache/sourcestorage/c;)V
    .locals 1

    .line 2
    new-instance v0, Ly2/a;

    invoke-direct {v0}, Ly2/a;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/danikula/videocache/k;-><init>(Ljava/lang/String;Lcom/danikula/videocache/sourcestorage/c;Ly2/b;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/danikula/videocache/sourcestorage/c;Ly2/b;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p2}, Lcom/danikula/videocache/n;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danikula/videocache/sourcestorage/c;

    iput-object v0, p0, Lcom/danikula/videocache/k;->a:Lcom/danikula/videocache/sourcestorage/c;

    .line 5
    invoke-static {p3}, Lcom/danikula/videocache/n;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ly2/b;

    iput-object p3, p0, Lcom/danikula/videocache/k;->b:Ly2/b;

    .line 6
    invoke-interface {p2, p1}, Lcom/danikula/videocache/sourcestorage/c;->get(Ljava/lang/String;)Lcom/danikula/videocache/r;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p2, Lcom/danikula/videocache/r;

    const-wide/32 v0, -0x80000000

    .line 8
    invoke-static {p1}, Lcom/danikula/videocache/p;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, v0, v1, p3}, Lcom/danikula/videocache/r;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    :goto_0
    iput-object p2, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    return-void
.end method

.method private b()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/16 v2, 0x2710

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    :try_start_0
    invoke-direct {p0, v0, v1, v2}, Lcom/danikula/videocache/k;->g(JI)Ljava/net/HttpURLConnection;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    invoke-direct {p0, v0}, Lcom/danikula/videocache/k;->c(Ljava/net/HttpURLConnection;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    new-instance v5, Lcom/danikula/videocache/r;

    .line 23
    .line 24
    iget-object v6, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    .line 25
    .line 26
    iget-object v6, v6, Lcom/danikula/videocache/r;->a:Ljava/lang/String;

    .line 27
    .line 28
    invoke-direct {v5, v6, v1, v2, v4}, Lcom/danikula/videocache/r;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iput-object v5, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/danikula/videocache/k;->a:Lcom/danikula/videocache/sourcestorage/c;

    .line 34
    .line 35
    iget-object v2, v5, Lcom/danikula/videocache/r;->a:Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {v1, v2, v5}, Lcom/danikula/videocache/sourcestorage/c;->a(Ljava/lang/String;Lcom/danikula/videocache/r;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    invoke-static {v3}, Lcom/danikula/videocache/p;->c(Ljava/io/Closeable;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    goto :goto_2

    .line 46
    :catch_0
    move-exception v1

    .line 47
    goto :goto_0

    .line 48
    :catchall_1
    move-exception v1

    .line 49
    move-object v0, v3

    .line 50
    goto :goto_2

    .line 51
    :catch_1
    move-exception v1

    .line 52
    move-object v0, v3

    .line 53
    :goto_0
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v4, "Error fetching info from "

    .line 59
    .line 60
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v4, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    .line 64
    .line 65
    iget-object v4, v4, Lcom/danikula/videocache/r;->a:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {v2, v1}, Lcom/danikula/videocache/h;->f(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    .line 76
    .line 77
    invoke-static {v3}, Lcom/danikula/videocache/p;->c(Ljava/io/Closeable;)V

    .line 78
    .line 79
    .line 80
    if-eqz v0, :cond_0

    .line 81
    .line 82
    :goto_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 83
    .line 84
    .line 85
    :cond_0
    return-void

    .line 86
    :goto_2
    invoke-static {v3}, Lcom/danikula/videocache/p;->c(Ljava/io/Closeable;)V

    .line 87
    .line 88
    .line 89
    if-eqz v0, :cond_1

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 92
    .line 93
    .line 94
    :cond_1
    throw v1
.end method

.method private c(Ljava/net/HttpURLConnection;)J
    .locals 2

    .line 1
    const-string v0, "Content-Length"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, -0x1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    :goto_0
    return-wide v0
.end method

.method private f(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/k;->b:Ly2/b;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Ly2/b;->a(Ljava/lang/String;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "****** injectCustomHeaders ****** :"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/danikula/videocache/h;->e(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Ljava/util/Map$Entry;

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Ljava/lang/String;

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    return-void
.end method

.method private g(JI)Ljava/net/HttpURLConnection;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/danikula/videocache/r;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :cond_0
    const-string v3, "https"

    .line 8
    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x1

    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    new-instance v3, Ljava/net/URL;

    .line 17
    .line 18
    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 26
    .line 27
    move-object v5, v3

    .line 28
    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    .line 29
    .line 30
    new-instance v6, Lcom/danikula/videocache/k$a;

    .line 31
    .line 32
    invoke-direct {v6, p0}, Lcom/danikula/videocache/k$a;-><init>(Lcom/danikula/videocache/k;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 36
    .line 37
    .line 38
    new-array v5, v4, [Ljavax/net/ssl/TrustManager;

    .line 39
    .line 40
    new-instance v6, Lcom/danikula/videocache/k$b;

    .line 41
    .line 42
    invoke-direct {v6, p0}, Lcom/danikula/videocache/k$b;-><init>(Lcom/danikula/videocache/k;)V

    .line 43
    .line 44
    .line 45
    aput-object v6, v5, v1

    .line 46
    .line 47
    :try_start_0
    const-string v6, "SSL"

    .line 48
    .line 49
    invoke-static {v6}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    new-instance v7, Ljava/security/SecureRandom;

    .line 54
    .line 55
    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    .line 56
    .line 57
    .line 58
    const/4 v8, 0x0

    .line 59
    invoke-virtual {v6, v8, v5, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    move-object v6, v3

    .line 67
    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    .line 68
    .line 69
    invoke-virtual {v6, v5}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 70
    .line 71
    .line 72
    move-object v5, v3

    .line 73
    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    .line 74
    .line 75
    new-instance v6, Lcom/danikula/videocache/k$c;

    .line 76
    .line 77
    invoke-direct {v6, p0}, Lcom/danikula/videocache/k$c;-><init>(Lcom/danikula/videocache/k;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catch_0
    move-exception v5

    .line 85
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catch_1
    move-exception v5

    .line 90
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    new-instance v3, Ljava/net/URL;

    .line 95
    .line 96
    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 104
    .line 105
    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/danikula/videocache/k;->f(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-wide/16 v5, 0x0

    .line 109
    .line 110
    cmp-long v7, p1, v5

    .line 111
    .line 112
    if-lez v7, :cond_2

    .line 113
    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v6, "bytes="

    .line 120
    .line 121
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v6, "-"

    .line 128
    .line 129
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    const-string v6, "Range"

    .line 137
    .line 138
    invoke-virtual {v3, v6, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :cond_2
    if-lez p3, :cond_3

    .line 142
    .line 143
    invoke-virtual {v3, p3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3, p3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 147
    .line 148
    .line 149
    :cond_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    const/16 v6, 0x12d

    .line 154
    .line 155
    if-eq v5, v6, :cond_5

    .line 156
    .line 157
    const/16 v6, 0x12e

    .line 158
    .line 159
    if-eq v5, v6, :cond_5

    .line 160
    .line 161
    const/16 v6, 0x12f

    .line 162
    .line 163
    if-ne v5, v6, :cond_4

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_4
    const/4 v4, 0x0

    .line 167
    :cond_5
    :goto_1
    if-eqz v4, :cond_6

    .line 168
    .line 169
    const-string v0, "Location"

    .line 170
    .line 171
    invoke-virtual {v3, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    add-int/lit8 v2, v2, 0x1

    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 178
    .line 179
    .line 180
    :cond_6
    const/4 v5, 0x5

    .line 181
    if-gt v2, v5, :cond_7

    .line 182
    .line 183
    if-nez v4, :cond_0

    .line 184
    .line 185
    return-object v3

    .line 186
    :cond_7
    new-instance p1, Lcom/danikula/videocache/ProxyCacheException;

    .line 187
    .line 188
    new-instance p2, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    const-string p3, "Too many redirects: "

    .line 194
    .line 195
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    invoke-direct {p1, p2}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw p1
.end method

.method private h(Ljava/net/HttpURLConnection;JI)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/danikula/videocache/k;->c(Ljava/net/HttpURLConnection;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/16 p1, 0xc8

    .line 6
    .line 7
    if-ne p4, p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 p1, 0xce

    .line 11
    .line 12
    if-ne p4, p1, :cond_1

    .line 13
    .line 14
    add-long/2addr v0, p2

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    .line 17
    .line 18
    iget-wide v0, p1, Lcom/danikula/videocache/r;->b:J

    .line 19
    .line 20
    :goto_0
    return-wide v0
.end method


# virtual methods
.method public a(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/danikula/videocache/k;->g(JI)Ljava/net/HttpURLConnection;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/danikula/videocache/k;->d:Ljava/net/HttpURLConnection;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/danikula/videocache/k;->d:Ljava/net/HttpURLConnection;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/16 v3, 0x2000

    .line 21
    .line 22
    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/danikula/videocache/k;->e:Ljava/io/InputStream;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/danikula/videocache/k;->d:Ljava/net/HttpURLConnection;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-direct {p0, v1, p1, p2, v2}, Lcom/danikula/videocache/k;->h(Ljava/net/HttpURLConnection;JI)J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    new-instance v3, Lcom/danikula/videocache/r;

    .line 38
    .line 39
    iget-object v4, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    .line 40
    .line 41
    iget-object v4, v4, Lcom/danikula/videocache/r;->a:Ljava/lang/String;

    .line 42
    .line 43
    invoke-direct {v3, v4, v1, v2, v0}, Lcom/danikula/videocache/r;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iput-object v3, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/danikula/videocache/k;->a:Lcom/danikula/videocache/sourcestorage/c;

    .line 49
    .line 50
    iget-object v1, v3, Lcom/danikula/videocache/r;->a:Ljava/lang/String;

    .line 51
    .line 52
    invoke-interface {v0, v1, v3}, Lcom/danikula/videocache/sourcestorage/c;->a(Ljava/lang/String;Lcom/danikula/videocache/r;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    new-instance v1, Lcom/danikula/videocache/ProxyCacheException;

    .line 58
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v3, "Error opening connection for "

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v3, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    .line 70
    .line 71
    iget-object v3, v3, Lcom/danikula/videocache/r;->a:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v3, " with offset "

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-direct {v1, p1, v0}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    throw v1
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/k;->d:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :catch_0
    move-exception v0

    .line 10
    const-string v1, "Error closing connection correctly. Should happen only on Android L. If anybody know how to fix it, please visit https://github.com/danikula/AndroidVideoCache/issues/88. Until good solution is not know, just ignore this issue :("

    .line 11
    .line 12
    invoke-static {v1, v0}, Lcom/danikula/videocache/h;->f(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :catch_1
    move-exception v0

    .line 17
    goto :goto_0

    .line 18
    :catch_2
    move-exception v0

    .line 19
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 20
    .line 21
    const-string v2, "Wait... but why? WTF!? Really shouldn\'t happen any more after fixing https://github.com/danikula/AndroidVideoCache/issues/43. If you read it on your device log, please, notify me danikula@gmail.com or create issue here https://github.com/danikula/AndroidVideoCache/issues."

    .line 22
    .line 23
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    throw v1

    .line 27
    :cond_0
    :goto_1
    return-void
.end method

.method public declared-synchronized d()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/danikula/videocache/r;->c:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/danikula/videocache/k;->b()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/danikula/videocache/r;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    monitor-exit p0

    .line 23
    throw v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/danikula/videocache/r;->a:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public declared-synchronized length()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    .line 3
    .line 4
    iget-wide v0, v0, Lcom/danikula/videocache/r;->b:J

    .line 5
    .line 6
    const-wide/32 v2, -0x80000000

    .line 7
    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/danikula/videocache/k;->b()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    .line 17
    .line 18
    iget-wide v0, v0, Lcom/danikula/videocache/r;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-wide v0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    monitor-exit p0

    .line 24
    throw v0
.end method

.method public read([B)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/k;->e:Ljava/io/InputStream;

    .line 2
    .line 3
    const-string v1, "Error reading data from "

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    array-length v2, p1

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-virtual {v0, p1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    .line 10
    .line 11
    .line 12
    move-result p1
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p1

    .line 14
    :catch_0
    move-exception p1

    .line 15
    new-instance v0, Lcom/danikula/videocache/ProxyCacheException;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/danikula/videocache/r;->a:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {v0, v1, p1}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :catch_1
    move-exception p1

    .line 41
    new-instance v0, Lcom/danikula/videocache/InterruptedProxyCacheException;

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v2, "Reading source "

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    .line 54
    .line 55
    iget-object v2, v2, Lcom/danikula/videocache/r;->a:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, " is interrupted"

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-direct {v0, v1, p1}, Lcom/danikula/videocache/InterruptedProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :cond_0
    new-instance p1, Lcom/danikula/videocache/ProxyCacheException;

    .line 74
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    .line 84
    .line 85
    iget-object v1, v1, Lcom/danikula/videocache/r;->a:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v1, ": connection is absent!"

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-direct {p1, v0}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "HttpUrlSource{sourceInfo=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/danikula/videocache/k;->c:Lcom/danikula/videocache/r;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "}"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

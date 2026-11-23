.class public abstract Lcom/beizi/ad/internal/e/d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/beizi/ad/internal/e/e;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "HTTPGet"


# instance fields
.field private b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/beizi/ad/internal/e/d;->b:Z

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/beizi/ad/internal/e/d;->c:Z

    .line 7
    .line 8
    return-void
.end method

.method private a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const/4 v1, 0x1

    .line 34
    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 35
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const-string v0, "GET"

    .line 36
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object p1
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 37
    invoke-static {}, Lcom/beizi/ad/internal/c;->a()Lcom/beizi/ad/internal/c;

    move-result-object v0

    iget-object v0, v0, Lcom/beizi/ad/internal/c;->e:Ljava/lang/String;

    const-string v1, "User-Agent"

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/beizi/ad/internal/e/e;
    .locals 7

    .line 1
    new-instance p1, Lcom/beizi/ad/internal/e/e;

    invoke-direct {p1}, Lcom/beizi/ad/internal/e/e;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/beizi/ad/internal/e/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Lcom/beizi/ad/internal/e/e;->a(Z)V

    return-object p1

    .line 5
    :cond_0
    invoke-direct {p0, v2}, Lcom/beizi/ad/internal/e/d;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 6
    invoke-direct {p0, v1}, Lcom/beizi/ad/internal/e/d;->a(Ljava/net/HttpURLConnection;)V

    .line 7
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 9
    sget-object v3, Lcom/beizi/ad/internal/e/d;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTPGet code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/beizi/ad/lance/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/beizi/ad/internal/e/e;->a(Ljava/util/Map;)V

    const/16 v3, 0xc8

    const/16 v4, 0x12e

    if-eq v2, v3, :cond_2

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    .line 11
    :goto_1
    invoke-virtual {p1, v3}, Lcom/beizi/ad/internal/e/e;->a(Z)V

    if-ne v2, v4, :cond_3

    .line 12
    invoke-virtual {p1, v2}, Lcom/beizi/ad/internal/e/e;->a(I)V

    const-string v2, "Location"

    .line 13
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/beizi/ad/internal/e/e;->b(Ljava/lang/String;)V

    .line 14
    :cond_3
    iget-boolean v2, p0, Lcom/beizi/ad/internal/e/d;->c:Z

    if-eqz v2, :cond_6

    .line 15
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 16
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 17
    :goto_2
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 18
    invoke-virtual {v3, v4, v0, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 19
    :cond_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 20
    iget-boolean v2, p0, Lcom/beizi/ad/internal/e/d;->b:Z

    if-nez v2, :cond_5

    const-string v2, "UTF-8"

    .line 21
    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-virtual {p1, v2}, Lcom/beizi/ad/internal/e/e;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 23
    :cond_5
    invoke-virtual {p1, v3}, Lcom/beizi/ad/internal/e/e;->a(Ljava/io/ByteArrayOutputStream;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 24
    :catch_0
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/beizi/ad/internal/e/e;->a(Z)V

    .line 25
    sget-object v0, Lcom/beizi/ad/internal/e/g;->e:Lcom/beizi/ad/internal/e/g;

    invoke-virtual {p1, v0}, Lcom/beizi/ad/internal/e/e;->a(Lcom/beizi/ad/internal/e/g;)V

    if-eqz v1, :cond_7

    goto :goto_3

    .line 26
    :catch_1
    invoke-virtual {p1, v0}, Lcom/beizi/ad/internal/e/e;->a(Z)V

    .line 27
    sget-object v0, Lcom/beizi/ad/internal/e/g;->e:Lcom/beizi/ad/internal/e/g;

    invoke-virtual {p1, v0}, Lcom/beizi/ad/internal/e/e;->a(Lcom/beizi/ad/internal/e/g;)V

    if-eqz v1, :cond_7

    goto :goto_3

    .line 28
    :catch_2
    invoke-virtual {p1, v0}, Lcom/beizi/ad/internal/e/e;->a(Z)V

    .line 29
    sget-object v0, Lcom/beizi/ad/internal/e/g;->b:Lcom/beizi/ad/internal/e/g;

    invoke-virtual {p1, v0}, Lcom/beizi/ad/internal/e/e;->a(Lcom/beizi/ad/internal/e/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_7

    .line 30
    :cond_6
    :goto_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    return-object p1

    :goto_4
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 31
    :cond_8
    throw p1
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract a(Lcom/beizi/ad/internal/e/e;)V
.end method

.method protected b(Lcom/beizi/ad/internal/e/e;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/beizi/ad/internal/e/d;->a([Ljava/lang/Void;)Lcom/beizi/ad/internal/e/e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    check-cast p1, Lcom/beizi/ad/internal/e/e;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/beizi/ad/internal/e/d;->b(Lcom/beizi/ad/internal/e/e;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/beizi/ad/internal/e/e;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/beizi/ad/internal/e/d;->a(Lcom/beizi/ad/internal/e/e;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

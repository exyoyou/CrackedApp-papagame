.class public Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack;
.super Lcom/cloudplay/messagesdk/network/volley/toolbox/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack$a;,
        Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack$UrlRewriter;
    }
.end annotation


# instance fields
.field private final a:Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack$UrlRewriter;

.field private final b:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack;-><init>(Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack$UrlRewriter;)V

    return-void
.end method

.method public constructor <init>(Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack$UrlRewriter;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack;-><init>(Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/b;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack;->a:Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack$UrlRewriter;

    .line 5
    iput-object p2, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack;->b:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method static synthetic a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack;->b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/net/URL;Lcom/cloudplay/messagesdk/network/volley/Request;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 35
    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/network/volley/Request;->q()I

    move-result p2

    .line 36
    invoke-virtual {v0, p2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 37
    invoke-virtual {v0, p2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 p2, 0x0

    .line 38
    invoke-virtual {v0, p2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/4 p2, 0x1

    .line 39
    invoke-virtual {v0, p2}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 40
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    const-string p2, "https"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack;->b:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p1, :cond_0

    .line 41
    move-object p2, v0

    check-cast p2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p2, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_0
    return-object v0
.end method

.method static a(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/cloudplay/messagesdk/network/volley/d;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 30
    new-instance v4, Lcom/cloudplay/messagesdk/network/volley/d;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/cloudplay/messagesdk/network/volley/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a(Ljava/net/HttpURLConnection;Lcom/cloudplay/messagesdk/network/volley/Request;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 58
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 59
    invoke-virtual {p1}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/network/volley/Request;->c()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    new-instance v0, Ljava/io/DataOutputStream;

    array-length v1, p3

    .line 63
    invoke-virtual {p0, p2, p1, v1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack;->a(Lcom/cloudplay/messagesdk/network/volley/Request;Ljava/net/HttpURLConnection;I)Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 64
    invoke-virtual {v0, p3}, Ljava/io/OutputStream;->write([B)V

    .line 65
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method private static a(II)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 p0, 0x64

    if-gt p0, p1, :cond_0

    const/16 p0, 0xc8

    if-lt p1, p0, :cond_1

    :cond_0
    const/16 p0, 0xcc

    if-eq p1, p0, :cond_1

    const/16 p0, 0x130

    if-eq p1, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private b(Ljava/net/HttpURLConnection;Lcom/cloudplay/messagesdk/network/volley/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/cloudplay/messagesdk/network/volley/AuthFailureError;
        }
    .end annotation

    .line 3
    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/network/volley/Request;->b()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack;->a(Ljava/net/HttpURLConnection;Lcom/cloudplay/messagesdk/network/volley/Request;[B)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/cloudplay/messagesdk/network/volley/Request;Ljava/util/Map;)Lcom/cloudplay/messagesdk/network/volley/toolbox/g;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cloudplay/messagesdk/network/volley/toolbox/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/cloudplay/messagesdk/network/volley/AuthFailureError;
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/network/volley/Request;->s()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 6
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/network/volley/Request;->f()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 7
    iget-object p2, p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack;->a:Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack$UrlRewriter;

    if-eqz p2, :cond_1

    .line 8
    invoke-interface {p2, v0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/UrlRewriter;->rewriteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URL blocked by rewriter: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    :goto_0
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p2, p1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack;->a(Ljava/net/URL;Lcom/cloudplay/messagesdk/network/volley/Request;)Ljava/net/HttpURLConnection;

    move-result-object p2

    const/4 v0, 0x0

    .line 12
    :try_start_0
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 13
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {p0, p2, p1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack;->a(Ljava/net/HttpURLConnection;Lcom/cloudplay/messagesdk/network/volley/Request;)V

    .line 15
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 16
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/network/volley/Request;->g()I

    move-result v2

    invoke-static {v2, v1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack;->a(II)Z

    move-result v2

    if-nez v2, :cond_3

    .line 17
    new-instance p1, Lcom/cloudplay/messagesdk/network/volley/toolbox/g;

    invoke-virtual {p2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/cloudplay/messagesdk/network/volley/toolbox/g;-><init>(ILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :cond_3
    const/4 v0, 0x1

    .line 19
    :try_start_1
    new-instance v2, Lcom/cloudplay/messagesdk/network/volley/toolbox/g;

    .line 20
    invoke-virtual {p2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    .line 21
    invoke-virtual {p2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v4

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack;->a(Lcom/cloudplay/messagesdk/network/volley/Request;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, v1, v3, v4, p1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/g;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    return-object v2

    .line 23
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    if-nez v0, :cond_5

    .line 24
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 25
    :cond_5
    throw p1
.end method

.method protected a(Lcom/cloudplay/messagesdk/network/volley/Request;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .line 31
    new-instance p1, Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack$a;

    invoke-direct {p1, p2}, Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack$a;-><init>(Ljava/net/HttpURLConnection;)V

    return-object p1
.end method

.method protected a(Lcom/cloudplay/messagesdk/network/volley/Request;Ljava/net/HttpURLConnection;I)Ljava/io/OutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;",
            "Ljava/net/HttpURLConnection;",
            "I)",
            "Ljava/io/OutputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-virtual {p2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 33
    invoke-static {}, Ljava/net/HttpURLConnection;->getFollowRedirects()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-object p1
.end method

.method a(Ljava/net/HttpURLConnection;Lcom/cloudplay/messagesdk/network/volley/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/cloudplay/messagesdk/network/volley/AuthFailureError;
        }
    .end annotation

    .line 42
    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/network/volley/Request;->g()I

    move-result v0

    const-string v1, "POST"

    packed-switch v0, :pswitch_data_0

    .line 43
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown method type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const-string v0, "PATCH"

    .line 44
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack;->b(Ljava/net/HttpURLConnection;Lcom/cloudplay/messagesdk/network/volley/Request;)V

    goto :goto_0

    :pswitch_1
    const-string p2, "TRACE"

    .line 46
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p2, "OPTIONS"

    .line 47
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p2, "HEAD"

    .line 48
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p2, "DELETE"

    .line 49
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string v0, "PUT"

    .line 50
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack;->b(Ljava/net/HttpURLConnection;Lcom/cloudplay/messagesdk/network/volley/Request;)V

    goto :goto_0

    .line 52
    :pswitch_6
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack;->b(Ljava/net/HttpURLConnection;Lcom/cloudplay/messagesdk/network/volley/Request;)V

    goto :goto_0

    :pswitch_7
    const-string p2, "GET"

    .line 54
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :pswitch_8
    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/network/volley/Request;->j()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/HurlStack;->a(Ljava/net/HttpURLConnection;Lcom/cloudplay/messagesdk/network/volley/Request;[B)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

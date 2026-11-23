.class Lcom/aggmoread/sdk/z/c/a/a/e/d$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/e/d$d;->a(Ljava/lang/String;Ljava/util/Map;Lcom/aggmoread/sdk/z/c/a/a/e/d$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/aggmoread/sdk/z/c/a/a/e/d$e;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/e/d$d;Ljava/lang/String;Ljava/util/Map;Lcom/aggmoread/sdk/z/c/a/a/e/d$e;)V
    .locals 0

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/e/d$d$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/aggmoread/sdk/z/c/a/a/e/d$d$a;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/aggmoread/sdk/z/c/a/a/e/d$d$a;->d:Lcom/aggmoread/sdk/z/c/a/a/e/d$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/e/d$d$a;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setUseCaches(Z)V

    iget-object v4, p0, Lcom/aggmoread/sdk/z/c/a/a/e/d$d$a;->c:Ljava/util/Map;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/aggmoread/sdk/z/c/a/a/e/d$d$a;->c:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_2

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v5, 0x400

    new-array v6, v5, [B

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_1
    invoke-virtual {v7, v6, v3, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v4, v6, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    goto :goto_2

    :cond_2
    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP error\uff0cstatusCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x3baa1411

    invoke-direct {v2, v4, v3}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_2
    move-object v3, v1

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception v2

    new-instance v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const v4, 0x3baa1417

    const-string v5, "HTTP error,other error."

    invoke-direct {v3, v4, v5, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    :catch_1
    move-exception v2

    new-instance v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const v4, 0x3baa1415

    const-string v5, "HTTP error, network error."

    invoke-direct {v3, v4, v5, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    :catch_2
    move-exception v2

    new-instance v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const v4, 0x3baa1414

    const-string v5, "HTTP errror, url parse error."

    invoke-direct {v3, v4, v5, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    :catch_3
    move-exception v2

    new-instance v3, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const v4, 0x3baa1412

    const-string v5, "HTTP error, response encoding error."

    invoke-direct {v3, v4, v5, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    :goto_3
    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/e/d$d$a;->d:Lcom/aggmoread/sdk/z/c/a/a/e/d$e;

    invoke-interface {v2, v0, v1, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/d$e;->a(I[BLcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.class public Lcom/byazt/tjs/uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/tjs/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4b9,
        0xf
    }
.end annotation


# static fields
.field public static final c:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public a:Ljava/lang/String;

.field public n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation
.end field

.field public tt:Ljava/util/concurrent/atomic/AtomicInteger;

.field public uj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/kj/c;",
            ">;"
        }
    .end annotation
.end field

.field public final ve:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/byazt/tjs/uj;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lcom/byazt/tjs/ve;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/tjs/uj;->uj:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/tjs/uj;->n:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/byazt/tjs/uj;->tt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    .line 26
    invoke-static {}, Lcom/byazt/bwm/n;->c()Ljava/util/concurrent/ExecutorService;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/byazt/tjs/uj;->ve:Ljava/util/concurrent/ExecutorService;

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/byazt/tjs/ve;->c()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    new-instance v0, Lcom/byazt/kj/tt;

    .line 41
    .line 42
    move-object v1, v0

    .line 43
    move-object v2, p0

    .line 44
    move-object v3, p2

    .line 45
    move-object v4, p3

    .line 46
    move-object v5, p4

    .line 47
    move-object v6, p5

    .line 48
    move-object v7, p6

    .line 49
    invoke-direct/range {v1 .. v7}, Lcom/byazt/kj/tt;-><init>(Lcom/byazt/tjs/c;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/byazt/kj/c;->tt()V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/byazt/tjs/uj;->uj:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/tjs/ve;->tt()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    new-instance p1, Lcom/byazt/kj/ve;

    .line 67
    .line 68
    move-object v0, p1

    .line 69
    move-object v1, p0

    .line 70
    move-object v2, p2

    .line 71
    move-object v3, p3

    .line 72
    move-object v4, p4

    .line 73
    move-object v5, p5

    .line 74
    move-object v6, p6

    .line 75
    invoke-direct/range {v0 .. v6}, Lcom/byazt/kj/ve;-><init>(Lcom/byazt/tjs/c;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/byazt/kj/c;->tt()V

    .line 79
    .line 80
    .line 81
    iget-object p2, p0, Lcom/byazt/tjs/uj;->uj:Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    :cond_1
    iput-object p6, p0, Lcom/byazt/tjs/uj;->a:Ljava/lang/String;

    .line 87
    .line 88
    sget-object p1, Lcom/byazt/tjs/uj;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 91
    .line 92
    .line 93
    const/4 p1, 0x0

    .line 94
    iget-object p2, p0, Lcom/byazt/tjs/uj;->a:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/byazt/tjs/uj;->c(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    return-void
.end method

.method private c(Landroid/webkit/WebResourceResponse;)Landroid/util/Pair;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebResourceResponse;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/webkit/WebResourceResponse;",
            "Landroid/webkit/WebResourceResponse;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    .line 40
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/byazt/edv/tt;->c(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 41
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    move-object v3, v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v3, v2

    .line 43
    :goto_0
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 44
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 45
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_1
    move-object v0, v2

    .line 46
    :goto_2
    invoke-static {}, Lcom/byazt/tjs/uj;->ve()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 47
    new-instance v1, Landroid/webkit/WebResourceResponse;

    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v5

    .line 48
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v6

    .line 49
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v7

    .line 50
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v8

    .line 51
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object v9

    const/4 v2, 0x0

    if-nez v3, :cond_1

    new-instance v3, Ljava/io/ByteArrayInputStream;

    new-array v4, v2, [B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :cond_1
    move-object v10, v3

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 52
    new-instance v3, Landroid/webkit/WebResourceResponse;

    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v12

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v13

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v14

    .line 55
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v15

    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object v16

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    new-array v2, v2, [B

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :cond_2
    move-object/from16 v17, v0

    move-object v11, v3

    invoke-direct/range {v11 .. v17}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 57
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_3
    return-object v2
.end method

.method private c(Lcom/byazt/tjs/tt;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/tjs/tt;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/webkit/WebResourceResponse;",
            "Lcom/byazt/gqp/da;",
            ">;"
        }
    .end annotation

    .line 58
    invoke-static {}, Lcom/byazt/tjs/uj;->ve()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 59
    :try_start_0
    invoke-static {}, Lcom/byazt/hy/n;->c()Lcom/byazt/hy/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/hy/n;->tt()Lcom/byazt/hm/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/hm/c;->a()Lcom/byazt/gqp/t;

    move-result-object v0

    .line 60
    new-instance v2, Lcom/byazt/gqp/yp$c;

    invoke-direct {v2}, Lcom/byazt/gqp/yp$c;-><init>()V

    .line 61
    invoke-virtual {p1}, Lcom/byazt/tjs/tt;->ve()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 62
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 63
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 64
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 65
    invoke-virtual {v2, v5, v6}, Lcom/byazt/gqp/yp$c;->tt(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/gqp/yp$c;

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/tjs/tt;->c()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/byazt/gqp/yp$c;->c(Ljava/lang/String;)Lcom/byazt/gqp/yp$c;

    .line 67
    invoke-virtual {v2}, Lcom/byazt/gqp/yp$c;->tt()Lcom/byazt/gqp/yp;

    move-result-object p1

    .line 68
    invoke-virtual {v0, p1}, Lcom/byazt/gqp/t;->c(Lcom/byazt/gqp/yp;)Lcom/byazt/gqp/tt;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/gqp/tt;->tt()Lcom/byazt/gqp/m;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lcom/byazt/gqp/m;->ve()I

    move-result v5

    const/16 v0, 0xc8

    if-ne v5, v0, :cond_3

    .line 70
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 71
    invoke-virtual {p1}, Lcom/byazt/gqp/m;->sp()Lcom/byazt/gqp/a;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 72
    :goto_1
    invoke-virtual {v0}, Lcom/byazt/gqp/a;->c()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 73
    invoke-virtual {v0, v2}, Lcom/byazt/gqp/a;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2}, Lcom/byazt/gqp/a;->tt(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/gqp/m;->a()Lcom/byazt/gqp/nu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/gqp/nu;->ve()Ljava/io/InputStream;

    move-result-object v8

    .line 75
    invoke-direct {p0, v7}, Lcom/byazt/tjs/uj;->c(Ljava/util/Map;)Lcom/byazt/gqp/da;

    move-result-object p1

    .line 76
    invoke-direct {p0, v5}, Lcom/byazt/tjs/uj;->c(I)Ljava/lang/String;

    move-result-object v6

    .line 77
    new-instance v0, Landroid/webkit/WebResourceResponse;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/byazt/gqp/da;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/byazt/gqp/da;->tt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-virtual {p1}, Lcom/byazt/gqp/da;->ve()Ljava/nio/charset/Charset;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v4, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/byazt/gqp/da;->ve()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    :goto_2
    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 79
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception p1

    .line 80
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_3
    return-object v1
.end method

.method private c(Ljava/util/Map;)Lcom/byazt/gqp/da;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/byazt/gqp/da;"
        }
    .end annotation

    if-eqz p1, :cond_2

    const-string v0, "Content-Type"

    .line 81
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "content-type"

    .line 83
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "CONTENT-TYPE"

    .line 85
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 87
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "text/html; charset=UTF-8"

    .line 88
    :cond_3
    invoke-static {p1}, Lcom/byazt/gqp/da;->c(Ljava/lang/String;)Lcom/byazt/gqp/da;

    move-result-object p1

    return-object p1
.end method

.method public static c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/tjs/uj;
    .locals 7

    .line 13
    invoke-static {p1, p0}, Lcom/byazt/tjs/uj;->c(Lcom/byazt/ete/ic;Landroid/content/Context;)Lcom/byazt/tjs/ve;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/byazt/tjs/ve;->c()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-virtual {v1}, Lcom/byazt/tjs/ve;->tt()Z

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->q_()Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_1

    return-object v0

    :cond_1
    const-string p0, "cid"

    .line 16
    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    :cond_2
    const-string p0, "req_id"

    .line 18
    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v0

    .line 20
    :cond_3
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object v5

    .line 21
    new-instance p0, Lcom/byazt/tjs/uj;

    move-object v0, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/byazt/tjs/uj;-><init>(Lcom/byazt/tjs/ve;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static c(Lcom/byazt/ete/ic;Landroid/content/Context;)Lcom/byazt/tjs/ve;
    .locals 5

    .line 4
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->is()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->md()I

    move-result p0

    int-to-float p0, p0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p0, v3

    invoke-static {p0, v1}, Lcom/byazt/ktv/tt;->c(FZ)Z

    move-result p0

    .line 6
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/ogz/sl;->tx()I

    move-result v3

    if-ne v3, v2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 7
    :goto_1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/byazt/ogz/sl;->y()I

    move-result v4

    if-ne v4, v2, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 8
    :goto_2
    invoke-static {p1}, Lcom/byazt/nr/rh;->uj(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 p1, 0x1

    .line 9
    :goto_4
    invoke-static {}, Lcom/byazt/tjs/uj;->ve()Z

    move-result v4

    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    if-eqz p1, :cond_5

    if-eqz v4, :cond_5

    const/4 p1, 0x1

    goto :goto_5

    :cond_5
    const/4 p1, 0x0

    :goto_5
    if-eqz p0, :cond_6

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    const/4 v1, 0x1

    .line 10
    :cond_6
    new-instance p0, Lcom/byazt/tjs/ve;

    invoke-direct {p0}, Lcom/byazt/tjs/ve;-><init>()V

    .line 11
    invoke-virtual {p0, p1}, Lcom/byazt/tjs/ve;->c(Z)V

    .line 12
    invoke-virtual {p0, v1}, Lcom/byazt/tjs/ve;->tt(Z)V

    return-object p0
.end method

.method private c(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    const-string p1, ""

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "HTTP Version not supported"

    goto/16 :goto_0

    :pswitch_1
    const-string p1, "Gateway Time-out"

    goto/16 :goto_0

    :pswitch_2
    const-string p1, "Service Unavailable"

    goto/16 :goto_0

    :pswitch_3
    const-string p1, "Bad Gateway"

    goto/16 :goto_0

    :pswitch_4
    const-string p1, "Not Implemented"

    goto/16 :goto_0

    :pswitch_5
    const-string p1, "Internal Server Error"

    goto/16 :goto_0

    :pswitch_6
    const-string p1, "Expectation Failed"

    goto/16 :goto_0

    :pswitch_7
    const-string p1, "Requested range not satisfiable"

    goto :goto_0

    :pswitch_8
    const-string p1, "Unsupported Media Type"

    goto :goto_0

    :pswitch_9
    const-string p1, "Request-URI Too Large"

    goto :goto_0

    :pswitch_a
    const-string p1, "Request Entity Too Large"

    goto :goto_0

    :pswitch_b
    const-string p1, "Precondition Failed"

    goto :goto_0

    :pswitch_c
    const-string p1, "Length Required"

    goto :goto_0

    :pswitch_d
    const-string p1, "Gone"

    goto :goto_0

    :pswitch_e
    const-string p1, "Conflict"

    goto :goto_0

    :pswitch_f
    const-string p1, "Request Time-out"

    goto :goto_0

    :pswitch_10
    const-string p1, "Proxy Authentication Required"

    goto :goto_0

    :pswitch_11
    const-string p1, "Not Acceptable"

    goto :goto_0

    :pswitch_12
    const-string p1, "Method Not Allowed"

    goto :goto_0

    :pswitch_13
    const-string p1, "Not Found"

    goto :goto_0

    :pswitch_14
    const-string p1, "Forbidden"

    goto :goto_0

    :pswitch_15
    const-string p1, "Payment Required"

    goto :goto_0

    :pswitch_16
    const-string p1, "Unauthorized"

    goto :goto_0

    :pswitch_17
    const-string p1, "Bad Request"

    goto :goto_0

    :pswitch_18
    const-string p1, "Partial Content"

    goto :goto_0

    :pswitch_19
    const-string p1, "Reset Content"

    goto :goto_0

    :pswitch_1a
    const-string p1, "No Content"

    goto :goto_0

    :pswitch_1b
    const-string p1, "Non-Authoritative Information"

    goto :goto_0

    :pswitch_1c
    const-string p1, "Accepted"

    goto :goto_0

    :pswitch_1d
    const-string p1, "Created"

    goto :goto_0

    :pswitch_1e
    const-string p1, "OK"

    goto :goto_0

    :cond_0
    const-string p1, "Switching Protocols"

    goto :goto_0

    :cond_1
    const-string p1, "Continue"

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x190
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1f4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic c(Lcom/byazt/tjs/uj;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/tjs/uj;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 6

    .line 89
    invoke-static {}, Lcom/byazt/tjs/uj;->ve()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/byazt/tjs/uj;->tt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v1, 0xbb8

    cmp-long v5, v3, v1

    if-lez v5, :cond_1

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-static {p0}, Lcom/byazt/tjs/uj;->tt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/byazt/edv/c;->tt(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 95
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static tt(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/byazt/nr/sp;->tt(Landroid/content/Context;ZLjava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".lp_cache"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ve()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/tjs/tt;)Landroid/webkit/WebResourceResponse;
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p3

    .line 26
    invoke-direct {v8, v9}, Lcom/byazt/tjs/uj;->c(Lcom/byazt/tjs/tt;)Landroid/util/Pair;

    move-result-object v10

    const/4 v0, 0x0

    if-eqz v10, :cond_5

    .line 27
    iget-object v1, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/webkit/WebResourceResponse;

    if-eqz v1, :cond_5

    .line 28
    iget-object v2, v8, Lcom/byazt/tjs/uj;->uj:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/byazt/kj/c;

    .line 29
    iget-object v5, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/byazt/gqp/da;

    invoke-virtual {v4, v5}, Lcom/byazt/kj/c;->c(Lcom/byazt/gqp/da;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    return-object v0

    .line 30
    :cond_2
    invoke-direct {v8, v1}, Lcom/byazt/tjs/uj;->c(Landroid/webkit/WebResourceResponse;)Landroid/util/Pair;

    move-result-object v11

    if-nez v11, :cond_3

    return-object v0

    .line 31
    :cond_3
    iget-object v0, v8, Lcom/byazt/tjs/uj;->uj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/byazt/kj/c;

    .line 32
    iget-object v0, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Landroid/webkit/WebResourceResponse;

    iget-object v0, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Lcom/byazt/gqp/da;

    new-instance v7, Lcom/byazt/tjs/uj$3;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v13

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v11

    move-object v8, v7

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/byazt/tjs/uj$3;-><init>(Lcom/byazt/tjs/uj;Lcom/byazt/kj/c;Landroid/content/Context;Ljava/lang/String;Lcom/byazt/tjs/tt;Landroid/util/Pair;Landroid/util/Pair;)V

    invoke-virtual {v13, v9, v14, v15, v8}, Lcom/byazt/kj/c;->c(Lcom/byazt/tjs/tt;Landroid/webkit/WebResourceResponse;Lcom/byazt/gqp/da;Lcom/byazt/kj/c$c;)V

    move-object/from16 v8, p0

    goto :goto_1

    .line 33
    :cond_4
    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebResourceResponse;

    :cond_5
    return-object v0
.end method

.method public c(Landroid/webkit/WebView;Lcom/byazt/tjs/tt;Landroid/webkit/WebResourceResponse;)Landroid/webkit/WebResourceResponse;
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/byazt/tjs/uj;->uj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/kj/c;

    .line 23
    invoke-virtual {v2, p1}, Lcom/byazt/kj/c;->c(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    return-object p3

    .line 24
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/byazt/tjs/uj;->tt(Landroid/webkit/WebView;Lcom/byazt/tjs/tt;Landroid/webkit/WebResourceResponse;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/byazt/tjs/uj;->n:Ljava/util/HashMap;

    return-object v0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/tjs/tt;Landroid/webkit/WebResourceResponse;Lcom/byazt/gqp/da;Ljava/util/Map;Lcom/byazt/kj/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/byazt/tjs/tt;",
            "Landroid/webkit/WebResourceResponse;",
            "Lcom/byazt/gqp/da;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/kj/c;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-virtual {p7, p5}, Lcom/byazt/kj/c;->c(Lcom/byazt/gqp/da;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->j()I

    .line 36
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->j()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move-object v0, p7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 37
    invoke-virtual/range {v0 .. v6}, Lcom/byazt/kj/c;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/tjs/tt;Landroid/webkit/WebResourceResponse;Lcom/byazt/gqp/da;Ljava/util/Map;)V

    return-void

    :cond_1
    move-object v0, p7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 38
    invoke-virtual/range {v0 .. v6}, Lcom/byazt/kj/c;->tt(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/tjs/tt;Landroid/webkit/WebResourceResponse;Lcom/byazt/gqp/da;Ljava/util/Map;)V

    return-void
.end method

.method public c(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 96
    invoke-static {p2}, Lcom/byazt/nr/rh;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/byazt/tjs/uj;->tt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 98
    iget-object p1, p0, Lcom/byazt/tjs/uj;->tt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 99
    iget-object p1, p0, Lcom/byazt/tjs/uj;->uj:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/kj/c;

    .line 100
    invoke-virtual {v0, p2}, Lcom/byazt/kj/c;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/Runnable;)V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/byazt/tjs/uj;->ve:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/byazt/tjs/uj$1;

    invoke-direct {v1, p0, p1}, Lcom/byazt/tjs/uj$1;-><init>(Lcom/byazt/tjs/uj;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public tt(Landroid/webkit/WebView;Lcom/byazt/tjs/tt;Landroid/webkit/WebResourceResponse;)Landroid/webkit/WebResourceResponse;
    .locals 1

    if-nez p2, :cond_0

    return-object p3

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/byazt/tjs/tt;->tt()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p3

    :cond_1
    const-string v0, "get"

    .line 3
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ogz/sl;->os()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 5
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/tjs/uj;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/byazt/tjs/uj;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/tjs/tt;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object p2

    const-string p3, "Access-Control-Allow-Origin"

    const-string v0, "*"

    .line 7
    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 8
    :cond_2
    new-instance p1, Lcom/byazt/tjs/uj$2;

    invoke-direct {p1, p0, p2}, Lcom/byazt/tjs/uj$2;-><init>(Lcom/byazt/tjs/uj;Lcom/byazt/tjs/tt;)V

    invoke-virtual {p0, p1}, Lcom/byazt/tjs/uj;->c(Ljava/lang/Runnable;)V

    :cond_3
    return-object p3
.end method

.method public tt()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/tjs/uj;->tt:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public uj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/tjs/uj;->uj:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/tjs/uj;->uj:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/byazt/kj/c;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/byazt/kj/c;->ve()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/byazt/tjs/uj;->uj:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

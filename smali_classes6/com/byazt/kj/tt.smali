.class public Lcom/byazt/kj/tt;
.super Lcom/byazt/kj/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x9f,
        0xd
    }
.end annotation


# static fields
.field public static final x:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final da:Ljava/lang/String;

.field public i:J

.field public sl:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/kj/tt;->x:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/byazt/tjs/c;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/byazt/kj/c;-><init>(Lcom/byazt/tjs/c;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "index_censorship.json"

    .line 5
    .line 6
    iput-object p1, p0, Lcom/byazt/kj/tt;->da:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method private c([BILjava/io/File;)I
    .locals 6

    .line 83
    :try_start_0
    invoke-static {}, Lcom/byazt/hy/n;->c()Lcom/byazt/hy/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/hy/n;->tt()Lcom/byazt/hm/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/hm/c;->a()Lcom/byazt/gqp/t;

    move-result-object v0

    const-string v1, "multipart/form-data"

    .line 84
    invoke-static {v1}, Lcom/byazt/gqp/da;->c(Ljava/lang/String;)Lcom/byazt/gqp/da;

    move-result-object v1

    const-string v2, "file"

    .line 85
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-static {v1, p1, v2, v3}, Lcom/byazt/gqp/z;->c(Lcom/byazt/gqp/da;[BLjava/lang/String;Ljava/lang/String;)Lcom/byazt/gqp/z;

    move-result-object v1

    .line 87
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/ogz/sl;->iu()Ljava/lang/String;

    move-result-object v2

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "?aid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v4

    invoke-virtual {v4}, Lcom/byazt/omf/x;->rl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&device_platform=android&device_type=android&source_type=union"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    new-instance v4, Lcom/byazt/gqp/yp$c;

    invoke-direct {v4}, Lcom/byazt/gqp/yp$c;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/byazt/gqp/yp$c;->c(Ljava/lang/String;)Lcom/byazt/gqp/yp$c;

    move-result-object v2

    .line 90
    invoke-virtual {v2, v1}, Lcom/byazt/gqp/yp$c;->c(Lcom/byazt/gqp/z;)Lcom/byazt/gqp/yp$c;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lcom/byazt/gqp/yp$c;->tt()Lcom/byazt/gqp/yp;

    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Lcom/byazt/gqp/t;->c(Lcom/byazt/gqp/yp;)Lcom/byazt/gqp/tt;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/gqp/tt;->tt()Lcom/byazt/gqp/m;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/byazt/gqp/m;->ve()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 94
    invoke-virtual {v0}, Lcom/byazt/gqp/m;->a()Lcom/byazt/gqp/nu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/gqp/nu;->tt()Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    .line 96
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "msg"

    .line 97
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    const-string v0, "success"

    .line 98
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 99
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/kj/tt;->tt([BILjava/io/File;)I

    move-result p1

    return p1

    .line 100
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/kj/tt;->tt([BILjava/io/File;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception v0

    .line 101
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 102
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/kj/tt;->tt([BILjava/io/File;)I

    move-result p1

    return p1
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/byazt/kj/tt;->sl:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 80
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/byazt/tjs/uj;->tt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/byazt/kj/c;->tt:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/kj/tt;->sl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 81
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".lp_cache"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/byazt/kj/c;->tt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/kj/tt;Ljava/io/File;Ljava/lang/String;Landroid/content/Context;JJ)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p7}, Lcom/byazt/kj/tt;->c(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;JJ)V

    return-void
.end method

.method private c(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;JJ)V
    .locals 12

    move-object v11, p0

    .line 70
    :try_start_0
    invoke-static {p2}, Lcom/byazt/edv/c;->tt(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 73
    :cond_0
    sget-object v0, Lcom/byazt/tjs/uj;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lez v1, :cond_1

    .line 74
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_1
    if-nez v1, :cond_2

    .line 75
    invoke-static {p3}, Lcom/byazt/tjs/uj;->tt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/edv/c;->tt(Ljava/lang/String;)V

    .line 76
    :cond_2
    iget-object v2, v11, Lcom/byazt/kj/c;->tt:Ljava/lang/String;

    iget-object v3, v11, Lcom/byazt/kj/c;->ve:Ljava/lang/String;

    iget-wide v4, v11, Lcom/byazt/kj/tt;->i:J

    iget-object v6, v11, Lcom/byazt/kj/c;->sp:Ljava/lang/String;

    move-object v1, p0

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v1 .. v10}, Lcom/byazt/kj/tt;->c(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 77
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method private c(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 52
    :try_start_0
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-nez p2, :cond_0

    .line 53
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 54
    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 55
    iget-object p1, p0, Lcom/byazt/kj/c;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    .line 56
    :cond_0
    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 57
    iget-object p1, p0, Lcom/byazt/kj/c;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 58
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method private c([BI)[B
    .locals 0

    .line 78
    invoke-static {p1, p2}, Lcom/byazt/bzd/ve;->c([BI)[B

    move-result-object p1

    return-object p1
.end method

.method private tt([BILjava/io/File;)I
    .locals 0

    if-gtz p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/kj/tt;->c([BILjava/io/File;)I

    move-result p1

    return p1
.end method

.method private tt(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Lcom/byazt/edv/tt;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/byazt/kj/c;->a:Lorg/json/JSONObject;

    const-string v1, "html"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    iget-object v0, p0, Lcom/byazt/kj/c;->a:Lorg/json/JSONObject;

    const-string v1, "js"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    iget-object v0, p0, Lcom/byazt/kj/c;->a:Lorg/json/JSONObject;

    const-string v1, "css"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    iget-object v0, p0, Lcom/byazt/kj/c;->a:Lorg/json/JSONObject;

    const-string v1, "sub_pic"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 63
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/tjs/tt;Landroid/webkit/WebResourceResponse;Lcom/byazt/gqp/da;Ljava/util/Map;)V
    .locals 8
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
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-static {}, Lcom/byazt/tjs/uj;->ve()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 10
    invoke-virtual {p3}, Lcom/byazt/tjs/tt;->c()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-virtual {p5}, Lcom/byazt/gqp/da;->tt()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javascript"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "js"

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/byazt/nr/a;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 15
    iget-object v0, p0, Lcom/byazt/kj/c;->c:Lcom/byazt/tjs/c;

    invoke-interface {v0}, Lcom/byazt/tjs/c;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    iget-object v1, p0, Lcom/byazt/kj/c;->c:Lcom/byazt/tjs/c;

    invoke-interface {v1}, Lcom/byazt/tjs/c;->c()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x400

    new-array v2, v1, [B

    .line 19
    invoke-virtual {p4}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object p4

    .line 20
    :cond_2
    :try_start_0
    invoke-virtual {p4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v3, v6, :cond_3

    :goto_0
    if-ge v7, v1, :cond_2

    .line 21
    aget-byte v3, v2, v7

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 22
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [B

    .line 23
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v7, v2, :cond_4

    .line 24
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 25
    :cond_4
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/ogz/sl;->oz()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v6, 0x100000

    mul-long v2, v2, v6

    .line 26
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-long v6, p1

    cmp-long p1, v6, v2

    if-gtz p1, :cond_5

    .line 27
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v1, p0, Lcom/byazt/kj/c;->a:Lorg/json/JSONObject;

    invoke-virtual {p3}, Lcom/byazt/tjs/tt;->ve()Ljava/util/Map;

    move-result-object v6

    move-object v0, p0

    move-object v2, p2

    move-object v3, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/byazt/kj/tt;->c(Lorg/json/JSONObject;Ljava/lang/String;Lcom/byazt/gqp/da;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_5
    :try_start_1
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 30
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 31
    :try_start_2
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p4, :cond_6

    .line 32
    :try_start_3
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 33
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    return-void

    :goto_3
    if-eqz p4, :cond_7

    .line 34
    :try_start_4
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p2

    .line 35
    invoke-static {p2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 36
    :cond_7
    :goto_4
    throw p1

    :cond_8
    return-void
.end method

.method public c(Lcom/byazt/tjs/tt;Landroid/webkit/WebResourceResponse;Lcom/byazt/gqp/da;Lcom/byazt/kj/c$c;)V
    .locals 0

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 69
    invoke-interface {p4, p1, p2}, Lcom/byazt/kj/c$c;->c(ZLjava/util/Map;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    new-instance v1, Lcom/byazt/kj/tt$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/kj/tt$1;-><init>(Lcom/byazt/kj/tt;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "web_upload_start"

    invoke-virtual {v0, v1, p1}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJ)V
    .locals 13

    .line 4
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    new-instance v12, Lcom/byazt/kj/tt$2;

    move-object v1, v12

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v1 .. v11}, Lcom/byazt/kj/tt$2;-><init>(Lcom/byazt/kj/tt;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJ)V

    const-string v1, "web_upload_finish"

    invoke-virtual {v0, v12, v1}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lorg/json/JSONObject;Ljava/lang/String;Lcom/byazt/gqp/da;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/byazt/gqp/da;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p2, "html"

    const-string p7, "css"

    const-string v0, "js"

    .line 37
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "name"

    .line 38
    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "url"

    .line 39
    invoke-virtual {v1, p4, p5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p6, :cond_0

    const-string p4, "request_headers"

    .line 40
    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5, p6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, p4, p5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz p3, :cond_6

    .line 41
    invoke-virtual {p3}, Lcom/byazt/gqp/da;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    const-string p4, "image"

    .line 42
    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    const-string p2, "sub_pic"

    .line 43
    invoke-direct {p0, v1, p1, p2}, Lcom/byazt/kj/tt;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void

    .line 44
    :cond_1
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_5

    const-string p4, "javascript"

    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p3, p7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 46
    invoke-direct {p0, v1, p1, p7}, Lcom/byazt/kj/tt;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void

    .line 47
    :cond_3
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 48
    invoke-direct {p0, v1, p1, p2}, Lcom/byazt/kj/tt;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_4
    return-void

    .line 49
    :cond_5
    :goto_0
    invoke-direct {p0, v1, p1, v0}, Lcom/byazt/kj/tt;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void

    :cond_6
    const-string p2, "other"

    .line 50
    invoke-direct {p0, v1, p1, p2}, Lcom/byazt/kj/tt;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 51
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Landroid/webkit/WebView;)Z
    .locals 1

    if-eqz p1, :cond_2

    .line 5
    sget-object p1, Lcom/byazt/kj/tt;->x:Ljava/util/concurrent/ConcurrentLinkedDeque;

    iget-object v0, p0, Lcom/byazt/kj/c;->tt:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/byazt/kj/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/byazt/kj/c;->c:Lcom/byazt/tjs/c;

    .line 8
    invoke-interface {p1}, Lcom/byazt/tjs/c;->tt()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public c(Lcom/byazt/gqp/da;)Z
    .locals 3

    .line 64
    :try_start_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->v()Ljava/util/Set;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/byazt/gqp/da;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/byazt/gqp/da;->tt()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 68
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public n()V
    .locals 18

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, v9, Lcom/byazt/kj/tt;->i:J

    .line 8
    .line 9
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-direct {v9, v4}, Lcom/byazt/kj/tt;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/kj/tt;->uj()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->y()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x1

    .line 33
    if-ne v0, v1, :cond_1

    .line 34
    .line 35
    invoke-static {v4}, Lcom/byazt/nr/rh;->uj(Landroid/content/Context;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-static {v4}, Lcom/byazt/tjs/uj;->tt(Landroid/content/Context;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const-wide/16 v5, -0x1

    .line 47
    .line 48
    const-wide/16 v7, -0x1

    .line 49
    .line 50
    move-object/from16 v1, p0

    .line 51
    .line 52
    invoke-direct/range {v1 .. v8}, Lcom/byazt/kj/tt;->c(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;JJ)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    invoke-static {}, Lcom/byazt/tjs/uj;->ve()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_11

    .line 61
    .line 62
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    .line 67
    .line 68
    .line 69
    move-result-wide v5

    .line 70
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    .line 71
    .line 72
    .line 73
    move-result-wide v7

    .line 74
    sub-long/2addr v5, v7

    .line 75
    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    .line 76
    .line 77
    .line 78
    move-result-wide v7

    .line 79
    add-long/2addr v7, v5

    .line 80
    const/4 v2, 0x0

    .line 81
    :try_start_0
    iget-object v0, v9, Lcom/byazt/kj/c;->a:Lorg/json/JSONObject;

    .line 82
    .line 83
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 88
    .line 89
    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    invoke-virtual {v10}, Lcom/byazt/ogz/sl;->j()I

    .line 98
    .line 99
    .line 100
    move-result v10
    :try_end_0
    .catch Lcom/byazt/kj/uj; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 101
    const-string v11, "index_censorship.json"

    .line 102
    .line 103
    const/4 v12, 0x0

    .line 104
    if-eq v10, v1, :cond_3

    .line 105
    .line 106
    :try_start_1
    new-instance v10, Ljava/io/ByteArrayInputStream;

    .line 107
    .line 108
    invoke-direct {v10, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 109
    .line 110
    .line 111
    const-wide/32 v13, -0x80000000

    .line 112
    .line 113
    .line 114
    invoke-static {v10, v3, v11, v13, v14}, Lcom/byazt/edv/c;->c(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;J)Z

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    if-eqz v10, :cond_2

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_2
    new-instance v0, Lcom/byazt/kj/uj;

    .line 122
    .line 123
    invoke-direct {v0, v12}, Lcom/byazt/kj/uj;-><init>(Z)V

    .line 124
    .line 125
    .line 126
    throw v0

    .line 127
    :cond_3
    :goto_0
    invoke-static {v4}, Lcom/byazt/tjs/uj;->tt(Landroid/content/Context;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v10

    .line 131
    new-instance v13, Ljava/io/File;

    .line 132
    .line 133
    invoke-direct {v13, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    .line 137
    .line 138
    .line 139
    move-result v14

    .line 140
    if-nez v14, :cond_4

    .line 141
    .line 142
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 143
    .line 144
    .line 145
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-object v10, v9, Lcom/byazt/kj/c;->tt:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v10, "-compress.zip"

    .line 164
    .line 165
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 173
    .line 174
    .line 175
    move-result-object v13

    .line 176
    invoke-virtual {v13}, Lcom/byazt/ogz/sl;->j()I

    .line 177
    .line 178
    .line 179
    new-instance v13, Ljava/io/File;

    .line 180
    .line 181
    invoke-direct {v13, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/byazt/kj/uj; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 182
    .line 183
    .line 184
    :try_start_2
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-eqz v2, :cond_5

    .line 189
    .line 190
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 191
    .line 192
    .line 193
    :cond_5
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    .line 194
    .line 195
    .line 196
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 201
    .line 202
    .line 203
    move-result-object v10

    .line 204
    invoke-virtual {v10}, Lcom/byazt/ogz/sl;->j()I

    .line 205
    .line 206
    .line 207
    move-result v10

    .line 208
    if-ne v10, v1, :cond_7

    .line 209
    .line 210
    new-instance v10, Ljava/util/HashMap;

    .line 211
    .line 212
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    iget-object v0, v9, Lcom/byazt/kj/c;->c:Lcom/byazt/tjs/c;

    .line 219
    .line 220
    invoke-interface {v0}, Lcom/byazt/tjs/c;->c()Ljava/util/HashMap;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {v0, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-nez v0, :cond_6

    .line 232
    .line 233
    iget-object v0, v9, Lcom/byazt/kj/c;->c:Lcom/byazt/tjs/c;

    .line 234
    .line 235
    invoke-interface {v0}, Lcom/byazt/tjs/c;->c()Ljava/util/HashMap;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-static {v0, v2}, Lcom/byazt/edv/tt;->c(Ljava/util/HashMap;Ljava/lang/String;)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-eqz v0, :cond_6

    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_6
    new-instance v0, Lcom/byazt/kj/uj;

    .line 247
    .line 248
    invoke-direct {v0, v12}, Lcom/byazt/kj/uj;-><init>(Z)V

    .line 249
    .line 250
    .line 251
    throw v0

    .line 252
    :cond_7
    invoke-direct {v9, v3, v2}, Lcom/byazt/kj/tt;->tt(Ljava/lang/String;Ljava/lang/String;)Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-eqz v0, :cond_e

    .line 257
    .line 258
    :goto_1
    invoke-static {v2}, Lcom/byazt/edv/c;->c(Ljava/lang/String;)[B

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    new-instance v10, Ljava/io/File;

    .line 263
    .line 264
    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v10}, Ljava/io/File;->length()J

    .line 268
    .line 269
    .line 270
    move-result-wide v10
    :try_end_2
    .catch Lcom/byazt/kj/uj; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 271
    long-to-int v2, v10

    .line 272
    int-to-long v10, v2

    .line 273
    :try_start_3
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-virtual {v2}, Lcom/byazt/ogz/sl;->r()I

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    int-to-long v14, v2

    .line 282
    const-wide/32 v16, 0x100000

    .line 283
    .line 284
    .line 285
    mul-long v14, v14, v16

    .line 286
    .line 287
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    invoke-virtual {v2}, Lcom/byazt/ogz/sl;->r()I

    .line 292
    .line 293
    .line 294
    cmp-long v2, v10, v14

    .line 295
    .line 296
    if-gtz v2, :cond_d

    .line 297
    .line 298
    sub-long v16, v7, v16

    .line 299
    .line 300
    cmp-long v2, v10, v16

    .line 301
    .line 302
    if-gtz v2, :cond_c

    .line 303
    .line 304
    long-to-int v2, v10

    .line 305
    invoke-direct {v9, v0, v2}, Lcom/byazt/kj/tt;->c([BI)[B

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    if-eqz v0, :cond_a

    .line 310
    .line 311
    array-length v2, v0

    .line 312
    int-to-long v5, v2

    .line 313
    cmp-long v2, v5, v14

    .line 314
    .line 315
    if-lez v2, :cond_8

    .line 316
    .line 317
    goto :goto_2

    .line 318
    :cond_8
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    invoke-virtual {v2}, Lcom/byazt/ogz/sl;->s()I

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    invoke-direct {v9, v0, v2, v13}, Lcom/byazt/kj/tt;->c([BILjava/io/File;)I

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    const/16 v5, 0xc8

    .line 331
    .line 332
    if-ne v2, v5, :cond_9

    .line 333
    .line 334
    new-instance v2, Lcom/byazt/kj/uj;

    .line 335
    .line 336
    array-length v0, v0

    .line 337
    int-to-long v5, v0

    .line 338
    invoke-direct {v2, v1, v5, v6}, Lcom/byazt/kj/uj;-><init>(ZJ)V

    .line 339
    .line 340
    .line 341
    throw v2

    .line 342
    :cond_9
    new-instance v1, Lcom/byazt/kj/uj;

    .line 343
    .line 344
    array-length v0, v0

    .line 345
    int-to-long v5, v0

    .line 346
    invoke-direct {v1, v12, v5, v6}, Lcom/byazt/kj/uj;-><init>(ZJ)V

    .line 347
    .line 348
    .line 349
    throw v1

    .line 350
    :cond_a
    :goto_2
    new-instance v2, Lcom/byazt/kj/uj;

    .line 351
    .line 352
    if-nez v0, :cond_b

    .line 353
    .line 354
    const-wide/16 v5, 0x0

    .line 355
    .line 356
    goto :goto_3

    .line 357
    :cond_b
    array-length v0, v0

    .line 358
    int-to-long v5, v0

    .line 359
    :goto_3
    invoke-direct {v2, v12, v1, v5, v6}, Lcom/byazt/kj/uj;-><init>(ZZJ)V

    .line 360
    .line 361
    .line 362
    throw v2

    .line 363
    :cond_c
    new-instance v0, Lcom/byazt/kj/uj;

    .line 364
    .line 365
    invoke-direct {v0, v12}, Lcom/byazt/kj/uj;-><init>(Z)V

    .line 366
    .line 367
    .line 368
    throw v0

    .line 369
    :cond_d
    new-instance v0, Lcom/byazt/kj/uj;

    .line 370
    .line 371
    invoke-direct {v0, v12}, Lcom/byazt/kj/uj;-><init>(Z)V

    .line 372
    .line 373
    .line 374
    throw v0
    :try_end_3
    .catch Lcom/byazt/kj/uj; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    move-wide v5, v10

    .line 377
    move-object v2, v13

    .line 378
    goto :goto_5

    .line 379
    :catch_1
    move-exception v0

    .line 380
    move-wide v5, v10

    .line 381
    move-object v2, v13

    .line 382
    goto :goto_7

    .line 383
    :cond_e
    :try_start_4
    new-instance v0, Lcom/byazt/kj/uj;

    .line 384
    .line 385
    invoke-direct {v0, v12}, Lcom/byazt/kj/uj;-><init>(Z)V

    .line 386
    .line 387
    .line 388
    throw v0
    :try_end_4
    .catch Lcom/byazt/kj/uj; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 389
    :catch_2
    move-exception v0

    .line 390
    move-object v2, v13

    .line 391
    goto :goto_4

    .line 392
    :catch_3
    move-exception v0

    .line 393
    move-object v2, v13

    .line 394
    goto :goto_6

    .line 395
    :catch_4
    move-exception v0

    .line 396
    :goto_4
    const-wide/16 v5, 0x0

    .line 397
    .line 398
    :goto_5
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 399
    .line 400
    .line 401
    goto :goto_9

    .line 402
    :catch_5
    move-exception v0

    .line 403
    :goto_6
    const-wide/16 v5, 0x0

    .line 404
    .line 405
    :goto_7
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 406
    .line 407
    .line 408
    :try_start_5
    iget-boolean v0, v0, Lcom/byazt/kj/uj;->c:Z

    .line 409
    .line 410
    if-eqz v0, :cond_10

    .line 411
    .line 412
    :goto_8
    sget-object v0, Lcom/byazt/kj/tt;->x:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 413
    .line 414
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    .line 415
    .line 416
    .line 417
    move-result v1

    .line 418
    if-lez v1, :cond_f

    .line 419
    .line 420
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollLast()Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    goto :goto_8

    .line 424
    :cond_f
    iget-object v1, v9, Lcom/byazt/kj/c;->tt:Ljava/lang/String;

    .line 425
    .line 426
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 427
    .line 428
    .line 429
    move-result v1

    .line 430
    if-nez v1, :cond_10

    .line 431
    .line 432
    iget-object v1, v9, Lcom/byazt/kj/c;->tt:Ljava/lang/String;

    .line 433
    .line 434
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->push(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 435
    .line 436
    .line 437
    :catch_6
    :cond_10
    :goto_9
    move-object/from16 v1, p0

    .line 438
    .line 439
    invoke-direct/range {v1 .. v8}, Lcom/byazt/kj/tt;->c(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;JJ)V

    .line 440
    .line 441
    .line 442
    :cond_11
    return-void
.end method

.method public tt(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/tjs/tt;Landroid/webkit/WebResourceResponse;Lcom/byazt/gqp/da;Ljava/util/Map;)V
    .locals 9
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
            ">;)V"
        }
    .end annotation

    .line 4
    :try_start_0
    invoke-static {}, Lcom/byazt/tjs/uj;->ve()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-direct {p0, p1}, Lcom/byazt/kj/tt;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p3}, Lcom/byazt/tjs/tt;->c()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual {p5}, Lcom/byazt/gqp/da;->tt()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "javascript"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "js"

    .line 9
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 12
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lcom/byazt/nr/a;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 13
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 17
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->oz()I

    .line 18
    invoke-virtual {p4}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object p4

    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->oz()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p4, p1, v5, v0, v1}, Lcom/byazt/edv/c;->c(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 19
    iget-object v2, p0, Lcom/byazt/kj/c;->a:Lorg/json/JSONObject;

    invoke-virtual {p3}, Lcom/byazt/tjs/tt;->ve()Ljava/util/Map;

    move-result-object v7

    move-object v1, p0

    move-object v3, p2

    move-object v4, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/byazt/kj/tt;->c(Lorg/json/JSONObject;Ljava/lang/String;Lcom/byazt/gqp/da;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 20
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public uj()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ve()V
    .locals 3

    .line 1
    sget-object v0, Lcom/byazt/kj/tt;->x:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/kj/c;->tt:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/kj/c;->c:Lcom/byazt/tjs/c;

    .line 12
    .line 13
    new-instance v1, Lcom/byazt/kj/tt$3;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/byazt/kj/tt$3;-><init>(Lcom/byazt/kj/tt;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Lcom/byazt/tjs/c;->c(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/byazt/kj/c;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/kj/c;->c:Lcom/byazt/tjs/c;

    .line 33
    .line 34
    new-instance v1, Lcom/byazt/kj/tt$4;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/byazt/kj/tt$4;-><init>(Lcom/byazt/kj/tt;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v1}, Lcom/byazt/tjs/c;->c(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

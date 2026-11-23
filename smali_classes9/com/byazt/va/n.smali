.class public Lcom/byazt/va/n;
.super Lcom/byazt/va/uj;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x74,
        0x2e
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/gqp/z;


# direct methods
.method public constructor <init>(Lcom/byazt/gqp/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/va/uj;-><init>(Lcom/byazt/gqp/t;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/byazt/va/n;->c:Lcom/byazt/gqp/z;

    .line 6
    .line 7
    return-void
.end method

.method private c(Lcom/byazt/gqp/nu;)Lcom/byazt/gqp/da;
    .locals 0

    .line 67
    :try_start_0
    invoke-virtual {p1}, Lcom/byazt/gqp/nu;->n()Lcom/byazt/gqp/da;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/va/n;Lcom/byazt/gqp/nu;)Lcom/byazt/gqp/da;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/va/n;->c(Lcom/byazt/gqp/nu;)Lcom/byazt/gqp/da;

    move-result-object p0

    return-object p0
.end method

.method private c(Lcom/byazt/gqp/da;)Ljava/nio/charset/Charset;
    .locals 1

    if-eqz p1, :cond_0

    .line 65
    :try_start_0
    sget-object v0, Lcom/byazt/na/da;->c:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Lcom/byazt/gqp/da;->c(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lcom/byazt/na/da;->c:Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 66
    :catch_0
    sget-object p1, Lcom/byazt/na/da;->c:Ljava/nio/charset/Charset;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/va/n;Lcom/byazt/gqp/da;)Ljava/nio/charset/Charset;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/va/n;->c(Lcom/byazt/gqp/da;)Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0
.end method

.method private c(Lcom/byazt/hm/tt;Lcom/byazt/gqp/m;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->x()Lcom/byazt/gqp/sl;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/byazt/hm/tt;->c(Lcom/byazt/gqp/sl;)V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/va/n;Lcom/byazt/hm/tt;Lcom/byazt/gqp/m;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/byazt/va/n;->c(Lcom/byazt/hm/tt;Lcom/byazt/gqp/m;)V

    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/hm/tt;
    .locals 14

    const-string v0, "content-type"

    .line 27
    :try_start_0
    new-instance v1, Lcom/byazt/gqp/yp$c;

    invoke-direct {v1}, Lcom/byazt/gqp/yp$c;-><init>()V

    .line 28
    iget-object v2, p0, Lcom/byazt/va/uj;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "PostExecutor"

    if-eqz v2, :cond_0

    :try_start_1
    const-string v0, "execute: Url is Empty"

    .line 29
    invoke-static {v3, v0}, Lcom/byazt/lf/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/byazt/hm/tt;

    const/4 v5, 0x0

    const/16 v6, 0x1388

    const-string v7, "URL_NULL_MSG"

    const/4 v8, 0x0

    const-string v9, "URL_NULL_BODY"

    const-wide/16 v10, 0x1

    const-wide/16 v12, 0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Lcom/byazt/hm/tt;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    return-object v0

    .line 31
    :cond_0
    iget-object v2, p0, Lcom/byazt/va/uj;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/byazt/gqp/yp$c;->c(Ljava/lang/String;)Lcom/byazt/gqp/yp$c;

    .line 32
    iget-object v2, p0, Lcom/byazt/va/n;->c:Lcom/byazt/gqp/z;

    if-nez v2, :cond_1

    const-string v0, "RequestBody is null, content type is not support!!"

    .line 33
    invoke-static {v3, v0}, Lcom/byazt/lf/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/byazt/hm/tt;

    const/4 v5, 0x0

    const/16 v6, 0x1388

    const-string v7, "BODY_NULL_MSG"

    const/4 v8, 0x0

    const-string v9, "BODY_NULL_BODY"

    const-wide/16 v10, 0x1

    const-wide/16 v12, 0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Lcom/byazt/hm/tt;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    return-object v0

    .line 35
    :cond_1
    invoke-virtual {p0, v1}, Lcom/byazt/va/uj;->c(Lcom/byazt/gqp/yp$c;)V

    .line 36
    invoke-virtual {p0}, Lcom/byazt/va/uj;->tt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/gqp/yp$c;->c(Ljava/lang/Object;)Lcom/byazt/gqp/yp$c;

    .line 37
    iget-object v2, p0, Lcom/byazt/va/n;->c:Lcom/byazt/gqp/z;

    .line 38
    invoke-virtual {v1, v2}, Lcom/byazt/gqp/yp$c;->c(Lcom/byazt/gqp/z;)Lcom/byazt/gqp/yp$c;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/byazt/gqp/yp$c;->tt()Lcom/byazt/gqp/yp;

    move-result-object v1

    .line 40
    iget-object v2, p0, Lcom/byazt/va/uj;->ve:Lcom/byazt/gqp/t;

    invoke-virtual {v2, v1}, Lcom/byazt/gqp/t;->c(Lcom/byazt/gqp/yp;)Lcom/byazt/gqp/tt;

    move-result-object v1

    .line 41
    invoke-interface {v1}, Lcom/byazt/gqp/tt;->tt()Lcom/byazt/gqp/m;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 42
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 43
    invoke-virtual {v1}, Lcom/byazt/gqp/m;->sp()Lcom/byazt/gqp/a;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    .line 44
    :goto_0
    invoke-virtual {v2}, Lcom/byazt/gqp/a;->c()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 45
    invoke-virtual {v2, v3}, Lcom/byazt/gqp/a;->c(I)Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-virtual {v2, v3}, Lcom/byazt/gqp/a;->tt(I)Ljava/lang/String;

    move-result-object v5

    .line 47
    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 48
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v5, :cond_2

    const-string v4, ""

    goto :goto_1

    .line 49
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    :cond_4
    invoke-static {v6}, Lcom/byazt/lf/c;->c(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 51
    invoke-virtual {v1}, Lcom/byazt/gqp/m;->a()Lcom/byazt/gqp/nu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/gqp/nu;->uj()[B

    move-result-object v0

    .line 52
    new-instance v12, Lcom/byazt/hm/tt;

    invoke-virtual {v1}, Lcom/byazt/gqp/m;->uj()Z

    move-result v3

    invoke-virtual {v1}, Lcom/byazt/gqp/m;->ve()I

    move-result v4

    invoke-virtual {v1}, Lcom/byazt/gqp/m;->n()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    .line 53
    invoke-virtual {v1}, Lcom/byazt/gqp/m;->tt()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/byazt/gqp/m;->c()J

    move-result-wide v10

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/byazt/hm/tt;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 54
    invoke-virtual {v12, v0}, Lcom/byazt/hm/tt;->c([B)V

    goto :goto_2

    .line 55
    :cond_5
    iget-boolean v0, p0, Lcom/byazt/va/uj;->sp:Z

    if-eqz v0, :cond_6

    .line 56
    invoke-virtual {v1}, Lcom/byazt/gqp/m;->a()Lcom/byazt/gqp/nu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/gqp/nu;->uj()[B

    move-result-object v0

    .line 57
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/byazt/gqp/m;->a()Lcom/byazt/gqp/nu;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/byazt/va/n;->c(Lcom/byazt/gqp/nu;)Lcom/byazt/gqp/da;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/byazt/va/n;->c(Lcom/byazt/gqp/da;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v7, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 58
    new-instance v12, Lcom/byazt/hm/tt;

    invoke-virtual {v1}, Lcom/byazt/gqp/m;->uj()Z

    move-result v3

    invoke-virtual {v1}, Lcom/byazt/gqp/m;->ve()I

    move-result v4

    invoke-virtual {v1}, Lcom/byazt/gqp/m;->n()Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-virtual {v1}, Lcom/byazt/gqp/m;->tt()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/byazt/gqp/m;->c()J

    move-result-wide v10

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/byazt/hm/tt;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 60
    invoke-virtual {v12, v0}, Lcom/byazt/hm/tt;->c([B)V

    goto :goto_2

    .line 61
    :cond_6
    new-instance v12, Lcom/byazt/hm/tt;

    invoke-virtual {v1}, Lcom/byazt/gqp/m;->uj()Z

    move-result v3

    invoke-virtual {v1}, Lcom/byazt/gqp/m;->ve()I

    move-result v4

    invoke-virtual {v1}, Lcom/byazt/gqp/m;->n()Ljava/lang/String;

    move-result-object v5

    .line 62
    invoke-virtual {v1}, Lcom/byazt/gqp/m;->a()Lcom/byazt/gqp/nu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/gqp/nu;->tt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/byazt/gqp/m;->tt()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/byazt/gqp/m;->c()J

    move-result-wide v10

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/byazt/hm/tt;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 63
    :goto_2
    invoke-direct {p0, v12, v1}, Lcom/byazt/va/n;->c(Lcom/byazt/hm/tt;Lcom/byazt/gqp/m;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v12

    :cond_7
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    .line 64
    new-instance v11, Lcom/byazt/hm/tt;

    const/4 v2, 0x0

    const/16 v3, 0x1389

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "BODY_NULL_BODY"

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x1

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/byazt/hm/tt;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    return-object v11
.end method

.method public c(Lcom/byazt/mh/c;)V
    .locals 2

    .line 12
    :try_start_0
    new-instance v0, Lcom/byazt/gqp/yp$c;

    invoke-direct {v0}, Lcom/byazt/gqp/yp$c;-><init>()V

    .line 13
    iget-object v1, p0, Lcom/byazt/va/uj;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Url is Empty"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lcom/byazt/mh/c;->c(Lcom/byazt/va/uj;Ljava/io/IOException;)V

    return-void

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/byazt/va/uj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/byazt/gqp/yp$c;->c(Ljava/lang/String;)Lcom/byazt/gqp/yp$c;

    .line 16
    iget-object v1, p0, Lcom/byazt/va/n;->c:Lcom/byazt/gqp/z;

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    .line 17
    new-instance v0, Ljava/io/IOException;

    const-string v1, "RequestBody is null, content type is not support!!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lcom/byazt/mh/c;->c(Lcom/byazt/va/uj;Ljava/io/IOException;)V

    :cond_1
    return-void

    .line 18
    :cond_2
    invoke-virtual {p0, v0}, Lcom/byazt/va/uj;->c(Lcom/byazt/gqp/yp$c;)V

    .line 19
    invoke-virtual {p0}, Lcom/byazt/va/uj;->tt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/gqp/yp$c;->c(Ljava/lang/Object;)Lcom/byazt/gqp/yp$c;

    .line 20
    iget-object v1, p0, Lcom/byazt/va/n;->c:Lcom/byazt/gqp/z;

    .line 21
    invoke-virtual {v0, v1}, Lcom/byazt/gqp/yp$c;->c(Lcom/byazt/gqp/z;)Lcom/byazt/gqp/yp$c;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/byazt/gqp/yp$c;->tt()Lcom/byazt/gqp/yp;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/byazt/va/uj;->ve:Lcom/byazt/gqp/t;

    invoke-virtual {v1, v0}, Lcom/byazt/gqp/t;->c(Lcom/byazt/gqp/yp;)Lcom/byazt/gqp/tt;

    move-result-object v0

    new-instance v1, Lcom/byazt/va/n$1;

    invoke-direct {v1, p0, p1}, Lcom/byazt/va/n$1;-><init>(Lcom/byazt/va/n;Lcom/byazt/mh/c;)V

    .line 24
    invoke-interface {v0, v1}, Lcom/byazt/gqp/tt;->c(Lcom/byazt/gqp/ve;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 25
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 26
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v1}, Lcom/byazt/mh/c;->c(Lcom/byazt/va/uj;Ljava/io/IOException;)V

    return-void
.end method

.method public c(Ljava/lang/String;[B)V
    .locals 0

    .line 11
    invoke-static {p1}, Lcom/byazt/gqp/da;->c(Ljava/lang/String;)Lcom/byazt/gqp/da;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/byazt/gqp/z;->c(Lcom/byazt/gqp/da;[B)Lcom/byazt/gqp/z;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/va/n;->c:Lcom/byazt/gqp/z;

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/byazt/gqp/n$c;

    invoke-direct {v0}, Lcom/byazt/gqp/n$c;-><init>()V

    if-eqz p1, :cond_0

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/byazt/gqp/n$c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/gqp/n$c;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/gqp/n$c;->c()Lcom/byazt/gqp/n;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/va/n;->c:Lcom/byazt/gqp/z;

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "{}"

    :goto_0
    const-string v0, "application/json; charset=utf-8"

    .line 5
    invoke-static {v0}, Lcom/byazt/gqp/da;->c(Ljava/lang/String;)Lcom/byazt/gqp/da;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/byazt/gqp/z;->c(Lcom/byazt/gqp/da;Ljava/lang/String;)Lcom/byazt/gqp/z;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/va/n;->c:Lcom/byazt/gqp/z;

    return-void
.end method

.method public n()Lcom/byazt/gqp/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/va/n;->c:Lcom/byazt/gqp/z;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, "{}"

    .line 8
    .line 9
    :cond_0
    const-string v0, "application/json; charset=utf-8"

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/gqp/da;->c(Ljava/lang/String;)Lcom/byazt/gqp/da;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0, p1}, Lcom/byazt/gqp/z;->c(Lcom/byazt/gqp/da;Ljava/lang/String;)Lcom/byazt/gqp/z;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/byazt/va/n;->c:Lcom/byazt/gqp/z;

    .line 20
    .line 21
    return-void
.end method

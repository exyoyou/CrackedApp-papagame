.class public Lcom/byazt/va/tt;
.super Lcom/byazt/va/uj;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x74,
        0xd
    }
.end annotation


# instance fields
.field public c:Ljava/io/File;

.field public tt:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/byazt/gqp/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/va/uj;-><init>(Lcom/byazt/gqp/t;)V

    return-void
.end method

.method public constructor <init>(Lcom/byazt/gqp/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/va/uj;-><init>(Lcom/byazt/gqp/t;)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/byazt/va/uj;->c(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p3, p4}, Lcom/byazt/va/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "Accept-Ranges"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/CharSequence;

    .line 8
    .line 9
    const-string v1, "bytes"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return v2

    .line 19
    :cond_0
    const-string v0, "accept-ranges"

    .line 20
    .line 21
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/CharSequence;

    .line 26
    .line 27
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    return v2

    .line 34
    :cond_1
    const-string v0, "Content-Range"

    .line 35
    .line 36
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    const-string v0, "content-range"

    .line 49
    .line 50
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    move-object v0, p0

    .line 55
    check-cast v0, Ljava/lang/String;

    .line 56
    .line 57
    :cond_2
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_3

    .line 64
    .line 65
    return v2

    .line 66
    :cond_3
    const/4 p0, 0x0

    .line 67
    return p0
.end method

.method public static synthetic c(Ljava/util/Map;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/byazt/va/tt;->sp(Ljava/util/Map;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic c(Lcom/byazt/va/tt;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/byazt/va/tt;->n()V

    return-void
.end method

.method private n()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/va/tt;->c:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catchall_0
    :try_start_1
    iget-object v0, p0, Lcom/byazt/va/tt;->tt:Ljava/io/File;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    .line 10
    .line 11
    :catchall_1
    return-void
.end method

.method private static sp(Ljava/util/Map;)J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .line 1
    const-string v0, "content-length"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/lang/String;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, "Content-Length"

    .line 17
    .line 18
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Ljava/lang/String;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p0, 0x0

    .line 32
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const-wide/16 v1, 0x0

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    return-wide v1

    .line 41
    :cond_2
    if-eqz p0, :cond_3

    .line 42
    .line 43
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 48
    .line 49
    .line 50
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :catchall_0
    :cond_3
    return-wide v1
.end method

.method public static synthetic tt(Ljava/util/Map;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/va/tt;->a(Ljava/util/Map;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic ve(Ljava/util/Map;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/va/tt;->x(Ljava/util/Map;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static x(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "Content-Encoding"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/CharSequence;

    .line 8
    .line 9
    const-string v0, "gzip"

    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method


# virtual methods
.method public c()Lcom/byazt/hm/tt;
    .locals 27

    move-object/from16 v1, p0

    .line 30
    iget-object v0, v1, Lcom/byazt/va/tt;->c:Ljava/io/File;

    if-eqz v0, :cond_1c

    iget-object v4, v1, Lcom/byazt/va/tt;->tt:Ljava/io/File;

    if-nez v4, :cond_0

    goto/16 :goto_f

    .line 31
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/byazt/va/tt;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-eqz v0, :cond_1

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 33
    new-instance v0, Lcom/byazt/hm/tt;

    const/4 v7, 0x1

    const/16 v8, 0xc8

    const-string v9, "Success"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    move-wide v12, v14

    invoke-direct/range {v6 .. v15}, Lcom/byazt/hm/tt;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 34
    iget-object v2, v1, Lcom/byazt/va/tt;->c:Ljava/io/File;

    invoke-virtual {v0, v2}, Lcom/byazt/hm/tt;->c(Ljava/io/File;)V

    return-object v0

    .line 35
    :cond_1
    iget-object v0, v1, Lcom/byazt/va/tt;->tt:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-gez v0, :cond_2

    move-wide v6, v4

    .line 36
    :cond_2
    new-instance v0, Lcom/byazt/gqp/yp$c;

    invoke-direct {v0}, Lcom/byazt/gqp/yp$c;-><init>()V

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/va/uj;->tt()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/byazt/gqp/yp$c;->c(Ljava/lang/Object;)Lcom/byazt/gqp/yp$c;

    .line 38
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "bytes="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "Range"

    invoke-virtual {v1, v10, v8}, Lcom/byazt/va/uj;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v8, v1, Lcom/byazt/va/uj;->a:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v10, "DownloadExecutor"

    if-eqz v8, :cond_3

    const-string v0, "execute: Url is Empty"

    .line 40
    invoke-static {v10, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/byazt/hm/tt;

    const/4 v12, 0x0

    const/16 v13, -0x9

    const-string v14, "url is Empty"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/byazt/hm/tt;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    return-object v0

    .line 42
    :cond_3
    :try_start_0
    iget-object v8, v1, Lcom/byazt/va/uj;->a:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/byazt/gqp/yp$c;->c(Ljava/lang/String;)Lcom/byazt/gqp/yp$c;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    invoke-virtual {v1, v0}, Lcom/byazt/va/uj;->c(Lcom/byazt/gqp/yp$c;)V

    .line 44
    invoke-virtual {v0}, Lcom/byazt/gqp/yp$c;->c()Lcom/byazt/gqp/yp$c;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/byazt/gqp/yp$c;->tt()Lcom/byazt/gqp/yp;

    move-result-object v0

    .line 46
    :try_start_1
    iget-object v8, v1, Lcom/byazt/va/uj;->ve:Lcom/byazt/gqp/t;

    invoke-virtual {v8, v0}, Lcom/byazt/gqp/t;->c(Lcom/byazt/gqp/yp;)Lcom/byazt/gqp/tt;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/gqp/tt;->tt()Lcom/byazt/gqp/m;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 47
    invoke-virtual {v0}, Lcom/byazt/gqp/m;->uj()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 48
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 49
    invoke-virtual {v0}, Lcom/byazt/gqp/m;->sp()Lcom/byazt/gqp/a;

    move-result-object v11

    if-eqz v11, :cond_4

    const/4 v12, 0x0

    .line 50
    :goto_0
    invoke-virtual {v11}, Lcom/byazt/gqp/a;->c()I

    move-result v13

    if-ge v12, v13, :cond_4

    .line 51
    invoke-virtual {v11, v12}, Lcom/byazt/gqp/a;->c(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12}, Lcom/byazt/gqp/a;->tt(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 52
    :cond_4
    new-instance v15, Lcom/byazt/hm/tt;

    invoke-virtual {v0}, Lcom/byazt/gqp/m;->uj()Z

    move-result v12

    invoke-virtual {v0}, Lcom/byazt/gqp/m;->ve()I

    move-result v13

    invoke-virtual {v0}, Lcom/byazt/gqp/m;->n()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    invoke-virtual {v0}, Lcom/byazt/gqp/m;->tt()J

    move-result-wide v17

    invoke-virtual {v0}, Lcom/byazt/gqp/m;->c()J

    move-result-wide v19

    move-object v11, v15

    move-object v2, v15

    move-object v15, v8

    invoke-direct/range {v11 .. v20}, Lcom/byazt/hm/tt;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 53
    invoke-virtual {v0}, Lcom/byazt/gqp/m;->a()Lcom/byazt/gqp/nu;

    move-result-object v11

    invoke-virtual {v11}, Lcom/byazt/gqp/nu;->c()J

    move-result-wide v11

    cmp-long v13, v11, v4

    if-gtz v13, :cond_5

    .line 54
    invoke-static {v8}, Lcom/byazt/va/tt;->sp(Ljava/util/Map;)J

    move-result-wide v11

    .line 55
    :cond_5
    iget-object v13, v1, Lcom/byazt/va/tt;->tt:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v13

    .line 56
    invoke-static {v8}, Lcom/byazt/va/tt;->a(Ljava/util/Map;)Z

    move-result v15

    if-eqz v15, :cond_7

    add-long/2addr v11, v13

    const-string v4, "Content-Range"

    .line 57
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 58
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "bytes "

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v13, 0x1

    sub-long v13, v11, v13

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-static {v4, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v5

    const/4 v9, -0x1

    if-ne v5, v9, :cond_6

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "execute: The Content-Range Header is invalid Assume["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] vs Real["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], please remove the temporary file ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/byazt/va/tt;->tt:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/byazt/lf/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-direct/range {p0 .. p0}, Lcom/byazt/va/tt;->n()V

    .line 63
    new-instance v0, Lcom/byazt/hm/tt;

    const/4 v12, 0x0

    const/4 v13, -0x7

    const-string v14, "realRangeValue failed"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/byazt/hm/tt;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    return-object v0

    :cond_6
    const-wide/16 v3, 0x0

    goto :goto_1

    :cond_7
    move-wide v3, v4

    :goto_1
    cmp-long v5, v11, v3

    if-lez v5, :cond_9

    .line 64
    iget-object v3, v1, Lcom/byazt/va/tt;->tt:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v1, Lcom/byazt/va/tt;->tt:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v5, v3, v11

    if-nez v5, :cond_9

    .line 65
    iget-object v0, v1, Lcom/byazt/va/tt;->tt:Ljava/io/File;

    iget-object v3, v1, Lcom/byazt/va/tt;->c:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 66
    iget-object v0, v1, Lcom/byazt/va/tt;->c:Ljava/io/File;

    invoke-virtual {v2, v0}, Lcom/byazt/hm/tt;->c(Ljava/io/File;)V

    return-object v2

    :cond_8
    const-string v0, "Rename fail"

    .line 67
    invoke-static {v10, v0}, Lcom/byazt/lf/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/byazt/hm/tt;

    const/4 v12, 0x0

    const/4 v13, -0x6

    const-string v14, "rename failed"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/byazt/hm/tt;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :cond_9
    const/4 v3, 0x0

    .line 69
    :try_start_2
    new-instance v4, Ljava/io/RandomAccessFile;

    iget-object v5, v1, Lcom/byazt/va/tt;->tt:Ljava/io/File;

    const-string v9, "rw"

    invoke-direct {v4, v5, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v15, :cond_a

    .line 70
    :try_start_3
    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    move-wide v13, v6

    goto :goto_3

    :cond_a
    const-wide/16 v13, 0x0

    .line 71
    invoke-virtual {v4, v13, v14}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_0
    move-object v4, v3

    :catchall_1
    :goto_2
    const-wide/16 v13, 0x0

    .line 72
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Lcom/byazt/gqp/m;->a()Lcom/byazt/gqp/nu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/gqp/nu;->ve()Ljava/io/InputStream;

    move-result-object v3

    .line 73
    invoke-static {v8}, Lcom/byazt/va/tt;->x(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_b

    instance-of v0, v3, Ljava/util/zip/GZIPInputStream;

    if-nez v0, :cond_b

    .line 74
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    move-object v3, v0

    :cond_b
    const/16 v0, 0x4000

    :try_start_5
    new-array v0, v0, [B

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    :goto_4
    move-object/from16 v20, v10

    rsub-int v10, v5, 0x4000

    .line 75
    invoke-virtual {v3, v0, v5, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    move-object/from16 v22, v3

    const/4 v3, -0x1

    if-eq v10, v3, :cond_f

    add-int/2addr v5, v10

    move-object/from16 v19, v4

    int-to-long v3, v10

    add-long/2addr v8, v3

    const-wide/16 v3, 0x4000

    .line 76
    :try_start_6
    rem-long v3, v8, v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const-wide/16 v17, 0x0

    cmp-long v10, v3, v17

    if-eqz v10, :cond_d

    sub-long v3, v11, v6

    cmp-long v10, v8, v3

    if-nez v10, :cond_c

    goto :goto_5

    :cond_c
    const/4 v3, 0x0

    goto :goto_6

    :cond_d
    :goto_5
    const/4 v3, 0x1

    :goto_6
    if-eqz v3, :cond_e

    move-object/from16 v4, v19

    .line 77
    :try_start_7
    invoke-virtual {v4, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v3, 0x0

    .line 78
    invoke-virtual {v4, v0, v3, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    move-wide/from16 v24, v8

    int-to-long v8, v5

    add-long/2addr v13, v8

    const/4 v5, 0x0

    goto :goto_7

    :cond_e
    move-wide/from16 v24, v8

    move-object/from16 v4, v19

    :goto_7
    move-object/from16 v10, v20

    move-object/from16 v3, v22

    move-wide/from16 v8, v24

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v4, v19

    :goto_8
    move-object/from16 v26, v0

    move-object/from16 v3, v22

    goto/16 :goto_c

    :cond_f
    if-eqz v10, :cond_10

    .line 79
    invoke-virtual {v4, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v3, 0x0

    .line 80
    invoke-virtual {v4, v0, v3, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_9

    :catchall_3
    move-exception v0

    goto :goto_8

    :cond_10
    const/4 v3, 0x0

    :goto_9
    const-wide/16 v8, 0x0

    if-eqz v15, :cond_11

    cmp-long v0, v6, v8

    if-nez v0, :cond_12

    .line 81
    :cond_11
    iget-object v0, v1, Lcom/byazt/va/tt;->tt:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v11

    :cond_12
    cmp-long v0, v11, v8

    if-lez v0, :cond_14

    .line 82
    iget-object v0, v1, Lcom/byazt/va/tt;->tt:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/byazt/va/tt;->tt:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v0, v5, v11

    if-nez v0, :cond_14

    .line 83
    iget-object v0, v1, Lcom/byazt/va/tt;->tt:Ljava/io/File;

    iget-object v3, v1, Lcom/byazt/va/tt;->c:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 84
    iget-object v0, v1, Lcom/byazt/va/tt;->c:Ljava/io/File;

    invoke-virtual {v2, v0}, Lcom/byazt/hm/tt;->c(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 85
    :try_start_8
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 86
    :catchall_4
    :try_start_9
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    return-object v2

    .line 87
    :cond_13
    :try_start_a
    new-instance v0, Lcom/byazt/hm/tt;

    const/4 v6, 0x0

    const/4 v7, -0x5

    const-string v8, "rename failed"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v14}, Lcom/byazt/hm/tt;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 88
    :try_start_b
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 89
    :catchall_6
    :try_start_c
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :catchall_7
    return-object v0

    .line 90
    :cond_14
    :try_start_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " tempFile.length() == fileSize is"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/byazt/va/tt;->tt:Ljava/io/File;

    .line 91
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v2, v5, v11

    if-nez v2, :cond_15

    const/4 v2, 0x1

    goto :goto_a

    :cond_15
    const/4 v2, 0x0

    :goto_a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v20

    .line 92
    invoke-static {v0, v8}, Lcom/byazt/lf/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v0, Lcom/byazt/hm/tt;

    const/4 v6, 0x0

    const/4 v7, -0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v14}, Lcom/byazt/hm/tt;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 94
    :try_start_e
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 95
    :catchall_8
    :try_start_f
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    :catchall_9
    return-object v0

    :catchall_a
    move-exception v0

    move-object/from16 v22, v3

    goto :goto_b

    :catchall_b
    move-exception v0

    :goto_b
    move-object/from16 v26, v0

    :goto_c
    :try_start_10
    const-string v19, "Error occured when FileRequest.parseHttpResponse"

    .line 96
    invoke-static/range {v26 .. v26}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    if-nez v15, :cond_16

    .line 97
    invoke-direct/range {p0 .. p0}, Lcom/byazt/va/tt;->n()V

    .line 98
    :cond_16
    new-instance v0, Lcom/byazt/hm/tt;

    const/16 v17, 0x0

    const/16 v18, -0x3

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v26}, Lcom/byazt/hm/tt;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJLjava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_e

    if-eqz v3, :cond_17

    .line 99
    :try_start_11
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    .line 100
    :catchall_c
    :cond_17
    :try_start_12
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_d

    :catchall_d
    return-object v0

    :catchall_e
    move-exception v0

    if-eqz v3, :cond_18

    .line 101
    :try_start_13
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_f

    .line 102
    :catchall_f
    :cond_18
    :try_start_14
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_10

    .line 103
    :catchall_10
    :try_start_15
    throw v0

    :cond_19
    if-nez v0, :cond_1a

    const/4 v2, -0x2

    const/4 v5, -0x2

    goto :goto_d

    .line 104
    :cond_1a
    invoke-virtual {v0}, Lcom/byazt/gqp/m;->ve()I

    move-result v2

    move v5, v2

    :goto_d
    if-nez v0, :cond_1b

    const-string v0, "ok response is null"

    goto :goto_e

    .line 105
    :cond_1b
    invoke-virtual {v0}, Lcom/byazt/gqp/m;->n()Ljava/lang/String;

    move-result-object v0

    :goto_e
    move-object v6, v0

    .line 106
    new-instance v0, Lcom/byazt/hm/tt;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lcom/byazt/hm/tt;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object/from16 v23, v0

    .line 107
    invoke-static/range {v23 .. v23}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 108
    invoke-direct/range {p0 .. p0}, Lcom/byazt/va/tt;->n()V

    .line 109
    new-instance v0, Lcom/byazt/hm/tt;

    const/4 v14, 0x0

    const/4 v15, -0x1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    move-object v13, v0

    invoke-direct/range {v13 .. v23}, Lcom/byazt/hm/tt;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJLjava/lang/Throwable;)V

    return-object v0

    :catch_1
    move-object v0, v10

    const-string v5, "Url is not a valid HTTP or HTTPS URL"

    .line 110
    invoke-static {v0, v5}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v0, Lcom/byazt/hm/tt;

    const/4 v3, 0x0

    const/4 v4, -0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/byazt/hm/tt;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    return-object v0

    :cond_1c
    :goto_f
    const/4 v3, 0x0

    .line 112
    new-instance v0, Lcom/byazt/hm/tt;

    const/4 v13, 0x0

    const/16 v14, -0xa

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "file == null: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/byazt/va/tt;->c:Ljava/io/File;

    if-nez v4, :cond_1d

    const/4 v4, 0x1

    goto :goto_10

    :cond_1d
    const/4 v4, 0x0

    :goto_10
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " tempFile == null: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/byazt/va/tt;->tt:Ljava/io/File;

    if-nez v4, :cond_1e

    const/4 v3, 0x1

    :cond_1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v21}, Lcom/byazt/hm/tt;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    return-object v0
.end method

.method public c(Lcom/byazt/mh/c;)V
    .locals 13

    .line 10
    iget-object v0, p0, Lcom/byazt/va/tt;->c:Ljava/io/File;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/byazt/va/tt;->tt:Ljava/io/File;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 11
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/va/tt;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 13
    new-instance v0, Lcom/byazt/hm/tt;

    const/4 v4, 0x1

    const/16 v5, 0xc8

    const-string v6, "Success"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    move-wide v9, v11

    invoke-direct/range {v3 .. v12}, Lcom/byazt/hm/tt;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 14
    iget-object v1, p0, Lcom/byazt/va/tt;->c:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/byazt/hm/tt;->c(Ljava/io/File;)V

    .line 15
    invoke-virtual {p1, p0, v0}, Lcom/byazt/mh/c;->c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V

    return-void

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/byazt/va/tt;->tt:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    move-wide v1, v3

    .line 17
    :goto_0
    new-instance v0, Lcom/byazt/gqp/yp$c;

    invoke-direct {v0}, Lcom/byazt/gqp/yp$c;-><init>()V

    .line 18
    invoke-virtual {p0}, Lcom/byazt/va/uj;->tt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/byazt/gqp/yp$c;->c(Ljava/lang/Object;)Lcom/byazt/gqp/yp$c;

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bytes="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Range"

    invoke-virtual {p0, v4, v3}, Lcom/byazt/va/uj;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v3, p0, Lcom/byazt/va/uj;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 21
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Url is Empty"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lcom/byazt/mh/c;->c(Lcom/byazt/va/uj;Ljava/io/IOException;)V

    return-void

    .line 22
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/byazt/va/uj;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/byazt/gqp/yp$c;->c(Ljava/lang/String;)Lcom/byazt/gqp/yp$c;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    invoke-virtual {p0, v0}, Lcom/byazt/va/uj;->c(Lcom/byazt/gqp/yp$c;)V

    .line 24
    invoke-virtual {v0}, Lcom/byazt/gqp/yp$c;->c()Lcom/byazt/gqp/yp$c;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/byazt/gqp/yp$c;->tt()Lcom/byazt/gqp/yp;

    move-result-object v0

    .line 26
    iget-object v3, p0, Lcom/byazt/va/uj;->ve:Lcom/byazt/gqp/t;

    invoke-virtual {v3, v0}, Lcom/byazt/gqp/t;->c(Lcom/byazt/gqp/yp;)Lcom/byazt/gqp/tt;

    move-result-object v0

    new-instance v3, Lcom/byazt/va/tt$1;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/byazt/va/tt$1;-><init>(Lcom/byazt/va/tt;Lcom/byazt/mh/c;J)V

    .line 27
    invoke-interface {v0, v3}, Lcom/byazt/gqp/tt;->c(Lcom/byazt/gqp/ve;)V

    return-void

    .line 28
    :catch_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Url is not a valid HTTP or HTTPS URL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lcom/byazt/mh/c;->c(Lcom/byazt/va/uj;Ljava/io/IOException;)V

    return-void

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    .line 29
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File info is null, please exec setFileInfo(String dir, String fileName)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lcom/byazt/mh/c;->c(Lcom/byazt/va/uj;Ljava/io/IOException;)V

    :cond_5
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 8
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/byazt/va/tt;->c:Ljava/io/File;

    .line 9
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".temp"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/byazt/va/tt;->tt:Ljava/io/File;

    return-void
.end method

.class public Lcom/byazt/va/ve;
.super Lcom/byazt/va/uj;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x74,
        0x36
    }
.end annotation


# static fields
.field public static final c:Lcom/byazt/gqp/c;

.field public static final tt:Lcom/byazt/gqp/c;


# instance fields
.field public da:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z

.field public x:Lcom/byazt/gqp/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/gqp/c$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/gqp/c$c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/byazt/gqp/c$c;->c()Lcom/byazt/gqp/c$c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/byazt/gqp/c$c;->tt()Lcom/byazt/gqp/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/byazt/va/ve;->c:Lcom/byazt/gqp/c;

    .line 15
    .line 16
    new-instance v0, Lcom/byazt/gqp/c$c;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/byazt/gqp/c$c;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/byazt/gqp/c$c;->tt()Lcom/byazt/gqp/c;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/byazt/va/ve;->tt:Lcom/byazt/gqp/c;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/byazt/gqp/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/va/uj;-><init>(Lcom/byazt/gqp/t;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/byazt/va/ve;->c:Lcom/byazt/gqp/c;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/byazt/va/ve;->x:Lcom/byazt/gqp/c;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/byazt/va/ve;->i:Z

    .line 10
    .line 11
    new-instance p1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/byazt/va/ve;->da:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/hm/tt;
    .locals 14

    const-string v0, "UTF-8"

    .line 34
    :try_start_0
    new-instance v1, Lcom/byazt/gqp/yp$c;

    invoke-direct {v1}, Lcom/byazt/gqp/yp$c;-><init>()V

    .line 35
    iget-boolean v2, p0, Lcom/byazt/va/ve;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ""

    if-eqz v2, :cond_0

    .line 36
    :try_start_1
    iget-object v0, p0, Lcom/byazt/va/uj;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/byazt/gqp/yp$c;->c(Ljava/lang/String;)Lcom/byazt/gqp/yp$c;

    goto/16 :goto_2

    .line 37
    :cond_0
    new-instance v2, Lcom/byazt/gqp/sp$c;

    invoke-direct {v2}, Lcom/byazt/gqp/sp$c;-><init>()V

    .line 38
    iget-object v4, p0, Lcom/byazt/va/uj;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 39
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/byazt/gqp/sp$c;->c(Ljava/lang/String;)Lcom/byazt/gqp/sp$c;

    .line 40
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/byazt/gqp/sp$c;->tt(Ljava/lang/String;)Lcom/byazt/gqp/sp$c;

    .line 41
    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v5

    .line 42
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "/"

    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    .line 44
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 45
    :cond_1
    invoke-virtual {v2, v5}, Lcom/byazt/gqp/sp$c;->ve(Ljava/lang/String;)Lcom/byazt/gqp/sp$c;

    .line 46
    :cond_2
    invoke-virtual {v4}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 47
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 48
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 49
    iget-object v7, p0, Lcom/byazt/va/ve;->da:Ljava/util/Map;

    invoke-virtual {v4, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 50
    :cond_3
    iget-object v4, p0, Lcom/byazt/va/ve;->da:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 51
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 52
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 53
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 54
    invoke-static {v6, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_5

    move-object v5, v3

    :cond_5
    invoke-static {v5, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lcom/byazt/gqp/sp$c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/gqp/sp$c;

    goto :goto_1

    .line 55
    :cond_6
    invoke-virtual {v2}, Lcom/byazt/gqp/sp$c;->tt()Lcom/byazt/gqp/sp;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/byazt/gqp/yp$c;->c(Lcom/byazt/gqp/sp;)Lcom/byazt/gqp/yp$c;

    .line 56
    :goto_2
    invoke-virtual {p0, v1}, Lcom/byazt/va/uj;->c(Lcom/byazt/gqp/yp$c;)V

    .line 57
    iget-object v0, p0, Lcom/byazt/va/ve;->x:Lcom/byazt/gqp/c;

    invoke-virtual {v1, v0}, Lcom/byazt/gqp/yp$c;->c(Lcom/byazt/gqp/c;)Lcom/byazt/gqp/yp$c;

    .line 58
    invoke-virtual {p0}, Lcom/byazt/va/uj;->tt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/byazt/gqp/yp$c;->c(Ljava/lang/Object;)Lcom/byazt/gqp/yp$c;

    .line 59
    invoke-virtual {v1}, Lcom/byazt/gqp/yp$c;->c()Lcom/byazt/gqp/yp$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/gqp/yp$c;->tt()Lcom/byazt/gqp/yp;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/byazt/va/uj;->ve:Lcom/byazt/gqp/t;

    invoke-virtual {v1, v0}, Lcom/byazt/gqp/t;->c(Lcom/byazt/gqp/yp;)Lcom/byazt/gqp/tt;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Lcom/byazt/gqp/tt;->tt()Lcom/byazt/gqp/m;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 62
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 63
    invoke-virtual {v0}, Lcom/byazt/gqp/m;->sp()Lcom/byazt/gqp/a;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v2, 0x0

    .line 64
    :goto_3
    invoke-virtual {v1}, Lcom/byazt/gqp/a;->c()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 65
    invoke-virtual {v1, v2}, Lcom/byazt/gqp/a;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2}, Lcom/byazt/gqp/a;->tt(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 66
    :cond_7
    invoke-virtual {v0}, Lcom/byazt/gqp/m;->a()Lcom/byazt/gqp/nu;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_4

    .line 67
    :cond_8
    invoke-virtual {v1}, Lcom/byazt/gqp/nu;->tt()Ljava/lang/String;

    move-result-object v3

    :goto_4
    move-object v9, v3

    .line 68
    new-instance v1, Lcom/byazt/hm/tt;

    invoke-virtual {v0}, Lcom/byazt/gqp/m;->uj()Z

    move-result v5

    invoke-virtual {v0}, Lcom/byazt/gqp/m;->ve()I

    move-result v6

    invoke-virtual {v0}, Lcom/byazt/gqp/m;->n()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/byazt/gqp/m;->tt()J

    move-result-wide v10

    invoke-virtual {v0}, Lcom/byazt/gqp/m;->c()J

    move-result-wide v12

    move-object v4, v1

    invoke-direct/range {v4 .. v13}, Lcom/byazt/hm/tt;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    .line 69
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lcom/byazt/mh/c;)V
    .locals 8

    const-string v0, "UTF-8"

    .line 3
    :try_start_0
    new-instance v1, Lcom/byazt/gqp/yp$c;

    invoke-direct {v1}, Lcom/byazt/gqp/yp$c;-><init>()V

    .line 4
    iget-boolean v2, p0, Lcom/byazt/va/ve;->i:Z

    if-eqz v2, :cond_0

    .line 5
    iget-object v0, p0, Lcom/byazt/va/uj;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/byazt/gqp/yp$c;->c(Ljava/lang/String;)Lcom/byazt/gqp/yp$c;

    goto/16 :goto_2

    .line 6
    :cond_0
    new-instance v2, Lcom/byazt/gqp/sp$c;

    invoke-direct {v2}, Lcom/byazt/gqp/sp$c;-><init>()V

    .line 7
    iget-object v3, p0, Lcom/byazt/va/uj;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/byazt/gqp/sp$c;->c(Ljava/lang/String;)Lcom/byazt/gqp/sp$c;

    .line 9
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/byazt/gqp/sp$c;->tt(Ljava/lang/String;)Lcom/byazt/gqp/sp$c;

    .line 10
    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "/"

    .line 12
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    .line 13
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 14
    :cond_1
    invoke-virtual {v2, v4}, Lcom/byazt/gqp/sp$c;->ve(Ljava/lang/String;)Lcom/byazt/gqp/sp$c;

    .line 15
    :cond_2
    invoke-virtual {v3}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 16
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 17
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 18
    iget-object v6, p0, Lcom/byazt/va/ve;->da:Ljava/util/Map;

    invoke-virtual {v3, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 19
    :cond_3
    iget-object v3, p0, Lcom/byazt/va/ve;->da:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 21
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 22
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 23
    invoke-static {v5, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v4, :cond_5

    const-string v4, ""

    :cond_5
    invoke-static {v4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lcom/byazt/gqp/sp$c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/gqp/sp$c;

    goto :goto_1

    .line 24
    :cond_6
    invoke-virtual {v2}, Lcom/byazt/gqp/sp$c;->tt()Lcom/byazt/gqp/sp;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/byazt/gqp/yp$c;->c(Lcom/byazt/gqp/sp;)Lcom/byazt/gqp/yp$c;

    .line 25
    :goto_2
    invoke-virtual {p0, v1}, Lcom/byazt/va/uj;->c(Lcom/byazt/gqp/yp$c;)V

    .line 26
    iget-object v0, p0, Lcom/byazt/va/ve;->x:Lcom/byazt/gqp/c;

    invoke-virtual {v1, v0}, Lcom/byazt/gqp/yp$c;->c(Lcom/byazt/gqp/c;)Lcom/byazt/gqp/yp$c;

    .line 27
    invoke-virtual {p0}, Lcom/byazt/va/uj;->tt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/byazt/gqp/yp$c;->c(Ljava/lang/Object;)Lcom/byazt/gqp/yp$c;

    .line 28
    invoke-virtual {v1}, Lcom/byazt/gqp/yp$c;->c()Lcom/byazt/gqp/yp$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/gqp/yp$c;->tt()Lcom/byazt/gqp/yp;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/byazt/va/uj;->ve:Lcom/byazt/gqp/t;

    invoke-virtual {v1, v0}, Lcom/byazt/gqp/t;->c(Lcom/byazt/gqp/yp;)Lcom/byazt/gqp/tt;

    move-result-object v0

    new-instance v1, Lcom/byazt/va/ve$1;

    invoke-direct {v1, p0, p1}, Lcom/byazt/va/ve$1;-><init>(Lcom/byazt/va/ve;Lcom/byazt/mh/c;)V

    .line 30
    invoke-interface {v0, v1}, Lcom/byazt/gqp/tt;->c(Lcom/byazt/gqp/ve;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 31
    invoke-static {}, Lcom/byazt/lf/n;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 32
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_7
    if-eqz p1, :cond_8

    .line 33
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v1}, Lcom/byazt/mh/c;->c(Lcom/byazt/va/uj;Ljava/io/IOException;)V

    :cond_8
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "GetExecutor"

    const-string p2, "name cannot be null !!!"

    .line 1
    invoke-static {p1, p2}, Lcom/byazt/lf/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/byazt/va/ve;->da:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

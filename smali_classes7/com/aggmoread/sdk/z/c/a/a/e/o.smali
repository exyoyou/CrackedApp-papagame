.class public Lcom/aggmoread/sdk/z/c/a/a/e/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile c:Lcom/aggmoread/sdk/z/c/a/a/e/o;


# instance fields
.field private volatile a:Lcom/aggmoread/sdk/z/c/a/a/e/u/c;

.field private volatile b:Lcom/aggmoread/sdk/z/c/a/a/e/u/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/aggmoread/sdk/z/c/a/a/e/o;
    .locals 2

    .line 1
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/e/o;->c:Lcom/aggmoread/sdk/z/c/a/a/e/o;

    if-nez v0, :cond_1

    const-class v0, Lcom/aggmoread/sdk/z/c/a/a/e/o;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/e/o;->c:Lcom/aggmoread/sdk/z/c/a/a/e/o;

    if-nez v1, :cond_0

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/e/o;

    invoke-direct {v1}, Lcom/aggmoread/sdk/z/c/a/a/e/o;-><init>()V

    sput-object v1, Lcom/aggmoread/sdk/z/c/a/a/e/o;->c:Lcom/aggmoread/sdk/z/c/a/a/e/o;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/e/o;->c:Lcom/aggmoread/sdk/z/c/a/a/e/o;

    return-object v0
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/e/o;)Lcom/aggmoread/sdk/z/c/a/a/e/u/c;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/e/o;->a:Lcom/aggmoread/sdk/z/c/a/a/e/u/c;

    return-object p0
.end method

.method private a(Landroid/os/Handler$Callback;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/o;->d(Landroid/os/Handler$Callback;)V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/e/o;Landroid/os/Handler$Callback;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/o;->a(Landroid/os/Handler$Callback;)V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/e/o;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/o;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    .line 6
    const-string v0, "gdt_hp"

    const-string v1, "configs"

    const-string v2, "data"

    const-string v3, "ver_bl"

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v4, Lcom/aggmoread/sdk/z/c/a/a/e/u/c;

    invoke-direct {v4}, Lcom/aggmoread/sdk/z/c/a/a/e/u/c;-><init>()V

    iput-object v4, p0, Lcom/aggmoread/sdk/z/c/a/a/e/o;->a:Lcom/aggmoread/sdk/z/c/a/a/e/u/c;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/e/u/a;

    invoke-direct {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/u/a;-><init>()V

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/u/a;->a(Ljava/util/List;)V

    :cond_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v4, v2, :cond_4

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/u/a;->a(Ljava/util/Map;)V

    :cond_5
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/e/o;->a:Lcom/aggmoread/sdk/z/c/a/a/e/u/c;

    iput-object v0, p1, Lcom/aggmoread/sdk/z/c/a/a/e/u/c;->a:Lcom/aggmoread/sdk/z/c/a/a/e/u/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pr err "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ampp_tag"

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    return-void
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/c/a/a/e/o;)Lcom/aggmoread/sdk/z/c/a/a/e/u/b;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/aggmoread/sdk/z/c/a/a/e/o;->b:Lcom/aggmoread/sdk/z/c/a/a/e/u/b;

    return-object p0
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/c/a/a/e/o;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/o;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 10

    .line 5
    const-string v0, "n_init"

    const-string v1, "un_init"

    const-string v2, "configs"

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Lcom/aggmoread/sdk/z/c/a/a/e/u/b;

    invoke-direct {v3}, Lcom/aggmoread/sdk/z/c/a/a/e/u/b;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_0

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    iget-object v6, v3, Lcom/aggmoread/sdk/z/c/a/a/e/u/b;->a:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    iget-object v2, v3, Lcom/aggmoread/sdk/z/c/a/a/e/u/b;->b:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iput-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/e/o;->b:Lcom/aggmoread/sdk/z/c/a/a/e/u/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pr err "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ampp_tag"

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_4
    return-void
.end method

.method private d(Landroid/os/Handler$Callback;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public b()Lcom/aggmoread/sdk/z/c/a/a/e/u/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/e/o;->b:Lcom/aggmoread/sdk/z/c/a/a/e/u/b;

    return-object v0
.end method

.method public b(Landroid/os/Handler$Callback;)V
    .locals 4

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/k;->a()Lcom/aggmoread/sdk/z/c/a/a/e/k;

    move-result-object v2

    new-instance v3, Lcom/aggmoread/sdk/z/c/a/a/e/o$a;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/o$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/e/o;JLandroid/os/Handler$Callback;)V

    invoke-virtual {v2, p1, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/k;->a(Landroid/os/Handler$Callback;Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()Lcom/aggmoread/sdk/z/c/a/a/e/u/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/e/o;->a:Lcom/aggmoread/sdk/z/c/a/a/e/u/c;

    return-object v0
.end method

.method public c(Landroid/os/Handler$Callback;)V
    .locals 3

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/e/o$b;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/o$b;-><init>(Lcom/aggmoread/sdk/z/c/a/a/e/o;Landroid/os/Handler$Callback;J)V

    invoke-static {v2}, Lcom/aggmoread/sdk/z/c/a/a/e/q;->c(Ljava/lang/Runnable;)V

    return-void
.end method

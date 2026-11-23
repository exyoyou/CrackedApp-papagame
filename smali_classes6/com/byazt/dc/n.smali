.class public Lcom/byazt/dc/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x80f,
        0x2e
    }
.end annotation


# direct methods
.method private static a(Ljava/lang/String;)Ljava/util/function/Function;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "adapter_dex"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/byazt/xiv/c;

    .line 8
    .line 9
    invoke-interface {v0, p0}, Lcom/byazt/xiv/c;->getDexPluginStrategy(Ljava/lang/String;)Lcom/byazt/xiv/ve;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_0
    invoke-static {p0}, Lcom/byazt/xiv/n;->c(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_1
    invoke-interface {v0}, Lcom/byazt/xiv/ve;->getManager()Ljava/util/function/Function;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "adapter_dex"

    .line 2
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/xiv/c;

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Lcom/byazt/xiv/c;->getAdnStatusMap()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 4
    :cond_1
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 6
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_2
    return-object v1
.end method

.method private static c(Ljava/lang/String;I)Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 15
    invoke-static {p0}, Lcom/byazt/dc/n;->a(Ljava/lang/String;)Ljava/util/function/Function;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 16
    :try_start_0
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object p1

    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p1

    invoke-static {p0, p1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Ljava/lang/String;II)Ljava/util/function/Function;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x4e22

    const/16 v1, 0x4e23

    const/16 v2, 0x4e24

    const/16 v3, 0x4e21

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 17
    :try_start_0
    invoke-static {p0, v2}, Lcom/byazt/dc/n;->c(Ljava/lang/String;I)Ljava/util/function/Function;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_4

    .line 18
    invoke-static {p0, v1}, Lcom/byazt/dc/n;->c(Ljava/lang/String;I)Ljava/util/function/Function;

    move-result-object p0

    return-object p0

    .line 19
    :pswitch_2
    invoke-static {p0, v0}, Lcom/byazt/dc/n;->c(Ljava/lang/String;I)Ljava/util/function/Function;

    move-result-object p0

    return-object p0

    .line 20
    :pswitch_3
    invoke-static {p0, v1}, Lcom/byazt/dc/n;->c(Ljava/lang/String;I)Ljava/util/function/Function;

    move-result-object p0

    return-object p0

    :pswitch_4
    const/16 p1, 0x4e26

    .line 21
    invoke-static {p0, p1}, Lcom/byazt/dc/n;->c(Ljava/lang/String;I)Ljava/util/function/Function;

    move-result-object p0

    return-object p0

    :pswitch_5
    const/4 p1, 0x4

    const/16 v1, 0x4e25

    if-ne p2, p1, :cond_1

    .line 22
    invoke-static {p0, v1}, Lcom/byazt/dc/n;->c(Ljava/lang/String;I)Ljava/util/function/Function;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p1, 0x3

    if-ne p2, p1, :cond_2

    .line 23
    invoke-static {p0, v3}, Lcom/byazt/dc/n;->c(Ljava/lang/String;I)Ljava/util/function/Function;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p1, 0x5

    if-ne p2, p1, :cond_3

    .line 24
    invoke-static {p0, v0}, Lcom/byazt/dc/n;->c(Ljava/lang/String;I)Ljava/util/function/Function;

    move-result-object p0

    return-object p0

    .line 25
    :cond_3
    invoke-static {p0, v1}, Lcom/byazt/dc/n;->c(Ljava/lang/String;I)Ljava/util/function/Function;

    move-result-object p0

    return-object p0

    :pswitch_6
    const/16 p1, 0x4e27

    .line 26
    invoke-static {p0, p1}, Lcom/byazt/dc/n;->c(Ljava/lang/String;I)Ljava/util/function/Function;

    move-result-object p0

    return-object p0

    .line 27
    :pswitch_7
    invoke-static {p0, v2}, Lcom/byazt/dc/n;->c(Ljava/lang/String;I)Ljava/util/function/Function;

    move-result-object p0

    return-object p0

    .line 28
    :pswitch_8
    invoke-static {p0, v3}, Lcom/byazt/dc/n;->c(Ljava/lang/String;I)Ljava/util/function/Function;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static c()V
    .locals 2

    .line 29
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->or()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-static {}, Lcom/byazt/xiv/n;->n()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    const-string v0, "thread_service"

    .line 31
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/qp;

    new-instance v1, Lcom/byazt/dc/n$1;

    invoke-direct {v1}, Lcom/byazt/dc/n$1;-><init>()V

    invoke-interface {v0, v1}, Lcom/byazt/dna/qp;->executeFastTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static c(Lcom/byazt/xiv/ve;)V
    .locals 10

    const-string v0, "adn_version"

    const-string v1, "com.byted.mixed"

    .line 35
    :try_start_0
    invoke-static {}, Lcom/byazt/xiv/n;->ve()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 36
    :cond_1
    invoke-interface {p0}, Lcom/byazt/xiv/ve;->getInitBridge()Ljava/util/function/Function;

    move-result-object v2

    if-eqz v2, :cond_2

    return-void

    .line 37
    :cond_2
    invoke-interface {p0}, Lcom/byazt/xiv/ve;->getAdnName()Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    .line 39
    :cond_3
    invoke-interface {p0}, Lcom/byazt/xiv/ve;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-void

    .line 41
    :cond_4
    invoke-interface {p0}, Lcom/byazt/xiv/ve;->getAdnVersionListKey()Ljava/lang/String;

    move-result-object v4

    .line 42
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    return-void

    .line 43
    :cond_5
    invoke-interface {p0}, Lcom/byazt/xiv/ve;->getAdnVersion()Ljava/lang/String;

    move-result-object v5

    .line 44
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "dex_status"

    if-eqz v6, :cond_6

    const/16 p0, 0x64

    .line 45
    :try_start_1
    invoke-static {v2, v7, p0}, Lcom/byazt/xiv/n;->c(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 46
    :cond_6
    invoke-static {v1}, Lcom/byazt/bzd/u;->sp(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 47
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 48
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 49
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 50
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_d

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 52
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_8

    .line 53
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v4, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_8
    :goto_1
    if-eqz v4, :cond_c

    .line 54
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 55
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_b

    .line 57
    :try_start_2
    invoke-static {}, Lcom/byazt/xiv/n;->ve()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 58
    invoke-static {v1}, Lcom/byazt/bzd/u;->i(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    .line 60
    :cond_9
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 61
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 62
    invoke-static {v0}, Ln0/b;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 63
    invoke-static {v0}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/byazt/xiv/ve;->saveManager(Ljava/util/function/Function;)V

    const/16 p0, 0x1f4

    .line 64
    invoke-static {v2, v7, p0}, Lcom/byazt/xiv/n;->c(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    return-void

    :catch_0
    const/16 p0, 0x190

    .line 65
    :try_start_3
    invoke-static {v2, v7, p0}, Lcom/byazt/xiv/n;->c(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_b
    return-void

    :cond_c
    const/16 v0, 0x12c

    .line 66
    invoke-static {v2, v7, v0}, Lcom/byazt/xiv/n;->c(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    invoke-interface {p0, v5}, Lcom/byazt/xiv/ve;->saveUnSupportVersion(Ljava/lang/String;)V

    :cond_d
    return-void

    :cond_e
    const/16 p0, 0xc8

    .line 68
    invoke-static {v2, v7, p0}, Lcom/byazt/xiv/n;->c(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_f
    return-void

    :catchall_0
    move-exception p0

    .line 69
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/Runnable;)V
    .locals 2

    .line 32
    invoke-static {}, Lcom/byazt/xiv/n;->n()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 33
    new-instance v0, Lcom/byazt/dc/n$2;

    invoke-direct {v0, p0}, Lcom/byazt/dc/n$2;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->n(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 34
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public static c(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "adapter_dex"

    .line 7
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/xiv/c;

    .line 8
    invoke-interface {v0}, Lcom/byazt/xiv/c;->getAdnKeySet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    invoke-interface {v0, v2}, Lcom/byazt/xiv/c;->getDexPluginStrategy(Ljava/lang/String;)Lcom/byazt/xiv/ve;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 11
    invoke-interface {v2}, Lcom/byazt/xiv/ve;->getUnSupportVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unsupported_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/byazt/xiv/ve;->getAdnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lcom/byazt/xiv/ve;->getUnSupportVersion()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 13
    invoke-interface {v2, v3}, Lcom/byazt/xiv/ve;->saveUnSupportVersion(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 14
    :cond_0
    invoke-static {p0}, Lcom/byazt/dc/n;->a(Ljava/lang/String;)Ljava/util/function/Function;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static n(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v3, -0x1

    .line 18
    sparse-switch v0, :sswitch_data_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :sswitch_0
    const-string v0, "baidu"

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v3, 0x4

    .line 32
    goto :goto_0

    .line 33
    :sswitch_1
    const-string v0, "gdt"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 v3, 0x3

    .line 43
    goto :goto_0

    .line 44
    :sswitch_2
    const-string v0, "ks"

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-nez p0, :cond_3

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    const/4 v3, 0x2

    .line 54
    goto :goto_0

    .line 55
    :sswitch_3
    const-string v0, "xiaomi"

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-nez p0, :cond_4

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    const/4 v3, 0x1

    .line 65
    goto :goto_0

    .line 66
    :sswitch_4
    const-string v0, "sigmob"

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-nez p0, :cond_5

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_5
    const/4 v3, 0x0

    .line 76
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 77
    .line 78
    .line 79
    return v1

    .line 80
    :pswitch_0
    return v2

    .line 81
    :sswitch_data_0
    .sparse-switch
        -0x35ca9371 -> :sswitch_4
        -0x2d450b45 -> :sswitch_3
        0xd68 -> :sswitch_2
        0x18f37 -> :sswitch_1
        0x592ae1b -> :sswitch_0
    .end sparse-switch

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static tt(Ljava/lang/String;)Ljava/util/function/Function;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/byazt/dc/n;->a(Ljava/lang/String;)Ljava/util/function/Function;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object v0

    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {p0, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic tt()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/dc/n;->ve()Z

    move-result v0

    return v0
.end method

.method public static uj(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/byazt/dc/n;->n(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "adapter_dex"

    .line 9
    .line 10
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/byazt/xiv/c;

    .line 15
    .line 16
    invoke-interface {v0, p0}, Lcom/byazt/xiv/c;->getDexPluginStrategy(Ljava/lang/String;)Lcom/byazt/xiv/ve;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Lcom/byazt/dc/n;->c(Lcom/byazt/xiv/ve;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static ve(Ljava/lang/String;)Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "adapter_dex"

    .line 1
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/xiv/c;

    .line 2
    invoke-interface {v0, p0}, Lcom/byazt/xiv/c;->getDexPluginStrategy(Ljava/lang/String;)Lcom/byazt/xiv/ve;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/byazt/xiv/ve;->getInitBridge()Ljava/util/function/Function;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static ve()Z
    .locals 16

    const-string v0, "com.byted.mixed"

    const-string v1, "dex_status"

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/byazt/xiv/n;->tt()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v5, :cond_0

    .line 5
    invoke-static {v1, v3}, Lcom/byazt/xiv/n;->c(Ljava/lang/String;I)V

    return v4

    .line 6
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v5

    invoke-virtual {v5}, Lcom/byazt/omf/x;->or()Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v5, :cond_1

    .line 7
    invoke-static {v1, v3}, Lcom/byazt/xiv/n;->c(Ljava/lang/String;I)V

    return v4

    .line 8
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 9
    invoke-static {}, Lcom/byazt/bzd/u;->c()V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v10, v7, v5

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 12
    invoke-static {v0}, Lcom/byazt/bzd/u;->x(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 13
    invoke-static {v0}, Lcom/byazt/bzd/u;->a(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v12, v7, v5

    .line 15
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v9

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual/range {v9 .. v15}, Lcom/byazt/ukr/yp;->c(JJII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    .line 16
    :goto_0
    invoke-static {v1, v2}, Lcom/byazt/xiv/n;->c(Ljava/lang/String;I)V

    return v0

    :catchall_0
    move-exception v5

    goto :goto_1

    :cond_3
    invoke-static {v1, v3}, Lcom/byazt/xiv/n;->c(Ljava/lang/String;I)V

    goto :goto_3

    :catchall_1
    move-exception v5

    const/4 v0, 0x0

    .line 17
    :goto_1
    :try_start_4
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v6

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x1

    invoke-virtual/range {v6 .. v12}, Lcom/byazt/ukr/yp;->c(JJII)V

    .line 18
    invoke-static {v5}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x3

    .line 19
    :goto_2
    invoke-static {v1, v2}, Lcom/byazt/xiv/n;->c(Ljava/lang/String;I)V

    :goto_3
    return v4

    :catchall_2
    move-exception v4

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x3

    :goto_4
    invoke-static {v1, v2}, Lcom/byazt/xiv/n;->c(Ljava/lang/String;I)V

    .line 20
    throw v4
.end method

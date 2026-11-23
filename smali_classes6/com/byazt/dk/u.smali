.class public Lcom/byazt/dk/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dk/uj;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x163,
        0x43
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c(Lcom/byazt/dk/x;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/dk/x;->uj()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const-string v1, "ad_extra_data"

    .line 51
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 53
    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "open_ad_sdk_download_extra"

    .line 54
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1

    :catchall_0
    return v0
.end method

.method public static uj()Lcom/byazt/dk/uj;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/dk/u;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/dk/u;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public c(Landroid/app/Activity;ZLcom/byazt/dk/c;)Landroid/app/AlertDialog;
    .locals 0

    .line 19
    invoke-static {p1, p2, p3}, Lcom/byazt/dk/sl;->c(Landroid/app/Activity;ZLcom/byazt/dk/c;)Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public c(Z)Ljava/lang/String;
    .locals 0

    .line 14
    invoke-static {p1}, Lcom/byazt/yih/i;->c(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c()Lorg/json/JSONObject;
    .locals 5

    const-string v0, "use_network_callback"

    const-string v1, "enable_target_34"

    .line 7
    invoke-static {}, Lcom/byazt/yih/i;->c()Lorg/json/JSONObject;

    move-result-object v2

    .line 8
    :try_start_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/ogz/sl;->ic()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "enable_app_install_receiver"

    const/4 v4, 0x0

    .line 9
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    const/4 v3, -0x1

    .line 10
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 11
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/ogz/sl;->id()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 13
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-object v2
.end method

.method public c(ILjava/lang/String;Ljava/util/Map;Lcom/byazt/dk/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/dk/n;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-static {p1, p2, p3, p4}, Lcom/byazt/dk/da;->c(ILjava/lang/String;Ljava/util/Map;Lcom/byazt/dk/n;)V

    return-void
.end method

.method public c(Landroid/app/Activity;[Ljava/lang/String;Lcom/byazt/dk/a;)V
    .locals 0

    .line 15
    invoke-static {p1, p2, p3}, Lcom/byazt/dk/t;->c(Landroid/app/Activity;[Ljava/lang/String;Lcom/byazt/dk/a;)V

    return-void
.end method

.method public c(Lcom/byazt/dk/x;Z)V
    .locals 1

    .line 22
    invoke-direct {p0, p1}, Lcom/byazt/dk/u;->c(Lcom/byazt/dk/x;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 23
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/byazt/dk/i$c;->c(Lcom/byazt/dk/x;Z)Lcom/byazt/dk/i$c;

    move-result-object p1

    const/4 p2, 0x5

    .line 24
    invoke-static {p1, p2}, Lcom/byazt/bwm/n;->c(Lcom/byazt/bwm/sp;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public c(Ljava/lang/String;[BLjava/lang/String;Lcom/byazt/dk/n;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-static {p1, p2, p3, v0, p4}, Lcom/byazt/dk/da;->c(Ljava/lang/String;[BLjava/lang/String;ILcom/byazt/dk/n;)V

    return-void
.end method

.method public c(Ljava/lang/ref/WeakReference;ZLcom/byazt/dk/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;Z",
            "Lcom/byazt/dk/c;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-static {p1, p2, p3}, Lcom/byazt/dk/sl;->c(Ljava/lang/ref/WeakReference;ZLcom/byazt/dk/c;)V

    return-void
.end method

.method public c(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    const-string v0, "open_ad_sdk_download_extra"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/byazt/aas/pf;->c()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {p1}, Lcom/byazt/qt/tt;->c(Lorg/json/JSONObject;)Lcom/byazt/qt/tt;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object p1, p1, Lcom/byazt/qt/tt;->c:Lcom/byazt/ete/ic;

    if-nez p1, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-static {p2, p1}, Lcom/byazt/yih/i;->c(Ljava/lang/String;Lcom/byazt/ete/ic;)V

    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 16
    invoke-static {p1, p2}, Lcom/byazt/dk/t;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public c(Lcom/byazt/su/DownloadModel;)Z
    .locals 8

    if-eqz p1, :cond_4

    .line 25
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getLogExtra()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getAppIcon()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getName()Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getId()J

    move-result-wide v4

    .line 30
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Lcom/byazt/nn/a;->uj(J)Lcom/byazt/dd/tt;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/byazt/dd/tt;->sp()Lorg/json/JSONObject;

    move-result-object p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_3

    const-string v6, "open_ad_sdk_download_extra"

    .line 32
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v6, "tag"

    .line 33
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "material_meta"

    .line 34
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v4, "download_conf"

    .line 35
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v7, "enable_notification"

    .line 36
    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    :cond_0
    const-string v4, "ad_id"

    .line 37
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 38
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v0, "ext"

    .line 39
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object p1, v4

    move-object v4, v6

    goto :goto_0

    :cond_3
    move-object p1, v4

    .line 40
    :goto_0
    new-instance v6, Lcom/byazt/yih/a;

    invoke-direct {v6}, Lcom/byazt/yih/a;-><init>()V

    .line 41
    new-instance v7, Lcom/byazt/qt/c;

    invoke-direct {v7}, Lcom/byazt/qt/c;-><init>()V

    .line 42
    invoke-virtual {v7, v2}, Lcom/byazt/qt/c;->c(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v7, v1}, Lcom/byazt/qt/c;->tt(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v7, v3}, Lcom/byazt/qt/c;->ve(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v7, v0}, Lcom/byazt/qt/c;->uj(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v7, v5}, Lcom/byazt/qt/c;->tt(I)V

    .line 47
    invoke-virtual {v7, v4}, Lcom/byazt/qt/c;->a(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v7, p1}, Lcom/byazt/qt/c;->sp(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v6, v7}, Lcom/byazt/yih/a;->tt(Lcom/byazt/qt/c;)Z

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public c(Lcom/byazt/su/DownloadModel;Lcom/byazt/t/DownloadInfo;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 0

    .line 21
    invoke-static {p1}, Lcom/byazt/dk/i;->c(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public tt()Lcom/byazt/dk/sp;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public tt(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Lcom/byazt/nr/x;->ve(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public tt(Lcom/byazt/su/DownloadModel;Lcom/byazt/t/DownloadInfo;)Z
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 5
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getLogExtra()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getAppIcon()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getName()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {p2}, Lcom/byazt/t/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getId()J

    move-result-wide v6

    .line 11
    invoke-virtual {p2}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result p1

    .line 12
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Lcom/byazt/nn/a;->uj(J)Lcom/byazt/dd/tt;

    move-result-object v6

    .line 13
    invoke-virtual {p2}, Lcom/byazt/t/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v7

    .line 14
    invoke-virtual {p2}, Lcom/byazt/t/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object p2

    .line 15
    invoke-virtual {v6}, Lcom/byazt/dd/tt;->sp()Lorg/json/JSONObject;

    move-result-object v6

    const/4 v8, 0x0

    if-eqz v6, :cond_3

    const-string v9, "open_ad_sdk_download_extra"

    .line 16
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string v9, "tag"

    .line 17
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "material_meta"

    .line 18
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v8, "download_conf"

    .line 19
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string v10, "enable_notification"

    .line 20
    invoke-virtual {v8, v10, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    const-string v8, "ad_id"

    .line 21
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 22
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v1, "ext"

    .line 23
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object v6, v8

    move-object v8, v9

    goto :goto_0

    :cond_3
    move-object v6, v8

    .line 24
    :goto_0
    new-instance v9, Lcom/byazt/yih/a;

    invoke-direct {v9}, Lcom/byazt/yih/a;-><init>()V

    .line 25
    new-instance v10, Lcom/byazt/qt/c;

    invoke-direct {v10}, Lcom/byazt/qt/c;-><init>()V

    .line 26
    invoke-virtual {v10, v3}, Lcom/byazt/qt/c;->c(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v10, v2}, Lcom/byazt/qt/c;->tt(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v10, v4}, Lcom/byazt/qt/c;->ve(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v10, p1}, Lcom/byazt/qt/c;->c(I)V

    .line 30
    invoke-virtual {v10, v1}, Lcom/byazt/qt/c;->uj(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v10, v5}, Lcom/byazt/qt/c;->n(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v10, v0}, Lcom/byazt/qt/c;->tt(I)V

    .line 33
    invoke-virtual {v10, v8}, Lcom/byazt/qt/c;->a(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v10, v6}, Lcom/byazt/qt/c;->sp(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v10, v7}, Lcom/byazt/qt/c;->x(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v10, p2}, Lcom/byazt/qt/c;->i(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v9, v10}, Lcom/byazt/yih/a;->c(Lcom/byazt/qt/c;)Z

    move-result p1

    return p1

    :cond_4
    return v0
.end method

.method public ve()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/omf/x;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.class public Lcom/byazt/qh/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x32b,
        0xd
    }
.end annotation


# static fields
.field public static c:Ljava/lang/String;


# direct methods
.method public static c()V
    .locals 2

    .line 18
    sget-object v0, Lcom/byazt/omf/p;->x:Ljava/lang/String;

    const-string v1, "privacy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "device_info_new"

    .line 19
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/u;

    invoke-static {}, Lcom/byazt/by/c;->tt()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/byazt/dna/u;->getLocation(Z)Lcom/byazt/fn/c;

    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    .line 22
    sget-object v0, Lcom/byazt/omf/p;->x:Ljava/lang/String;

    const-string v1, "privacy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 23
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->rp()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    return-void

    .line 24
    :cond_0
    invoke-static {p0}, Lcom/byazt/qh/c;->c(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public static c(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3

    .line 12
    :try_start_0
    sget-object p0, Lcom/byazt/omf/p;->x:Ljava/lang/String;

    const-string v0, "privacy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "udid_md5"

    .line 13
    invoke-static {}, Lcom/byazt/qh/tt;->tt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    :cond_0
    const-string p0, "device_info_new"

    .line 14
    invoke-static {p0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/byazt/dna/u;

    const-string v0, "udid"

    const/4 v1, 0x0

    .line 15
    invoke-static {v1}, Lcom/byazt/aas/DeviceUtils;->c(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mc"

    .line 16
    invoke-interface {p0, v1}, Lcom/byazt/dna/u;->getMacAddress(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 17
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Lcom/byazt/dj/uj;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/uj;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/byazt/omf/p;->x:Ljava/lang/String;

    const-string v1, "privacy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/byazt/dj/uj;->isCanUseLocation()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 10
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "android.permission.ACCESS_FINE_LOCATION"

    .line 11
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .line 20
    sget-object v0, Lcom/byazt/omf/p;->x:Ljava/lang/String;

    const-string v1, "privacy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    invoke-static {}, Lcom/byazt/ogz/ve;->tt()Lcom/byazt/ogz/ve;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/byazt/ogz/ve;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static c(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/byazt/omf/p;->x:Ljava/lang/String;

    const-string v1, "privacy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    const-string v0, "device_info_new"

    .line 2
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/u;

    invoke-static {}, Lcom/byazt/by/c;->tt()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/byazt/dna/u;->getLocation(Z)Lcom/byazt/fn/c;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 3
    :cond_1
    invoke-interface {v0}, Lcom/byazt/fn/c;->getLatitude()F

    move-result v2

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    invoke-interface {v0}, Lcom/byazt/fn/c;->getLongitude()F

    move-result v1

    :goto_2
    const-string v0, "latitude"

    float-to-double v2, v2

    .line 5
    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "longitude"

    float-to-double v1, v1

    .line 6
    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public static tt(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .line 18
    sget-object v0, Lcom/byazt/omf/p;->x:Ljava/lang/String;

    const-string v1, "privacy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "Download/Pangolin"

    .line 19
    invoke-static {p0, v0, v2, v1}, Lcom/byazt/nr/sp;->c(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;

    move-result-object p0

    goto :goto_0

    .line 20
    :cond_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {p0, v0, v2, v1}, Lcom/byazt/nr/sp;->c(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static tt()Ljava/lang/String;
    .locals 2

    .line 7
    sget-object v0, Lcom/byazt/qh/tt;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Lcom/byazt/aas/DeviceUtils;->c(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10
    invoke-static {v0}, Lcom/byazt/nr/a;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/byazt/qh/tt;->c:Ljava/lang/String;

    .line 11
    :cond_0
    sget-object v0, Lcom/byazt/qh/tt;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static tt(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 2

    .line 12
    sget-object v0, Lcom/byazt/omf/p;->x:Ljava/lang/String;

    const-string v1, "privacy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    :try_start_0
    invoke-static {p0}, Lcom/byazt/aas/rh;->c(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "app_list"

    .line 14
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 15
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static tt(Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/byazt/omf/p;->x:Ljava/lang/String;

    const-string v1, "privacy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "device_info_new"

    .line 2
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/u;

    invoke-static {}, Lcom/byazt/by/c;->tt()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/byazt/dna/u;->getLocation(Z)Lcom/byazt/fn/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "latitude"

    .line 4
    invoke-interface {v0}, Lcom/byazt/fn/c;->getLatitude()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "longitude"

    .line 5
    invoke-interface {v0}, Lcom/byazt/fn/c;->getLongitude()F

    move-result v0

    float-to-double v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "geo"

    .line 6
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static tt(Ljava/lang/String;)Z
    .locals 2

    .line 16
    sget-object v0, Lcom/byazt/omf/p;->x:Ljava/lang/String;

    const-string v1, "privacy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 17
    :cond_0
    invoke-static {p0}, Lcom/byazt/aas/rh;->c(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static ve(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/byazt/omf/p;->x:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "privacy"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "imei_md5"

    .line 12
    .line 13
    invoke-static {}, Lcom/byazt/qh/tt;->tt()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const-string v0, "imei"

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-static {v1}, Lcom/byazt/aas/DeviceUtils;->c(Ljava/lang/Boolean;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catch_0
    move-exception p0

    .line 33
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

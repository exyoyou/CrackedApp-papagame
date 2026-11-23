.class public Lcom/byazt/px/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2b2,
        0x2e
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/px/n$c;
    }
.end annotation


# direct methods
.method public static c(Lcom/byazt/dj/uj;)Landroid/util/SparseArray;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/uj;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 21
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v0

    const/16 v2, 0x2127

    const/16 v3, 0x2126

    const/16 v4, 0x2125

    const/16 v5, 0x2124

    const/16 v6, 0x2123

    const/16 v7, 0x2078

    const/16 v8, 0x211f

    const/16 v9, 0x2120

    const/16 v10, 0x1f5a

    const/16 v11, 0x1f59

    const/16 v12, 0x1f58

    const/16 v13, 0x1f57

    const/16 v14, 0x2077

    if-eqz p0, :cond_1

    .line 22
    new-instance v15, Lcom/byazt/px/n$c;

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/dj/uj;->getMediationPrivacyConfig()Lcom/byazt/je/tt;

    move-result-object v1

    invoke-direct {v15, v1}, Lcom/byazt/px/n$c;-><init>(Lcom/byazt/je/tt;)V

    .line 24
    invoke-virtual {v0, v14, v15}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/dj/uj;->isCanUsePhoneState()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v13, v1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/dj/uj;->isCanUseLocation()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/dj/uj;->isCanUseWriteExternal()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/dj/uj;->alist()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/dj/uj;->isCanUseWifiState()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/dj/uj;->isCanUseAndroidId()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/dj/uj;->getTTLocation()Lcom/byazt/dj/ve;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v15, Lcom/byazt/px/a;

    invoke-virtual/range {p0 .. p0}, Lcom/byazt/dj/uj;->getTTLocation()Lcom/byazt/dj/ve;

    move-result-object v1

    invoke-direct {v15, v1}, Lcom/byazt/px/a;-><init>(Lcom/byazt/dj/ve;)V

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    invoke-virtual {v0, v7, v15}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/dj/uj;->getTTLocation()Lcom/byazt/dj/ve;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/dj/uj;->getDevImei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/dj/uj;->getAndroidId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/dj/uj;->getDevOaid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/dj/uj;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    const/16 v1, 0x216a

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/dj/uj;->userPrivacyConfig()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/dj/uj;->isCanUsePermissionRecordAudio()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x2165

    invoke-virtual {v0, v2, v1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    goto :goto_1

    .line 39
    :cond_1
    new-instance v1, Lcom/byazt/px/n$c;

    const/4 v15, 0x0

    invoke-direct {v1, v15}, Lcom/byazt/px/n$c;-><init>(Lcom/byazt/je/tt;)V

    invoke-virtual {v0, v14, v1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 40
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v13, v1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 41
    invoke-virtual {v0, v12, v1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 42
    invoke-virtual {v0, v11, v1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 43
    invoke-virtual {v0, v10, v1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 44
    invoke-virtual {v0, v9, v1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 45
    invoke-virtual {v0, v8, v1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 46
    new-instance v8, Lcom/byazt/px/a;

    invoke-direct {v8, v15}, Lcom/byazt/px/a;-><init>(Lcom/byazt/dj/ve;)V

    invoke-virtual {v0, v7, v8}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 47
    invoke-virtual {v0, v6, v15}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    const-string v6, ""

    .line 48
    invoke-virtual {v0, v5, v6}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 49
    invoke-virtual {v0, v4, v6}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 50
    invoke-virtual {v0, v3, v6}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 51
    invoke-virtual {v0, v2, v6}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    const/16 v2, 0x2165

    .line 52
    invoke-virtual {v0, v2, v1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 53
    :goto_1
    invoke-virtual {v0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lcom/byazt/je/c;)Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/je/c;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 6
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/byazt/je/c;->n()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x210a

    invoke-virtual {v0, v2, v1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    const/16 v1, 0x210b

    .line 8
    invoke-virtual {p0}, Lcom/byazt/je/c;->sl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    const/16 v1, 0x210c

    .line 9
    invoke-virtual {p0}, Lcom/byazt/je/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 10
    invoke-virtual {p0}, Lcom/byazt/je/c;->tt()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x210d

    invoke-virtual {v0, v2, v1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 11
    new-instance v1, Lcom/byazt/px/x;

    .line 12
    invoke-virtual {p0}, Lcom/byazt/je/c;->ve()Lcom/byazt/je/ve;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/byazt/px/x;-><init>(Lcom/byazt/je/ve;)V

    const/16 v2, 0x2076

    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    const/16 v1, 0x210e

    .line 14
    invoke-virtual {p0}, Lcom/byazt/je/c;->uj()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    const/16 v1, 0x210f

    .line 15
    invoke-virtual {p0}, Lcom/byazt/je/c;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    const/16 v1, 0x2110

    .line 16
    invoke-virtual {p0}, Lcom/byazt/je/c;->sp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 17
    invoke-virtual {p0}, Lcom/byazt/je/c;->x()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x2111

    invoke-virtual {v0, v2, v1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 18
    invoke-virtual {p0}, Lcom/byazt/je/c;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x2112

    invoke-virtual {v0, v2, v1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 19
    invoke-virtual {p0}, Lcom/byazt/je/c;->da()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/16 v1, 0x2113

    invoke-virtual {v0, v1, p0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 20
    invoke-virtual {v0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c()V
    .locals 2

    .line 54
    new-instance v0, Lcom/byazt/dj/c;

    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/bp/c;->cu()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object v1

    invoke-interface {v1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->sparseArray()Landroid/util/SparseArray;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/byazt/dj/c;-><init>(Landroid/util/SparseArray;)V

    .line 55
    invoke-virtual {v0}, Lcom/byazt/dj/c;->sl()Lcom/byazt/dj/uj;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/yf/da;->c(Lcom/byazt/dj/uj;)V

    return-void
.end method

.method public static c(Lcom/byazt/yxi/uj;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/byazt/dj/c;

    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/bp/c;->cu()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object v1

    invoke-interface {v1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->sparseArray()Landroid/util/SparseArray;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/byazt/dj/c;-><init>(Landroid/util/SparseArray;)V

    .line 2
    invoke-virtual {v0}, Lcom/byazt/dj/c;->sl()Lcom/byazt/dj/uj;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/px/n;->c(Lcom/byazt/dj/uj;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/lq/uj;->c(Landroid/util/SparseArray;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x211b

    invoke-virtual {p0, v2, v1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 3
    invoke-virtual {v0}, Lcom/byazt/dj/c;->z()Lcom/byazt/je/c;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/px/n;->c(Lcom/byazt/je/c;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/lq/uj;->c(Landroid/util/SparseArray;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x2109

    invoke-virtual {p0, v1, v0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 4
    invoke-static {}, Lcom/byazt/ck/tt;->c()Lcom/byazt/ck/tt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ck/tt;->sp()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    return-void
.end method

.method public static c(Lcom/byazt/yxi/uj;Lcom/byazt/yxi/uj;)V
    .locals 1

    .line 5
    invoke-virtual {p1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/lq/uj;->c(Landroid/util/SparseArray;)Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x20e8

    invoke-virtual {p0, v0, p1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    return-void
.end method

.method public static tt()Lorg/json/JSONObject;
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 3
    .line 4
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/byazt/px/tt;->c()Lcom/byazt/px/tt;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/byazt/px/tt;->tt()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    const-string v3, "duration"

    .line 16
    .line 17
    const-string v4, "status"

    .line 18
    .line 19
    const-wide/16 v5, 0x0

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    :try_start_1
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    if-lez v7, :cond_1

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_1

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    check-cast v7, Ljava/util/Map$Entry;

    .line 48
    .line 49
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    check-cast v8, Ljava/lang/String;

    .line 54
    .line 55
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    check-cast v7, Lcom/byazt/ly/uj;

    .line 60
    .line 61
    invoke-interface {v7}, Lcom/byazt/ly/uj;->initDuration()J

    .line 62
    .line 63
    .line 64
    move-result-wide v9

    .line 65
    invoke-interface {v7}, Lcom/byazt/ly/uj;->initStatus()I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    cmp-long v12, v9, v5

    .line 70
    .line 71
    if-eqz v12, :cond_0

    .line 72
    .line 73
    new-instance v12, Lorg/json/JSONObject;

    .line 74
    .line 75
    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v12, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v12, v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    invoke-interface {v7}, Lcom/byazt/ly/uj;->clearInitStatus()V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    sget-wide v7, Lcom/byazt/tjo/a;->c:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .line 93
    const-string v2, "layer_real_cost_time"

    .line 94
    .line 95
    const/4 v9, 0x0

    .line 96
    const-string v10, "plugin"

    .line 97
    .line 98
    const/4 v11, 0x1

    .line 99
    cmp-long v12, v7, v5

    .line 100
    .line 101
    if-lez v12, :cond_3

    .line 102
    .line 103
    :try_start_2
    new-instance v7, Lorg/json/JSONObject;

    .line 104
    .line 105
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 109
    .line 110
    .line 111
    sget-wide v12, Lcom/byazt/tjo/a;->c:J

    .line 112
    .line 113
    invoke-virtual {v7, v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 114
    .line 115
    .line 116
    invoke-static {}, Lcom/byazt/omf/p;->tt()Z

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    if-eqz v8, :cond_2

    .line 121
    .line 122
    const/4 v8, 0x1

    .line 123
    goto :goto_1

    .line 124
    :cond_2
    const/4 v8, 0x0

    .line 125
    :goto_1
    invoke-virtual {v7, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 126
    .line 127
    .line 128
    sget-wide v12, Lcom/byazt/tjo/a;->ve:J

    .line 129
    .line 130
    invoke-virtual {v7, v2, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 131
    .line 132
    .line 133
    const-string v8, "pangle"

    .line 134
    .line 135
    invoke-virtual {v1, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    .line 137
    .line 138
    sput-wide v5, Lcom/byazt/tjo/a;->c:J

    .line 139
    .line 140
    :cond_3
    sget-wide v7, Lcom/byazt/tjo/a;->tt:J

    .line 141
    .line 142
    cmp-long v12, v7, v5

    .line 143
    .line 144
    if-lez v12, :cond_5

    .line 145
    .line 146
    new-instance v7, Lorg/json/JSONObject;

    .line 147
    .line 148
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 152
    .line 153
    .line 154
    sget-wide v12, Lcom/byazt/tjo/a;->tt:J

    .line 155
    .line 156
    invoke-virtual {v7, v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 157
    .line 158
    .line 159
    invoke-static {}, Lcom/byazt/omf/p;->tt()Z

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    if-eqz v8, :cond_4

    .line 164
    .line 165
    const/4 v9, 0x1

    .line 166
    :cond_4
    invoke-virtual {v7, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 167
    .line 168
    .line 169
    sget-wide v8, Lcom/byazt/tjo/a;->uj:J

    .line 170
    .line 171
    invoke-virtual {v7, v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 172
    .line 173
    .line 174
    const-string v2, "fusion"

    .line 175
    .line 176
    invoke-virtual {v1, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    .line 178
    .line 179
    sput-wide v5, Lcom/byazt/tjo/a;->tt:J

    .line 180
    .line 181
    :cond_5
    invoke-static {}, Lcom/byazt/px/c;->uj()Lcom/byazt/sc/c;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    if-eqz v2, :cond_7

    .line 186
    .line 187
    invoke-static {}, Lcom/byazt/px/c;->uj()Lcom/byazt/sc/c;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v2}, Lcom/byazt/sc/c;->c()Ljava/util/Map;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    if-eqz v2, :cond_7

    .line 196
    .line 197
    invoke-static {}, Lcom/byazt/px/c;->uj()Lcom/byazt/sc/c;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {v2}, Lcom/byazt/sc/c;->c()Ljava/util/Map;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-lez v2, :cond_7

    .line 210
    .line 211
    invoke-static {}, Lcom/byazt/px/c;->uj()Lcom/byazt/sc/c;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {v2}, Lcom/byazt/sc/c;->c()Ljava/util/Map;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result v7

    .line 231
    if-eqz v7, :cond_7

    .line 232
    .line 233
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v7

    .line 237
    check-cast v7, Ljava/util/Map$Entry;

    .line 238
    .line 239
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    check-cast v8, Ljava/lang/String;

    .line 244
    .line 245
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v7

    .line 249
    check-cast v7, Lcom/byazt/id/c;

    .line 250
    .line 251
    invoke-virtual {v7}, Lcom/byazt/id/c;->initDuration()J

    .line 252
    .line 253
    .line 254
    move-result-wide v9

    .line 255
    invoke-virtual {v7}, Lcom/byazt/id/c;->initStatus()I

    .line 256
    .line 257
    .line 258
    move-result v11

    .line 259
    cmp-long v12, v9, v5

    .line 260
    .line 261
    if-eqz v12, :cond_6

    .line 262
    .line 263
    new-instance v12, Lorg/json/JSONObject;

    .line 264
    .line 265
    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v12, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v12, v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v7}, Lcom/byazt/id/c;->clearInitStatus()V

    .line 278
    .line 279
    .line 280
    goto :goto_2

    .line 281
    :cond_7
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    .line 282
    .line 283
    .line 284
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 285
    if-nez v2, :cond_8

    .line 286
    .line 287
    return-object v0

    .line 288
    :cond_8
    return-object v1

    .line 289
    :catchall_0
    return-object v0
.end method

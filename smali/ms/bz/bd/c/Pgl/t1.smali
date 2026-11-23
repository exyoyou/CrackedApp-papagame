.class public final Lms/bz/bd/c/Pgl/t1;
.super Lms/bz/bd/c/Pgl/pblx;
.source "SourceFile"


# instance fields
.field private c:Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lms/bz/bd/c/Pgl/pblx;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(JJLjava/lang/String;Ljava/lang/String;I)V
    .locals 11

    .line 1
    move-object v0, p0

    iget-object v1, v0, Lms/bz/bd/c/Pgl/t1;->c:Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v7, 0x0

    const/4 v10, 0x0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v10}, Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor;->monitorSLA(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void
.end method

.method public final c(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 9

    .line 2
    const/16 v0, 0x27

    new-array v6, v0, [B

    fill-array-data v6, :array_0

    const v1, 0x1000001

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-string v5, "666dd2"

    invoke-static/range {v1 .. v6}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lms/bz/bd/c/Pgl/t1;->c:Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const v1, 0x1000001

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-string v5, "6fc593"

    const/16 v6, 0xb

    new-array v6, v6, [B

    fill-array-data v6, :array_1

    invoke-static/range {v1 .. v6}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const v2, 0x1000001

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-string v6, "f76843"

    const/16 v1, 0x8

    new-array v7, v1, [B

    fill-array-data v7, :array_2

    invoke-static/range {v2 .. v7}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const v2, 0x1000001

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-string v6, "5b8f2e"

    const/4 v1, 0x6

    new-array v7, v1, [B

    fill-array-data v7, :array_3

    invoke-static/range {v2 .. v7}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const v2, 0x1000001

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-string v6, "e12643"

    const/4 v1, 0x7

    new-array v7, v1, [B

    fill-array-data v7, :array_4

    invoke-static/range {v2 .. v7}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "177c0d"

    new-array v8, v1, [B

    fill-array-data v8, :array_5

    invoke-static/range {v3 .. v8}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lms/bz/bd/c/Pgl/t1;->c:Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor;->monitorEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 1
        0x14t
        0x38t
        0x44t
        0x2t
        0x5ft
        0x24t
        0x27t
        0x32t
        0x71t
        0x31t
        0x29t
        0x20t
        0x69t
        0x1ft
        0x5ct
        0x8t
        0x34t
        0x19t
        0x66t
        0x33t
        0x22t
        0x26t
        0x5t
        0x3t
        0x5et
        0x37t
        0x23t
        0x1et
        0x64t
        0x31t
        0x29t
        0x35t
        0x48t
        0x15t
        0x1bt
        0x68t
        0x78t
        0x5at
        0x27t
    .end array-data

    :array_1
    .array-data 1
        0x34t
        0x61t
        0x2t
        0x57t
        0xft
        0x27t
        0x30t
        0x49t
        0x33t
        0x68t
        0x22t
    .end array-data

    :array_2
    .array-data 1
        0x74t
        0x34t
        0x51t
        0x49t
        0xct
        0x2bt
        0x77t
        0xft
    .end array-data

    :array_3
    .array-data 1
        0x29t
        0x65t
        0x5ft
        0x0t
        0x4t
        0x71t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x78t
        0x3ct
        0x46t
        0x67t
        0x13t
        0x30t
        0x74t
    .end array-data

    :array_5
    .array-data 1
        0xdt
        0x10t
        0x70t
        0x36t
        0x3ct
        0x56t
        0x11t
    .end array-data
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 17

    .line 3
    move-object/from16 v0, p1

    invoke-static {}, Lms/bz/bd/c/Pgl/pblw;->c()Lms/bz/bd/c/Pgl/pblw;

    move-result-object v1

    invoke-virtual {v1}, Lms/bz/bd/c/Pgl/pblw;->tt()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x3

    new-array v8, v0, [B

    fill-array-data v8, :array_0

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "34a302"

    invoke-static/range {v3 .. v8}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v3, v2

    :goto_0
    const/4 v0, 0x0

    if-nez v3, :cond_1

    return v0

    :cond_1
    const v4, 0x1000001

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/16 v10, 0xa

    :try_start_1
    const-string v8, "73ee60"

    const/4 v9, 0x7

    new-array v9, v9, [B

    fill-array-data v9, :array_1

    invoke-static/range {v4 .. v9}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    const v11, 0x1000001

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    :try_start_2
    const-string v15, "bed5fc"

    const/16 v5, 0x8

    new-array v5, v5, [B

    fill-array-data v5, :array_2

    move-object/from16 v16, v5

    invoke-static/range {v11 .. v16}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const v11, 0x1000001

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-string v15, "e4603c"

    new-array v7, v10, [B

    fill-array-data v7, :array_3

    move-object/from16 v16, v7

    invoke-static/range {v11 .. v16}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const v11, 0x1000001

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-string v15, "743353"

    new-array v8, v10, [B

    fill-array-data v8, :array_4

    move-object/from16 v16, v8

    invoke-static/range {v11 .. v16}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v9, v11, :cond_2

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v7, v9, :cond_3

    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {v4, v5}, Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitorUtils;->setConfigUrl(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v4, v6}, Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitorUtils;->setDefaultReportUrl(Ljava/lang/String;Ljava/util/List;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :cond_4
    return v0

    :catch_1
    move-object v0, v2

    move-object v2, v4

    goto :goto_3

    :catch_2
    move-object v0, v2

    :goto_3
    const/4 v4, 0x5

    new-array v4, v4, [B

    fill-array-data v4, :array_5

    const v11, 0x1000001

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-string v15, "15fa4c"

    move-object/from16 v16, v4

    invoke-static/range {v11 .. v16}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v2

    move-object v2, v0

    :goto_4
    new-array v0, v10, [B

    fill-array-data v0, :array_6

    const v11, 0x1000001

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-string v15, "15488b"

    move-object/from16 v16, v0

    invoke-static/range {v11 .. v16}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    new-array v0, v10, [B

    fill-array-data v0, :array_7

    const-string v15, "0159f0"

    move-object/from16 v16, v0

    invoke-static/range {v11 .. v16}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lms/bz/bd/c/Pgl/t1$pgla;

    invoke-direct {v0, v3, v2}, Lms/bz/bd/c/Pgl/t1$pgla;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {v1, v4, v3, v0}, Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitorUtils;->initMonitor(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor$IGetExtendParams;)V

    invoke-static {v4}, Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitorUtils;->getInstance(Ljava/lang/String;)Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lms/bz/bd/c/Pgl/t1;->c:Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor;

    const/4 v0, 0x1

    return v0

    nop

    :array_0
    .array-data 1
        0x31t
        0x33t
        0x1ft
    .end array-data

    :array_1
    .array-data 1
        0x35t
        0x35t
        0x1dt
        0x2et
        0x8t
        0x2et
        0x30t
    .end array-data

    :array_2
    .array-data 1
        0x7bt
        0x68t
        0x4t
        0x55t
        0x66t
        0x75t
        0x68t
        0x40t
    .end array-data

    :array_3
    .array-data 1
        0x77t
        0x39t
        0x4bt
        0x42t
        0x5t
        0x73t
        0x53t
        0x27t
        0x4bt
        0x73t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x34t
        0x33t
        0x50t
        0x48t
        0x18t
        0x30t
        0x1t
        0x27t
        0x4et
        0x70t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x33t
        0x32t
        0x18t
        0x2at
        0x2t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x23t
        0x38t
        0x49t
        0x4at
        0xet
        0x72t
        0x7t
        0x26t
        0x49t
        0x7bt
    .end array-data

    nop

    :array_7
    .array-data 1
        0x33t
        0x36t
        0x56t
        0x42t
        0x4bt
        0x33t
        0x6t
        0x22t
        0x48t
        0x7at
    .end array-data
.end method

.method public final tt(JJLjava/lang/String;Ljava/lang/String;I)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lms/bz/bd/c/Pgl/t1;->c:Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v7, 0x0

    const/4 v10, 0x0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v10}, Lcom/bytedance/framwork/core/sdkmonitor/SDKMonitor;->monitorApiError(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void
.end method

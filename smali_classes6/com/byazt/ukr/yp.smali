.class public Lcom/byazt/ukr/yp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x439,
        0xd7
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/ukr/yp; = null

.field public static tt:Ljava/lang/String; = ""


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c()Lcom/byazt/ukr/yp;
    .locals 2

    .line 2
    sget-object v0, Lcom/byazt/ukr/yp;->c:Lcom/byazt/ukr/yp;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/byazt/ukr/yp;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/byazt/ukr/yp;->c:Lcom/byazt/ukr/yp;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/byazt/ukr/yp;

    invoke-direct {v1}, Lcom/byazt/ukr/yp;-><init>()V

    sput-object v1, Lcom/byazt/ukr/yp;->c:Lcom/byazt/ukr/yp;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/ukr/yp;->c:Lcom/byazt/ukr/yp;

    return-object v0
.end method

.method public static c(II)V
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "volume:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bright:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xgc_report"

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    new-instance v1, Lcom/byazt/ukr/yp$6;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ukr/yp$6;-><init>(II)V

    const-string p0, "system_change"

    const/4 p1, 0x1

    invoke-interface {v0, v1, p0, p1}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public static c(Landroid/util/SparseArray;Lorg/json/JSONObject;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .line 10
    new-instance v0, Lcom/byazt/yxi/tt;

    invoke-direct {v0, p0}, Lcom/byazt/yxi/tt;-><init>(Landroid/util/SparseArray;)V

    .line 11
    invoke-virtual {v0}, Lcom/byazt/yxi/tt;->uj()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object p0

    .line 12
    invoke-virtual {v0}, Lcom/byazt/yxi/tt;->c()Z

    move-result v4

    .line 13
    invoke-virtual {v0}, Lcom/byazt/yxi/tt;->tt()I

    move-result v1

    .line 14
    invoke-virtual {v0}, Lcom/byazt/yxi/tt;->ve()Ljava/lang/String;

    move-result-object v0

    .line 15
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "success"

    .line 16
    invoke-virtual {v9, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "code"

    .line 17
    invoke-virtual {v9, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "message"

    .line 18
    invoke-virtual {v9, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_0
    const-wide/16 v0, -0x1

    if-eqz p0, :cond_1

    const/16 v2, 0xa

    .line 20
    invoke-static {p0, v2}, Lcom/byazt/whk/da;->c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;I)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x5

    .line 21
    invoke-interface {p0, v3}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    const-string v0, "run_package_start"

    const-wide/16 v5, 0x0

    .line 22
    invoke-virtual {v2, v0, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v0

    :cond_0
    const/4 v2, 0x3

    .line 24
    invoke-static {p0, v2}, Lcom/byazt/whk/da;->c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;I)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v5, 0x4

    .line 25
    invoke-static {p0, v5}, Lcom/byazt/whk/da;->c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;I)Lorg/json/JSONObject;

    move-result-object p0

    move-object v8, p0

    move-wide v5, v0

    move-object v7, v2

    move-object v2, v3

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    move-object v2, p0

    move-object v7, v2

    move-object v8, v7

    move-wide v5, v0

    :goto_1
    if-eqz p1, :cond_2

    const-string p0, "business_type"

    .line 26
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    const-string p0, ""

    :goto_2
    move-object v3, p0

    .line 27
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v1

    invoke-virtual/range {v1 .. v9}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Ljava/lang/String;ZJLorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static c(Lcom/byazt/dj/tt;JJJIII)V
    .locals 13

    .line 132
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    new-instance v12, Lcom/byazt/ukr/yp$48;

    move-object v1, v12

    move/from16 v2, p9

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move-object v9, p0

    move-wide v10, p1

    invoke-direct/range {v1 .. v11}, Lcom/byazt/ukr/yp$48;-><init>(IJJIILcom/byazt/dj/tt;J)V

    invoke-virtual {v0, v12}, Lcom/byazt/ukr/yp;->sp(Lcom/byazt/ee/c;)V

    return-void
.end method

.method private c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V
    .locals 10

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v8, v0, v2

    .line 88
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object p3

    new-instance v0, Lcom/byazt/ukr/yp$7;

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/byazt/ukr/yp$7;-><init>(Lcom/byazt/ukr/yp;Lcom/byazt/ee/c;Ljava/lang/String;J)V

    const/4 p1, 0x1

    invoke-interface {p3, v0, p2, p1}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    new-instance v1, Lcom/byazt/ukr/yp$55;

    invoke-direct {v1, p0}, Lcom/byazt/ukr/yp$55;-><init>(Lcom/byazt/ete/ic;)V

    const-string p0, "saas_show_miss"

    const/4 v2, 0x1

    invoke-interface {v0, v1, p0, v2}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public static c(Ljava/lang/String;JZ)V
    .locals 2

    .line 84
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    new-instance v1, Lcom/byazt/ukr/yp$5;

    invoke-direct {v1, p3, p1, p2, p0}, Lcom/byazt/ukr/yp$5;-><init>(ZJLjava/lang/String;)V

    const-string p0, "over_freq"

    const/4 p1, 0x1

    invoke-interface {v0, v1, p0, p1}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/byazt/ukr/yp;->tt(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;I)Z
    .locals 5

    .line 91
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    move-result-object v0

    const/4 v1, 0x0

    .line 92
    invoke-interface {v0, p1, v1}, Lcom/byazt/it/c;->get(Ljava/lang/String;I)I

    move-result v2

    and-int/lit8 v3, v2, 0x2

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    and-int/2addr v2, v4

    if-eq v2, p2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    add-int/lit8 p2, p2, 0x2

    .line 93
    invoke-interface {v0, p1, p2}, Lcom/byazt/it/c;->put(Ljava/lang/String;I)V

    :cond_2
    return v1
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 10

    const-string v0, ""

    const-string v1, "plugin_first_load"

    .line 50
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 51
    new-instance v3, Ljava/io/File;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Lcom/byazt/nr/sp;->c(Landroid/content/Context;ZLjava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    invoke-static {v3}, Lcom/byazt/bzd/n;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string v4, "last_plugin_version"

    .line 53
    invoke-virtual {p2, v4, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "version_file"

    .line 54
    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {p2, v4, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    invoke-static {}, Lcom/byazt/xgx/n;->c()Lcom/byazt/xgx/n;

    move-result-object v4

    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 56
    invoke-virtual {v4, v2, v6}, Lcom/byazt/xgx/n;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const-string v4, "sd_per"

    .line 57
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p2, v4, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    invoke-static {}, Lcom/byazt/ukr/yp;->ve()Ljava/lang/String;

    move-result-object v4

    .line 59
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v8

    invoke-virtual {v8}, Lcom/byazt/omf/x;->rl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    const-string v8, "is_loaded"

    .line 61
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ins/"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v4

    invoke-virtual {v4}, Lcom/byazt/omf/x;->rl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "is_installed"

    .line 64
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p2, v4, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v7, :cond_1

    if-eqz v2, :cond_1

    .line 65
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 66
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 67
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 68
    array-length v4, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v2, v6

    if-eqz v7, :cond_0

    .line 69
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 70
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "mkdirs"

    .line 71
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    :cond_2
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    move-result-object v2

    .line 73
    invoke-interface {v2, v1, v0}, Lcom/byazt/it/c;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 75
    invoke-virtual {p2, v1, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    :cond_3
    invoke-interface {v2, v1, p0}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "write_suc"

    .line 78
    invoke-static {p0, v3}, Lcom/byazt/bzd/n;->c(Ljava/lang/String;Ljava/io/File;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    sget-object p0, Lcom/byazt/ukr/yp;->tt:Ljava/lang/String;

    .line 80
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p0, "plugin_install_msg"

    .line 81
    invoke-interface {v2, p0, v0}, Lcom/byazt/it/c;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_4
    const-string p1, "install_msg"

    .line 82
    invoke-virtual {p2, p1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_5
    return v5
.end method

.method private static tt(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "status_code"

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "current_version"

    const-string v2, "7.6.1.1"

    .line 27
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "os_api"

    .line 28
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const-string v2, "support_abi"

    .line 30
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "max_retry_count"

    .line 31
    invoke-static {p3}, Lcom/byazt/ogz/da;->tt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "uuid"

    .line 32
    invoke-static {}, Lcom/byazt/by/c;->ve()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "host_abi"

    .line 33
    invoke-static {}, Lcom/byazt/qya/tt;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-nez p1, :cond_1

    .line 34
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    move-object v5, p1

    const-string p1, "boost"

    const/4 v9, 0x1

    .line 35
    invoke-virtual {v5, p1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 36
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_2
    const-string p1, "code"

    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    :goto_0
    move v6, p1

    const-string p1, "message"

    .line 37
    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string p1, "duration"

    .line 38
    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 39
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object p1

    new-instance v0, Lcom/byazt/ukr/yp$54;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/byazt/ukr/yp$54;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0, p0, v9}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private tt(Lcom/byazt/qal/tt;)Z
    .locals 0

    .line 1
    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private uj(Lcom/byazt/ee/c;Ljava/lang/String;)V
    .locals 10

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v8, v0, v2

    .line 3
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    new-instance v1, Lcom/byazt/ukr/yp$8;

    move-object v4, v1

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/byazt/ukr/yp$8;-><init>(Lcom/byazt/ukr/yp;Lcom/byazt/ee/c;Ljava/lang/String;J)V

    const/4 p1, 0x1

    invoke-interface {v0, v1, p2, p1}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method private static ve()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/String;

    const-string v1, "L3NkY2FyZC9Eb3dubG9hZC8uY3NqLw=="

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private ve(Lcom/byazt/ee/c;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcom/byazt/ukr/yp;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public static ve(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 2
    invoke-static {}, Lcom/byazt/ukr/yp;->ve()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/omf/x;->rl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 6
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ins/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->rl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 10
    :cond_1
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 11
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 12
    invoke-static {v0, v2, v3}, Lcom/byazt/nr/sp;->c(Landroid/content/Context;ZLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    invoke-static {v1}, Lcom/byazt/bzd/n;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-static {v1}, Lcom/byazt/bzd/n;->tt(Ljava/io/File;)V

    .line 16
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "version_code"

    .line 17
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "package_name"

    .line 18
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p0, p1, v2

    const-string p0, "StatsLogManager"

    .line 19
    invoke-static {p0, p1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    :goto_0
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p0

    const-string p1, "d_d"

    invoke-virtual {p0, p1, v0, v3}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/byazt/ee/c;)V
    .locals 1

    const-string v0, "show_backup_endcard"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/byazt/ukr/yp;->uj(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    new-instance v1, Lcom/byazt/ukr/yp$44;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ukr/yp$44;-><init>(Lcom/byazt/ukr/yp;Lorg/json/JSONObject;)V

    const-string p1, "device_qty_compare"

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public c(I)V
    .locals 3

    .line 109
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    new-instance v1, Lcom/byazt/ukr/yp$21;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ukr/yp$21;-><init>(Lcom/byazt/ukr/yp;I)V

    const-string p1, "has_pre_req"

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public c(IJLjava/lang/Boolean;Ljava/lang/String;)V
    .locals 9

    .line 108
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    new-instance v8, Lcom/byazt/ukr/yp$20;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p2

    move-object v5, p4

    move v6, p1

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/byazt/ukr/yp$20;-><init>(Lcom/byazt/ukr/yp;JLjava/lang/Boolean;ILjava/lang/String;)V

    const-string p1, "encrypt_track"

    const/4 p2, 0x1

    invoke-interface {v0, v8, p1, p2}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public c(IJLjava/lang/String;I)V
    .locals 9

    .line 107
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    new-instance v8, Lcom/byazt/ukr/yp$19;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p2

    move v5, p1

    move v6, p5

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/byazt/ukr/yp$19;-><init>(Lcom/byazt/ukr/yp;JIILjava/lang/String;)V

    const-string p1, "encrypt_track"

    const/4 p2, 0x1

    invoke-interface {v0, v8, p1, p2}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public c(ILcom/byazt/ete/ic;Z)V
    .locals 2

    .line 94
    invoke-static {p2}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 95
    invoke-direct {p0, p2, p3}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    new-instance v1, Lcom/byazt/ukr/yp$10;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/byazt/ukr/yp$10;-><init>(Lcom/byazt/ukr/yp;ILjava/lang/String;Z)V

    if-eqz p3, :cond_1

    const-string p1, "reg_creative"

    goto :goto_0

    :cond_1
    const-string p1, "no_reg_creative"

    :goto_0
    const/4 p2, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public c(ILcom/byazt/omf/qy;)V
    .locals 8

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, -0x1

    .line 104
    invoke-virtual {p2, v0, v1}, Lcom/byazt/omf/qy;->c(J)Lorg/json/JSONObject;

    move-result-object v4

    .line 105
    invoke-virtual {p2}, Lcom/byazt/omf/qy;->tt()J

    move-result-wide v5

    .line 106
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object p2

    new-instance v0, Lcom/byazt/ukr/yp$18;

    move-object v2, v0

    move-object v3, p0

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/byazt/ukr/yp$18;-><init>(Lcom/byazt/ukr/yp;Lorg/json/JSONObject;JI)V

    const-string p1, "get_bidding_token"

    const/4 v1, 0x1

    invoke-interface {p2, v0, p1, v1}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 110
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    new-instance v8, Lcom/byazt/ukr/yp$22;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p5

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/byazt/ukr/yp$22;-><init>(Lcom/byazt/ukr/yp;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fetch_adm_status"

    const/4 p2, 0x1

    invoke-interface {v0, v8, p1, p2}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public c(JJI)V
    .locals 11

    sub-long v7, p3, p1

    const-wide/16 v0, 0x0

    cmp-long v2, v7, v0

    if-lez v2, :cond_1

    const-wide/32 v0, 0x1c9c380

    cmp-long v2, v7, v0

    if-ltz v2, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v9

    new-instance v10, Lcom/byazt/ukr/yp$12;

    move-object v0, v10

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/byazt/ukr/yp$12;-><init>(Lcom/byazt/ukr/yp;JJIJ)V

    const-string v0, "general_label"

    const/4 v1, 0x1

    invoke-interface {v9, v10, v0, v1}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(JJII)V
    .locals 10

    .line 134
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    new-instance v9, Lcom/byazt/ukr/yp$51;

    move-object v1, v9

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/byazt/ukr/yp$51;-><init>(Lcom/byazt/ukr/yp;JJII)V

    const-string v1, "dex_adapter_track"

    const/4 v2, 0x1

    invoke-interface {v0, v9, v1, v2}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public c(JLcom/byazt/whk/n;)V
    .locals 2

    .line 102
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    new-instance v1, Lcom/byazt/ukr/yp$16;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/byazt/ukr/yp$16;-><init>(Lcom/byazt/ukr/yp;JLcom/byazt/whk/n;)V

    const-string p1, "pitaya_init"

    const/4 p2, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public c(JLjava/lang/String;Lcom/byazt/ee/c;)V
    .locals 8

    if-nez p4, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    new-instance v7, Lcom/byazt/ukr/yp$9;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p3

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/byazt/ukr/yp$9;-><init>(Lcom/byazt/ukr/yp;Lcom/byazt/ee/c;Ljava/lang/String;J)V

    const/4 p1, 0x1

    invoke-interface {v0, v7, p3, p1}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public c(Lcom/byazt/ee/c;)V
    .locals 1

    const-string v0, "outer_call"

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/byazt/ukr/yp;->ve(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/byazt/ee/c;Ljava/lang/String;)V
    .locals 2

    .line 8
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;FFFFLandroid/view/View;)V
    .locals 9

    .line 133
    new-instance v8, Lcom/byazt/ukr/yp$50;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p5

    move v5, p2

    move v6, p3

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/byazt/ukr/yp$50;-><init>(Lcom/byazt/ukr/yp;Lcom/byazt/ete/ic;FFFFLandroid/view/View;)V

    const-string p1, "video_size_gap"

    invoke-virtual {p0, v8, p1}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;IILandroid/view/View;)V
    .locals 7

    .line 128
    new-instance v6, Lcom/byazt/ukr/yp$36;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/byazt/ukr/yp$36;-><init>(Lcom/byazt/ukr/yp;Lcom/byazt/ete/ic;IILandroid/view/View;)V

    const-string p1, "register_info"

    invoke-virtual {p0, v6, p1}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;ILjava/lang/String;)V
    .locals 2

    .line 31
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    new-instance v1, Lcom/byazt/ukr/yp$43;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/byazt/ukr/yp$43;-><init>(Lcom/byazt/ukr/yp;Lcom/byazt/ete/ic;ILjava/lang/String;)V

    const-string p1, "use_player"

    const/4 p2, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;JZZ)V
    .locals 8

    .line 126
    new-instance v7, Lcom/byazt/ukr/yp$34;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-wide v4, p2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/byazt/ukr/yp$34;-><init>(Lcom/byazt/ukr/yp;Lcom/byazt/ete/ic;ZJZ)V

    const-string p1, "auth_time"

    invoke-virtual {p0, v7, p1}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;Ljava/lang/Object;)V
    .locals 1

    .line 129
    new-instance v0, Lcom/byazt/ukr/yp$37;

    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/ukr/yp$37;-><init>(Lcom/byazt/ukr/yp;Lcom/byazt/ete/ic;Ljava/lang/Object;)V

    const-string p1, "upie_img_play_success"

    invoke-virtual {p0, v0, p1}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 116
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    .line 117
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "req_id"

    .line 118
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "aid"

    .line 119
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->gu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "cid"

    .line 120
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "showTime"

    const/4 p2, 0x0

    .line 121
    invoke-virtual {p0, p1, v0, p2}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;Ljava/lang/String;J)V
    .locals 7

    .line 130
    new-instance v6, Lcom/byazt/ukr/yp$40;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/byazt/ukr/yp$40;-><init>(Lcom/byazt/ukr/yp;Lcom/byazt/ete/ic;Ljava/lang/String;J)V

    const-string p1, "uttie_played"

    invoke-virtual {p0, v6, p1}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 131
    new-instance v0, Lcom/byazt/ukr/yp$42;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/byazt/ukr/yp$42;-><init>(Lcom/byazt/ukr/yp;Ljava/lang/String;Lcom/byazt/ete/ic;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0, p2}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    new-instance v1, Lcom/byazt/ukr/yp$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/ukr/yp$4;-><init>(Lcom/byazt/ukr/yp;Lcom/byazt/ete/ic;Lorg/json/JSONObject;)V

    const-string p1, "jsb_video_action"

    const/4 p2, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public c(Lcom/byazt/qal/tt;)V
    .locals 3

    .line 97
    invoke-direct {p0, p1}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/qal/tt;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "load_icon_error"

    .line 98
    invoke-virtual {p1, v0}, Lcom/byazt/qal/tt;->c(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 99
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v1

    new-instance v2, Lcom/byazt/ukr/yp$11;

    invoke-direct {v2, p0, p1}, Lcom/byazt/ukr/yp$11;-><init>(Lcom/byazt/ukr/yp;Lcom/byazt/qal/tt;)V

    const/4 p1, 0x1

    invoke-interface {v1, v2, v0, p1}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 30
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    new-instance v8, Lcom/byazt/ukr/yp$33;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/byazt/ukr/yp$33;-><init>(Lcom/byazt/ukr/yp;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "obm_result"

    const/4 p2, 0x1

    invoke-interface {v0, v8, p1, p2}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    new-instance v1, Lcom/byazt/ukr/yp$25;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ukr/yp$25;-><init>(Lcom/byazt/ukr/yp;Ljava/lang/String;)V

    const-string p1, "error_ad_info"

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public c(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JZZZZI)V
    .locals 9

    .line 32
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "code"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, p5

    .line 33
    :try_start_1
    invoke-virtual {v6, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "message"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, p6

    .line 34
    :try_start_2
    invoke-virtual {v6, v0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "version"

    move v1, p3

    .line 35
    invoke-virtual {v6, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "current_version"

    move v1, p2

    .line 36
    invoke-virtual {v6, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "package_name"

    move-object v1, p1

    .line 37
    invoke-virtual {v6, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "url"

    move-object v4, p4

    .line 38
    invoke-virtual {v6, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "duration"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-wide/from16 v4, p7

    .line 39
    :try_start_3
    invoke-virtual {v6, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "max_retry_count"

    .line 40
    invoke-static {p1}, Lcom/byazt/ogz/da;->tt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "uuid"

    .line 41
    invoke-static {}, Lcom/byazt/by/c;->ve()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "isRetry"

    move/from16 v1, p9

    .line 42
    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "is_old_plugin"

    move/from16 v1, p10

    .line 43
    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "is_resume_download"

    move/from16 v1, p11

    .line 44
    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "is_downloader"

    move/from16 v1, p12

    .line 45
    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "downloader_try_count"

    move/from16 v1, p13

    .line 46
    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "host_abi"

    .line 47
    invoke-static {}, Lcom/byazt/qya/tt;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    :catchall_0
    move v2, p5

    :catchall_1
    move-object v3, p6

    :catchall_2
    move-wide/from16 v4, p7

    .line 48
    :catchall_3
    :goto_0
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v7

    new-instance v8, Lcom/byazt/ukr/yp$52;

    move-object v0, v8

    move-object v1, p0

    move v2, p5

    move-object v3, p6

    move-wide/from16 v4, p7

    invoke-direct/range {v0 .. v6}, Lcom/byazt/ukr/yp$52;-><init>(Lcom/byazt/ukr/yp;ILjava/lang/String;JLorg/json/JSONObject;)V

    const-string v0, "plugin_download"

    const/4 v1, 0x1

    invoke-interface {v7, v8, v0, v1}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 29
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    new-instance v1, Lcom/byazt/ukr/yp$23;

    invoke-direct {v1, p0, p2, p1}, Lcom/byazt/ukr/yp$23;-><init>(Lcom/byazt/ukr/yp;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sdk_retention"

    const/4 p2, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 7

    .line 127
    new-instance v6, Lcom/byazt/ukr/yp$35;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/byazt/ukr/yp$35;-><init>(Lcom/byazt/ukr/yp;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V

    const-string p1, "convert_event"

    invoke-virtual {p0, v6, p1}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 101
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    new-instance v7, Lcom/byazt/ukr/yp$15;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/byazt/ukr/yp$15;-><init>(Lcom/byazt/ukr/yp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, "get_bidding_token"

    invoke-interface {v0, v7, p1, p4}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;ZJLorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 12

    .line 103
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    new-instance v11, Lcom/byazt/ukr/yp$17;

    move-object v1, v11

    move-object v2, p0

    move-wide/from16 v3, p4

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/byazt/ukr/yp$17;-><init>(Lcom/byazt/ukr/yp;JLjava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const-string v1, "pitaya_run_task"

    const/4 v2, 0x1

    invoke-interface {v0, v11, v1, v2}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, p1, v0, p2}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 115
    :cond_0
    new-instance v0, Lcom/byazt/ukr/yp$27;

    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/ukr/yp$27;-><init>(Lcom/byazt/ukr/yp;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0, p1}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Throwable;)V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 124
    invoke-static {p1, v0, v1}, Lcom/byazt/ukr/n;->c(Ljava/lang/String;D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    new-instance v0, Lcom/byazt/ukr/yp$29;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/byazt/ukr/yp$29;-><init>(Lcom/byazt/ukr/yp;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Throwable;)V

    const-string p1, "exception"

    invoke-virtual {p0, v0, p1}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 113
    :cond_0
    new-instance v0, Lcom/byazt/ukr/yp$26;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/byazt/ukr/yp$26;-><init>(Lcom/byazt/ukr/yp;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0, p1}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    new-instance v1, Lcom/byazt/ukr/yp$1;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ukr/yp$1;-><init>(Lcom/byazt/ukr/yp;Lorg/json/JSONObject;)V

    const-string p1, "render_backup"

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public c(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1

    .line 123
    new-instance v0, Lcom/byazt/ukr/yp$28;

    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/ukr/yp$28;-><init>(Lcom/byazt/ukr/yp;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const-string p1, "device_register"

    invoke-virtual {p0, v0, p1}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return-void
.end method

.method public c(Z[Ljava/lang/String;)V
    .locals 2

    .line 100
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    new-instance v1, Lcom/byazt/ukr/yp$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/ukr/yp$13;-><init>(Lcom/byazt/ukr/yp;Z[Ljava/lang/String;)V

    const-string p1, "download_permission"

    const/4 p2, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public da(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/byazt/ukr/yp$49;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lcom/byazt/ukr/yp$49;-><init>(Lcom/byazt/ukr/yp;Lorg/json/JSONObject;)V

    .line 11
    .line 12
    .line 13
    const-string p1, "type_realtime_feature_cost"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-interface {v0, v1, p1, v2}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public i(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/byazt/ukr/yp$47;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lcom/byazt/ukr/yp$47;-><init>(Lcom/byazt/ukr/yp;Lorg/json/JSONObject;)V

    .line 11
    .line 12
    .line 13
    const-string p1, "landingpage_check_info"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-interface {v0, v1, p1, v2}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public n(Lcom/byazt/ee/c;)V
    .locals 1

    const-string v0, "express_ad_render"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/byazt/ukr/yp;->uj(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return-void
.end method

.method public n(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "live_init_start"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public sp(Lcom/byazt/ee/c;)V
    .locals 1

    const-string v0, "splash_creative_check"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/byazt/ukr/yp;->ve(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return-void
.end method

.method public sp(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    new-instance v1, Lcom/byazt/ukr/yp$45;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ukr/yp$45;-><init>(Lcom/byazt/ukr/yp;Lorg/json/JSONObject;)V

    const-string p1, "device_bytebench"

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public tt()V
    .locals 4

    .line 40
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    new-instance v1, Lcom/byazt/ukr/yp$3;

    invoke-direct {v1, p0}, Lcom/byazt/ukr/yp$3;-><init>(Lcom/byazt/ukr/yp;)V

    const-string v2, "sdk_permission"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public tt(I)V
    .locals 3

    .line 42
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    new-instance v1, Lcom/byazt/ukr/yp$24;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ukr/yp$24;-><init>(Lcom/byazt/ukr/yp;I)V

    const-string p1, "get_ad_cache_failed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public tt(Lcom/byazt/ee/c;)V
    .locals 1

    const-string v0, "outer_call_send"

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/byazt/ukr/yp;->ve(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return-void
.end method

.method public tt(Lcom/byazt/ee/c;Ljava/lang/String;)V
    .locals 2

    .line 43
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public tt(Lcom/byazt/ete/ic;ILjava/lang/String;)V
    .locals 1

    .line 46
    new-instance v0, Lcom/byazt/ukr/yp$38;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/byazt/ukr/yp$38;-><init>(Lcom/byazt/ukr/yp;Lcom/byazt/ete/ic;ILjava/lang/String;)V

    const-string p1, "upie_img_play_fail"

    invoke-virtual {p0, v0, p1}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return-void
.end method

.method public tt(Lcom/byazt/ete/ic;Ljava/lang/String;)V
    .locals 1

    .line 47
    new-instance v0, Lcom/byazt/ukr/yp$39;

    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/ukr/yp$39;-><init>(Lcom/byazt/ukr/yp;Lcom/byazt/ete/ic;Ljava/lang/String;)V

    const-string p1, "uttie_start"

    invoke-virtual {p0, v0, p1}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return-void
.end method

.method public tt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, ""

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "zeus"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "plugin_load_failed"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "zeus_"

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, p1

    :goto_0
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string p2, "version_code"

    .line 6
    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v1, "plugin_package_name"

    .line 7
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "zeus_install_finish"

    .line 8
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "com.byted.pangle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/byazt/ukr/tt;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/byazt/ukr/yp;->tt:Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    move-result-object v1

    const-string v3, "plugin_install_msg"

    sget-object v4, Lcom/byazt/ukr/yp;->tt:Ljava/lang/String;

    .line 11
    invoke-interface {v1, v3, v4}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/byazt/xgx/n;->c()Lcom/byazt/xgx/n;

    move-result-object v1

    .line 13
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v3, v4}, Lcom/byazt/xgx/n;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-string v3, "sd_per"

    .line 14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    invoke-static {}, Lcom/byazt/ukr/yp;->ve()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ins/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v5

    invoke-virtual {v5}, Lcom/byazt/omf/x;->rl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const-string v5, "is_installed"

    .line 18
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    .line 19
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 20
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 21
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 22
    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    if-eqz v5, :cond_1

    .line 23
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 24
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move-object v8, p2

    move-object v9, v0

    move-object v6, v2

    goto :goto_3

    :cond_3
    const-string v1, "mkdirs"

    .line 25
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_4
    move-object v1, v2

    move-object v10, v0

    move-object v0, p2

    move-object p2, v10

    goto :goto_2

    :catch_1
    move-object p2, v0

    move-object v1, v2

    goto :goto_2

    :catch_2
    :cond_5
    move-object p2, v0

    :goto_2
    move-object v9, p2

    move-object v8, v0

    move-object v6, v1

    .line 26
    :goto_3
    new-instance p2, Lcom/byazt/ukr/yp$53;

    const-string v4, "plugin_report"

    move-object v2, p2

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v9}, Lcom/byazt/ukr/yp$53;-><init>(Lcom/byazt/ukr/yp;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/byazt/bwm/n;->ve(Lcom/byazt/bwm/sp;)V

    return-void
.end method

.method public tt(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 44
    new-instance v0, Lcom/byazt/ukr/yp$30;

    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/ukr/yp$30;-><init>(Lcom/byazt/ukr/yp;Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string p1, "soverify_result"

    invoke-virtual {p0, v0, p1}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return-void
.end method

.method public tt(Lorg/json/JSONObject;)V
    .locals 1

    .line 45
    new-instance v0, Lcom/byazt/ukr/yp$31;

    invoke-direct {v0, p0, p1}, Lcom/byazt/ukr/yp$31;-><init>(Lcom/byazt/ukr/yp;Lorg/json/JSONObject;)V

    const-string p1, "saas_schema"

    invoke-virtual {p0, v0, p1}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return-void
.end method

.method public uj(Lcom/byazt/ee/c;)V
    .locals 1

    const-string v0, "load_timeout"

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/byazt/ukr/yp;->ve(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return-void
.end method

.method public uj(Lcom/byazt/ete/ic;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, v0}, Lcom/byazt/ukr/yp;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public uj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    new-instance v1, Lcom/byazt/ukr/yp$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/byazt/ukr/yp$2;-><init>(Lcom/byazt/ukr/yp;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "lp_monitor"

    const/4 p2, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public uj(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "live_init_success"

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public ve(Lcom/byazt/ee/c;)V
    .locals 1

    const-string v0, "outer_call_no_rsp"

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/byazt/ukr/yp;->ve(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return-void
.end method

.method public ve(Lcom/byazt/ete/ic;Ljava/lang/String;)V
    .locals 1

    .line 24
    new-instance v0, Lcom/byazt/ukr/yp$41;

    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/ukr/yp$41;-><init>(Lcom/byazt/ukr/yp;Lcom/byazt/ete/ic;Ljava/lang/String;)V

    const-string p1, "uttie_close"

    invoke-virtual {p0, v0, p1}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return-void
.end method

.method public ve(Lorg/json/JSONObject;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 23
    :cond_0
    new-instance v0, Lcom/byazt/ukr/yp$32;

    invoke-direct {v0, p0, p1}, Lcom/byazt/ukr/yp$32;-><init>(Lcom/byazt/ukr/yp;Lorg/json/JSONObject;)V

    const-string p1, "saas_playable_end_card"

    invoke-virtual {p0, v0, p1}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return-void
.end method

.method public x(Lcom/byazt/ee/c;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    new-instance v1, Lcom/byazt/ukr/yp$14;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ukr/yp$14;-><init>(Lcom/byazt/ukr/yp;Lcom/byazt/ee/c;)V

    const-string p1, "app_env"

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public x(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/byazt/ukr/tt;->ve()Lcom/byazt/nv/c;

    move-result-object v0

    new-instance v1, Lcom/byazt/ukr/yp$46;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ukr/yp$46;-><init>(Lcom/byazt/ukr/yp;Lorg/json/JSONObject;)V

    const-string p1, "render_timeout_opt"

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/byazt/nv/c;->c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V

    return-void
.end method

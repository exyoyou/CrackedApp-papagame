.class public Lcom/byazt/uwt/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x111,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/uwt/ve$c;
    }
.end annotation


# static fields
.field public static final c:Lcom/byazt/uk/sl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/uk/sl;->c()Lcom/byazt/uk/sl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/byazt/uwt/ve;->c:Lcom/byazt/uk/sl;

    .line 6
    .line 7
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/uwt/ve$c;
        }
    .end annotation

    .line 1
    const-string v0, ";"

    .line 2
    .line 3
    const-string v1, "checkSignature cost:"

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0, p1, v4}, Lcom/byazt/fdg/n;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide p0

    .line 31
    sub-long/2addr p0, v2

    .line 32
    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 40
    .line 41
    const-string v5, "\u5b89\u88c5\u5305\u7b7e\u540d\u6821\u9a8c\u5931\u8d25[1]:"

    .line 42
    .line 43
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-direct {p0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p0

    .line 58
    :try_start_2
    sget-object v4, Lcom/byazt/gvs/tt;->n:Ljava/lang/String;

    .line 59
    .line 60
    sget v5, Lcom/byazt/gvs/tt$c;->rl:I

    .line 61
    .line 62
    const-wide/16 v8, -0x1

    .line 63
    .line 64
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    move-object v6, p1

    .line 69
    move v7, p2

    .line 70
    invoke-static/range {v4 .. v10}, Lcom/byazt/uwt/ve;->c(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sget-object v4, Lcom/byazt/uwt/ve;->c:Lcom/byazt/uk/sl;

    .line 74
    .line 75
    const/16 v5, 0x44c

    .line 76
    .line 77
    const/4 v6, -0x3

    .line 78
    move-object v7, p1

    .line 79
    move v8, p2

    .line 80
    move-object v9, p0

    .line 81
    invoke-virtual/range {v4 .. v9}, Lcom/byazt/uk/sl;->c(IILjava/lang/String;ILjava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    new-instance p1, Lcom/byazt/uwt/ve$c;

    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    const/4 v4, 0x0

    .line 91
    invoke-direct {p1, p2, p0, v4}, Lcom/byazt/uwt/ve$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/byazt/uwt/ve$1;)V

    .line 92
    .line 93
    .line 94
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    :goto_0
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    .line 97
    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 99
    .line 100
    .line 101
    move-result-wide p1

    .line 102
    sub-long/2addr p1, v2

    .line 103
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    .line 108
    .line 109
    throw p0
.end method

.method public static synthetic c(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/uwt/ve$c;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/byazt/uwt/ve;->a(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/uwt/ve$c;
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lcom/byazt/uwt/ve;->ve(Ljava/lang/String;I)V

    return-void
.end method

.method public static c(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 25
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 26
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "status_code"

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/blh/ve;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "plugin_package_name"

    .line 28
    invoke-static {p2}, Lcom/byazt/blh/ve;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "version_code"

    .line 29
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lcom/byazt/blh/ve;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "duration"

    .line 30
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Lcom/byazt/blh/ve;->tt(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "message"

    .line 31
    invoke-static {p6}, Lcom/byazt/blh/ve;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 32
    invoke-static {p1}, Lcom/byazt/bog/a;->c(Ljava/lang/Throwable;)V

    .line 33
    :goto_0
    invoke-static {}, Lcom/byazt/gvs/tt;->c()Lcom/byazt/gvs/tt;

    move-result-object p1

    invoke-virtual {p1, p0, v0, v2, v1}, Lcom/byazt/gvs/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;ILjava/util/Map;Ljava/lang/StringBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/uwt/ve$c;
        }
    .end annotation

    .line 3
    invoke-static {p0, p1, p2, p3}, Lcom/byazt/uwt/ve;->tt(Ljava/lang/String;ILjava/util/Map;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;Ljava/lang/String;ILjava/lang/StringBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/uwt/ve$c;
        }
    .end annotation

    .line 4
    invoke-static {p0, p1, p2, p3}, Lcom/byazt/uwt/ve;->tt(Ljava/lang/String;Ljava/lang/String;ILjava/lang/StringBuffer;)V

    return-void
.end method

.method public static c(Ljava/io/File;Ljava/lang/String;I)Z
    .locals 17

    move-object/from16 v8, p1

    move/from16 v9, p2

    const-string v10, "Zeus/install_pangle"

    .line 6
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "useOpt;"

    .line 7
    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    new-array v12, v0, [Z

    const/4 v13, 0x0

    aput-boolean v13, v12, v13

    .line 8
    :try_start_0
    sget-object v14, Lcom/byazt/uwt/ve;->c:Lcom/byazt/uk/sl;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, v14

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/byazt/uk/sl;->c(IILjava/lang/String;ILjava/lang/Throwable;)V

    const-string v1, "PluginInstaller"

    const-string v2, "install:"

    .line 9
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v1, v2}, Lcom/byazt/blh/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/blh/tt;

    move-result-object v15

    .line 10
    sget-object v1, Lcom/byazt/gvs/tt;->uj:Ljava/lang/String;

    sget v2, Lcom/byazt/gvs/tt$c;->rh:I

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-static/range {v1 .. v7}, Lcom/byazt/uwt/ve;->c(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    .line 11
    invoke-static/range {p1 .. p2}, Lcom/byazt/uwt/ve;->tt(Ljava/lang/String;I)V

    .line 12
    invoke-static/range {p1 .. p2}, Lcom/byazt/th/ve;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/uq/sp;->c(Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v7, v1, [Lcom/byazt/ao/c$c;

    .line 13
    new-instance v1, Lcom/byazt/uwt/ve$1;

    move-object/from16 v6, p0

    invoke-direct {v1, v6, v8, v9, v11}, Lcom/byazt/uwt/ve$1;-><init>(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)V

    aput-object v1, v7, v13

    new-instance v16, Lcom/byazt/uwt/ve$2;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v11

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/byazt/uwt/ve$2;-><init>(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;[Z)V

    aput-object v16, v7, v0

    invoke-static {v13, v7}, Lcom/byazt/ao/c;->c(Z[Lcom/byazt/ao/c$c;)V

    .line 14
    invoke-static/range {p0 .. p0}, Lcom/byazt/uq/sp;->c(Ljava/io/File;)V

    .line 15
    sget-object v1, Lcom/byazt/gvs/tt;->n:Ljava/lang/String;

    sget v2, Lcom/byazt/gvs/tt$c;->my:I

    invoke-virtual {v15}, Lcom/byazt/blh/tt;->c()J

    move-result-wide v5

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-static/range {v1 .. v7}, Lcom/byazt/uwt/ve;->c(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    const-string v1, "success"

    .line 16
    invoke-virtual {v15, v1}, Lcom/byazt/blh/tt;->c(Ljava/lang/String;)J

    const/16 v2, 0x44c

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, v14

    move-object/from16 v4, p1

    move/from16 v5, p2

    .line 17
    invoke-virtual/range {v1 .. v6}, Lcom/byazt/uk/sl;->c(IILjava/lang/String;ILjava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 18
    instance-of v1, v0, Lcom/byazt/uwt/ve$c;

    const-string v2, "PluginInstaller "

    if-eqz v1, :cond_0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " install failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " install failed unknown error."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    sget-object v1, Lcom/byazt/gvs/tt;->n:Ljava/lang/String;

    sget v2, Lcom/byazt/gvs/tt$c;->gt:I

    const-wide/16 v5, -0x1

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-static/range {v1 .. v7}, Lcom/byazt/uwt/ve;->c(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    .line 22
    sget-object v1, Lcom/byazt/uwt/ve;->c:Lcom/byazt/uk/sl;

    const/16 v2, 0x44c

    const/4 v3, -0x1

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/byazt/uk/sl;->c(IILjava/lang/String;ILjava/lang/Throwable;)V

    :goto_0
    aget-boolean v0, v12, v13

    if-eqz v0, :cond_1

    .line 23
    invoke-static {}, Lcom/byazt/uq/u;->c()Lcom/byazt/uq/u;

    move-result-object v0

    const-string v1, "install"

    invoke-virtual {v0, v8, v9, v1}, Lcom/byazt/uq/u;->c(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    return v13
.end method

.method public static synthetic c(Ljava/lang/String;IZLjava/lang/StringBuffer;)Z
    .locals 0

    .line 5
    invoke-static {p0, p1, p2, p3}, Lcom/byazt/uwt/ve;->tt(Ljava/lang/String;IZLjava/lang/StringBuffer;)Z

    move-result p0

    return p0
.end method

.method private static da(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/uwt/ve$c;
        }
    .end annotation

    .line 1
    const-string p0, ";"

    .line 2
    .line 3
    const-string v0, "dexOpt1 cost:"

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    :try_start_0
    invoke-static {}, Lcom/byazt/uq/i;->sp()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    invoke-static {p1, p2}, Lcom/byazt/th/ve;->ve(Ljava/lang/String;I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {p1, p2}, Lcom/byazt/th/ve;->tt(Ljava/lang/String;I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    new-instance v5, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-static {v4}, Lcom/byazt/xe/tt;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    new-instance v7, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-static {v4}, Lcom/byazt/xe/tt;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-static {v4, v3}, Lcom/byazt/xe/tt;->c(Ljava/lang/String;Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_0

    .line 74
    .line 75
    filled-new-array {v5}, [Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-static {v3}, Lcom/byazt/xe/tt;->c([Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    if-eqz p1, :cond_0

    .line 84
    .line 85
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    .line 87
    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 89
    .line 90
    .line 91
    move-result-wide p1

    .line 92
    sub-long/2addr p1, v1

    .line 93
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    .line 98
    .line 99
    const/4 p0, 0x1

    .line 100
    return p0

    .line 101
    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    .line 103
    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 105
    .line 106
    .line 107
    move-result-wide p1

    .line 108
    sub-long/2addr p1, v1

    .line 109
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    .line 114
    .line 115
    const/4 p0, 0x0

    .line 116
    return p0

    .line 117
    :catchall_0
    move-exception p1

    .line 118
    goto :goto_0

    .line 119
    :catch_0
    move-exception v3

    .line 120
    :try_start_1
    sget-object v4, Lcom/byazt/gvs/tt;->n:Ljava/lang/String;

    .line 121
    .line 122
    sget v5, Lcom/byazt/gvs/tt$c;->yv:I

    .line 123
    .line 124
    const-wide/16 v8, -0x1

    .line 125
    .line 126
    const/4 v10, 0x0

    .line 127
    move-object v6, p1

    .line 128
    move v7, p2

    .line 129
    invoke-static/range {v4 .. v10}, Lcom/byazt/uwt/ve;->c(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    new-instance p1, Lcom/byazt/uwt/ve$c;

    .line 133
    .line 134
    const-string p2, "dexOpt1\u5931\u8d25"

    .line 135
    .line 136
    const/4 v4, 0x0

    .line 137
    invoke-direct {p1, p2, v3, v4}, Lcom/byazt/uwt/ve$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/byazt/uwt/ve$1;)V

    .line 138
    .line 139
    .line 140
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :goto_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    .line 143
    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 145
    .line 146
    .line 147
    move-result-wide v3

    .line 148
    sub-long/2addr v3, v1

    .line 149
    invoke-virtual {p3, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    .line 154
    .line 155
    throw p1
.end method

.method private static i(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/uwt/ve$c;
        }
    .end annotation

    .line 1
    const-string v0, ";"

    .line 2
    .line 3
    const-string v1, "copyApk cost:"

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    invoke-static {p1, p2}, Lcom/byazt/th/ve;->tt(Ljava/lang/String;I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0, v4}, Lcom/byazt/uq/x;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide p0

    .line 27
    sub-long/2addr p0, v2

    .line 28
    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    .line 33
    .line 34
    return-object v4

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    :try_start_1
    sget-object v4, Lcom/byazt/gvs/tt;->n:Ljava/lang/String;

    .line 39
    .line 40
    sget v5, Lcom/byazt/gvs/tt$c;->gu:I

    .line 41
    .line 42
    const-wide/16 v8, -0x1

    .line 43
    .line 44
    const/4 v10, 0x0

    .line 45
    move-object v6, p1

    .line 46
    move v7, p2

    .line 47
    invoke-static/range {v4 .. v10}, Lcom/byazt/uwt/ve;->c(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object v4, Lcom/byazt/uwt/ve;->c:Lcom/byazt/uk/sl;

    .line 51
    .line 52
    const/16 v5, 0x44c

    .line 53
    .line 54
    const/4 v6, -0x6

    .line 55
    move-object v7, p1

    .line 56
    move v8, p2

    .line 57
    move-object v9, p0

    .line 58
    invoke-virtual/range {v4 .. v9}, Lcom/byazt/uk/sl;->c(IILjava/lang/String;ILjava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    new-instance p1, Lcom/byazt/uwt/ve$c;

    .line 62
    .line 63
    const-string p2, "\u5b89\u88c5\u5305\u62f7\u8d1d\u5931\u8d25"

    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    invoke-direct {p1, p2, p0, v4}, Lcom/byazt/uwt/ve$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/byazt/uwt/ve$1;)V

    .line 67
    .line 68
    .line 69
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :goto_0
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    .line 72
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 74
    .line 75
    .line 76
    move-result-wide p1

    .line 77
    sub-long/2addr p1, v2

    .line 78
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    .line 83
    .line 84
    throw p0
.end method

.method public static synthetic n(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/uwt/ve$c;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/byazt/uwt/ve;->da(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static sp(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/StringBuffer;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/zip/ZipEntry;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/uwt/ve$c;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p3

    .line 2
    .line 3
    const-string v2, "\u63d2\u4ef6\u5305\u5305\u542bso\u4e0d\u7b26\u5408\u5bbf\u4e3bABI\u7c7b\u578b"

    .line 4
    .line 5
    const-string v3, ";"

    .line 6
    .line 7
    const-string v4, "checkMatchHostAbi cost:"

    .line 8
    .line 9
    invoke-static {}, Lcom/bytedance/pangle/GlobalParam;->getInstance()Lcom/bytedance/pangle/GlobalParam;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/bytedance/pangle/GlobalParam;->checkMatchHostAbi()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v5, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v6

    .line 24
    :try_start_0
    invoke-static {p0}, Lcom/byazt/th/tt;->c(Ljava/io/File;)Lcom/byazt/uq/n;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v8, v0, Lcom/byazt/uq/n;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v8, Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    iget-object v0, v0, Lcom/byazt/uq/n;->tt:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    if-eqz v8, :cond_0

    .line 41
    .line 42
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    sub-long/2addr v4, v6

    .line 50
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_0
    :try_start_1
    new-instance v0, Lcom/byazt/uwt/ve$c;

    .line 58
    .line 59
    invoke-direct {v0, v2, v5}, Lcom/byazt/uwt/ve$c;-><init>(Ljava/lang/String;Lcom/byazt/uwt/ve$1;)V

    .line 60
    .line 61
    .line 62
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    :try_start_2
    sget-object v8, Lcom/byazt/gvs/tt;->n:Ljava/lang/String;

    .line 67
    .line 68
    sget v9, Lcom/byazt/gvs/tt$c;->p:I

    .line 69
    .line 70
    const-wide/16 v12, -0x1

    .line 71
    .line 72
    const/4 v14, 0x0

    .line 73
    move-object/from16 v10, p1

    .line 74
    .line 75
    move/from16 v11, p2

    .line 76
    .line 77
    invoke-static/range {v8 .. v14}, Lcom/byazt/uwt/ve;->c(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    sget-object v8, Lcom/byazt/uwt/ve;->c:Lcom/byazt/uk/sl;

    .line 81
    .line 82
    const/16 v9, 0x44c

    .line 83
    .line 84
    const/4 v10, -0x5

    .line 85
    move-object/from16 v11, p1

    .line 86
    .line 87
    move/from16 v12, p2

    .line 88
    .line 89
    move-object v13, v0

    .line 90
    invoke-virtual/range {v8 .. v13}, Lcom/byazt/uk/sl;->c(IILjava/lang/String;ILjava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    new-instance v8, Lcom/byazt/uwt/ve$c;

    .line 94
    .line 95
    invoke-direct {v8, v2, v0, v5}, Lcom/byazt/uwt/ve$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/byazt/uwt/ve$1;)V

    .line 96
    .line 97
    .line 98
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    .line 101
    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 103
    .line 104
    .line 105
    move-result-wide v4

    .line 106
    sub-long/2addr v4, v6

    .line 107
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    .line 112
    .line 113
    throw v0

    .line 114
    :cond_1
    return-object v5
.end method

.method public static synthetic tt(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/uwt/ve$c;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/byazt/uwt/ve;->sp(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static tt(Ljava/lang/String;I)V
    .locals 5

    .line 2
    invoke-static {}, Lcom/byazt/uq/u;->c()Lcom/byazt/uq/u;

    move-result-object v0

    const-string v1, "install"

    invoke-virtual {v0, p0, p1, v1}, Lcom/byazt/uq/u;->tt(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 3
    invoke-static {}, Lcom/byazt/uq/u;->c()Lcom/byazt/uq/u;

    move-result-object v1

    const-string v2, "load"

    invoke-virtual {v1, p0, p1, v2}, Lcom/byazt/uq/u;->tt(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 4
    invoke-static {}, Lcom/bytedance/pangle/GlobalParam;->getInstance()Lcom/bytedance/pangle/GlobalParam;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/bytedance/pangle/GlobalParam;->getRemoveApkEntryFlag(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-gt v0, v4, :cond_0

    if-le v1, v4, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 5
    :cond_1
    invoke-static {}, Lcom/byazt/uq/u;->c()Lcom/byazt/uq/u;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v2}, Lcom/byazt/uq/u;->c(Ljava/lang/String;II)V

    .line 6
    invoke-static {}, Lcom/byazt/uq/u;->c()Lcom/byazt/uq/u;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v3}, Lcom/byazt/uq/u;->ve(Ljava/lang/String;IZ)V

    return-void
.end method

.method private static tt(Ljava/lang/String;ILjava/util/Map;Ljava/lang/StringBuffer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/zip/ZipEntry;",
            ">;>;",
            "Ljava/lang/StringBuffer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/uwt/ve$c;
        }
    .end annotation

    const-string v0, ";"

    const-string v1, "copySo cost:"

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 22
    invoke-static {p0, p1}, Lcom/byazt/th/ve;->tt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 23
    invoke-static {p0, p1}, Lcom/byazt/th/ve;->uj(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 24
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v4, p0, p2}, Lcom/byazt/th/tt;->c(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v2

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 26
    :try_start_1
    sget-object v4, Lcom/byazt/gvs/tt;->n:Ljava/lang/String;

    sget v5, Lcom/byazt/gvs/tt$c;->gr:I

    const-wide/16 v8, -0x1

    .line 27
    invoke-static {p2}, Lcom/byazt/blh/ve;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v6, p0

    move v7, p1

    .line 28
    invoke-static/range {v4 .. v10}, Lcom/byazt/uwt/ve;->c(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    .line 29
    sget-object v4, Lcom/byazt/uwt/ve;->c:Lcom/byazt/uk/sl;

    const/16 v5, 0x44c

    const/4 v6, -0x7

    move-object v7, p0

    move v8, p1

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/byazt/uk/sl;->c(IILjava/lang/String;ILjava/lang/Throwable;)V

    .line 30
    new-instance p0, Lcom/byazt/uwt/ve$c;

    const-string p1, "\u5b89\u88c5\u5305\u52a8\u6001\u5e93\u62f7\u8d1d\u5931\u8d25"

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, v4}, Lcom/byazt/uwt/ve$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/byazt/uwt/ve$1;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :goto_0
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v2

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    throw p0
.end method

.method private static tt(Ljava/lang/String;Ljava/lang/String;ILjava/lang/StringBuffer;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/uwt/ve$c;
        }
    .end annotation

    move-object/from16 v0, p3

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    new-instance v4, Lcom/byazt/vnu/ve;

    invoke-direct {v4}, Lcom/byazt/vnu/ve;-><init>()V

    new-instance v5, Ljava/io/File;

    move-object/from16 v6, p0

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Lcom/byazt/vnu/ve;->c(Ljava/io/File;ZLjava/lang/StringBuilder;)I

    move-result v4

    const/16 v5, 0x64

    if-ne v4, v5, :cond_0

    const-string v6, "modifyRes"

    goto :goto_0

    :cond_0
    const-string v6, "noModifyRes"

    .line 16
    :goto_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, " cost:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eq v4, v5, :cond_2

    const/16 v0, 0xc8

    if-ne v4, v0, :cond_1

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    sget-object v5, Lcom/byazt/gvs/tt;->n:Ljava/lang/String;

    sget v6, Lcom/byazt/gvs/tt$c;->md:I

    const-wide/16 v9, -0x1

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object v11, v0

    invoke-static/range {v5 .. v11}, Lcom/byazt/uwt/ve;->c(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    .line 19
    sget-object v11, Lcom/byazt/uwt/ve;->c:Lcom/byazt/uk/sl;

    const/16 v12, 0x44c

    const/4 v13, -0x2

    const/16 v16, 0x0

    move-object/from16 v14, p1

    move/from16 v15, p2

    invoke-virtual/range {v11 .. v16}, Lcom/byazt/uk/sl;->c(IILjava/lang/String;ILjava/lang/Throwable;)V

    .line 20
    new-instance v1, Lcom/byazt/uwt/ve$c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "modifyRes failed. result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", errorLog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/byazt/uwt/ve$c;-><init>(Ljava/lang/String;Lcom/byazt/uwt/ve$1;)V

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method private static tt(Ljava/lang/String;IZLjava/lang/StringBuffer;)Z
    .locals 10

    .line 7
    invoke-static {}, Lcom/byazt/uq/u;->c()Lcom/byazt/uq/u;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/byazt/uq/u;->x(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-nez v1, :cond_2

    if-nez v6, :cond_2

    const-string p0, "removeEntry skip;"

    .line 8
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v2

    :cond_2
    if-eqz p2, :cond_3

    if-eqz v1, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 9
    :goto_2
    invoke-static {p0, p1}, Lcom/byazt/th/ve;->tt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v9, 0x1

    move-object v7, p0

    move v8, p1

    .line 11
    invoke-static/range {v4 .. v9}, Lcom/byazt/mx/tt;->c(Ljava/lang/String;ZZLjava/lang/String;II)Z

    move-result p0

    const-string p1, "removeEntry cost:"

    .line 12
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string p1, ";"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return p0
.end method

.method public static synthetic uj(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/uwt/ve$c;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/byazt/uwt/ve;->i(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic ve(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/uwt/ve$c;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/byazt/uwt/ve;->x(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)V

    return-void
.end method

.method private static ve(Ljava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/uwt/ve$c;
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-static {}, Lcom/byazt/uq/i;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/byazt/uq/i;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-static {}, Lcom/byazt/uq/u;->c()Lcom/byazt/uq/u;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/byazt/uq/u;->tt(Ljava/lang/String;IZ)V

    .line 4
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/xe/tt;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5
    invoke-static {}, Lcom/byazt/xe/n;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 6
    sget-object v1, Lcom/byazt/gvs/tt;->n:Ljava/lang/String;

    sget v2, Lcom/byazt/gvs/tt$c;->yv:I

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    move-object v3, p0

    move v4, p1

    invoke-static/range {v1 .. v7}, Lcom/byazt/uwt/ve;->c(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    .line 7
    new-instance p0, Lcom/byazt/uwt/ve$c;

    const-string p1, "dexOpt2\u5931\u8d25"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/byazt/uwt/ve$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/byazt/uwt/ve$1;)V

    throw p0
.end method

.method private static x(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/uwt/ve$c;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p3

    .line 2
    .line 3
    const-string v0, "The following permissions are declared in the plugin but not in the host: "

    .line 4
    .line 5
    const-string v2, ";"

    .line 6
    .line 7
    const-string v3, "checkPermissions cost:"

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    const/4 v6, 0x0

    .line 14
    :try_start_0
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    const/16 v9, 0x1000

    .line 31
    .line 32
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    invoke-virtual {v8, v10, v9}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 59
    .line 60
    if-eqz v9, :cond_3

    .line 61
    .line 62
    array-length v9, v9

    .line 63
    if-lez v9, :cond_3

    .line 64
    .line 65
    new-instance v9, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    iget-object v8, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 71
    .line 72
    array-length v10, v8

    .line 73
    const/4 v11, 0x0

    .line 74
    :goto_0
    if-ge v11, v10, :cond_1

    .line 75
    .line 76
    aget-object v12, v8, v11

    .line 77
    .line 78
    invoke-interface {v7, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v13

    .line 82
    if-nez v13, :cond_0

    .line 83
    .line 84
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    :cond_0
    add-int/lit8 v11, v11, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    if-nez v7, :cond_3

    .line 95
    .line 96
    const-string v7, "PluginInstaller"

    .line 97
    .line 98
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    invoke-static {v7, v8}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {}, Lcom/bytedance/pangle/GlobalParam;->getInstance()Lcom/bytedance/pangle/GlobalParam;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    invoke-virtual {v7}, Lcom/bytedance/pangle/GlobalParam;->checkPermission()Z

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-nez v7, :cond_2

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    new-instance v7, Lcom/byazt/uwt/ve$c;

    .line 121
    .line 122
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-direct {v7, v0, v6}, Lcom/byazt/uwt/ve$c;-><init>(Ljava/lang/String;Lcom/byazt/uwt/ve$1;)V

    .line 131
    .line 132
    .line 133
    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_3
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    .line 136
    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 138
    .line 139
    .line 140
    move-result-wide v6

    .line 141
    sub-long/2addr v6, v4

    .line 142
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :catchall_0
    move-exception v0

    .line 150
    goto :goto_2

    .line 151
    :catch_0
    move-exception v0

    .line 152
    :try_start_1
    sget-object v7, Lcom/byazt/gvs/tt;->n:Ljava/lang/String;

    .line 153
    .line 154
    sget v8, Lcom/byazt/gvs/tt$c;->qy:I

    .line 155
    .line 156
    const-wide/16 v11, -0x1

    .line 157
    .line 158
    const/4 v13, 0x0

    .line 159
    move-object v9, p1

    .line 160
    move/from16 v10, p2

    .line 161
    .line 162
    invoke-static/range {v7 .. v13}, Lcom/byazt/uwt/ve;->c(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    .line 163
    .line 164
    .line 165
    sget-object v8, Lcom/byazt/uwt/ve;->c:Lcom/byazt/uk/sl;

    .line 166
    .line 167
    const/16 v9, 0x44c

    .line 168
    .line 169
    const/4 v10, -0x4

    .line 170
    move-object v11, p1

    .line 171
    move/from16 v12, p2

    .line 172
    .line 173
    move-object v13, v0

    .line 174
    invoke-virtual/range {v8 .. v13}, Lcom/byazt/uk/sl;->c(IILjava/lang/String;ILjava/lang/Throwable;)V

    .line 175
    .line 176
    .line 177
    new-instance v7, Lcom/byazt/uwt/ve$c;

    .line 178
    .line 179
    const-string v8, "\u5b89\u88c5\u5305\u6743\u9650\u6821\u9a8c\u5931\u8d25"

    .line 180
    .line 181
    invoke-direct {v7, v8, v0, v6}, Lcom/byazt/uwt/ve$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/byazt/uwt/ve$1;)V

    .line 182
    .line 183
    .line 184
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    .line 187
    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 189
    .line 190
    .line 191
    move-result-wide v6

    .line 192
    sub-long/2addr v6, v4

    .line 193
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    .line 198
    .line 199
    throw v0
.end method

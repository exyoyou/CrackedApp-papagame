.class public Lcom/byazt/tg/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/tg/sp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7a4,
        0xd
    }
.end annotation


# static fields
.field public static c:Lcom/byazt/de/uj;

.field public static tt:Lcom/byazt/de/ve;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c(I)I
    .locals 2

    .line 18
    invoke-static {p1}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object p1

    const-string v0, "cancel_pause_optimise_apk_size"

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x400

    mul-int/lit16 p1, p1, 0x400

    return p1
.end method

.method public static c()Lcom/byazt/de/uj;
    .locals 1

    .line 3
    sget-object v0, Lcom/byazt/tg/tt;->c:Lcom/byazt/de/uj;

    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/de/uj;)Lcom/byazt/de/uj;
    .locals 0

    .line 1
    sput-object p0, Lcom/byazt/tg/tt;->c:Lcom/byazt/de/uj;

    return-object p0
.end method

.method private c(IILcom/byazt/dd/tt;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "pause_optimise_type"

    .line 22
    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "pause_optimise_action"

    .line 23
    invoke-virtual {v0, p4, p5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "download_current_bytes"

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p4, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "download_total_bytes"

    .line 25
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 27
    :goto_0
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object p1

    const-string p2, "pause_cancel_optimise"

    invoke-virtual {p1, p2, v0, p3}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    return-void
.end method

.method public static c(Lcom/byazt/de/ve;)V
    .locals 0

    .line 4
    sput-object p0, Lcom/byazt/tg/tt;->tt:Lcom/byazt/de/ve;

    return-void
.end method

.method public static synthetic c(Lcom/byazt/tg/tt;IILcom/byazt/dd/tt;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/byazt/tg/tt;->c(IILcom/byazt/dd/tt;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/byazt/dd/c;)Z
    .locals 3

    .line 19
    invoke-static {p1}, Lcom/byazt/hu/n;->c(Lcom/byazt/dd/c;)Lcom/byazt/k/c;

    move-result-object v0

    const-string v1, "cancel_pause_optimise_apk_retain_switch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 20
    invoke-interface {p1}, Lcom/byazt/dd/c;->nu()Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v2
.end method

.method public static tt()Lcom/byazt/de/ve;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/tg/tt;->tt:Lcom/byazt/de/ve;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public c(Lcom/byazt/dd/tt;ILcom/byazt/tg/x;Lcom/byazt/de/ve;)Z
    .locals 16

    move-object/from16 v6, p1

    const/4 v7, 0x0

    if-nez v6, :cond_0

    return v7

    .line 5
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/byazt/tg/tt;->c(Lcom/byazt/dd/c;)Z

    move-result v0

    if-nez v0, :cond_1

    return v7

    .line 6
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dd/tt;->oz()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v8, 0x1

    if-nez v0, :cond_2

    .line 7
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/di/da;->c(Landroid/content/Context;)Lcom/byazt/di/da;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dd/tt;->oz()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v8}, Lcom/byazt/di/da;->c(Ljava/lang/String;Ljava/lang/String;Z)Lcom/byazt/t/DownloadInfo;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/di/da;->c(Landroid/content/Context;)Lcom/byazt/di/da;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dd/tt;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/di/da;->tt(Ljava/lang/String;)Lcom/byazt/t/DownloadInfo;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    return v7

    .line 9
    :cond_3
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/byazt/gq/da;->c(IJJ)J

    move-result-wide v9

    .line 10
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v11

    const-wide/16 v0, 0x0

    cmp-long v2, v9, v0

    if-ltz v2, :cond_5

    cmp-long v2, v11, v0

    if-lez v2, :cond_5

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dd/tt;->my()I

    move-result v0

    move-object/from16 v13, p0

    invoke-direct {v13, v0}, Lcom/byazt/tg/tt;->c(I)I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, v11, v0

    if-gtz v2, :cond_6

    const-wide/32 v0, 0x100000

    .line 12
    div-long v0, v9, v0

    long-to-int v14, v0

    .line 13
    new-instance v15, Lcom/byazt/tg/tt$1;

    move-object v0, v15

    move-object/from16 v1, p0

    move v2, v14

    move v3, v14

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/byazt/tg/tt$1;-><init>(Lcom/byazt/tg/tt;IILcom/byazt/dd/tt;Lcom/byazt/tg/x;)V

    sput-object v15, Lcom/byazt/tg/tt;->c:Lcom/byazt/de/uj;

    sub-long/2addr v11, v9

    .line 14
    invoke-static {v11, v12}, Lcom/byazt/hu/u;->c(J)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v0, v1, v7

    const-string v0, "\u8be5\u4e0b\u8f7d\u4efb\u52a1\u4ec5\u9700%s\uff0c\u5373\u5c06\u4e0b\u8f7d\u5b8c\u6210\uff0c\u662f\u5426\u7ee7\u7eed\u4e0b\u8f7d\uff1f"

    .line 15
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    if-eqz p4, :cond_4

    .line 16
    new-instance v9, Lcom/byazt/tg/tt$2;

    move-object v0, v9

    move-object/from16 v1, p0

    move v2, v14

    move v3, v14

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/byazt/tg/tt$2;-><init>(Lcom/byazt/tg/tt;IILcom/byazt/dd/tt;Lcom/byazt/de/ve;)V

    invoke-static {v9}, Lcom/byazt/tg/tt;->c(Lcom/byazt/de/ve;)V

    :cond_4
    const-string v0, "\u6682\u505c"

    const-string v1, "\u5220\u9664"

    const-string v2, "\u7ee7\u7eed"

    .line 17
    invoke-static {v6, v7, v2, v0, v1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->c(Lcom/byazt/dd/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_5
    move-object/from16 v13, p0

    :cond_6
    return v7
.end method

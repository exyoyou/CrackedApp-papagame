.class public Lcom/byazt/lr/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x9b,
        0x22
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/lr/a$c;
    }
.end annotation


# instance fields
.field public final c:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/byazt/lr/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/lr/a$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/lr/a;-><init>()V

    return-void
.end method

.method public static c()Lcom/byazt/lr/a;
    .locals 1

    .line 5
    invoke-static {}, Lcom/byazt/lr/a$c;->c()Lcom/byazt/lr/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/lr/a;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/lr/a;->tt()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/lr/a;Lcom/byazt/nn/n;Ljava/lang/String;Lcom/byazt/lr/x;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/lr/a;->c(Lcom/byazt/nn/n;Ljava/lang/String;Lcom/byazt/lr/x;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/lr/a;Lcom/byazt/nn/n;Ljava/lang/String;[BLcom/byazt/lr/x;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/lr/a;->tt(Lcom/byazt/nn/n;Ljava/lang/String;[BLcom/byazt/lr/x;)V

    return-void
.end method

.method private c(Lcom/byazt/nn/n;Ljava/lang/String;Lcom/byazt/lr/x;)V
    .locals 2
    .param p1    # Lcom/byazt/nn/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object p2

    const-string v0, "response content is null"

    invoke-virtual {p2, v0}, Lcom/byazt/dm/ve;->c(Ljava/lang/String;)V

    const/16 p2, 0x194

    .line 34
    invoke-virtual {p0, p2, p1}, Lcom/byazt/lr/a;->c(ILcom/byazt/nn/n;)V

    .line 35
    invoke-interface {p3}, Lcom/byazt/lr/x;->c()V

    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/byazt/lr/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 37
    invoke-static {p2}, Lcom/byazt/lr/n;->sp(Ljava/lang/String;)Lcom/byazt/lr/n;

    move-result-object p2

    .line 38
    invoke-virtual {p2}, Lcom/byazt/lr/n;->c()I

    move-result v0

    if-eqz v0, :cond_1

    const/16 p2, 0x193

    .line 39
    invoke-virtual {p0, p2, p1}, Lcom/byazt/lr/a;->c(ILcom/byazt/nn/n;)V

    .line 40
    invoke-interface {p3}, Lcom/byazt/lr/x;->c()V

    return-void

    .line 41
    :cond_1
    invoke-virtual {p2}, Lcom/byazt/lr/n;->tt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p2, 0x195

    .line 42
    invoke-virtual {p0, p2, p1}, Lcom/byazt/lr/a;->c(ILcom/byazt/nn/n;)V

    .line 43
    invoke-interface {p3}, Lcom/byazt/lr/x;->c()V

    return-void

    .line 44
    :cond_2
    invoke-virtual {p2}, Lcom/byazt/lr/n;->tt()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/byazt/lr/x;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 45
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object p2

    const-string p3, "DownloadMiuiMarketHelper parseResponse"

    invoke-virtual {p2, p1, p3}, Lcom/byazt/dm/ve;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/byazt/nn/n;Ljava/lang/String;[BLcom/byazt/lr/x;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/byazt/lr/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 11
    iget-object v0, p0, Lcom/byazt/lr/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/lr/a;->tt(Lcom/byazt/nn/n;Ljava/lang/String;[BLcom/byazt/lr/x;)V

    return-void

    :cond_0
    const-string p2, "\u5f53\u524d\u7f51\u7edc\u4e0d\u4f73\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    .line 13
    invoke-direct {p0, p2}, Lcom/byazt/lr/a;->c(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/byazt/lr/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/16 p2, 0x192

    .line 15
    invoke-virtual {p0, p2, p1}, Lcom/byazt/lr/a;->c(ILcom/byazt/nn/n;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 16
    invoke-static {}, Lcom/byazt/di/x;->c()Lcom/byazt/di/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/di/x;->tt()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/byazt/lr/a$3;

    invoke-direct {v1, p0, p1}, Lcom/byazt/lr/a$3;-><init>(Lcom/byazt/lr/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic c(Lcom/byazt/lr/a;Lcom/byazt/nn/n;ZI)[B
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/lr/a;->c(Lcom/byazt/nn/n;ZI)[B

    move-result-object p0

    return-object p0
.end method

.method private c(Lcom/byazt/nn/n;ZI)[B
    .locals 3

    .line 17
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "download_url"

    .line 18
    invoke-virtual {p1}, Lcom/byazt/nn/n;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "package_name"

    .line 19
    invoke-virtual {p1}, Lcom/byazt/nn/n;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "call_scene"

    const/16 v2, 0x32

    .line 20
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string p1, "sender_package_name"

    .line 21
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "sender_version"

    .line 22
    invoke-static {}, Lcom/byazt/gq/t;->da()Lcom/byazt/e/c;

    move-result-object p2

    iget-object p2, p2, Lcom/byazt/e/c;->n:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-lez p3, :cond_3

    const-string p1, "store"

    .line 23
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string p2, "id"

    .line 24
    invoke-virtual {p1}, Lcom/byazt/nn/n;->tt()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    invoke-virtual {p1}, Lcom/byazt/nn/n;->rl()Lcom/byazt/su/DownloadModel;

    move-result-object p2

    invoke-interface {p2}, Lcom/byazt/su/DownloadModel;->getDeepLink()Lcom/byazt/e/DeepLink;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 26
    invoke-virtual {p1}, Lcom/byazt/nn/n;->rl()Lcom/byazt/su/DownloadModel;

    move-result-object p2

    invoke-interface {p2}, Lcom/byazt/su/DownloadModel;->getDeepLink()Lcom/byazt/e/DeepLink;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/e/DeepLink;->getWebUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 27
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object p2

    const-string p3, "web_url is null"

    invoke-virtual {p2, p3}, Lcom/byazt/dm/ve;->c(Ljava/lang/String;)V

    :cond_1
    const-string p2, "web_url"

    .line 28
    invoke-virtual {p1}, Lcom/byazt/nn/n;->rl()Lcom/byazt/su/DownloadModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getDeepLink()Lcom/byazt/e/DeepLink;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/e/DeepLink;->getWebUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 29
    :cond_2
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object p1

    const-string p2, "deeplink is null"

    invoke-virtual {p1, p2}, Lcom/byazt/dm/ve;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 30
    :catch_0
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object p1

    const-string p2, "param build error"

    invoke-virtual {p1, p2}, Lcom/byazt/dm/ve;->c(Ljava/lang/String;)V

    .line 31
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method private tt()Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/byazt/lr/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    const-string v1, "https://apps.bytesfield.com"

    goto :goto_0

    :cond_0
    const-string v1, "https://apps.bytesfield-b.com"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/customer/api/app/deep_link"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic tt(Lcom/byazt/lr/a;Lcom/byazt/nn/n;Ljava/lang/String;[BLcom/byazt/lr/x;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/lr/a;->c(Lcom/byazt/nn/n;Ljava/lang/String;[BLcom/byazt/lr/x;)V

    return-void
.end method

.method private tt(Lcom/byazt/nn/n;Ljava/lang/String;[BLcom/byazt/lr/x;)V
    .locals 12
    .param p1    # Lcom/byazt/nn/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-static {}, Lcom/byazt/gq/t;->uj()Lcom/byazt/ou/x;

    move-result-object v0

    const-string v3, "application/json; charset=utf-8"

    const/4 v4, 0x0

    new-instance v11, Lcom/byazt/lr/a$2;

    move-object v5, v11

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p4

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/byazt/lr/a$2;-><init>(Lcom/byazt/lr/a;Lcom/byazt/nn/n;Lcom/byazt/lr/x;Ljava/lang/String;[B)V

    move-object v1, p2

    move-object v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/byazt/ou/x;->c(Ljava/lang/String;[BLjava/lang/String;ILcom/byazt/ou/my;)V

    return-void
.end method


# virtual methods
.method public c(ILcom/byazt/nn/n;)V
    .locals 2

    .line 46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "download_miui_market_fail_code"

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 48
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 49
    :goto_0
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object p1

    const-string v1, "get_miui_market_compliance_error"

    invoke-virtual {p1, v1, v0, p2}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    return-void
.end method

.method public c(ILcom/byazt/nn/n;Lorg/json/JSONObject;)V
    .locals 1

    :try_start_0
    const-string v0, "download_miui_market_success_result"

    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 51
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 52
    :goto_0
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object p1

    const-string v0, "get_miui_market_compliance_success"

    invoke-virtual {p1, v0, p3, p2}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    return-void
.end method

.method public c(Lcom/byazt/nn/n;Lcom/byazt/lr/x;)V
    .locals 2

    .line 6
    invoke-static {}, Lcom/byazt/gq/t;->uj()Lcom/byazt/ou/x;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object p2

    const-string v0, "getDownloadNetworkFactory == NULL"

    invoke-virtual {p2, v0}, Lcom/byazt/dm/ve;->c(Ljava/lang/String;)V

    const/16 p2, 0x191

    .line 8
    invoke-virtual {p0, p2, p1}, Lcom/byazt/lr/a;->c(ILcom/byazt/nn/n;)V

    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/byazt/di/n;->c()Lcom/byazt/di/n;

    move-result-object v0

    new-instance v1, Lcom/byazt/lr/a$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/lr/a$1;-><init>(Lcom/byazt/lr/a;Lcom/byazt/nn/n;Lcom/byazt/lr/x;)V

    invoke-virtual {v0, v1}, Lcom/byazt/di/n;->c(Ljava/lang/Runnable;)V

    return-void
.end method

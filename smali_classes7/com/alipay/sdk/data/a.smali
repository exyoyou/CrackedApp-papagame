.class public final Lcom/alipay/sdk/data/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:I = 0xdac

.field public static final d:Ljava/lang/String; = "http://h5.m.taobao.com/trade/paySuccess.html?bizOrderId=$OrderId$&"

.field public static final e:I = 0x3e8

.field public static final f:I = 0x4e20

.field public static final g:Ljava/lang/String; = "alipay_cashier_dynamic_config"

.field public static final h:Ljava/lang/String; = "timeout"

.field public static final i:Ljava/lang/String; = "st_sdk_config"

.field public static final j:Ljava/lang/String; = "tbreturl"

.field private static k:Lcom/alipay/sdk/data/a;


# instance fields
.field private a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xdac

    .line 5
    .line 6
    iput v0, p0, Lcom/alipay/sdk/data/a;->a:I

    .line 7
    .line 8
    const-string v0, "http://h5.m.taobao.com/trade/paySuccess.html?bizOrderId=$OrderId$&"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/alipay/sdk/data/a;->b:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private static synthetic c(Lcom/alipay/sdk/data/a;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "timeout"

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/alipay/sdk/data/a;->a()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    const-string v1, "tbreturl"

    .line 16
    .line 17
    iget-object p0, p0, Lcom/alipay/sdk/data/a;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lx/b;->b()Lx/b;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    iget-object p0, p0, Lx/b;->a:Landroid/content/Context;

    .line 27
    .line 28
    const-string v1, "alipay_cashier_dynamic_config"

    .line 29
    .line 30
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {p0, v1, v0}, Lcom/alipay/sdk/util/i;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    :catch_0
    return-void
.end method

.method private static synthetic d(Lcom/alipay/sdk/data/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/alipay/sdk/data/a;->e(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static f()Lcom/alipay/sdk/data/a;
    .locals 3

    .line 1
    sget-object v0, Lcom/alipay/sdk/data/a;->k:Lcom/alipay/sdk/data/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/alipay/sdk/data/a;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/alipay/sdk/data/a;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/alipay/sdk/data/a;->k:Lcom/alipay/sdk/data/a;

    .line 11
    .line 12
    invoke-static {}, Lx/b;->b()Lx/b;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v1, v1, Lx/b;->a:Landroid/content/Context;

    .line 17
    .line 18
    const-string v2, "alipay_cashier_dynamic_config"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lcom/alipay/sdk/util/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/alipay/sdk/data/a;->e(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    sget-object v0, Lcom/alipay/sdk/data/a;->k:Lcom/alipay/sdk/data/a;

    .line 28
    .line 29
    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/data/a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private h()V
    .locals 2

    .line 1
    invoke-static {}, Lx/b;->b()Lx/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lx/b;->a:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "alipay_cashier_dynamic_config"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/alipay/sdk/util/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Lcom/alipay/sdk/data/a;->e(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private i()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "timeout"

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/alipay/sdk/data/a;->a()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    const-string v1, "tbreturl"

    .line 16
    .line 17
    iget-object v2, p0, Lcom/alipay/sdk/data/a;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lx/b;->b()Lx/b;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v1, v1, Lx/b;->a:Landroid/content/Context;

    .line 27
    .line 28
    const-string v2, "alipay_cashier_dynamic_config"

    .line 29
    .line 30
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v1, v2, v0}, Lcom/alipay/sdk/util/i;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    :catch_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/alipay/sdk/data/a;->a:I

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    const/16 v1, 0x4e20

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v0, p0, Lcom/alipay/sdk/data/a;->a:I

    .line 13
    .line 14
    return v0

    .line 15
    :cond_1
    :goto_0
    const/16 v0, 0xdac

    .line 16
    .line 17
    return v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lcom/alipay/sdk/data/b;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/alipay/sdk/data/b;-><init>(Lcom/alipay/sdk/data/a;Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method final e(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string p1, "st_sdk_config"

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "timeout"

    .line 20
    .line 21
    const/16 v1, 0xdac

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/alipay/sdk/data/a;->a:I

    .line 28
    .line 29
    const-string v0, "tbreturl"

    .line 30
    .line 31
    const-string v1, "http://h5.m.taobao.com/trade/paySuccess.html?bizOrderId=$OrderId$&"

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/alipay/sdk/data/a;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    :catchall_0
    return-void
.end method

.class public Lcom/aggmoread/sdk/z/a/g/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lcom/aggmoread/sdk/z/a/g/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/aggmoread/sdk/z/a/h/a;->d()Lcom/aggmoread/sdk/z/a/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/h/a;->b()Lcom/aggmoread/sdk/z/a/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .line 2
    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 3
    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return p2

    :cond_1
    const-string v0, "unknown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return p2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "L"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "P"

    return-object p0

    :cond_1
    const-string p0, "U"

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/b;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/g/e;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/b;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/g/e;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/b;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/g/e;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/g/e;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/b;->y()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/g/e;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/b;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/g/e;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/b;->G()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/aggmoread/sdk/z/a/g/e;->i:I

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/b;->C()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/g/e;->j:Ljava/lang/String;

    iput v2, p0, Lcom/aggmoread/sdk/z/a/g/e;->g:I

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/g/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "L"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/g/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "P"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->k:I

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/b;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/g/e;->l:Ljava/lang/String;

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/b;->r()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/g/e;->d:Ljava/lang/String;

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/b;->E()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/g/e;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/g/b;->t()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/g/e;->n:Ljava/lang/String;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/e;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/aggmoread/sdk/z/a/g/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/e;->c:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/e;->a:Ljava/lang/String;

    :goto_2
    const-string v1, "imei"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/j/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "imeiMd5"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    const-string v0, "mac"

    :try_start_1
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "androidId"

    :try_start_2
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/e;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v0, :cond_5

    const-string v0, "androidIdMd5"

    :try_start_3
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aggmoread/sdk/z/a/j/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_5
    const-string v0, "oaid"

    :try_start_4
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->n:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/aggmoread/sdk/z/a/g/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/aggmoread/sdk/z/a/i/e;->t:Ljava/lang/String;

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->n:Ljava/lang/String;

    :goto_3
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v0, "model"

    :try_start_5
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    const-string v0, "vendor"

    :try_start_6
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    const-string v0, "screenWidth"

    :try_start_7
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/g/b;->F()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    const-string v0, "screenHeight"

    :try_start_8
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/g/b;->i()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    const-string v0, "osType"

    :try_start_9
    iget v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->g:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    const-string v0, "osVersion"

    :try_start_a
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    const-string v0, "deviceType"

    :try_start_b
    iget v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->i:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0

    const-string v0, "ua"

    :try_start_c
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_0

    const-string v0, "ppi"

    :try_start_d
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/g/b;->w()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_0

    const-string v0, "screenOrientation"

    :try_start_e
    iget v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->k:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_0

    const-string v0, "serialNo"

    :try_start_f
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->m:Ljava/lang/String;

    const-string v2, "unknown"

    invoke-direct {p0, v1, v2}, Lcom/aggmoread/sdk/z/a/g/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->c:Ljava/lang/String;

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->m:Ljava/lang/String;

    :goto_4
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_0

    const-string v0, "brand"

    :try_start_10
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_0

    const-string v0, "imsi"

    :try_start_11
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_0

    const-string v0, "updateMark"

    :try_start_12
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/g/b;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_0

    const-string v0, "bootMark"

    :try_start_13
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/g/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_0

    const-string v0, "systemBootTimeMilliSec"

    :try_start_14
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/g/b;->A()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_0

    const-string v0, "deviceNameMd5"

    :try_start_15
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/aggmoread/sdk/z/a/j/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_0

    const-string v0, "physicalMemoryKBytes"

    :try_start_16
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/g/b;->p()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_0

    const-string v0, "hardDiskSizeKBytes"

    :try_start_17
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/g/b;->h()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_0

    const-string v0, "systemUpdateTimeNanoSec"

    :try_start_18
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/g/b;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_0

    const-string v0, "boardModel"

    :try_start_19
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/g/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_19} :catch_0

    const-string v0, "apiLevel"

    :try_start_1a
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/g/b;->v()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_0

    const-string v0, "density"

    :try_start_1b
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/g/b;->g()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_1b} :catch_0

    const-string v0, "hmsCore"

    :try_start_1c
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/g/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_1c} :catch_0

    const-string v0, "romVersion"

    :try_start_1d
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/g/b;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_1d} :catch_0

    const-string v0, "appstoreVersion"

    :try_start_1e
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/g/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_1e} :catch_0

    const-string v0, "browserVersion"

    :try_start_1f
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/g/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_1f} :catch_0

    const-string v0, "miuiVersion"

    :try_start_20
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/g/b;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_20} :catch_0

    const-string v0, "ssid"

    :try_start_21
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    invoke-virtual {v1}, Lcom/aggmoread/sdk/z/a/g/b;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/e;->o:Lcom/aggmoread/sdk/z/a/g/b;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/g/b;->m()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_5

    :cond_8
    const-string v0, "installedApps"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_21} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JuHeApiDevice{imei=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mac=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/g/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", androidId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/g/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", model=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/g/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", vendor=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/g/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", osType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/aggmoread/sdk/z/a/g/e;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", osVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/g/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deviceType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/aggmoread/sdk/z/a/g/e;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ua=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/g/e;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", screenOrientation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/aggmoread/sdk/z/a/g/e;->k:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", brand=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/g/e;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", serialNo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/g/e;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

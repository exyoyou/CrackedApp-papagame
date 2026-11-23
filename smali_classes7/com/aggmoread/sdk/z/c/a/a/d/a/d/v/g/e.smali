.class public Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;
.super Lcom/aggmoread/sdk/z/c/a/a/d/a/d/d;
.source "SourceFile"


# static fields
.field protected static C:Ljava/lang/String; = "AMUTAGGDT"


# instance fields
.field public A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

.field public B:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/qq/e/ads/nativ/NativeUnifiedADData;Lcom/qq/e/ads/nativ/NativeUnifiedAD;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/util/Map;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qq/e/ads/nativ/NativeUnifiedADData;",
            "Lcom/qq/e/ads/nativ/NativeUnifiedAD;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/e;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/f;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0, p3, p4, p5}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/d;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/util/Map;)V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    iput p6, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->B:I

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/d;->t:Ljava/util/Map;

    invoke-static {p2, p1, p4}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/b;->a(Ljava/util/Map;Ljava/lang/Object;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/d;->a(Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)V

    return-void
.end method

.method private i()Lorg/json/JSONObject;
    .locals 5

    const-string v0, "a"

    :try_start_0
    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "e"

    invoke-static {v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const-string v3, "com.qq.e.comm.plugin.nativeadunified.g"

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "4.580"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "4.575"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "4.570"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "4.562"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "4.542"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v3, "4.540"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_6
    const-string v3, "4.520"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_7
    const-string v3, "4.500"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_8
    const-string v3, "4.471"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xc

    goto :goto_1

    :sswitch_9
    const-string v3, "4.464"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xb

    goto :goto_1

    :sswitch_a
    const-string v3, "4.462"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_b
    const-string v3, "4.452"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_c
    const-string v3, "4.440"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v3, "L"

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v3, "K"

    goto :goto_2

    :pswitch_1
    const-string v3, "N"

    goto :goto_2

    :pswitch_2
    const-string v3, "M"

    :goto_2
    :pswitch_3
    :try_start_2
    invoke-static {v0, v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/j;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->C:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdInfoObj err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x2f278f6 -> :sswitch_c
        0x2f27917 -> :sswitch_b
        0x2f27936 -> :sswitch_a
        0x2f27938 -> :sswitch_9
        0x2f27954 -> :sswitch_8
        0x2f27c3b -> :sswitch_7
        0x2f27c79 -> :sswitch_6
        0x2f27cb7 -> :sswitch_5
        0x2f27cb9 -> :sswitch_4
        0x2f27cf7 -> :sswitch_3
        0x2f27d14 -> :sswitch_2
        0x2f27d19 -> :sswitch_1
        0x2f27d33 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private j()Lcom/aggmoread/sdk/z/c/a/a/c/c;
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "getAppMiitInfo"

    const/4 v3, 0x0

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-class v2, Lcom/qq/e/ads/nativ/NativeUnifiedADAppMiitInfo;

    const-string v3, "getAppName"

    invoke-static {v2, v1, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/j;->b(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "getAuthorName"

    invoke-static {v2, v1, v4}, Lcom/aggmoread/sdk/z/c/a/a/e/j;->b(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "getPackageSizeBytes"

    invoke-static {v2, v1, v5}, Lcom/aggmoread/sdk/z/c/a/a/e/j;->b(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "getPermissionsUrl"

    invoke-static {v2, v1, v6}, Lcom/aggmoread/sdk/z/c/a/a/e/j;->b(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "getPrivacyAgreement"

    invoke-static {v2, v1, v7}, Lcom/aggmoread/sdk/z/c/a/a/e/j;->b(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "getVersionName"

    invoke-static {v2, v1, v8}, Lcom/aggmoread/sdk/z/c/a/a/e/j;->b(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "getDescriptionUrl"

    invoke-static {v2, v1, v9}, Lcom/aggmoread/sdk/z/c/a/a/e/j;->b(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "getIcpNumber"

    invoke-static {v2, v1, v10}, Lcom/aggmoread/sdk/z/c/a/a/e/j;->b(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "getSuitableAge"

    invoke-static {v2, v1, v11}, Lcom/aggmoread/sdk/z/c/a/a/e/j;->b(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v3, Ljava/lang/String;

    if-eqz v2, :cond_0

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    instance-of v3, v4, Ljava/lang/String;

    if-eqz v3, :cond_1

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    instance-of v4, v5, Ljava/lang/Long;

    if-eqz v4, :cond_2

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_2

    :cond_2
    const-wide/16 v4, 0x0

    :goto_2
    instance-of v11, v6, Ljava/lang/String;

    if-eqz v11, :cond_3

    check-cast v6, Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v6, v0

    :goto_3
    instance-of v11, v7, Ljava/lang/String;

    if-eqz v11, :cond_4

    check-cast v7, Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v7, v0

    :goto_4
    instance-of v11, v8, Ljava/lang/String;

    if-eqz v11, :cond_5

    check-cast v8, Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object v8, v0

    :goto_5
    instance-of v11, v9, Ljava/lang/String;

    if-eqz v11, :cond_6

    check-cast v9, Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object v9, v0

    :goto_6
    instance-of v11, v10, Ljava/lang/String;

    if-eqz v11, :cond_7

    check-cast v10, Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object v10, v0

    :goto_7
    instance-of v11, v1, Ljava/lang/String;

    if-eqz v11, :cond_8

    check-cast v1, Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object v1, v0

    :goto_8
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->k()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v2 .. v8}, Lcom/aggmoread/sdk/z/c/a/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aggmoread/sdk/z/c/a/a/c/c;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/aggmoread/sdk/z/c/a/a/c/c;->c(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Lcom/aggmoread/sdk/z/c/a/a/c/c;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Lcom/aggmoread/sdk/z/c/a/a/c/c;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/aggmoread/sdk/z/c/a/a/c/c;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->C:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .locals 5

    const-string v0, "pkgName"

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->i()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "ext"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "packagename"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-static {v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->C:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gdt pkg err:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object v1
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;Landroid/view/View;Ljava/util/List;Landroid/view/View;Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)Landroid/view/View;
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 1
    move-object v8, p0

    move-object v0, p2

    move-object/from16 v1, p7

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->C:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v8, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->B:I

    const/16 v3, 0x5b

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const v1, 0x3baa23b1

    const-string v2, "GDT ad blocked"

    invoke-direct {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-object v4

    :cond_0
    if-nez p4, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v2

    goto :goto_0

    :cond_1
    move-object v5, p4

    :goto_0
    if-eqz v1, :cond_2

    move-object v2, v1

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->C:Ljava/lang/String;

    const-string v6, "ovov + true"

    goto :goto_2

    :cond_3
    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->C:Ljava/lang/String;

    const-string v6, "ovov + false"

    :goto_2
    invoke-static {v3, v6}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v8, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v3}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->C:Ljava/lang/String;

    const-string v6, "ovov "

    invoke-static {v3, v6}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object/from16 v7, p8

    iput-object v7, v8, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->h:Lcom/aggmoread/sdk/z/c/a/a/c/g;

    instance-of v2, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    if-eqz v2, :cond_5

    iget-boolean v2, v8, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/d;->x:Z

    if-eqz v2, :cond_5

    move-object v4, v0

    check-cast v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/d;->y:Ljava/lang/Object;

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->C:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "f n "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object v2, v4

    :goto_3
    if-eqz v4, :cond_6

    if-nez v2, :cond_7

    :cond_6
    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->a(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v2

    check-cast v2, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    invoke-virtual {p0, p2, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/d;->a(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    move-result-object v4

    :cond_7
    move-object v9, v4

    iget-object v6, v8, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->p:Ljava/lang/ref/WeakReference;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, v5

    move-object/from16 v5, p6

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->a(Landroid/content/Context;Lcom/qq/e/ads/nativ/widget/NativeAdContainer;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/WeakReference;Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p5, :cond_8

    new-array v2, v0, [Landroid/view/View;

    aput-object p5, v2, v1

    goto :goto_4

    :cond_8
    new-array v2, v1, [Landroid/view/View;

    :goto_4
    iget-object v1, v8, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->a(Landroid/view/View;[Landroid/view/View;)V

    if-eqz v9, :cond_9

    iput-boolean v0, v9, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;->f:Z

    :cond_9
    return-object v9
.end method

.method protected a(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 1

    .line 2
    new-instance v0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    invoke-direct {v0, p1}, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected a(Landroid/content/Context;Lcom/qq/e/ads/nativ/widget/NativeAdContainer;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/WeakReference;Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/qq/e/ads/nativ/widget/NativeAdContainer;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;",
            ">;",
            "Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;",
            ")V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/d;->c()Lcom/aggmoread/sdk/z/c/a/a/d/a/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/a;->a(Ljava/lang/Object;Lcom/aggmoread/sdk/z/c/a/a/d/a/c;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e$a;

    invoke-direct {v1, p0, p6, p7}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;Ljava/lang/ref/WeakReference;Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)V

    invoke-interface {v0, v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->setNativeAdEventListener(Lcom/qq/e/ads/nativ/NativeADEventListener;)V

    sget-object p6, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->r:Ljava/lang/Boolean;

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p6

    if-eqz p6, :cond_0

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_0
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result p7

    if-eqz p7, :cond_0

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/view/View;

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->C:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-static {v0, p7}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->g()Z

    move-result p6

    if-eqz p6, :cond_1

    sget-object p3, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->C:Ljava/lang/String;

    const-string p6, "hide logo "

    invoke-static {p3, p6}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p6, 0x0

    invoke-direct {p3, p6, p6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_1
    move-object v3, p3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->bindAdToView(Landroid/content/Context;Lcom/qq/e/ads/nativ/widget/NativeAdContainer;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method protected a(Landroid/view/View;[Landroid/view/View;)V
    .locals 8

    .line 5
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/c/j;->g:Lcom/aggmoread/sdk/z/c/a/a/c/j;

    iget-object v6, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/d;->w:Ljava/lang/ref/WeakReference;

    iget-object v7, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/d;->u:Ljava/lang/ref/WeakReference;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;[Ljava/lang/Object;Lcom/aggmoread/sdk/z/c/a/a/c/j;Landroid/view/View;[Landroid/view/View;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->e()Z

    move-result p2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->b()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->b(Ljava/lang/Object;ZZ)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->r:Lcom/aggmoread/sdk/z/c/a/a/e/b;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->b()[B

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object p2, p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    invoke-static {p2, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;[B)V

    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    return-void
.end method

.method protected a(Landroid/view/View;)Z
    .locals 0

    .line 7
    instance-of p1, p1, Lcom/qq/e/ads/nativ/MediaView;

    return p1
.end method

.method protected b(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 1

    .line 1
    new-instance v0, Lcom/qq/e/ads/nativ/MediaView;

    invoke-direct {v0, p1}, Lcom/qq/e/ads/nativ/MediaView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method public b(IILjava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-static {v0, p2, p1, p3}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/d;->a(Ljava/lang/Object;IILjava/lang/String;)V

    return-void
.end method

.method protected b(Landroid/view/ViewGroup;Lcom/aggmoread/sdk/z/c/a/a/c/u/a;)V
    .locals 3

    .line 4
    instance-of v0, p1, Lcom/qq/e/ads/nativ/MediaView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->s:Lcom/aggmoread/sdk/z/c/a/a/c/u/b;

    new-instance v1, Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-direct {v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/u/b;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/u/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayPolicy(I)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/u/b;->f()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setEnableDetailPage(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/u/b;->h()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setNeedCoverImage(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/u/b;->i()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setNeedProgressBar(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    :cond_0
    invoke-virtual {v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->build()Lcom/qq/e/ads/cfg/VideoOption;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    check-cast p1, Lcom/qq/e/ads/nativ/MediaView;

    new-instance v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e$b;

    invoke-direct {v2, p0, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e$b;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;Lcom/aggmoread/sdk/z/c/a/a/c/u/a;)V

    invoke-interface {v1, p1, v0, v2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->bindMediaView(Lcom/qq/e/ads/nativ/MediaView;Lcom/qq/e/ads/cfg/VideoOption;Lcom/qq/e/ads/nativ/NativeADMediaListener;)V

    :cond_1
    return-void
.end method

.method public bindCTAViews(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->bindCTAViews(Ljava/util/List;)V

    return-void
.end method

.method protected d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->destroy()V

    return-void
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getVideoDuration()I

    move-result v0

    return v0
.end method

.method public g()Lcom/aggmoread/sdk/z/c/a/a/c/c;
    .locals 1

    const-string v0, "4.380"

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->j()Lcom/aggmoread/sdk/z/c/a/a/c/c;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/d;->g()Lcom/aggmoread/sdk/z/c/a/a/c/c;

    move-result-object v0

    return-object v0
.end method

.method public getAdPatternType()I
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAdPatternType()I

    move-result v0

    return v0
.end method

.method public getAppPrice()D
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAppPrice()D

    move-result-wide v0

    return-wide v0
.end method

.method public getAppScore()I
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAppScore()I

    move-result v0

    return v0
.end method

.method public getAppStatus()I
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAppStatus()I

    move-result v0

    return v0
.end method

.method public getCTAText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getCTAText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getDesc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadCount()J
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getDownloadCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrlList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPictureHeight()I
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getPictureHeight()I

    move-result v0

    return v0
.end method

.method public getPictureWidth()I
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getPictureWidth()I

    move-result v0

    return v0
.end method

.method public getProgress()I
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getProgress()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getVideoCurrentPosition()I

    move-result v0

    return v0
.end method

.method public isAppAd()Z
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->isAppAd()Z

    move-result v0

    return v0
.end method

.method public isVideoAd()Z
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAdPatternType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pauseVideo()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->pauseVideo()V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->resume()V

    return-void
.end method

.method public resumeVideo()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->resumeVideo()V

    return-void
.end method

.method public setVideoMute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->setVideoMute(Z)V

    return-void
.end method

.method public startVideo()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->startVideo()V

    return-void
.end method

.method public stopVideo()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/v/g/e;->A:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->stopVideo()V

    return-void
.end method

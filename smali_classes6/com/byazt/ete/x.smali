.class public Lcom/byazt/ete/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x47
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ete/x$tt;,
        Lcom/byazt/ete/x$c;,
        Lcom/byazt/ete/x$uj;,
        Lcom/byazt/ete/x$n;,
        Lcom/byazt/ete/x$ve;
    }
.end annotation


# static fields
.field public static a:Lcom/byazt/ete/x$ve;

.field public static c:Lcom/byazt/ete/x$ve;

.field public static n:Lcom/byazt/ete/x$ve;

.field public static sp:Lcom/byazt/ete/x$ve;

.field public static tt:Lcom/byazt/ete/x$ve;

.field public static uj:Lcom/byazt/ete/x$ve;

.field public static ve:Lcom/byazt/ete/x$ve;

.field public static final x:Lcom/byazt/ete/x$ve;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/ete/x$ve;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/byazt/ete/x$ve;-><init>(Lorg/json/JSONObject;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/byazt/ete/x;->x:Lcom/byazt/ete/x$ve;

    .line 8
    .line 9
    return-void
.end method

.method private static a()Lcom/byazt/ete/x$ve;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/ete/x;->a:Lcom/byazt/ete/x$ve;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/ete/x$ve;

    .line 6
    .line 7
    new-instance v1, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/byazt/ete/x$ve;-><init>(Lorg/json/JSONObject;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-object v0
.end method

.method public static c()Lcom/byazt/ete/x$ve;
    .locals 3

    .line 36
    sget-object v0, Lcom/byazt/ete/x;->ve:Lcom/byazt/ete/x$ve;

    if-nez v0, :cond_1

    .line 37
    invoke-static {}, Lcom/byazt/by/n;->c()Lcom/byazt/by/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/by/n;->z()Ljava/lang/String;

    move-result-object v0

    .line 38
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    new-instance v0, Lcom/byazt/ete/x$ve;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v1}, Lcom/byazt/ete/x$ve;-><init>(Lorg/json/JSONObject;)V

    .line 40
    sput-object v0, Lcom/byazt/ete/x;->ve:Lcom/byazt/ete/x$ve;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/byazt/ete/x$ve;->c(Lcom/byazt/ete/x$ve;I)I

    goto :goto_0

    .line 41
    :cond_0
    new-instance v1, Lcom/byazt/ete/x$ve;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/byazt/ete/x$ve;-><init>(Lorg/json/JSONObject;)V

    sput-object v1, Lcom/byazt/ete/x;->ve:Lcom/byazt/ete/x$ve;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :catch_0
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/ete/x;->ve:Lcom/byazt/ete/x$ve;

    return-object v0
.end method

.method public static c(I)Lcom/byazt/ete/x$ve;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 43
    :pswitch_0
    sget-object p0, Lcom/byazt/ete/x;->x:Lcom/byazt/ete/x$ve;

    goto :goto_0

    .line 44
    :pswitch_1
    invoke-static {}, Lcom/byazt/ete/x;->a()Lcom/byazt/ete/x$ve;

    move-result-object p0

    goto :goto_0

    .line 45
    :pswitch_2
    invoke-static {}, Lcom/byazt/ete/x;->ve()Lcom/byazt/ete/x$ve;

    move-result-object p0

    goto :goto_0

    .line 46
    :pswitch_3
    invoke-static {}, Lcom/byazt/ete/x;->tt()Lcom/byazt/ete/x$ve;

    move-result-object p0

    goto :goto_0

    .line 47
    :pswitch_4
    invoke-static {}, Lcom/byazt/ete/x;->sp()Lcom/byazt/ete/x$ve;

    move-result-object p0

    goto :goto_0

    .line 48
    :pswitch_5
    invoke-static {}, Lcom/byazt/ete/x;->n()Lcom/byazt/ete/x$ve;

    move-result-object p0

    goto :goto_0

    .line 49
    :pswitch_6
    invoke-static {}, Lcom/byazt/ete/x;->c()Lcom/byazt/ete/x$ve;

    move-result-object p0

    goto :goto_0

    .line 50
    :pswitch_7
    invoke-static {}, Lcom/byazt/ete/x;->uj()Lcom/byazt/ete/x$ve;

    move-result-object p0

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static c(Lcom/byazt/it/n;)V
    .locals 3

    const-string v0, ""

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "cache_strategy_reward"

    invoke-interface {p0, v2, v0}, Lcom/byazt/it/c;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v2, Lcom/byazt/ete/x$ve;

    invoke-direct {v2, v1}, Lcom/byazt/ete/x$ve;-><init>(Lorg/json/JSONObject;)V

    sput-object v2, Lcom/byazt/ete/x;->c:Lcom/byazt/ete/x$ve;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "cache_strategy_full"

    invoke-interface {p0, v2, v0}, Lcom/byazt/it/c;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v2, Lcom/byazt/ete/x$ve;

    invoke-direct {v2, v1}, Lcom/byazt/ete/x$ve;-><init>(Lorg/json/JSONObject;)V

    sput-object v2, Lcom/byazt/ete/x;->tt:Lcom/byazt/ete/x$ve;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5
    :catch_1
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "cache_strategy_banner"

    invoke-interface {p0, v2, v0}, Lcom/byazt/it/c;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v2, Lcom/byazt/ete/x$ve;

    invoke-direct {v2, v1}, Lcom/byazt/ete/x$ve;-><init>(Lorg/json/JSONObject;)V

    sput-object v2, Lcom/byazt/ete/x;->uj:Lcom/byazt/ete/x$ve;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 7
    :catch_2
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "cache_strategy_feed"

    invoke-interface {p0, v2, v0}, Lcom/byazt/it/c;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v2, Lcom/byazt/ete/x$ve;

    invoke-direct {v2, v1}, Lcom/byazt/ete/x$ve;-><init>(Lorg/json/JSONObject;)V

    sput-object v2, Lcom/byazt/ete/x;->n:Lcom/byazt/ete/x$ve;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 9
    :catch_3
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "cache_strategy_draw"

    invoke-interface {p0, v2, v0}, Lcom/byazt/it/c;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance v2, Lcom/byazt/ete/x$ve;

    invoke-direct {v2, v1}, Lcom/byazt/ete/x$ve;-><init>(Lorg/json/JSONObject;)V

    sput-object v2, Lcom/byazt/ete/x;->a:Lcom/byazt/ete/x$ve;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 11
    :catch_4
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "cache_strategy_stream"

    invoke-interface {p0, v2, v0}, Lcom/byazt/it/c;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance p0, Lcom/byazt/ete/x$ve;

    invoke-direct {p0, v1}, Lcom/byazt/ete/x$ve;-><init>(Lorg/json/JSONObject;)V

    sput-object p0, Lcom/byazt/ete/x;->sp:Lcom/byazt/ete/x$ve;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 13
    :catch_5
    :try_start_6
    invoke-static {}, Lcom/byazt/vvt/ve;->c()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method

.method public static c(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "app_common_config"

    .line 14
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_6

    :try_start_0
    const-string v0, "cache_strategy_reward"

    .line 15
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    new-instance v1, Lcom/byazt/ete/x$ve;

    invoke-direct {v1, v0}, Lcom/byazt/ete/x$ve;-><init>(Lorg/json/JSONObject;)V

    sput-object v1, Lcom/byazt/ete/x;->c:Lcom/byazt/ete/x$ve;

    const/4 v0, 0x7

    .line 17
    invoke-static {v0}, Lcom/byazt/eti/n;->tt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :try_start_1
    const-string v0, "cache_strategy_full"

    .line 18
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 19
    new-instance v1, Lcom/byazt/ete/x$ve;

    invoke-direct {v1, v0}, Lcom/byazt/ete/x$ve;-><init>(Lorg/json/JSONObject;)V

    sput-object v1, Lcom/byazt/ete/x;->tt:Lcom/byazt/ete/x$ve;

    const/16 v0, 0x8

    .line 20
    invoke-static {v0}, Lcom/byazt/eti/n;->tt(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    :try_start_2
    const-string v0, "cache_strategy_banner"

    .line 21
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 22
    new-instance v1, Lcom/byazt/ete/x$ve;

    invoke-direct {v1, v0}, Lcom/byazt/ete/x$ve;-><init>(Lorg/json/JSONObject;)V

    sput-object v1, Lcom/byazt/ete/x;->uj:Lcom/byazt/ete/x$ve;

    const/4 v0, 0x1

    .line 23
    invoke-static {v0}, Lcom/byazt/eti/n;->tt(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_2
    :try_start_3
    const-string v0, "cache_strategy_feed"

    .line 24
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 25
    new-instance v1, Lcom/byazt/ete/x$ve;

    invoke-direct {v1, v0}, Lcom/byazt/ete/x$ve;-><init>(Lorg/json/JSONObject;)V

    sput-object v1, Lcom/byazt/ete/x;->n:Lcom/byazt/ete/x$ve;

    const/4 v0, 0x5

    .line 26
    invoke-static {v0}, Lcom/byazt/eti/n;->tt(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_3
    :try_start_4
    const-string v0, "cache_strategy_draw"

    .line 27
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 28
    new-instance v1, Lcom/byazt/ete/x$ve;

    invoke-direct {v1, v0}, Lcom/byazt/ete/x$ve;-><init>(Lorg/json/JSONObject;)V

    sput-object v1, Lcom/byazt/ete/x;->a:Lcom/byazt/ete/x$ve;

    const/16 v0, 0x9

    .line 29
    invoke-static {v0}, Lcom/byazt/eti/n;->tt(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_4
    :try_start_5
    const-string v0, "cache_strategy_splash"

    .line 30
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 31
    new-instance v1, Lcom/byazt/ete/x$ve;

    invoke-direct {v1, v0}, Lcom/byazt/ete/x$ve;-><init>(Lorg/json/JSONObject;)V

    sput-object v1, Lcom/byazt/ete/x;->ve:Lcom/byazt/ete/x$ve;

    const/4 v0, 0x3

    .line 32
    invoke-static {v0}, Lcom/byazt/eti/n;->tt(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    :try_start_6
    const-string v0, "cache_strategy_stream"

    .line 33
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 34
    new-instance v0, Lcom/byazt/ete/x$ve;

    invoke-direct {v0, p0}, Lcom/byazt/ete/x$ve;-><init>(Lorg/json/JSONObject;)V

    sput-object v0, Lcom/byazt/ete/x;->sp:Lcom/byazt/ete/x$ve;

    const/4 p0, 0x6

    .line 35
    invoke-static {p0}, Lcom/byazt/eti/n;->tt(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :cond_6
    return-void
.end method

.method private static n()Lcom/byazt/ete/x$ve;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/ete/x;->n:Lcom/byazt/ete/x$ve;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/ete/x$ve;

    .line 6
    .line 7
    new-instance v1, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/byazt/ete/x$ve;-><init>(Lorg/json/JSONObject;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-object v0
.end method

.method private static sp()Lcom/byazt/ete/x$ve;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/ete/x;->sp:Lcom/byazt/ete/x$ve;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/ete/x$ve;

    .line 6
    .line 7
    new-instance v1, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/byazt/ete/x$ve;-><init>(Lorg/json/JSONObject;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-object v0
.end method

.method private static tt()Lcom/byazt/ete/x$ve;
    .locals 2

    .line 17
    sget-object v0, Lcom/byazt/ete/x;->c:Lcom/byazt/ete/x$ve;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/byazt/ete/x$ve;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v1}, Lcom/byazt/ete/x$ve;-><init>(Lorg/json/JSONObject;)V

    :cond_0
    return-object v0
.end method

.method public static tt(Lcom/byazt/it/n;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/ete/x;->c:Lcom/byazt/ete/x$ve;

    if-eqz v0, :cond_0

    const-string v1, "cache_strategy_reward"

    .line 2
    invoke-virtual {v0}, Lcom/byazt/ete/x$ve;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    sget-object v0, Lcom/byazt/ete/x;->tt:Lcom/byazt/ete/x$ve;

    if-eqz v0, :cond_1

    const-string v1, "cache_strategy_full"

    .line 4
    invoke-virtual {v0}, Lcom/byazt/ete/x$ve;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    sget-object v0, Lcom/byazt/ete/x;->uj:Lcom/byazt/ete/x$ve;

    if-eqz v0, :cond_2

    const-string v1, "cache_strategy_banner"

    .line 6
    invoke-virtual {v0}, Lcom/byazt/ete/x$ve;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_2
    sget-object v0, Lcom/byazt/ete/x;->n:Lcom/byazt/ete/x$ve;

    if-eqz v0, :cond_3

    const-string v1, "cache_strategy_feed"

    .line 8
    invoke-virtual {v0}, Lcom/byazt/ete/x$ve;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_3
    sget-object v0, Lcom/byazt/ete/x;->a:Lcom/byazt/ete/x$ve;

    if-eqz v0, :cond_4

    const-string v1, "cache_strategy_draw"

    .line 10
    invoke-virtual {v0}, Lcom/byazt/ete/x$ve;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_4
    sget-object v0, Lcom/byazt/ete/x;->sp:Lcom/byazt/ete/x$ve;

    if-eqz v0, :cond_5

    const-string v1, "cache_strategy_stream"

    .line 12
    invoke-virtual {v0}, Lcom/byazt/ete/x$ve;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_5
    sget-object p0, Lcom/byazt/ete/x;->ve:Lcom/byazt/ete/x$ve;

    if-eqz p0, :cond_6

    .line 14
    new-instance p0, Lcom/byazt/by/n$tt;

    invoke-direct {p0}, Lcom/byazt/by/n$tt;-><init>()V

    .line 15
    sget-object v0, Lcom/byazt/ete/x;->ve:Lcom/byazt/ete/x$ve;

    invoke-virtual {v0}, Lcom/byazt/ete/x$ve;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/byazt/by/n$tt;->uj(Ljava/lang/String;)Lcom/byazt/by/n$tt;

    .line 16
    invoke-virtual {p0}, Lcom/byazt/by/n$tt;->c()V

    :cond_6
    return-void
.end method

.method private static uj()Lcom/byazt/ete/x$ve;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/ete/x;->uj:Lcom/byazt/ete/x$ve;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/ete/x$ve;

    .line 6
    .line 7
    new-instance v1, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/byazt/ete/x$ve;-><init>(Lorg/json/JSONObject;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-object v0
.end method

.method private static ve()Lcom/byazt/ete/x$ve;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/ete/x;->tt:Lcom/byazt/ete/x$ve;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/ete/x$ve;

    .line 6
    .line 7
    new-instance v1, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/byazt/ete/x$ve;-><init>(Lorg/json/JSONObject;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-object v0
.end method

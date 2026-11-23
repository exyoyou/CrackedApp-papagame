.class public Lcom/windmill/sdk/strategy/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/windmill/sdk/strategy/c;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/SharedPreferences;

.field private h:Lorg/json/JSONObject;

.field private i:Lorg/json/JSONObject;

.field private j:Lorg/json/JSONObject;

.field private k:Lorg/json/JSONObject;

.field private l:Lorg/json/JSONObject;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "splash_num"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/windmill/sdk/strategy/c;->b:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "banner_num"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/windmill/sdk/strategy/c;->c:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "reward_num"

    .line 13
    .line 14
    iput-object v0, p0, Lcom/windmill/sdk/strategy/c;->d:Ljava/lang/String;

    .line 15
    .line 16
    const-string v0, "native_num"

    .line 17
    .line 18
    iput-object v0, p0, Lcom/windmill/sdk/strategy/c;->e:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "interstitial_num"

    .line 21
    .line 22
    iput-object v0, p0, Lcom/windmill/sdk/strategy/c;->f:Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, "time"

    .line 25
    .line 26
    iput-object v0, p0, Lcom/windmill/sdk/strategy/c;->m:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "number"

    .line 29
    .line 30
    iput-object v0, p0, Lcom/windmill/sdk/strategy/c;->n:Ljava/lang/String;

    .line 31
    .line 32
    return-void
.end method

.method public static a()Lcom/windmill/sdk/strategy/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/windmill/sdk/strategy/c;->a:Lcom/windmill/sdk/strategy/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/windmill/sdk/strategy/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/windmill/sdk/strategy/c;->a:Lcom/windmill/sdk/strategy/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/windmill/sdk/strategy/c;

    invoke-direct {v1}, Lcom/windmill/sdk/strategy/c;-><init>()V

    sput-object v1, Lcom/windmill/sdk/strategy/c;->a:Lcom/windmill/sdk/strategy/c;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/windmill/sdk/strategy/c;->a:Lcom/windmill/sdk/strategy/c;

    return-object v0
.end method

.method private a(J)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    .line 7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 9
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x1

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne p2, v2, :cond_0

    const/4 p2, 0x2

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-ne v2, p2, :cond_0

    const/4 p2, 0x5

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(Lcom/windmill/sdk/WindMillAdRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAdRequest;->getAdType()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 12
    iget-object p1, p0, Lcom/windmill/sdk/strategy/c;->h:Lorg/json/JSONObject;

    if-eqz p1, :cond_4

    .line 13
    iget-object v0, p0, Lcom/windmill/sdk/strategy/c;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    add-int/2addr p1, v2

    .line 14
    iget-object v0, p0, Lcom/windmill/sdk/strategy/c;->h:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 15
    iget-object p1, p0, Lcom/windmill/sdk/strategy/c;->h:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/windmill/sdk/strategy/c;->m:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 16
    iget-object p1, p0, Lcom/windmill/sdk/strategy/c;->g:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/windmill/sdk/strategy/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->h:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 17
    iget-object p1, p0, Lcom/windmill/sdk/strategy/c;->i:Lorg/json/JSONObject;

    if-eqz p1, :cond_4

    .line 18
    iget-object v0, p0, Lcom/windmill/sdk/strategy/c;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    add-int/2addr p1, v2

    .line 19
    iget-object v0, p0, Lcom/windmill/sdk/strategy/c;->i:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    iget-object p1, p0, Lcom/windmill/sdk/strategy/c;->i:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/windmill/sdk/strategy/c;->m:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 21
    iget-object p1, p0, Lcom/windmill/sdk/strategy/c;->g:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/windmill/sdk/strategy/c;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->i:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    .line 22
    iget-object p1, p0, Lcom/windmill/sdk/strategy/c;->j:Lorg/json/JSONObject;

    if-eqz p1, :cond_4

    .line 23
    iget-object v0, p0, Lcom/windmill/sdk/strategy/c;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    add-int/2addr p1, v2

    .line 24
    iget-object v0, p0, Lcom/windmill/sdk/strategy/c;->j:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    iget-object p1, p0, Lcom/windmill/sdk/strategy/c;->j:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/windmill/sdk/strategy/c;->m:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 26
    iget-object p1, p0, Lcom/windmill/sdk/strategy/c;->g:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/windmill/sdk/strategy/c;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->j:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 27
    iget-object p1, p0, Lcom/windmill/sdk/strategy/c;->l:Lorg/json/JSONObject;

    if-eqz p1, :cond_4

    .line 28
    iget-object v0, p0, Lcom/windmill/sdk/strategy/c;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    add-int/2addr p1, v2

    .line 29
    iget-object v0, p0, Lcom/windmill/sdk/strategy/c;->l:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    iget-object p1, p0, Lcom/windmill/sdk/strategy/c;->l:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/windmill/sdk/strategy/c;->m:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 31
    iget-object p1, p0, Lcom/windmill/sdk/strategy/c;->g:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/windmill/sdk/strategy/c;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->l:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 32
    iget-object p1, p0, Lcom/windmill/sdk/strategy/c;->k:Lorg/json/JSONObject;

    if-eqz p1, :cond_4

    .line 33
    iget-object v0, p0, Lcom/windmill/sdk/strategy/c;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    add-int/2addr p1, v2

    .line 34
    iget-object v0, p0, Lcom/windmill/sdk/strategy/c;->k:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 35
    iget-object p1, p0, Lcom/windmill/sdk/strategy/c;->k:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/windmill/sdk/strategy/c;->m:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 36
    iget-object p1, p0, Lcom/windmill/sdk/strategy/c;->g:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/windmill/sdk/strategy/c;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->k:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public b(Lcom/windmill/sdk/WindMillAdRequest;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    const/4 v0, 0x0

    .line 58
    :try_start_0
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAdRequest;->getAdType()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/windmill/sdk/strategy/c;->h:Lorg/json/JSONObject;

    if-eqz p1, :cond_4

    .line 60
    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->n:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 61
    iget-object p1, p0, Lcom/windmill/sdk/strategy/c;->i:Lorg/json/JSONObject;

    if-eqz p1, :cond_4

    .line 62
    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->n:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 63
    iget-object p1, p0, Lcom/windmill/sdk/strategy/c;->j:Lorg/json/JSONObject;

    if-eqz p1, :cond_4

    .line 64
    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->n:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 65
    iget-object p1, p0, Lcom/windmill/sdk/strategy/c;->l:Lorg/json/JSONObject;

    if-eqz p1, :cond_4

    .line 66
    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->n:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_3
    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    .line 67
    iget-object p1, p0, Lcom/windmill/sdk/strategy/c;->k:Lorg/json/JSONObject;

    if-eqz p1, :cond_4

    .line 68
    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->n:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    return v0
.end method

.method public b()V
    .locals 6

    const-string v0, ""

    .line 1
    :try_start_0
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/sdk/utils/n;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/windmill/sdk/strategy/c;->g:Landroid/content/SharedPreferences;

    .line 2
    iget-object v2, p0, Lcom/windmill/sdk/strategy/c;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/windmill/sdk/strategy/c;->h:Lorg/json/JSONObject;

    .line 5
    iget-object v2, p0, Lcom/windmill/sdk/strategy/c;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6
    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->h:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/windmill/sdk/strategy/c;->m:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 7
    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->g:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/windmill/sdk/strategy/c;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/windmill/sdk/strategy/c;->h:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/windmill/sdk/strategy/c;->h:Lorg/json/JSONObject;

    .line 9
    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->m:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 10
    invoke-direct {p0, v1, v2}, Lcom/windmill/sdk/strategy/c;->a(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->h:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/windmill/sdk/strategy/c;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->h:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/windmill/sdk/strategy/c;->m:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 13
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->g:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/windmill/sdk/strategy/c;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 15
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/windmill/sdk/strategy/c;->i:Lorg/json/JSONObject;

    .line 16
    iget-object v2, p0, Lcom/windmill/sdk/strategy/c;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 17
    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->i:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/windmill/sdk/strategy/c;->m:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 18
    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->g:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/windmill/sdk/strategy/c;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/windmill/sdk/strategy/c;->i:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 19
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/windmill/sdk/strategy/c;->i:Lorg/json/JSONObject;

    .line 20
    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->m:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 21
    invoke-direct {p0, v1, v2}, Lcom/windmill/sdk/strategy/c;->a(J)Z

    move-result v1

    if-nez v1, :cond_3

    .line 22
    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->i:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/windmill/sdk/strategy/c;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 23
    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->i:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/windmill/sdk/strategy/c;->m:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 24
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->g:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/windmill/sdk/strategy/c;->f:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 26
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/windmill/sdk/strategy/c;->l:Lorg/json/JSONObject;

    .line 27
    iget-object v2, p0, Lcom/windmill/sdk/strategy/c;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 28
    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->l:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/windmill/sdk/strategy/c;->m:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 29
    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->g:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/windmill/sdk/strategy/c;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/windmill/sdk/strategy/c;->l:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 30
    :cond_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/windmill/sdk/strategy/c;->l:Lorg/json/JSONObject;

    .line 31
    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->m:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 32
    invoke-direct {p0, v1, v2}, Lcom/windmill/sdk/strategy/c;->a(J)Z

    move-result v1

    if-nez v1, :cond_5

    .line 33
    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->l:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/windmill/sdk/strategy/c;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 34
    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->l:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/windmill/sdk/strategy/c;->m:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 35
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->g:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/windmill/sdk/strategy/c;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 37
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/windmill/sdk/strategy/c;->j:Lorg/json/JSONObject;

    .line 38
    iget-object v2, p0, Lcom/windmill/sdk/strategy/c;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->j:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/windmill/sdk/strategy/c;->m:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 40
    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->g:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/windmill/sdk/strategy/c;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/windmill/sdk/strategy/c;->j:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3

    .line 41
    :cond_6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/windmill/sdk/strategy/c;->j:Lorg/json/JSONObject;

    .line 42
    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->m:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 43
    invoke-direct {p0, v1, v2}, Lcom/windmill/sdk/strategy/c;->a(J)Z

    move-result v1

    if-nez v1, :cond_7

    .line 44
    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->j:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/windmill/sdk/strategy/c;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 45
    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->j:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/windmill/sdk/strategy/c;->m:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 46
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->g:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/windmill/sdk/strategy/c;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 48
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/windmill/sdk/strategy/c;->k:Lorg/json/JSONObject;

    .line 49
    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50
    iget-object v0, p0, Lcom/windmill/sdk/strategy/c;->k:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->m:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 51
    iget-object v0, p0, Lcom/windmill/sdk/strategy/c;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/windmill/sdk/strategy/c;->k:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_4

    .line 52
    :cond_8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/windmill/sdk/strategy/c;->k:Lorg/json/JSONObject;

    .line 53
    iget-object v0, p0, Lcom/windmill/sdk/strategy/c;->m:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 54
    invoke-direct {p0, v0, v1}, Lcom/windmill/sdk/strategy/c;->a(J)Z

    move-result v0

    if-nez v0, :cond_9

    .line 55
    iget-object v0, p0, Lcom/windmill/sdk/strategy/c;->k:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    iget-object v0, p0, Lcom/windmill/sdk/strategy/c;->k:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/windmill/sdk/strategy/c;->m:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_4
    return-void
.end method

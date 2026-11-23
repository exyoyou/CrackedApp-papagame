.class public Lcom/byazt/se/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x29f,
        0xd
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final c:Lcom/byazt/az/c;

.field public final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public final sp:Ljava/util/concurrent/locks/ReentrantLock;

.field public tt:J

.field public final uj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public ve:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/az/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x1388

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/byazt/se/tt;->tt:J

    .line 7
    .line 8
    const-wide/32 v0, 0x1b7740

    .line 9
    .line 10
    .line 11
    iput-wide v0, p0, Lcom/byazt/se/tt;->ve:J

    .line 12
    .line 13
    new-instance v0, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/byazt/se/tt;->uj:Ljava/util/Map;

    .line 19
    .line 20
    new-instance v0, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/byazt/se/tt;->n:Ljava/util/Map;

    .line 26
    .line 27
    const-string v0, ""

    .line 28
    .line 29
    iput-object v0, p0, Lcom/byazt/se/tt;->a:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/byazt/se/tt;->sp:Ljava/util/concurrent/locks/ReentrantLock;

    .line 37
    .line 38
    iput-object p2, p0, Lcom/byazt/se/tt;->c:Lcom/byazt/az/c;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/byazt/yv/u;->tt(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string p2, "d_data"

    .line 45
    .line 46
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Lcom/byazt/se/tt;->tt(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/se/tt;->c:Lcom/byazt/az/c;

    const-string v1, "d_data"

    invoke-virtual {v0, v1, p1}, Lcom/byazt/az/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/byazt/se/tt;->c:Lcom/byazt/az/c;

    invoke-virtual {v0, v1, p1}, Lcom/byazt/az/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 5
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "name"

    .line 6
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private tt(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/se/tt;->uj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v1, "__kite"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/byazt/se/tt;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, " map is empty"

    .line 2
    invoke-static {v1, p1}, Lcom/byazt/tf/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/byakv/z/TTEncryptUtils;->clientUnpackedBase64(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_6

    .line 4
    array-length v0, p1

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 5
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/byazt/tf/c;->tt()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, " data:"

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/byazt/tf/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p1, "version"

    const-string v2, ""

    .line 8
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/se/tt;->a:Ljava/lang/String;

    const-string p1, "fields"

    .line 9
    iget-object v2, p0, Lcom/byazt/se/tt;->uj:Ljava/util/Map;

    invoke-direct {p0, v0, p1, v2}, Lcom/byazt/se/tt;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)V

    const-string p1, "delay_sec"

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const-wide/16 v3, 0x3e8

    if-lez p1, :cond_3

    int-to-long v5, p1

    mul-long v5, v5, v3

    .line 11
    iput-wide v5, p0, Lcom/byazt/se/tt;->tt:J

    :cond_3
    const-string p1, "dtrait_mem_ttl_sec"

    .line 12
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_4

    int-to-long v5, p1

    mul-long v5, v5, v3

    .line 13
    iput-wide v5, p0, Lcom/byazt/se/tt;->ve:J

    :cond_4
    const-string p1, "dtrait_fields"

    .line 14
    iget-object v3, p0, Lcom/byazt/se/tt;->n:Ljava/util/Map;

    invoke-direct {p0, v0, p1, v3}, Lcom/byazt/se/tt;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)V

    .line 15
    invoke-static {}, Lcom/byazt/tf/c;->tt()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "parseConfigFields# fields: status_collect delay time:%s, dtraitExpireTime:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/byazt/se/tt;->tt:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    iget-wide v2, p0, Lcom/byazt/se/tt;->ve:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/tf/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception p1

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "__kiteparseConfigFields# error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/tf/c;->tt(Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_0
    const-string p1, "parse is null"

    .line 18
    invoke-static {v1, p1}, Lcom/byazt/tf/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private ve(Lorg/json/JSONObject;)Z
    .locals 2

    const-string v0, "message"

    const-string v1, ""

    .line 1
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ok"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "__kite"

    const-string v0, "error response"

    .line 3
    invoke-static {p1, v0}, Lcom/byazt/tf/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/byazt/se/tt;->uj:Ljava/util/Map;

    return-object v0
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/byazt/se/tt;->sp:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 9
    :try_start_0
    invoke-direct {p0, p1}, Lcom/byazt/se/tt;->ve(Lorg/json/JSONObject;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "__kite"

    if-nez v0, :cond_1

    :try_start_1
    const-string p1, "invalid response"

    .line 10
    invoke-static {v1, p1}, Lcom/byazt/tf/c;->ve(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/byazt/se/tt;->sp:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1
    :try_start_2
    const-string v0, "data"

    .line 12
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "response is empty"

    .line 14
    invoke-static {v1, p1}, Lcom/byazt/tf/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-direct {p0, p1}, Lcom/byazt/se/tt;->c(Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/byazt/se/tt;->tt(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/byazt/tf/c;->tt()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "__kiteconfig parse success"

    .line 18
    invoke-static {p1}, Lcom/byazt/tf/c;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 19
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "__kiteerror"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/tf/c;->tt(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 20
    :goto_1
    iget-object v0, p0, Lcom/byazt/se/tt;->sp:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/byazt/se/tt;->a:Ljava/lang/String;

    return-object v0
.end method

.method public tt(Lorg/json/JSONObject;)V
    .locals 2

    .line 19
    :try_start_0
    invoke-direct {p0, p1}, Lcom/byazt/se/tt;->ve(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "data"

    .line 20
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "__kite"

    const-string v0, "data is null"

    .line 22
    invoke-static {p1, v0}, Lcom/byazt/tf/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 23
    :cond_1
    invoke-direct {p0, p1}, Lcom/byazt/se/tt;->c(Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/byazt/se/tt;->tt(Ljava/lang/String;)V

    const-string p1, "__kitesuccess"

    .line 25
    invoke-static {p1}, Lcom/byazt/tf/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "__kiteerror "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/tf/c;->tt(Ljava/lang/String;)V

    return-void
.end method

.method public ve()J
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/byazt/se/tt;->tt:J

    return-wide v0
.end method

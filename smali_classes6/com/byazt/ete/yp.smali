.class public Lcom/byazt/ete/yp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0xd7
    }
.end annotation


# instance fields
.field public a:I

.field public c:J

.field public da:J

.field public i:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Z

.field public nu:Ljava/lang/String;

.field public rh:Ljava/lang/String;

.field public sl:J

.field public sp:I

.field public t:I

.field public tt:Ljava/lang/String;

.field public u:J

.field public uj:J

.field public ve:Ljava/lang/String;

.field public x:J

.field public yp:Ljava/lang/String;

.field public z:Ljava/lang/String;


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

.method public static c(Lorg/json/JSONObject;)Lcom/byazt/ete/yp;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lcom/byazt/ete/yp;

    invoke-direct {v0}, Lcom/byazt/ete/yp;-><init>()V

    const-string v1, "user_id"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/byazt/ete/yp;->c:J

    const-string v1, "coupon_meta_id"

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/ete/yp;->tt:Ljava/lang/String;

    const-string v1, "unique_id"

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/ete/yp;->ve:Ljava/lang/String;

    const-string v1, "device_id"

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/byazt/ete/yp;->uj:J

    const-string v1, "has_coupon"

    .line 6
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/byazt/ete/yp;->n:Z

    const-string v1, "coupon_scene"

    .line 7
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/byazt/ete/yp;->a:I

    const-string v1, "type"

    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/byazt/ete/yp;->sp:I

    const-string v1, "threshold"

    .line 9
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/byazt/ete/yp;->x:J

    const-string v1, "scene_key"

    .line 10
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/ete/yp;->i:Ljava/lang/String;

    const-string v1, "activity_id"

    .line 11
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/byazt/ete/yp;->da:J

    const-string v1, "amount"

    .line 12
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/byazt/ete/yp;->sl:J

    const-string v1, "action"

    .line 13
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/byazt/ete/yp;->t:I

    const-string v1, "style"

    .line 14
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/byazt/ete/yp;->u:J

    const-string v1, "start_time"

    .line 15
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/ete/yp;->yp:Ljava/lang/String;

    const-string v1, "expire_time"

    .line 16
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/ete/yp;->z:Ljava/lang/String;

    const-string v1, "button_text"

    .line 17
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/ete/yp;->m:Ljava/lang/String;

    const-string v1, "extra"

    .line 18
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/ete/yp;->nu:Ljava/lang/String;

    const-string v1, "toast"

    .line 19
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/byazt/ete/yp;->rh:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public c()Lorg/json/JSONObject;
    .locals 4

    .line 20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "user_id"

    .line 21
    iget-wide v2, p0, Lcom/byazt/ete/yp;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "coupon_meta_id"

    .line 22
    iget-object v2, p0, Lcom/byazt/ete/yp;->tt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "unique_id"

    .line 23
    iget-object v2, p0, Lcom/byazt/ete/yp;->ve:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_id"

    .line 24
    iget-wide v2, p0, Lcom/byazt/ete/yp;->uj:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "has_coupon"

    .line 25
    iget-boolean v2, p0, Lcom/byazt/ete/yp;->n:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "coupon_scene"

    .line 26
    iget v2, p0, Lcom/byazt/ete/yp;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "type"

    .line 27
    iget v2, p0, Lcom/byazt/ete/yp;->sp:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "threshold"

    .line 28
    iget-wide v2, p0, Lcom/byazt/ete/yp;->x:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "scene_key"

    .line 29
    iget-object v2, p0, Lcom/byazt/ete/yp;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "activity_id"

    .line 30
    iget-wide v2, p0, Lcom/byazt/ete/yp;->da:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "amount"

    .line 31
    iget-wide v2, p0, Lcom/byazt/ete/yp;->sl:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "action"

    .line 32
    iget v2, p0, Lcom/byazt/ete/yp;->t:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "style"

    .line 33
    iget-wide v2, p0, Lcom/byazt/ete/yp;->u:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "start_time"

    .line 34
    iget-object v2, p0, Lcom/byazt/ete/yp;->yp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "expire_time"

    .line 35
    iget-object v2, p0, Lcom/byazt/ete/yp;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "button_text"

    .line 36
    iget-object v2, p0, Lcom/byazt/ete/yp;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "extra"

    .line 37
    iget-object v2, p0, Lcom/byazt/ete/yp;->nu:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "toast"

    .line 38
    iget-object v2, p0, Lcom/byazt/ete/yp;->rh:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 39
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/byazt/ete/yp;->a:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 43
    iput-wide p1, p0, Lcom/byazt/ete/yp;->sl:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/byazt/ete/yp;->rh:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/byazt/ete/yp;->n:Z

    return-void
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/yp;->sp:I

    .line 2
    .line 3
    return v0
.end method

.method public tt()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "user_id"

    .line 2
    iget-wide v2, p0, Lcom/byazt/ete/yp;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "coupon_meta_id"

    .line 3
    iget-object v2, p0, Lcom/byazt/ete/yp;->tt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "unique_id"

    .line 4
    iget-object v2, p0, Lcom/byazt/ete/yp;->ve:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_id"

    .line 5
    iget-wide v2, p0, Lcom/byazt/ete/yp;->uj:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    .line 6
    iget v2, p0, Lcom/byazt/ete/yp;->sp:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "scene_key"

    .line 7
    iget-object v2, p0, Lcom/byazt/ete/yp;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "activity_id"

    .line 8
    iget-wide v2, p0, Lcom/byazt/ete/yp;->da:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "value"

    .line 9
    iget-wide v2, p0, Lcom/byazt/ete/yp;->sl:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "threshold"

    .line 10
    iget-wide v2, p0, Lcom/byazt/ete/yp;->x:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "extra"

    .line 11
    iget-object v2, p0, Lcom/byazt/ete/yp;->nu:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 12
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public tt(Z)Z
    .locals 7

    .line 13
    iget-boolean v0, p0, Lcom/byazt/ete/yp;->n:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/byazt/ete/yp;->sl:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x5

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    .line 14
    iget p1, p0, Lcom/byazt/ete/yp;->a:I

    if-eqz p1, :cond_3

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_1

    .line 15
    iget p1, p0, Lcom/byazt/ete/yp;->a:I

    if-ne p1, v3, :cond_1

    :cond_3
    :goto_1
    return v1
.end method

.method public uj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/yp;->rh:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/yp;->a:I

    .line 2
    .line 3
    return v0
.end method

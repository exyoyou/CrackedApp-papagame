.class public final Lcom/byazt/aas/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x83,
        0x36
    }
.end annotation


# static fields
.field public static c:J

.field public static tt:Lorg/json/JSONObject;

.field public static ve:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static c()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->sl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-wide v0, Lcom/byazt/aas/ve;->c:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    sput-wide v0, Lcom/byazt/aas/ve;->c:J

    .line 3
    :cond_0
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->uj()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    sget-wide v0, Lcom/byazt/aas/ve;->c:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    sput-wide v0, Lcom/byazt/aas/ve;->c:J

    .line 5
    :cond_1
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->nu()Lcom/byazt/dj/uj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/dj/uj;->alist()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    sget-wide v0, Lcom/byazt/aas/ve;->c:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    sput-wide v0, Lcom/byazt/aas/ve;->c:J

    :cond_2
    return-void
.end method

.method public static c(Lorg/json/JSONObject;)V
    .locals 4

    .line 7
    sput-object p0, Lcom/byazt/aas/ve;->tt:Lorg/json/JSONObject;

    const-string v0, "pglam_getwvid_enable"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    .line 8
    sget-wide v0, Lcom/byazt/aas/ve;->c:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    sput-wide v0, Lcom/byazt/aas/ve;->c:J

    :cond_0
    return-void
.end method

.method public static tt()Lorg/json/JSONObject;
    .locals 3

    .line 1
    sget-object v0, Lcom/byazt/aas/ve;->tt:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/byazt/vxy/c;->uj()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Lcom/byazt/ogz/sl;->n()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lcom/byazt/vif/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/it/n;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "pglam"

    .line 19
    .line 20
    const-string v2, ""

    .line 21
    .line 22
    invoke-interface {v0, v1, v2}, Lcom/byazt/it/c;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x0

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 34
    .line 35
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sput-object v1, Lcom/byazt/aas/ve;->tt:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    return-object v1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-object v2
.end method

.method public static ve()J
    .locals 2

    .line 1
    sget-boolean v0, Lcom/byazt/aas/ve;->ve:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/byazt/aas/ve;->c()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    sput-boolean v0, Lcom/byazt/aas/ve;->ve:Z

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/byazt/aas/ve;->tt:Lorg/json/JSONObject;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-static {}, Lcom/byazt/aas/ve;->tt()Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/byazt/aas/ve;->tt:Lorg/json/JSONObject;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-static {v0}, Lcom/byazt/aas/ve;->c(Lorg/json/JSONObject;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    sget-wide v0, Lcom/byazt/aas/ve;->c:J

    .line 27
    .line 28
    return-wide v0
.end method

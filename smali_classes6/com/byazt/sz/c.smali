.class public Lcom/byazt/sz/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26a,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/sz/c$c;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public n:J

.field public tt:F

.field public uj:J

.field public ve:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/sz/c$c;",
            ">;"
        }
    .end annotation
.end field


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

.method public static c(Ljava/lang/Object;Lorg/json/JSONObject;)D
    .locals 3

    .line 30
    instance-of v0, p0, Ljava/lang/String;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 31
    check-cast p0, Ljava/lang/String;

    .line 32
    invoke-static {p0, p1}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1, v2}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;D)D

    move-result-wide p0

    return-wide p0

    .line 33
    :cond_0
    instance-of p1, p0, Ljava/lang/Double;

    if-eqz p1, :cond_1

    .line 34
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0

    .line 35
    :cond_1
    instance-of p1, p0, Ljava/lang/Long;

    if-eqz p1, :cond_2

    .line 36
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0

    .line 37
    :cond_2
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 38
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0

    :cond_3
    return-wide v1
.end method

.method public static c(Ljava/lang/String;Lcom/byazt/xj/ve;)Lcom/byazt/sz/c;
    .locals 2

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 7
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {v0, p1}, Lcom/byazt/sz/c;->c(Lorg/json/JSONObject;Lcom/byazt/xj/ve;)Lcom/byazt/sz/c;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 9
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static c(Lorg/json/JSONObject;Lcom/byazt/xj/ve;)Lcom/byazt/sz/c;
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-static {p0, v0, p1}, Lcom/byazt/sz/c;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/byazt/xj/ve;)Lcom/byazt/sz/c;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/byazt/xj/ve;)Lcom/byazt/sz/c;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 11
    :cond_0
    new-instance v0, Lcom/byazt/sz/c;

    invoke-direct {v0}, Lcom/byazt/sz/c;-><init>()V

    const-string v1, "ordering"

    .line 12
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/sz/c;->c(Ljava/lang/String;)V

    const-string v1, "loop"

    .line 13
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "infinite"

    .line 14
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/high16 v1, -0x40800000    # -1.0f

    .line 15
    invoke-virtual {v0, v1}, Lcom/byazt/sz/c;->c(F)V

    goto :goto_0

    .line 16
    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/sz/c;->c(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Lcom/byazt/sz/c;->c(F)V

    :goto_0
    const-string v1, "duration"

    const-wide/16 v2, 0x0

    .line 18
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/byazt/sz/c;->c(J)V

    const-string v1, "startDelay"

    .line 19
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/byazt/xj/ve;->da()Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-static {v1, v2, v3}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/sz/c;->tt(J)V

    const-string v1, "loopMode"

    .line 21
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/sz/c;->tt(Ljava/lang/String;)V

    const-string v1, "animators"

    .line 22
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 24
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 25
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz p1, :cond_2

    .line 26
    invoke-static {p1, v3}, Lcom/byazt/cd/tt;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 27
    :cond_2
    invoke-static {v3, p2}, Lcom/byazt/sz/c$c;->c(Lorg/json/JSONObject;Lcom/byazt/xj/ve;)Lcom/byazt/sz/c$c;

    move-result-object v3

    .line 28
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 29
    :cond_3
    invoke-virtual {v0, v1}, Lcom/byazt/sz/c;->c(Ljava/util/List;)V

    :cond_4
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sz/c;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sz/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(F)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/sz/c;->tt:F

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/byazt/sz/c;->uj:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/sz/c;->c:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/sz/c$c;",
            ">;)V"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/byazt/sz/c;->ve:Ljava/util/List;

    return-void
.end method

.method public n()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/sz/c;->n:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public tt()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/sz/c;->tt:F

    return v0
.end method

.method public tt(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/sz/c;->n:J

    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/sz/c;->a:Ljava/lang/String;

    return-void
.end method

.method public uj()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/sz/c;->uj:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public ve()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/sz/c$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/sz/c;->ve:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

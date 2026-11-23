.class public Lcom/byazt/wee/tt;
.super Lcom/byazt/qqc/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f1,
        0xd
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/wee/c;

.field public volatile n:I

.field public tt:D

.field public final uj:Ljava/lang/String;

.field public ve:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/qqc/c;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "xgc_prop_volume"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/byazt/wee/tt;->uj:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, -0x2

    .line 9
    iput v0, p0, Lcom/byazt/wee/tt;->n:I

    .line 10
    .line 11
    new-instance v0, Lcom/byazt/wee/c;

    .line 12
    .line 13
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Lcom/byazt/wee/c;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/byazt/wee/tt;->c:Lcom/byazt/wee/c;

    .line 21
    .line 22
    return-void
.end method

.method private c(Lorg/json/JSONObject;)D
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_6

    const-string v2, "applist"

    .line 10
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "content_factor"

    const-wide/16 v4, 0x0

    .line 11
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    const-string v3, "duration_factor"

    .line 12
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    const-string v3, "night_factor"

    .line 13
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v10

    const-string v3, "week_factor"

    .line 14
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    const-string v3, "headset_factor"

    .line 15
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    const-string v3, "factor"

    .line 16
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    if-eqz v2, :cond_0

    .line 17
    iget-object v5, v0, Lcom/byazt/wee/tt;->ve:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lcom/byazt/wee/tt;->ve:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-wide/from16 v16, v6

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    .line 18
    :goto_1
    iget-wide v5, v0, Lcom/byazt/wee/tt;->tt:D

    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    cmpl-double v20, v5, v18

    if-ltz v20, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, -0x1

    .line 19
    :goto_2
    invoke-static {}, Lcom/byazt/qqc/tt;->tt()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, -0x1

    .line 20
    :goto_3
    invoke-static {}, Lcom/byazt/qqc/tt;->c()Z

    move-result v18

    if-eqz v18, :cond_4

    const/4 v7, 0x1

    goto :goto_4

    :cond_4
    const/4 v7, -0x1

    .line 21
    :goto_4
    iget-object v1, v0, Lcom/byazt/wee/tt;->c:Lcom/byazt/wee/c;

    invoke-virtual {v1}, Lcom/byazt/wee/c;->uj()Z

    move-result v1

    move-wide/from16 v18, v3

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, -0x1

    :goto_5
    int-to-double v2, v2

    mul-double v2, v2, v16

    int-to-double v4, v5

    mul-double v4, v4, v8

    add-double/2addr v2, v4

    int-to-double v4, v6

    mul-double v4, v4, v10

    add-double/2addr v2, v4

    int-to-double v4, v7

    mul-double v12, v12, v4

    add-double/2addr v2, v12

    int-to-double v4, v1

    mul-double v4, v4, v14

    add-double/2addr v2, v4

    mul-double v2, v2, v18

    move-object/from16 v1, p1

    .line 22
    invoke-static {v2, v3, v1}, Lcom/byazt/qqc/c;->c(DLorg/json/JSONObject;)D

    move-result-wide v1

    return-wide v1

    :cond_6
    const-wide/high16 v1, -0x4000000000000000L    # -2.0

    return-wide v1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/qqc/ve;->c()Lcom/byazt/qqc/ve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/qqc/ve;->a()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    float-to-int v0, v0

    .line 10
    return v0
.end method

.method public c(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/wee/tt;->tt:D

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/wee/tt;->ve:Ljava/lang/String;

    return-void
.end method

.method public c(I)Z
    .locals 9

    .line 3
    invoke-virtual {p0}, Lcom/byazt/wee/tt;->uj()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    const-string p1, "value"

    .line 4
    invoke-virtual {v0, p1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    cmpg-double p1, v5, v7

    if-gtz p1, :cond_1

    :goto_0
    move-wide v5, v7

    goto :goto_1

    :cond_1
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v5, v7

    if-ltz p1, :cond_3

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    if-ne p1, v5, :cond_5

    .line 5
    invoke-direct {p0, v0}, Lcom/byazt/wee/tt;->c(Lorg/json/JSONObject;)D

    move-result-wide v5

    :cond_3
    :goto_1
    cmpl-double p1, v5, v2

    if-eqz p1, :cond_5

    const-wide/high16 v2, -0x4000000000000000L    # -2.0

    cmpl-double p1, v5, v2

    if-nez p1, :cond_4

    goto :goto_2

    .line 6
    :cond_4
    iget-object p1, p0, Lcom/byazt/wee/tt;->c:Lcom/byazt/wee/c;

    invoke-virtual {p1}, Lcom/byazt/wee/c;->tt()I

    move-result p1

    .line 7
    iget-object v0, p0, Lcom/byazt/wee/tt;->c:Lcom/byazt/wee/c;

    invoke-virtual {v0}, Lcom/byazt/wee/c;->c()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-double v0, p1

    mul-double v0, v0, v5

    .line 8
    invoke-virtual {p0}, Lcom/byazt/wee/tt;->a()I

    move-result p1

    int-to-double v2, p1

    add-double/2addr v2, v0

    .line 9
    invoke-virtual {p0, v2, v3}, Lcom/byazt/wee/tt;->tt(D)V

    return v4

    :cond_5
    :goto_2
    return v1
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/wee/tt;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public sp()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/byazt/wee/tt;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/byazt/wee/tt;->c:Lcom/byazt/wee/c;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/byazt/wee/c;->tt()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, p0, Lcom/byazt/wee/tt;->c:Lcom/byazt/wee/c;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/byazt/wee/c;->c()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    sub-int/2addr v1, v2

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    int-to-float v0, v0

    .line 21
    const/high16 v2, 0x42c80000    # 100.0f

    .line 22
    .line 23
    mul-float v0, v0, v2

    .line 24
    .line 25
    int-to-float v1, v1

    .line 26
    div-float/2addr v0, v1

    .line 27
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    return v0

    .line 32
    :cond_0
    const/4 v0, -0x1

    .line 33
    return v0
.end method

.method public tt(D)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/wee/tt;->c:Lcom/byazt/wee/c;

    invoke-virtual {v0}, Lcom/byazt/wee/c;->tt()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/byazt/wee/tt;->c:Lcom/byazt/wee/c;

    invoke-virtual {v1}, Lcom/byazt/wee/c;->c()I

    move-result v1

    double-to-int v2, p1

    int-to-double v3, v0

    cmpl-double v5, p1, v3

    if-ltz v5, :cond_0

    goto :goto_0

    :cond_0
    int-to-double v3, v1

    cmpg-double v0, p1, v3

    if-gtz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 3
    :goto_0
    iput v0, p0, Lcom/byazt/wee/tt;->n:I

    .line 4
    iget-object p1, p0, Lcom/byazt/wee/tt;->c:Lcom/byazt/wee/c;

    invoke-virtual {p1, v0}, Lcom/byazt/wee/c;->c(I)I

    return-void
.end method

.method public tt(I)V
    .locals 4

    .line 5
    invoke-static {}, Lcom/byazt/qqc/ve;->c()Lcom/byazt/qqc/ve;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/qqc/ve;->a()F

    move-result p1

    const/high16 v0, -0x40000000    # -2.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/byazt/wee/tt;->c:Lcom/byazt/wee/c;

    invoke-virtual {v0}, Lcom/byazt/wee/c;->tt()I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/byazt/wee/tt;->c:Lcom/byazt/wee/c;

    invoke-virtual {v1}, Lcom/byazt/wee/c;->c()I

    move-result v1

    float-to-int v2, p1

    int-to-float v3, v0

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, v1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 8
    :goto_0
    iput v0, p0, Lcom/byazt/wee/tt;->n:I

    .line 9
    iget-object p1, p0, Lcom/byazt/wee/tt;->c:Lcom/byazt/wee/c;

    invoke-virtual {p1, v0}, Lcom/byazt/wee/c;->c(I)I

    :cond_2
    return-void
.end method

.method public tt()Z
    .locals 1

    .line 10
    invoke-static {}, Lcom/byazt/qqc/ve;->c()Lcom/byazt/qqc/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qqc/ve;->uj()Z

    move-result v0

    return v0
.end method

.method public uj()Lorg/json/JSONObject;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->mm()Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public ve()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/byazt/wee/tt;->sp()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x5e

    .line 6
    .line 7
    if-ge v0, v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x6

    .line 10
    if-gt v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0

    .line 15
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 16
    return v0
.end method

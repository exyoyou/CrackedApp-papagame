.class public Lcom/byazt/nbs/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x74f,
        0x36
    }
.end annotation


# instance fields
.field public a:D

.field public c:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public sp:D

.field public tt:Ljava/lang/String;

.field public uj:I

.field public ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;DD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/nbs/ve;->c:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/nbs/ve;->tt:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/nbs/ve;->ve:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/byazt/nbs/ve;->uj:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/byazt/nbs/ve;->n:Ljava/lang/String;

    .line 13
    .line 14
    iput-wide p6, p0, Lcom/byazt/nbs/ve;->a:D

    .line 15
    .line 16
    iput-wide p8, p0, Lcom/byazt/nbs/ve;->sp:D

    .line 17
    .line 18
    return-void
.end method

.method public static c(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/byazt/nbs/ve;
    .locals 11

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/byazt/nbs/ve;

    const-string v1, "label_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "timestamp"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "label_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v1, "label_version"

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "upper_bound"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v7

    const-string v1, "lower_bound"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v9

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/byazt/nbs/ve;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;DD)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/nbs/ve;->sp:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/ve;->tt:Ljava/lang/String;

    return-object v0
.end method

.method public n()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/nbs/ve;->a:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/ve;->ve:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/ve;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nbs/ve;->uj:I

    .line 2
    .line 3
    return v0
.end method

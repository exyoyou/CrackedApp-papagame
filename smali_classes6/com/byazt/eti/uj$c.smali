.class public Lcom/byazt/eti/uj$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x180,
        0x7b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/eti/uj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public c:J

.field public n:I

.field public sp:J

.field public tt:J

.field public uj:Ljava/lang/String;

.field public ve:Z

.field public x:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JJZLjava/lang/String;JI)V
    .locals 12

    const/16 v11, 0x1dbb

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    .line 10
    invoke-direct/range {v0 .. v11}, Lcom/byazt/eti/uj$c;-><init>(Ljava/lang/String;JJZLjava/lang/String;JII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJZLjava/lang/String;JII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lcom/byazt/eti/uj$c;->c:J

    .line 3
    iput-wide p4, p0, Lcom/byazt/eti/uj$c;->tt:J

    .line 4
    iput-boolean p6, p0, Lcom/byazt/eti/uj$c;->ve:Z

    .line 5
    iput-object p1, p0, Lcom/byazt/eti/uj$c;->uj:Ljava/lang/String;

    .line 6
    iput-object p7, p0, Lcom/byazt/eti/uj$c;->a:Ljava/lang/String;

    .line 7
    iput-wide p8, p0, Lcom/byazt/eti/uj$c;->sp:J

    .line 8
    iput p10, p0, Lcom/byazt/eti/uj$c;->x:I

    .line 9
    iput p11, p0, Lcom/byazt/eti/uj$c;->n:I

    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/byazt/eti/uj$c;
    .locals 24

    const-string v0, ""

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    move-object/from16 v6, p0

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "create_time"

    .line 2
    invoke-virtual {v5, v6, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    const-string v8, "expire_time"

    .line 3
    invoke-virtual {v5, v8, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    const-string v10, "is_using"

    .line 4
    invoke-virtual {v5, v10, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    const-string v10, "material_data"

    .line 5
    invoke-virtual {v5, v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    const-string v11, "save_version"

    .line 6
    invoke-virtual {v5, v11, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    const-string v12, "uuid"

    .line 7
    invoke-virtual {v5, v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v12, "priority"

    .line 8
    invoke-virtual {v5, v12, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v12, "index"

    .line 9
    invoke-virtual {v5, v12, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    move-object/from16 v19, v0

    move-wide/from16 v20, v1

    move/from16 v18, v3

    move/from16 v22, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-object v13, v10

    move/from16 v23, v11

    goto :goto_4

    :catch_0
    move v5, v3

    goto :goto_0

    :catch_1
    move v5, v3

    const/4 v11, 0x0

    :goto_0
    move-wide v2, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_3

    :catch_2
    move v5, v3

    const/4 v11, 0x0

    move-wide v2, v1

    goto :goto_1

    :catch_3
    move-wide v2, v1

    const/4 v5, 0x1

    const/4 v11, 0x0

    :goto_1
    move-object v1, v0

    goto :goto_3

    :catch_4
    move-wide v8, v1

    goto :goto_2

    :catch_5
    move-wide v6, v1

    move-wide v8, v6

    :goto_2
    const/4 v5, 0x1

    const/4 v11, 0x0

    move-object v1, v0

    move-wide v2, v8

    :goto_3
    move-object v13, v0

    move-object/from16 v19, v1

    move-wide/from16 v20, v2

    move/from16 v18, v5

    move-wide v14, v6

    move-wide/from16 v16, v8

    move/from16 v23, v11

    const/16 v22, 0x0

    .line 10
    :goto_4
    new-instance v0, Lcom/byazt/eti/uj$c;

    move-object v12, v0

    invoke-direct/range {v12 .. v23}, Lcom/byazt/eti/uj$c;-><init>(Ljava/lang/String;JJZLjava/lang/String;JII)V

    return-object v0
.end method


# virtual methods
.method public c(Lcom/byazt/eti/sp$c;)Z
    .locals 1

    .line 11
    invoke-virtual {p0, p1}, Lcom/byazt/eti/uj$c;->tt(Lcom/byazt/eti/sp$c;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 12
    :cond_0
    iget-boolean p1, p0, Lcom/byazt/eti/uj$c;->ve:Z

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "create_time"

    .line 7
    .line 8
    iget-wide v2, p0, Lcom/byazt/eti/uj$c;->c:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "expire_time"

    .line 14
    .line 15
    iget-wide v2, p0, Lcom/byazt/eti/uj$c;->tt:J

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "is_using"

    .line 21
    .line 22
    iget-boolean v2, p0, Lcom/byazt/eti/uj$c;->ve:Z

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "material_data"

    .line 28
    .line 29
    iget-object v2, p0, Lcom/byazt/eti/uj$c;->uj:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v1, "save_version"

    .line 35
    .line 36
    iget v2, p0, Lcom/byazt/eti/uj$c;->n:I

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string v1, "uuid"

    .line 42
    .line 43
    iget-object v2, p0, Lcom/byazt/eti/uj$c;->a:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    const-string v1, "priority"

    .line 49
    .line 50
    iget-wide v2, p0, Lcom/byazt/eti/uj$c;->sp:J

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    const-string v1, "index"

    .line 56
    .line 57
    iget v2, p0, Lcom/byazt/eti/uj$c;->x:I

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method

.method public tt(Lcom/byazt/eti/sp$c;)Z
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/byazt/eti/uj$c;->tt:J

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    cmp-long v5, v0, v2

    .line 9
    .line 10
    if-lez v5, :cond_0

    .line 11
    .line 12
    return v4

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/byazt/eti/uj$c;->uj:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    return v4

    .line 22
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/eti/sp$c;->ve()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    const/16 p1, 0x1dbb

    .line 29
    .line 30
    iget v0, p0, Lcom/byazt/eti/uj$c;->n:I

    .line 31
    .line 32
    if-eq p1, v0, :cond_2

    .line 33
    .line 34
    return v4

    .line 35
    :cond_2
    const/4 p1, 0x0

    .line 36
    return p1
.end method

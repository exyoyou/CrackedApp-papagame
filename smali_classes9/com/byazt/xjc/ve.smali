.class public Lcom/byazt/xjc/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1ff,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/xjc/ve$c;
    }
.end annotation


# instance fields
.field public a:Z

.field public c:Ljava/lang/String;

.field public da:I

.field public i:Ljava/lang/String;

.field public n:Z

.field public sl:Z

.field public sp:Lorg/json/JSONArray;

.field public tt:I

.field public uj:I

.field public ve:I

.field public x:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "meta_md5"

    .line 15
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/xjc/ve;->c:Ljava/lang/String;

    const-string p1, "consume_time"

    .line 16
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/byazt/xjc/ve;->tt:I

    const-string p1, "reduce_time"

    .line 17
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/byazt/xjc/ve;->ve:I

    const-string p1, "is_video_completed"

    .line 18
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/byazt/xjc/ve;->n:Z

    const-string p1, "reward_verify_array"

    .line 19
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/xjc/ve;->sp:Lorg/json/JSONArray;

    const-string p1, "is_mute"

    .line 20
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/byazt/xjc/ve;->x:Z

    const-string p1, "play_again_string"

    .line 21
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/xjc/ve;->i:Ljava/lang/String;

    const-string p1, "carousel_type"

    .line 22
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/byazt/xjc/ve;->da:I

    const-string p1, "eternal_global_time"

    .line 23
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/byazt/xjc/ve;->uj:I

    const-string p1, "first_ad_is_video"

    .line 24
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/byazt/xjc/ve;->sl:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIZLorg/json/JSONArray;ZLcom/byazt/cjm/c;IZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/byazt/xjc/ve;->c:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/byazt/xjc/ve;->tt:I

    .line 5
    iput p3, p0, Lcom/byazt/xjc/ve;->ve:I

    .line 6
    iput p4, p0, Lcom/byazt/xjc/ve;->uj:I

    .line 7
    iput-boolean p5, p0, Lcom/byazt/xjc/ve;->n:Z

    .line 8
    iput-object p6, p0, Lcom/byazt/xjc/ve;->sp:Lorg/json/JSONArray;

    .line 9
    iput-boolean p7, p0, Lcom/byazt/xjc/ve;->x:Z

    .line 10
    invoke-interface {p8}, Lcom/byazt/cjm/c;->x()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/xjc/ve;->i:Ljava/lang/String;

    .line 11
    iput p9, p0, Lcom/byazt/xjc/ve;->da:I

    .line 12
    iput-boolean p10, p0, Lcom/byazt/xjc/ve;->sl:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIIZLorg/json/JSONArray;ZLcom/byazt/cjm/c;IZLcom/byazt/xjc/ve$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/byazt/xjc/ve;-><init>(Ljava/lang/String;IIIZLorg/json/JSONArray;ZLcom/byazt/cjm/c;IZ)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/xjc/ve;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/xjc/ve;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public da()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/xjc/ve;->uj:I

    .line 2
    .line 3
    return v0
.end method

.method public i()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "meta_md5"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/byazt/xjc/ve;->c:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "consume_time"

    .line 14
    .line 15
    iget v2, p0, Lcom/byazt/xjc/ve;->tt:I

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "reduce_time"

    .line 21
    .line 22
    iget v2, p0, Lcom/byazt/xjc/ve;->ve:I

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "is_video_completed"

    .line 28
    .line 29
    iget-boolean v2, p0, Lcom/byazt/xjc/ve;->n:Z

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v1, "is_user_interacted"

    .line 35
    .line 36
    iget-boolean v2, p0, Lcom/byazt/xjc/ve;->a:Z

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string v1, "reward_verify_array"

    .line 42
    .line 43
    iget-object v2, p0, Lcom/byazt/xjc/ve;->sp:Lorg/json/JSONArray;

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    const-string v1, "is_mute"

    .line 49
    .line 50
    iget-boolean v2, p0, Lcom/byazt/xjc/ve;->x:Z

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    const-string v1, "play_again_string"

    .line 56
    .line 57
    iget-object v2, p0, Lcom/byazt/xjc/ve;->i:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    const-string v1, "carousel_type"

    .line 63
    .line 64
    iget v2, p0, Lcom/byazt/xjc/ve;->da:I

    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    const-string v1, "eternal_global_time"

    .line 70
    .line 71
    iget v2, p0, Lcom/byazt/xjc/ve;->uj:I

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    const-string v1, "first_ad_is_video"

    .line 77
    .line 78
    iget-boolean v2, p0, Lcom/byazt/xjc/ve;->sl:Z

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    :catch_0
    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/xjc/ve;->x:Z

    .line 2
    .line 3
    return v0
.end method

.method public sl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/xjc/ve;->sl:Z

    .line 2
    .line 3
    return v0
.end method

.method public sp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/xjc/ve;->da:I

    .line 2
    .line 3
    return v0
.end method

.method public tt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/xjc/ve;->tt:I

    .line 2
    .line 3
    return v0
.end method

.method public uj()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/xjc/ve;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public ve()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/xjc/ve;->ve:I

    .line 2
    .line 3
    return v0
.end method

.method public x()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/byazt/xjc/ve;->sp:Lorg/json/JSONArray;

    .line 8
    .line 9
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/byazt/xjc/ve;->sp:Lorg/json/JSONArray;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/Integer;

    .line 22
    .line 23
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    :cond_0
    return-object v0
.end method

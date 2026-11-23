.class public Lcom/byazt/aq/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x79e,
        0x47
    }
.end annotation


# instance fields
.field public a:F

.field public c:Ljava/lang/String;

.field public da:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/aq/x;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/byazt/aq/n;

.field public m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public n:F

.field public sl:Lcom/byazt/aq/x;

.field public sp:F

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/byazt/aq/x;",
            ">;>;"
        }
    .end annotation
.end field

.field public tt:F

.field public u:Ljava/lang/String;

.field public uj:F

.field public ve:F

.field public x:F

.field public yp:Z

.field public z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/aq/x;->z:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/aq/x;->m:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/x;->tt:F

    return v0
.end method

.method public a(F)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/aq/x;->sp:F

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/x;->u:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)Ljava/lang/String;
    .locals 9

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    iget-object v1, p0, Lcom/byazt/aq/x;->i:Lcom/byazt/aq/n;

    invoke-virtual {v1}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v2, p0, Lcom/byazt/aq/x;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v2, p0, Lcom/byazt/aq/x;->i:Lcom/byazt/aq/n;

    invoke-virtual {v2}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v2, p0, Lcom/byazt/aq/x;->i:Lcom/byazt/aq/n;

    invoke-virtual {v2}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/aq/a;->cf()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    iget-object p1, p0, Lcom/byazt/aq/x;->i:Lcom/byazt/aq/n;

    invoke-virtual {p1}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object p1, p0, Lcom/byazt/aq/x;->i:Lcom/byazt/aq/n;

    invoke-virtual {p1}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/aq/a;->nb()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "29"

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "16"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "9"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_2

    :pswitch_0
    const/4 p1, 0x1

    .line 25
    :goto_2
    iget-object v1, p0, Lcom/byazt/aq/x;->i:Lcom/byazt/aq/n;

    invoke-virtual {v1}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/aq/a;->nb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v7, "17"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "18"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    mul-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v4

    .line 26
    :goto_3
    iget-object v1, p0, Lcom/byazt/aq/x;->i:Lcom/byazt/aq/n;

    invoke-virtual {v1}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/aq/a;->nb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x3

    sparse-switch v7, :sswitch_data_1

    goto/16 :goto_4

    :sswitch_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_4

    :cond_5
    const/16 v3, 0x8

    goto/16 :goto_4

    :sswitch_4
    const-string v2, "24"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v3, 0x7

    goto :goto_4

    :sswitch_5
    const-string v2, "22"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v3, 0x6

    goto :goto_4

    :sswitch_6
    const-string v2, "20"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v3, 0x5

    goto :goto_4

    :sswitch_7
    const-string v2, "13"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_4

    :cond_9
    const/4 v3, 0x4

    goto :goto_4

    :sswitch_8
    const-string v2, "12"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4

    :cond_a
    const/4 v3, 0x3

    goto :goto_4

    :sswitch_9
    const-string v2, "10"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_4

    :cond_b
    const/4 v3, 0x2

    goto :goto_4

    :sswitch_a
    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_4

    :cond_c
    const/4 v3, 0x1

    goto :goto_4

    :sswitch_b
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_4

    :cond_d
    const/4 v3, 0x0

    :goto_4
    packed-switch v3, :pswitch_data_1

    goto :goto_5

    :pswitch_1
    mul-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v8

    .line 27
    :goto_5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x39 -> :sswitch_2
        0x625 -> :sswitch_1
        0x647 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x30 -> :sswitch_b
        0x35 -> :sswitch_a
        0x61f -> :sswitch_9
        0x621 -> :sswitch_8
        0x622 -> :sswitch_7
        0x63e -> :sswitch_6
        0x640 -> :sswitch_5
        0x642 -> :sswitch_4
        0x647 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public c(F)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/byazt/aq/x;->uj:F

    return-void
.end method

.method public c(Lcom/byazt/aq/n;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/byazt/aq/x;->i:Lcom/byazt/aq/n;

    return-void
.end method

.method public c(Lcom/byazt/aq/x;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/byazt/aq/x;->sl:Lcom/byazt/aq/x;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/aq/x;->u:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/byazt/aq/x;->z:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/aq/x;",
            ">;)V"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lcom/byazt/aq/x;->da:Ljava/util/List;

    return-void
.end method

.method public c(Lorg/json/JSONArray;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/byazt/aq/x;->m:Ljava/util/Map;

    const-string v3, "id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "value"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    :cond_1
    :goto_1
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/byazt/aq/x;->yp:Z

    return-void
.end method

.method public da()Lcom/byazt/aq/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/x;->i:Lcom/byazt/aq/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public gr()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/x;->i:Lcom/byazt/aq/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/byazt/aq/a;->yf()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ltz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/aq/x;->i:Lcom/byazt/aq/n;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/byazt/aq/a;->f()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-ltz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/aq/x;->i:Lcom/byazt/aq/n;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/byazt/aq/a;->dz()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-ltz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/byazt/aq/x;->i:Lcom/byazt/aq/n;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/byazt/aq/a;->ma()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-gez v0, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 51
    return v0

    .line 52
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 53
    return v0
.end method

.method public gt()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/x;->z:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public gu()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/x;->i:Lcom/byazt/aq/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/byazt/aq/a;->gu()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public i()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/x;->sp:F

    .line 2
    .line 3
    return v0
.end method

.method public m()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/x;->i:Lcom/byazt/aq/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/byazt/aq/x;->yp()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    int-to-float v1, v1

    .line 12
    invoke-virtual {v0}, Lcom/byazt/aq/a;->nu()F

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    add-float/2addr v1, v2

    .line 17
    invoke-virtual {v0}, Lcom/byazt/aq/a;->yp()F

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    add-float/2addr v1, v2

    .line 22
    invoke-virtual {v0}, Lcom/byazt/aq/a;->t()F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/high16 v2, 0x40000000    # 2.0f

    .line 27
    .line 28
    mul-float v0, v0, v2

    .line 29
    .line 30
    add-float/2addr v1, v0

    .line 31
    return v1
.end method

.method public my()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/aq/x;->yp:Z

    .line 2
    .line 3
    return v0
.end method

.method public n()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/x;->n:F

    return v0
.end method

.method public n(F)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/aq/x;->a:F

    return-void
.end method

.method public nu()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/byazt/aq/x;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/x;->t:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public qy()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/x;->i:Lcom/byazt/aq/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/byazt/aq/a;->md()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "flex"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public rh()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/x;->da:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gtz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public rl()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/x;->t:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gtz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/byazt/aq/x;->t:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/util/List;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-lez v3, :cond_1

    .line 42
    .line 43
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iput-object v0, p0, Lcom/byazt/aq/x;->t:Ljava/util/List;

    .line 48
    .line 49
    :cond_3
    :goto_1
    return-void
.end method

.method public sl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/aq/x;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/x;->da:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public sp()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/x;->ve:F

    return v0
.end method

.method public sp(F)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/aq/x;->x:F

    return-void
.end method

.method public t()Lcom/byazt/aq/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/x;->sl:Lcom/byazt/aq/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DynamicLayoutUnit{id=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/aq/x;->c:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x27

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ", x="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget v1, p0, Lcom/byazt/aq/x;->tt:F

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", y="

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget v1, p0, Lcom/byazt/aq/x;->ve:F

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, ", width="

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget v1, p0, Lcom/byazt/aq/x;->a:F

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ", height="

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget v1, p0, Lcom/byazt/aq/x;->sp:F

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, ", remainWidth="

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget v1, p0, Lcom/byazt/aq/x;->x:F

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, ", rootBrick="

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/byazt/aq/x;->i:Lcom/byazt/aq/n;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ", childrenBrickUnits="

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/byazt/aq/x;->da:Ljava/util/List;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const/16 v1, 0x7d

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    return-object v0
.end method

.method public tt()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/x;->m:Ljava/util/Map;

    return-object v0
.end method

.method public tt(F)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/aq/x;->n:F

    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/aq/x;->c:Ljava/lang/String;

    return-void
.end method

.method public tt(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/byazt/aq/x;",
            ">;>;)V"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/byazt/aq/x;->t:Ljava/util/List;

    return-void
.end method

.method public u()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/x;->i:Lcom/byazt/aq/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/byazt/aq/a;->l()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0}, Lcom/byazt/aq/a;->lo()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    add-int/2addr v1, v0

    .line 16
    return v1
.end method

.method public uj()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/x;->uj:F

    return v0
.end method

.method public uj(F)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/aq/x;->ve:F

    return-void
.end method

.method public ve()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/x;->c:Ljava/lang/String;

    return-object v0
.end method

.method public ve(F)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/aq/x;->tt:F

    return-void
.end method

.method public ve(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/aq/x;->i:Lcom/byazt/aq/n;

    invoke-virtual {v0}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/aq/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public x()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/aq/x;->a:F

    .line 2
    .line 3
    return v0
.end method

.method public yp()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/x;->i:Lcom/byazt/aq/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/byazt/aq/a;->bm()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0}, Lcom/byazt/aq/a;->lr()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    add-int/2addr v1, v0

    .line 16
    return v1
.end method

.method public z()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/aq/x;->i:Lcom/byazt/aq/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/byazt/aq/x;->u()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    int-to-float v1, v1

    .line 12
    invoke-virtual {v0}, Lcom/byazt/aq/a;->z()F

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    add-float/2addr v1, v2

    .line 17
    invoke-virtual {v0}, Lcom/byazt/aq/a;->m()F

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    add-float/2addr v1, v2

    .line 22
    invoke-virtual {v0}, Lcom/byazt/aq/a;->t()F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/high16 v2, 0x40000000    # 2.0f

    .line 27
    .line 28
    mul-float v0, v0, v2

    .line 29
    .line 30
    add-float/2addr v1, v0

    .line 31
    return v1
.end method

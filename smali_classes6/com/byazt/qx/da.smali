.class public Lcom/byazt/qx/da;
.super Lcom/byazt/pct/n;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa3,
        0x48
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/pct/n<",
        "Lorg/json/JSONObject;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/ete/ic;

.field public tt:Lcom/byazt/omf/d;

.field public ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/ete/ic;Lcom/byazt/omf/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/pct/n;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/qx/da;->c:Lcom/byazt/ete/ic;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/qx/da;->tt:Lcom/byazt/omf/d;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/qx/da;->ve:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public static c(Lcom/byazt/pct/nu;Lcom/byazt/ete/ic;Lcom/byazt/omf/d;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/byazt/qx/da;

    const-string v1, "getEstimatedInteractionAreaInfo"

    invoke-direct {v0, p1, p2, v1}, Lcom/byazt/qx/da;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/omf/d;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 3
    new-instance v0, Lcom/byazt/qx/da;

    const-string v1, "interactionAreaInfo"

    invoke-direct {v0, p1, p2, v1}, Lcom/byazt/qx/da;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/omf/d;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;Lcom/byazt/pct/a;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/byazt/pct/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/byazt/qx/da;->c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)Lorg/json/JSONObject;
    .locals 18
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/byazt/pct/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 4
    iget-object v1, v0, Lcom/byazt/qx/da;->tt:Lcom/byazt/omf/d;

    invoke-virtual {v1}, Lcom/byazt/omf/d;->ve()Lcom/byazt/sy/i;

    move-result-object v1

    .line 5
    iget-object v2, v0, Lcom/byazt/qx/da;->ve:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v3, "interactionAreaInfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    const-string v3, "getEstimatedInteractionAreaInfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    move-object v6, v4

    goto/16 :goto_3

    :cond_1
    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1}, Lcom/byazt/sy/i;->getEstimatedInteractionAreaInfo()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1

    :cond_2
    const-string v2, "areas"

    move-object/from16 v3, p1

    .line 7
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 8
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 9
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 10
    invoke-static {v2}, Lcom/byazt/ete/m;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/m;

    move-result-object v2

    if-eqz v1, :cond_3

    .line 11
    invoke-interface {v1, v2}, Lcom/byazt/sy/i;->setEasyPlayInteractionAreaInfo(Lcom/byazt/ete/m;)V

    .line 12
    invoke-interface {v1}, Lcom/byazt/sy/i;->getEstimatedInteractionAreaInfo()Lorg/json/JSONObject;

    move-result-object v5

    .line 13
    invoke-static {v5}, Lcom/byazt/ete/m;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/m;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v4

    goto :goto_1

    :cond_4
    move-object v2, v4

    move-object v5, v2

    :goto_1
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-string v8, "canMakeVisiable"

    if-nez v5, :cond_5

    if-eqz v1, :cond_0

    .line 14
    invoke-static {v4, v2}, Lcom/byazt/ete/m;->tt(Lcom/byazt/ete/m;Lcom/byazt/ete/m;)Lcom/byazt/ete/m;

    move-result-object v2

    invoke-interface {v1, v2, v6, v7}, Lcom/byazt/sy/i;->c(Lcom/byazt/ete/m;D)V

    .line 15
    iget-object v1, v0, Lcom/byazt/qx/da;->tt:Lcom/byazt/omf/d;

    invoke-virtual {v1, v8, v4}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_5
    const-string v9, "expressWebviewRecycle"

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    if-nez v2, :cond_6

    .line 16
    invoke-interface {v1, v4, v10, v11}, Lcom/byazt/sy/i;->c(Lcom/byazt/ete/m;D)V

    .line 17
    invoke-interface {v1}, Lcom/byazt/sy/i;->ve()V

    .line 18
    iget-object v1, v0, Lcom/byazt/qx/da;->tt:Lcom/byazt/omf/d;

    invoke-virtual {v1, v9, v4}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 19
    :cond_6
    invoke-static {v5, v2}, Lcom/byazt/ete/m;->c(Lcom/byazt/ete/m;Lcom/byazt/ete/m;)D

    move-result-wide v12

    .line 20
    iget-wide v14, v2, Lcom/byazt/ete/m;->ve:D

    iget-wide v10, v2, Lcom/byazt/ete/m;->uj:D

    mul-double v14, v14, v10

    .line 21
    iget-wide v10, v5, Lcom/byazt/ete/m;->ve:D

    iget-wide v3, v5, Lcom/byazt/ete/m;->uj:D

    mul-double v10, v10, v3

    const-wide/16 v3, 0x0

    cmpl-double v17, v10, v3

    if-nez v17, :cond_7

    .line 22
    invoke-static {v5, v2}, Lcom/byazt/ete/m;->tt(Lcom/byazt/ete/m;Lcom/byazt/ete/m;)Lcom/byazt/ete/m;

    move-result-object v2

    invoke-interface {v1, v2, v6, v7}, Lcom/byazt/sy/i;->c(Lcom/byazt/ete/m;D)V

    .line 23
    iget-object v1, v0, Lcom/byazt/qx/da;->tt:Lcom/byazt/omf/d;

    const/4 v6, 0x0

    invoke-virtual {v1, v8, v6}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    cmpl-double v7, v14, v3

    if-nez v7, :cond_8

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 24
    invoke-interface {v1, v6, v3, v4}, Lcom/byazt/sy/i;->c(Lcom/byazt/ete/m;D)V

    .line 25
    invoke-interface {v1}, Lcom/byazt/sy/i;->ve()V

    .line 26
    iget-object v1, v0, Lcom/byazt/qx/da;->tt:Lcom/byazt/omf/d;

    invoke-virtual {v1, v9, v6}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_3

    :cond_8
    div-double v3, v12, v14

    const-wide v6, 0x3fe999999999999aL    # 0.8

    cmpl-double v17, v3, v6

    if-ltz v17, :cond_9

    const/4 v6, 0x1

    const/16 v16, 0x1

    goto :goto_2

    :cond_9
    const/16 v16, 0x0

    .line 27
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "A:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " B:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " o:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " R:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "xeasy"

    invoke-static {v4, v3}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v16, :cond_a

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    const/4 v6, 0x0

    .line 28
    invoke-interface {v1, v6, v3, v4}, Lcom/byazt/sy/i;->c(Lcom/byazt/ete/m;D)V

    .line 29
    invoke-interface {v1}, Lcom/byazt/sy/i;->ve()V

    .line 30
    iget-object v1, v0, Lcom/byazt/qx/da;->tt:Lcom/byazt/omf/d;

    invoke-virtual {v1, v9, v6}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_3

    :cond_a
    const/4 v6, 0x0

    .line 31
    invoke-static {v5, v2}, Lcom/byazt/ete/m;->tt(Lcom/byazt/ete/m;Lcom/byazt/ete/m;)Lcom/byazt/ete/m;

    move-result-object v2

    sub-double/2addr v12, v10

    div-double/2addr v12, v10

    invoke-interface {v1, v2, v12, v13}, Lcom/byazt/sy/i;->c(Lcom/byazt/ete/m;D)V

    .line 32
    iget-object v1, v0, Lcom/byazt/qx/da;->tt:Lcom/byazt/omf/d;

    invoke-virtual {v1, v8, v6}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_3
    return-object v6
.end method

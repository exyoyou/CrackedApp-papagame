.class public Lcom/byazt/xd/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x208,
        0x14
    }
.end annotation


# instance fields
.field public a:F

.field public c:Lcom/byazt/cd/c$c;

.field public i:Lcom/byazt/xd/tt;

.field public n:Lcom/byazt/cd/c$c;

.field public sp:F

.field public tt:Lcom/byazt/cd/c$c;

.field public uj:I

.field public ve:I

.field public x:I


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


# virtual methods
.method public c(Landroid/view/View;Landroid/graphics/drawable/Drawable;F[F)V
    .locals 19

    move-object/from16 v0, p0

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/xd/c;->c()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    iget-object v4, v0, Lcom/byazt/xd/c;->n:Lcom/byazt/cd/c$c;

    if-eqz v4, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    const/4 v5, 0x0

    if-nez v1, :cond_2

    if-nez v13, :cond_2

    .line 13
    iput-object v5, v0, Lcom/byazt/xd/c;->i:Lcom/byazt/xd/tt;

    .line 14
    invoke-virtual/range {p1 .. p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_2
    if-eqz v1, :cond_4

    .line 15
    iget-object v1, v0, Lcom/byazt/xd/c;->tt:Lcom/byazt/cd/c$c;

    if-eqz v1, :cond_3

    .line 16
    iget-object v6, v1, Lcom/byazt/cd/c$c;->tt:[I

    .line 17
    iget-object v1, v1, Lcom/byazt/cd/c$c;->ve:[F

    goto :goto_2

    .line 18
    :cond_3
    iget-object v1, v0, Lcom/byazt/xd/c;->c:Lcom/byazt/cd/c$c;

    iget-object v6, v1, Lcom/byazt/cd/c$c;->tt:[I

    .line 19
    iget-object v1, v1, Lcom/byazt/cd/c$c;->ve:[F

    :goto_2
    move-object v7, v1

    goto :goto_3

    :cond_4
    move-object v6, v5

    move-object v7, v6

    :goto_3
    if-eqz v13, :cond_5

    .line 20
    iget-object v1, v4, Lcom/byazt/cd/c$c;->tt:[I

    move-object/from16 v17, v1

    goto :goto_4

    :cond_5
    move-object/from16 v17, v5

    :goto_4
    if-eqz v13, :cond_6

    .line 21
    iget-object v1, v4, Lcom/byazt/cd/c$c;->ve:[F

    move-object/from16 v18, v1

    goto :goto_5

    :cond_6
    move-object/from16 v18, v5

    .line 22
    :goto_5
    new-instance v1, Lcom/byazt/xd/tt;

    iget-object v4, v0, Lcom/byazt/xd/c;->tt:Lcom/byazt/cd/c$c;

    if-eqz v4, :cond_7

    const/4 v10, 0x1

    goto :goto_6

    :cond_7
    const/4 v10, 0x0

    :goto_6
    iget v11, v0, Lcom/byazt/xd/c;->ve:I

    iget v12, v0, Lcom/byazt/xd/c;->uj:I

    iget v14, v0, Lcom/byazt/xd/c;->a:F

    iget v15, v0, Lcom/byazt/xd/c;->sp:F

    iget v2, v0, Lcom/byazt/xd/c;->x:I

    move-object v4, v1

    move-object/from16 v5, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v16, v2

    invoke-direct/range {v4 .. v18}, Lcom/byazt/xd/tt;-><init>(Landroid/graphics/drawable/Drawable;[I[FF[FZIIZFFI[I[F)V

    iput-object v1, v0, Lcom/byazt/xd/c;->i:Lcom/byazt/xd/tt;

    move-object/from16 v2, p1

    .line 23
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/byazt/cd/c;->ve(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/byazt/cd/c;->tt(Ljava/lang/String;)Lcom/byazt/cd/c$c;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/xd/c;->c:Lcom/byazt/cd/c$c;

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .line 3
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "gradient"

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p1}, Lcom/byazt/cd/c;->ve(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {p1}, Lcom/byazt/cd/c;->tt(Ljava/lang/String;)Lcom/byazt/cd/c$c;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/xd/c;->n:Lcom/byazt/cd/c$c;

    const-string p1, "width"

    const-wide/high16 v1, 0x4053000000000000L    # 76.0

    .line 7
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float p1, v1

    invoke-static {p2, p1}, Lcom/byazt/cd/x;->c(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/byazt/xd/c;->a:F

    const-string p1, "opacity"

    const-wide v1, 0x3feccccccccccccdL    # 0.9

    .line 8
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/byazt/xd/c;->sp:F

    const-string p1, "steps"

    const/16 p2, 0x18

    .line 9
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/byazt/xd/c;->x:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/byazt/xd/c;->c:Lcom/byazt/cd/c$c;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/byazt/xd/c;->tt:Lcom/byazt/cd/c$c;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public tt(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "gradient"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1}, Lcom/byazt/cd/c;->ve(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {p1}, Lcom/byazt/cd/c;->tt(Ljava/lang/String;)Lcom/byazt/cd/c$c;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/xd/c;->tt:Lcom/byazt/cd/c$c;

    const-string p1, "duration"

    const/16 v1, 0x898

    .line 5
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/byazt/xd/c;->ve:I

    const-string p1, "playCount"

    const/4 v1, -0x1

    .line 6
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/byazt/xd/c;->uj:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public tt()Z
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/byazt/xd/c;->c:Lcom/byazt/cd/c$c;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/byazt/xd/c;->tt:Lcom/byazt/cd/c$c;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/byazt/xd/c;->n:Lcom/byazt/cd/c$c;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public uj()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/xd/c;->i:Lcom/byazt/xd/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/xd/tt;->tt()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public ve()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/xd/c;->i:Lcom/byazt/xd/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/xd/tt;->ve()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/xd/c;->i:Lcom/byazt/xd/tt;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/xd/tt;->c()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

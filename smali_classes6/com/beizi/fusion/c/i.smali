.class public Lcom/beizi/fusion/c/i;
.super Lcom/beizi/fusion/c/e;
.source "SourceFile"


# instance fields
.field private r:F

.field private s:F

.field private t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/a;JI)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/beizi/fusion/c/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/a;J)V

    .line 2
    .line 3
    .line 4
    iput p6, p0, Lcom/beizi/fusion/c/i;->t:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public F()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/c/e;->p()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public G()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/beizi/fusion/work/a;->n()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public a(Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Ljava/lang/String;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Ljava/util/List;Lcom/beizi/fusion/work/a;)Lcom/beizi/fusion/work/a;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;",
            "Ljava/lang/String;",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;",
            "Ljava/util/List<",
            "Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;",
            ">;",
            "Lcom/beizi/fusion/work/a;",
            ")",
            "Lcom/beizi/fusion/work/a;"
        }
    .end annotation

    move-object v12, p0

    move-object/from16 v0, p2

    .line 4
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;->getSleepTime()J

    move-result-wide v5

    .line 5
    invoke-static {}, Lcom/beizi/fusion/tool/at;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "BEIZI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v13, p5

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget v0, v12, Lcom/beizi/fusion/c/i;->t:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 7
    new-instance v13, Lcom/beizi/fusion/work/c/b;

    iget-object v1, v12, Lcom/beizi/fusion/c/e;->b:Landroid/content/Context;

    iget-object v2, v12, Lcom/beizi/fusion/c/e;->e:Ljava/lang/String;

    iget-wide v3, v12, Lcom/beizi/fusion/c/e;->f:J

    iget v10, v12, Lcom/beizi/fusion/c/i;->r:F

    iget v11, v12, Lcom/beizi/fusion/c/i;->s:F

    move-object v0, v13

    move-object/from16 v7, p3

    move-object v8, p1

    move-object v9, p0

    invoke-direct/range {v0 .. v11}, Lcom/beizi/fusion/work/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;JJLcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Lcom/beizi/fusion/c/e;FF)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 8
    new-instance v13, Lcom/beizi/fusion/work/c/c;

    iget-object v1, v12, Lcom/beizi/fusion/c/e;->b:Landroid/content/Context;

    iget-object v2, v12, Lcom/beizi/fusion/c/e;->e:Ljava/lang/String;

    iget-wide v3, v12, Lcom/beizi/fusion/c/e;->f:J

    iget v10, v12, Lcom/beizi/fusion/c/i;->r:F

    iget v11, v12, Lcom/beizi/fusion/c/i;->s:F

    move-object v0, v13

    move-object/from16 v7, p3

    move-object v8, p1

    move-object v9, p0

    invoke-direct/range {v0 .. v11}, Lcom/beizi/fusion/work/c/c;-><init>(Landroid/content/Context;Ljava/lang/String;JJLcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Lcom/beizi/fusion/c/e;FF)V

    goto :goto_1

    .line 9
    :cond_3
    new-instance v13, Lcom/beizi/fusion/work/c/d;

    iget-object v1, v12, Lcom/beizi/fusion/c/e;->b:Landroid/content/Context;

    iget-object v2, v12, Lcom/beizi/fusion/c/e;->e:Ljava/lang/String;

    iget-wide v3, v12, Lcom/beizi/fusion/c/e;->f:J

    iget v10, v12, Lcom/beizi/fusion/c/i;->r:F

    iget v11, v12, Lcom/beizi/fusion/c/i;->s:F

    move-object v0, v13

    move-object/from16 v7, p3

    move-object v8, p1

    move-object v9, p0

    invoke-direct/range {v0 .. v11}, Lcom/beizi/fusion/work/c/d;-><init>(Landroid/content/Context;Ljava/lang/String;JJLcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Lcom/beizi/fusion/c/e;FF)V

    :goto_1
    return-object v13
.end method

.method protected a()V
    .locals 2

    .line 1
    sget-object v0, Lcom/beizi/fusion/c/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/beizi/fusion/model/AppEventId;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/model/AppEventId;

    move-result-object v0

    iget-object v1, p0, Lcom/beizi/fusion/c/e;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/model/AppEventId;->setAppNativeRequest(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->c:Lcom/beizi/fusion/events/EventBean;

    if-eqz v0, :cond_0

    const-string v1, "5"

    .line 3
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setAdType(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(FF)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/beizi/fusion/c/i;->r:F

    .line 11
    iput p2, p0, Lcom/beizi/fusion/c/i;->s:F

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lcom/beizi/fusion/c/e;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/beizi/fusion/work/a;->i()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return v0

    .line 16
    :catch_0
    :cond_0
    const/4 v0, -0x1

    .line 17
    return v0
.end method

.method public c()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/c/e;->o()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

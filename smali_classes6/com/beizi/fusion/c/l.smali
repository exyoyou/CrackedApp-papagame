.class public Lcom/beizi/fusion/c/l;
.super Lcom/beizi/fusion/c/e;
.source "SourceFile"


# instance fields
.field private r:I

.field private s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Lcom/beizi/fusion/a;J)V
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object v3, p4

    .line 5
    move-wide v4, p5

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/beizi/fusion/c/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/a;J)V

    .line 7
    .line 8
    .line 9
    iput-object p3, p0, Lcom/beizi/fusion/c/e;->g:Landroid/view/View;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public F()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/c/e;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/beizi/fusion/c/e;->n:Z

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/beizi/fusion/work/a;->au()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/beizi/fusion/work/a;->e()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/beizi/fusion/c/e;->n:Z

    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public G()I
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

.method public H()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/beizi/fusion/tool/e;->b()Lcom/beizi/fusion/tool/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/beizi/fusion/tool/e;->c()Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/beizi/fusion/c/l$1;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/beizi/fusion/c/l$1;-><init>(Lcom/beizi/fusion/c/l;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public I()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/work/a;->av()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public a(Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Ljava/lang/String;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Ljava/util/List;Lcom/beizi/fusion/work/a;)Lcom/beizi/fusion/work/a;
    .locals 15
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

    move-object v13, p0

    move-object/from16 v0, p2

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
    move-object/from16 v14, p5

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    new-instance v14, Lcom/beizi/fusion/work/splash/a;

    iget-object v1, v13, Lcom/beizi/fusion/c/e;->b:Landroid/content/Context;

    iget-object v2, v13, Lcom/beizi/fusion/c/e;->e:Ljava/lang/String;

    iget-wide v3, v13, Lcom/beizi/fusion/c/e;->f:J

    iget-object v5, v13, Lcom/beizi/fusion/c/e;->g:Landroid/view/View;

    iget-object v6, v13, Lcom/beizi/fusion/c/e;->d:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/beizi/fusion/c/l;->b()I

    move-result v10

    invoke-virtual {p0}, Lcom/beizi/fusion/c/l;->c()I

    move-result v11

    move-object v0, v14

    move-object/from16 v7, p3

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    move-object v12, p0

    invoke-direct/range {v0 .. v12}, Lcom/beizi/fusion/work/splash/a;-><init>(Landroid/content/Context;Ljava/lang/String;JLandroid/view/View;Landroid/view/ViewGroup;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Ljava/util/List;IILcom/beizi/fusion/c/e;)V

    :goto_1
    return-object v14
.end method

.method protected a()V
    .locals 2

    .line 1
    sget-object v0, Lcom/beizi/fusion/c/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/beizi/fusion/model/AppEventId;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/model/AppEventId;

    move-result-object v0

    iget-object v1, p0, Lcom/beizi/fusion/c/e;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/model/AppEventId;->setAppSplashRequest(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->c:Lcom/beizi/fusion/events/EventBean;

    if-eqz v0, :cond_0

    const-string v1, "2"

    .line 3
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setAdType(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/beizi/fusion/c/l;->r:I

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lcom/beizi/fusion/work/a;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/beizi/fusion/c/l;->r:I

    .line 2
    .line 3
    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/beizi/fusion/c/l;->s:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/beizi/fusion/c/l;->s:I

    return-void
.end method

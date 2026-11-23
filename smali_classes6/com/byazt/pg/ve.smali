.class public Lcom/byazt/pg/ve;
.super Lcom/byazt/pg/c;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sz/gt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x52a,
        0x36
    }
.end annotation


# instance fields
.field public a:Z

.field public da:F

.field public i:F

.field public sl:J

.field public sp:F

.field public t:Lcom/byazt/xj/ve;

.field public x:F


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/byazt/ddx/sp;Lcom/byazt/ete/ic;Ljava/lang/String;ILcom/byazt/ua/c;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/byazt/pg/c;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/byazt/ddx/sp;Lcom/byazt/ete/ic;Ljava/lang/String;ILcom/byazt/ua/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/pg/ve;->t:Lcom/byazt/xj/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/xj/ve;->tt(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/pg/ve;->t:Lcom/byazt/xj/ve;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 11

    .line 6
    iget-boolean v0, p0, Lcom/byazt/pg/ve;->a:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "device_info_new"

    .line 7
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/u;

    .line 8
    invoke-interface {v0}, Lcom/byazt/dna/u;->getDisplayDpi()I

    move-result v0

    .line 9
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/byazt/aas/pf;->a(Landroid/content/Context;)F

    move-result v2

    .line 10
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/byazt/aas/pf;->sp(Landroid/content/Context;)F

    move-result v3

    .line 11
    new-instance v4, Lcom/byazt/ete/i$c;

    invoke-direct {v4}, Lcom/byazt/ete/i$c;-><init>()V

    iget v5, p0, Lcom/byazt/pg/ve;->sp:F

    .line 12
    invoke-virtual {v4, v5}, Lcom/byazt/ete/i$c;->a(F)Lcom/byazt/ete/i$c;

    move-result-object v4

    iget v5, p0, Lcom/byazt/pg/ve;->x:F

    .line 13
    invoke-virtual {v4, v5}, Lcom/byazt/ete/i$c;->n(F)Lcom/byazt/ete/i$c;

    move-result-object v4

    iget v5, p0, Lcom/byazt/pg/ve;->i:F

    .line 14
    invoke-virtual {v4, v5}, Lcom/byazt/ete/i$c;->uj(F)Lcom/byazt/ete/i$c;

    move-result-object v4

    iget v5, p0, Lcom/byazt/pg/ve;->da:F

    .line 15
    invoke-virtual {v4, v5}, Lcom/byazt/ete/i$c;->ve(F)Lcom/byazt/ete/i$c;

    move-result-object v4

    iget-wide v5, p0, Lcom/byazt/pg/ve;->sl:J

    .line 16
    invoke-virtual {v4, v5, v6}, Lcom/byazt/ete/i$c;->tt(J)Lcom/byazt/ete/i$c;

    move-result-object v4

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/byazt/ete/i$c;->c(J)Lcom/byazt/ete/i$c;

    move-result-object v4

    const/4 v5, 0x0

    .line 18
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/byazt/ete/i$c;->uj(I)Lcom/byazt/ete/i$c;

    move-result-object v4

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/byazt/ete/i$c;->n(I)Lcom/byazt/ete/i$c;

    move-result-object p1

    iget v4, p0, Lcom/byazt/pg/c;->n:I

    .line 20
    invoke-virtual {p1, v4}, Lcom/byazt/ete/i$c;->a(I)Lcom/byazt/ete/i$c;

    move-result-object p1

    .line 21
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v4

    invoke-virtual {v4}, Lcom/byazt/omf/x;->tt()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    invoke-virtual {p1, v4}, Lcom/byazt/ete/i$c;->ve(I)Lcom/byazt/ete/i$c;

    move-result-object p1

    .line 22
    invoke-virtual {p1, v0}, Lcom/byazt/ete/i$c;->tt(I)Lcom/byazt/ete/i$c;

    move-result-object p1

    .line 23
    invoke-virtual {p1, v2}, Lcom/byazt/ete/i$c;->c(F)Lcom/byazt/ete/i$c;

    move-result-object p1

    .line 24
    invoke-virtual {p1, v3}, Lcom/byazt/ete/i$c;->tt(F)Lcom/byazt/ete/i$c;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/pg/c;->c:Lcom/byazt/ete/ic;

    .line 25
    invoke-static {v0}, Lcom/byazt/wz/x;->tt(Lcom/byazt/ete/ic;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/ete/i$c;->c(I)Lcom/byazt/ete/i$c;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/byazt/ete/i$c;->c()Lcom/byazt/ete/i;

    move-result-object v4

    const-string v2, "click"

    .line 27
    iget-object v3, p0, Lcom/byazt/pg/c;->c:Lcom/byazt/ete/ic;

    iget-object v5, p0, Lcom/byazt/pg/c;->uj:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lcom/byazt/ddx/uj;->c(Ljava/lang/String;Lcom/byazt/ete/ic;Lcom/byazt/ete/i;Ljava/lang/String;ZLjava/util/Map;IZZ)V

    .line 28
    :cond_1
    iput-boolean v1, p0, Lcom/byazt/pg/ve;->a:Z

    return-void
.end method

.method private n()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/pg/c;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/aas/rl;->n(Lcom/byazt/ete/ic;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/byazt/pg/c;->c:Lcom/byazt/ete/ic;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->cs()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    mul-int v0, v0, v1

    .line 14
    .line 15
    int-to-double v0, v0

    .line 16
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 17
    .line 18
    div-double/2addr v0, v2

    .line 19
    double-to-int v0, v0

    .line 20
    return v0
.end method


# virtual methods
.method public c(Lcom/byazt/xj/ve;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fl_count_down"

    .line 5
    invoke-virtual {p1, v0}, Lcom/byazt/xj/ve;->uj(Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/pg/ve;->t:Lcom/byazt/xj/ve;

    return-void
.end method

.method public c(Lcom/byazt/xj/ve;Landroid/view/MotionEvent;)V
    .locals 2

    if-eqz p2, :cond_3

    .line 29
    iget-boolean p1, p0, Lcom/byazt/pg/ve;->a:Z

    if-eqz p1, :cond_0

    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/byazt/pg/ve;->i:F

    .line 32
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/byazt/pg/ve;->da:F

    .line 33
    invoke-direct {p0, p2}, Lcom/byazt/pg/ve;->c(Landroid/view/MotionEvent;)V

    :goto_0
    return-void

    .line 34
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/pg/ve;->sl:J

    .line 35
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/byazt/pg/ve;->sp:F

    .line 36
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/byazt/pg/ve;->x:F

    .line 37
    invoke-direct {p0}, Lcom/byazt/pg/ve;->a()V

    :cond_3
    :goto_1
    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/pg/c;->tt:Lcom/byazt/pg/tt;

    invoke-virtual {v0, p0}, Lcom/byazt/pg/tt;->c(Lcom/byazt/sz/gt;)V

    :try_start_0
    const-string v0, "isPlayable"

    const-string v1, "true"

    .line 2
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "remainTime"

    .line 3
    invoke-direct {p0}, Lcom/byazt/pg/ve;->n()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public uj()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/byazt/pg/c;->uj()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/byazt/pg/ve;->a()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

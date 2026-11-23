.class public Lcom/beizi/fusion/c/f;
.super Lcom/beizi/fusion/c/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/beizi/fusion/bzunified/BeiZiUnifiedAdListener;)V
    .locals 6

    .line 1
    int-to-long v4, p3

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p4

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/beizi/fusion/c/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/a;J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public F()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/c/e;->o()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public a(Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Ljava/lang/String;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Ljava/util/List;Lcom/beizi/fusion/work/a;)Lcom/beizi/fusion/work/a;
    .locals 9
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

    .line 4
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;->getSleepTime()J

    move-result-wide v4

    .line 5
    invoke-static {}, Lcom/beizi/fusion/tool/at;->b()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_0

    const-string p4, "BEIZI"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    :cond_0
    new-instance p5, Lcom/beizi/fusion/work/a/a;

    iget-object v1, p0, Lcom/beizi/fusion/c/e;->b:Landroid/content/Context;

    iget-wide v2, p0, Lcom/beizi/fusion/c/e;->f:J

    move-object v0, p5

    move-object v6, p3

    move-object v7, p1

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/beizi/fusion/work/a/a;-><init>(Landroid/content/Context;JJLcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Lcom/beizi/fusion/c/e;)V

    :cond_1
    return-object p5
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

    const-string v1, "5"

    .line 3
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setAdType(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/beizi/fusion/c/e;->a(Landroid/view/ViewGroup;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/c/e;->l:Z

    .line 2
    .line 3
    return v0
.end method

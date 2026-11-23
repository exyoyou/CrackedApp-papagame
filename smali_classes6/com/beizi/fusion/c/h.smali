.class public Lcom/beizi/fusion/c/h;
.super Lcom/beizi/fusion/c/e;
.source "SourceFile"


# instance fields
.field private r:I

.field private s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/a;JI)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/beizi/fusion/c/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/a;J)V

    .line 2
    .line 3
    .line 4
    iput p6, p0, Lcom/beizi/fusion/c/h;->s:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public F()I
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

.method public G()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/c/e;->o()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public a(Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Ljava/lang/String;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Ljava/util/List;Lcom/beizi/fusion/work/a;)Lcom/beizi/fusion/work/a;
    .locals 10
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
    invoke-virtual {p3}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getAdType()Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;->getSleepTime()J

    move-result-wide v5

    .line 6
    invoke-static {}, Lcom/beizi/fusion/tool/at;->b()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_0

    const-string p4, "BEIZI"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    :cond_0
    new-instance p5, Lcom/beizi/fusion/work/b/a;

    iget-object v1, p0, Lcom/beizi/fusion/c/e;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/beizi/fusion/c/e;->e:Ljava/lang/String;

    iget-wide v3, p0, Lcom/beizi/fusion/c/e;->f:J

    move-object v0, p5

    move-object v7, p3

    move-object v8, p1

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Lcom/beizi/fusion/work/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;JJLcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Lcom/beizi/fusion/c/e;)V

    :cond_1
    return-object p5
.end method

.method protected a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->c:Lcom/beizi/fusion/events/EventBean;

    if-eqz v0, :cond_0

    const-string v1, "3"

    .line 2
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setAdType(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/beizi/fusion/c/h;->r:I

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Lcom/beizi/fusion/work/a;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/c/e;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public c()V
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

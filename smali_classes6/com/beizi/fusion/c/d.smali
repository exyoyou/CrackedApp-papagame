.class public Lcom/beizi/fusion/c/d;
.super Lcom/beizi/fusion/c/e;
.source "SourceFile"


# instance fields
.field private r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IILcom/beizi/fusion/unified/BZUnifiedAdListener;)V
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
    move-object v3, p5

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/beizi/fusion/c/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/a;J)V

    .line 7
    .line 8
    .line 9
    iput p4, p0, Lcom/beizi/fusion/c/d;->r:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Ljava/lang/String;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Ljava/util/List;Lcom/beizi/fusion/work/a;)Lcom/beizi/fusion/work/a;
    .locals 8
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

    .line 8
    invoke-static {}, Lcom/beizi/fusion/tool/at;->b()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_0

    const-string p4, "BEIZI"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    :cond_0
    new-instance p5, Lcom/beizi/fusion/work/f/a;

    iget-object v1, p0, Lcom/beizi/fusion/c/e;->b:Landroid/content/Context;

    iget-wide v2, p0, Lcom/beizi/fusion/c/e;->f:J

    iget v4, p0, Lcom/beizi/fusion/c/d;->r:I

    move-object v0, p5

    move-object v5, p3

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/beizi/fusion/work/f/a;-><init>(Landroid/content/Context;JILcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Lcom/beizi/fusion/c/e;)V

    :cond_1
    return-object p5
.end method

.method protected a()V
    .locals 3

    .line 1
    sget-object v0, Lcom/beizi/fusion/c/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/beizi/fusion/model/AppEventId;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/model/AppEventId;

    move-result-object v0

    iget-object v1, p0, Lcom/beizi/fusion/c/e;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/model/AppEventId;->setAppSplashRequest(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->c:Lcom/beizi/fusion/events/EventBean;

    if-eqz v0, :cond_4

    .line 3
    iget v1, p0, Lcom/beizi/fusion/c/d;->r:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "5"

    .line 4
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setAdType(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "3"

    .line 5
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setAdType(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "2"

    .line 6
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setAdType(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "1"

    .line 7
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setAdType(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    if-nez v0, :cond_0

    return-void

    .line 15
    :cond_0
    invoke-virtual {v0, p1}, Lcom/beizi/fusion/work/a;->a(I)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    if-nez v0, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/beizi/fusion/work/a;->a(Landroid/view/ViewGroup;Ljava/util/List;)V

    return-void
.end method

.method public a(Lcom/beizi/fusion/unified/BZUnifiedAdActionData;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 12
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0, p1}, Lcom/beizi/fusion/work/a;->a(Lcom/beizi/fusion/unified/BZUnifiedAdActionData;)V

    :cond_1
    :goto_0
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

.method public c()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/c/e;->o()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

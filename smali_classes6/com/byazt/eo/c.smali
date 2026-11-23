.class public Lcom/byazt/eo/c;
.super Lcom/byazt/nc/yp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2f,
        0x14
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/ocd/ve;

.field public final c:Lcom/byazt/hz/sl;

.field public n:Landroid/view/View;

.field public sp:Lcom/byazt/ft/ve;

.field public tt:Lcom/byazt/dhf/c;

.field public uj:Lcom/byazt/ft/tt;

.field public ve:Lcom/byazt/ft/c;

.field public x:Lcom/byazt/ocd/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/hz/sl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/nc/yp;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/byazt/eo/c;->n:Landroid/view/View;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/byazt/eo/c;->c:Lcom/byazt/hz/sl;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/byazt/eo/c;->c()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic c(Lcom/byazt/eo/c;)Lcom/byazt/dhf/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/eo/c;->tt:Lcom/byazt/dhf/c;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/eo/c;->c:Lcom/byazt/hz/sl;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/byazt/eo/c$1;

    invoke-direct {v1, p0}, Lcom/byazt/eo/c$1;-><init>(Lcom/byazt/eo/c;)V

    invoke-virtual {v0, v1}, Lcom/byazt/hz/sl;->c(Lcom/byazt/oc/c;)V

    :cond_0
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/eo/c;)Lcom/byazt/ft/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/eo/c;->ve:Lcom/byazt/ft/c;

    return-object p0
.end method

.method private tt()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/eo/c;->c:Lcom/byazt/hz/sl;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/byazt/eo/c;->a:Lcom/byazt/ocd/ve;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lcom/byazt/hz/sl;->c(Lcom/byazt/ocd/ve;)V

    :cond_0
    return-void
.end method

.method private uj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/eo/c;->c:Lcom/byazt/hz/sl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/eo/c;->sp:Lcom/byazt/ft/ve;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/byazt/hz/sl;->c(Lcom/byazt/ft/ve;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static synthetic ve(Lcom/byazt/eo/c;)Lcom/byazt/ft/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/eo/c;->uj:Lcom/byazt/ft/tt;

    return-object p0
.end method

.method private ve()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/eo/c;->c:Lcom/byazt/hz/sl;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/byazt/eo/c;->x:Lcom/byazt/ocd/tt;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lcom/byazt/hz/sl;->c(Lcom/byazt/ocd/tt;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/eo/c;->n:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/byazt/eo/c;->n:Landroid/view/View;

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/eo/c;->c:Lcom/byazt/hz/sl;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/hz/sl;->ve()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/byazt/eo/c;->a:Lcom/byazt/ocd/ve;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iput-object v1, p0, Lcom/byazt/eo/c;->a:Lcom/byazt/ocd/ve;

    .line 20
    .line 21
    :cond_2
    iget-object v0, p0, Lcom/byazt/eo/c;->sp:Lcom/byazt/ft/ve;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iput-object v1, p0, Lcom/byazt/eo/c;->sp:Lcom/byazt/ft/ve;

    .line 26
    .line 27
    :cond_3
    return-void
.end method

.method public getDislikeDialog(Landroid/app/Activity;)Lcom/byazt/nc/sp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eo/c;->c:Lcom/byazt/hz/sl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/hz/sl;->c(Landroid/app/Activity;)Lcom/byazt/nc/sp;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public getDislikeInfo()Lcom/byazt/nc/uj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eo/c;->c:Lcom/byazt/hz/sl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/hz/sl;->yp()Lcom/byazt/nc/uj;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getExpressAdView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eo/c;->n:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/eo/c;->c:Lcom/byazt/hz/sl;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/hz/sl;->n()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/byazt/eo/c;->n:Landroid/view/View;

    .line 14
    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/byazt/eo/c;->tt()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/byazt/eo/c;->uj()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/byazt/eo/c;->ve()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/eo/c;->n:Landroid/view/View;

    .line 25
    .line 26
    return-object v0
.end method

.method public getImageMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eo/c;->c:Lcom/byazt/hz/sl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/hz/sl;->a()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getInteractionType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eo/c;->c:Lcom/byazt/hz/sl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/hz/sl;->u()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    return v0
.end method

.method public getLifecycleId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/eo/c;->c:Lcom/byazt/hz/sl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/hz/sl;->sp()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getMediationManager()Lcom/byazt/sbm/n;
    .locals 3

    .line 1
    new-instance v0, Lcom/byazt/cv/da;

    .line 2
    .line 3
    new-instance v1, Lcom/byazt/eo/tt;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/eo/c;->c:Lcom/byazt/hz/sl;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lcom/byazt/eo/tt;-><init>(Lcom/byazt/hz/sl;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/byazt/cv/da;-><init>(Lcom/byazt/cv/yp;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public registerClickableRects(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public render()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/eo/c;->uj:Lcom/byazt/ft/tt;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/byazt/eo/c;->n:Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1, v1}, Lcom/byazt/ft/tt;->c(Landroid/view/View;FF)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/eo/c;->ve:Lcom/byazt/ft/c;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Lcom/byazt/eo/c;->n:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1, v1}, Lcom/byazt/ft/tt;->c(Landroid/view/View;FF)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public setAdInteractionListener(Lcom/byazt/ocd/tt;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/byazt/eo/c;->x:Lcom/byazt/ocd/tt;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/eo/c;->c:Lcom/byazt/hz/sl;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/byazt/hz/sl;->c(Lcom/byazt/ocd/tt;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setCanInterruptVideoPlay(Z)V
    .locals 0

    return-void
.end method

.method public setDislikeCallback(Landroid/app/Activity;Lcom/byazt/dhf/c;)V
    .locals 1

    .line 1
    iput-object p2, p0, Lcom/byazt/eo/c;->tt:Lcom/byazt/dhf/c;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/eo/c;->c:Lcom/byazt/hz/sl;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/byazt/hz/sl;->c(Landroid/app/Activity;Lcom/byazt/dhf/c;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eo/c;->c:Lcom/byazt/hz/sl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/byazt/hz/sl;->c(Landroid/app/Dialog;[Ljava/lang/Integer;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setDownloadListener(Lcom/byazt/ocd/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/eo/c;->a:Lcom/byazt/ocd/ve;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/eo/c;->tt()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setExpressInteractionListener(Lcom/byazt/ft/c;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/eo/c;->ve:Lcom/byazt/ft/c;

    return-void
.end method

.method public setExpressInteractionListener(Lcom/byazt/ft/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/eo/c;->uj:Lcom/byazt/ft/tt;

    return-void
.end method

.method public setPrice(Ljava/lang/Double;)V
    .locals 0

    return-void
.end method

.method public setSlideIntervalTime(I)V
    .locals 0

    return-void
.end method

.method public setVideoAdListener(Lcom/byazt/ft/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/eo/c;->sp:Lcom/byazt/ft/ve;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/eo/c;->uj()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public showInteractionExpressAd(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public unRegisterRects()V
    .locals 0

    return-void
.end method

.method public uploadDislikeEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eo/c;->c:Lcom/byazt/hz/sl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/hz/sl;->c(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public win(Ljava/lang/Double;)V
    .locals 0

    return-void
.end method

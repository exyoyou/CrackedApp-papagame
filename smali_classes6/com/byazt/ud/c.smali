.class public Lcom/byazt/ud/c;
.super Lcom/byazt/nc/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1ad,
        0x14
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/hz/u;

.field public n:Lcom/byazt/ko/uj;

.field public tt:Lcom/byazt/vw/c;

.field public uj:Lcom/byazt/nh/c;

.field public ve:Lcom/byazt/vw/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/hz/u;Lcom/byazt/nh/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/nc/tt;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/ud/c$2;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/byazt/ud/c$2;-><init>(Lcom/byazt/ud/c;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/ud/c;->n:Lcom/byazt/ko/uj;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/byazt/ud/c;->c:Lcom/byazt/hz/u;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/byazt/ud/c;->uj:Lcom/byazt/nh/c;

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/byazt/ud/c;->c()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ud/c;)Lcom/byazt/vw/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ud/c;->tt:Lcom/byazt/vw/c;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/ud/c;->c:Lcom/byazt/hz/u;

    new-instance v1, Lcom/byazt/ud/c$1;

    invoke-direct {v1, p0}, Lcom/byazt/ud/c$1;-><init>(Lcom/byazt/ud/c;)V

    invoke-virtual {v0, v1}, Lcom/byazt/hz/u;->c(Lcom/byazt/ko/tt;)V

    .line 3
    iget-object v0, p0, Lcom/byazt/ud/c;->c:Lcom/byazt/hz/u;

    iget-object v1, p0, Lcom/byazt/ud/c;->n:Lcom/byazt/ko/uj;

    invoke-virtual {v0, v1}, Lcom/byazt/hz/u;->c(Lcom/byazt/ko/uj;)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/ud/c;)Lcom/byazt/nh/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ud/c;->uj:Lcom/byazt/nh/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/ud/c;)Lcom/byazt/vw/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ud/c;->ve:Lcom/byazt/vw/tt;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public getInteractionType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ud/c;->c:Lcom/byazt/hz/u;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/hz/tt;->m()I

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
    iget-object v0, p0, Lcom/byazt/ud/c;->c:Lcom/byazt/hz/u;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/hz/tt;->nu()Ljava/util/Map;

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

.method public getMediationManager()Lcom/byazt/sbm/sp;
    .locals 3

    .line 1
    new-instance v0, Lcom/byazt/bc/c;

    .line 2
    .line 3
    new-instance v1, Lcom/byazt/ud/tt;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/ud/c;->c:Lcom/byazt/hz/u;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lcom/byazt/ud/tt;-><init>(Lcom/byazt/hz/u;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/byazt/bc/c;-><init>(Lcom/byazt/bz/ve;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public getSplashCardView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ud/c;->c:Lcom/byazt/hz/u;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/hz/u;->a()Landroid/view/View;

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

.method public getSplashView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ud/c;->c:Lcom/byazt/hz/u;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/hz/u;->qy()Landroid/view/View;

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

.method public hideSkipButton()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ud/c;->c:Lcom/byazt/hz/u;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/hz/u;->gr()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setAdInteractionListener(Lcom/byazt/ocd/tt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ud/c;->c:Lcom/byazt/hz/u;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/hz/tt;->c(Lcom/byazt/ocd/tt;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setDownloadListener(Lcom/byazt/ocd/ve;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ud/c;->c:Lcom/byazt/hz/u;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/byazt/ud/c$3;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/byazt/ud/c$3;-><init>(Lcom/byazt/ud/c;Lcom/byazt/ocd/ve;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/byazt/hz/tt;->c(Lcom/byazt/zh/tt;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setPrice(Ljava/lang/Double;)V
    .locals 0

    return-void
.end method

.method public setSplashAdListener(Lcom/byazt/vw/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ud/c;->tt:Lcom/byazt/vw/c;

    .line 2
    .line 3
    return-void
.end method

.method public setSplashCardListener(Lcom/byazt/vw/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ud/c;->ve:Lcom/byazt/vw/tt;

    .line 2
    .line 3
    return-void
.end method

.method public showSplashCardView(Landroid/view/ViewGroup;Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ud/c;->c:Lcom/byazt/hz/u;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/byazt/hz/u;->c(Landroid/view/ViewGroup;Landroid/app/Activity;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public showSplashView(Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ud/c;->c:Lcom/byazt/hz/u;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/byazt/hz/u;->c(Landroid/view/ViewGroup;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/byazt/nc/tt;->values()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/byazt/rl/c;->c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)Lcom/byazt/rl/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {}, Lcom/byazt/tjo/tt;->c()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/byazt/rl/c;->c(II)Lcom/byazt/rl/c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public win(Ljava/lang/Double;)V
    .locals 0

    return-void
.end method

.class public Lcom/byazt/nm/t$c;
.super Lcom/byazt/yl/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x7d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/nm/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field public da:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/byazt/nc/tt;

.field public sl:Lcom/byazt/dv/tt;

.field public t:Lcom/byazt/sp/tt;

.field public u:Lcom/byazt/ll/tt;

.field public final synthetic x:Lcom/byazt/nm/t;


# direct methods
.method public constructor <init>(Lcom/byazt/nm/t;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/byazt/nm/t$c;->x:Lcom/byazt/nm/t;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/yl/ve;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/nm/t$c;->da:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/byazt/nm/t$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/nm/t$c;Lcom/byazt/nc/tt;)Lcom/byazt/nc/tt;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nm/t$c;->i:Lcom/byazt/nc/tt;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/nm/t$c;)Lcom/byazt/sp/tt;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/nm/t$c;->t:Lcom/byazt/sp/tt;

    return-object p0
.end method

.method private c()Lcom/byazt/zq/n;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    check-cast v0, Lcom/byazt/zq/n;

    return-object v0
.end method

.method private c(Lcom/byazt/omf/h;Lcom/byazt/dj/tt;)V
    .locals 2

    .line 17
    new-instance v0, Lcom/byazt/nm/t$c$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/byazt/nm/t$c$1;-><init>(Lcom/byazt/nm/t$c;Ljava/util/function/Function;)V

    if-eqz p1, :cond_0

    .line 18
    iget-object v1, p0, Lcom/byazt/nm/t$c;->x:Lcom/byazt/nm/t;

    invoke-static {v1}, Lcom/byazt/nm/t;->c(Lcom/byazt/nm/t;)I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/byazt/omf/h;->loadSplashAd(Lcom/byazt/dj/tt;Lcom/byazt/nh/c;I)V

    :cond_0
    return-void
.end method

.method public static synthetic da(Lcom/byazt/nm/t$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic gr(Lcom/byazt/nm/t$c;)Lcom/byazt/zq/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic gt(Lcom/byazt/nm/t$c;)Lcom/byazt/zq/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic gu(Lcom/byazt/nm/t$c;)Lcom/byazt/zq/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/byazt/nm/t$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/byazt/nm/t$c;)Lcom/byazt/zq/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic my(Lcom/byazt/nm/t$c;)Lcom/byazt/zq/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/nm/t$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic nu(Lcom/byazt/nm/t$c;)Lcom/byazt/zq/n;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/nm/t$c;->c()Lcom/byazt/zq/n;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic qy(Lcom/byazt/nm/t$c;)Lcom/byazt/zq/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic rh(Lcom/byazt/nm/t$c;)Lcom/byazt/zq/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic rl(Lcom/byazt/nm/t$c;)Lcom/byazt/zq/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sl(Lcom/byazt/nm/t$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sp(Lcom/byazt/nm/t$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic t(Lcom/byazt/nm/t$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/nm/t$c;)Lcom/byazt/nc/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nm/t$c;->i:Lcom/byazt/nc/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic u(Lcom/byazt/nm/t$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/nm/t$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/nm/t$c;)Lcom/byazt/dv/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nm/t$c;->sl:Lcom/byazt/dv/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic x(Lcom/byazt/nm/t$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic yp(Lcom/byazt/nm/t$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic z(Lcom/byazt/nm/t$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c(Landroid/content/Context;Lcom/byazt/ll/tt;Lcom/byazt/dv/tt;Lcom/byazt/sp/tt;)V
    .locals 1

    .line 4
    iput-object p3, p0, Lcom/byazt/nm/t$c;->sl:Lcom/byazt/dv/tt;

    .line 5
    iput-object p4, p0, Lcom/byazt/nm/t$c;->t:Lcom/byazt/sp/tt;

    .line 6
    iput-object p2, p0, Lcom/byazt/nm/t$c;->u:Lcom/byazt/ll/tt;

    .line 7
    iget-object p2, p0, Lcom/byazt/nm/t$c;->x:Lcom/byazt/nm/t;

    invoke-virtual {p2, p1}, Lcom/byazt/nm/tt;->getPluginCSJLoader(Landroid/content/Context;)Lcom/byazt/omf/h;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/byazt/nm/t$c;->da:Ljava/util/Map;

    const/16 p3, 0xbb8

    if-nez p2, :cond_1

    .line 9
    iget-object p2, p0, Lcom/byazt/nm/t$c;->x:Lcom/byazt/nm/t;

    invoke-static {p2, p3}, Lcom/byazt/nm/t;->c(Lcom/byazt/nm/t;I)I

    goto :goto_0

    .line 10
    :cond_1
    iget-object p4, p0, Lcom/byazt/nm/t$c;->x:Lcom/byazt/nm/t;

    const-string v0, "ad_load_timeout"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/byazt/nm/t$c;->da:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    :cond_2
    invoke-static {p4, p3}, Lcom/byazt/nm/t;->c(Lcom/byazt/nm/t;I)I

    .line 11
    :goto_0
    iget-object p2, p0, Lcom/byazt/nm/t$c;->u:Lcom/byazt/ll/tt;

    iget-object p3, p0, Lcom/byazt/nm/t$c;->sl:Lcom/byazt/dv/tt;

    const/4 p4, 0x0

    invoke-static {p2, p3, p4}, Lcom/byazt/xf/tt;->c(Lcom/byazt/ll/tt;Lcom/byazt/dv/tt;Z)Lcom/byazt/dj/tt$c;

    move-result-object p2

    .line 12
    iget-object p3, p0, Lcom/byazt/nm/t$c;->u:Lcom/byazt/ll/tt;

    .line 13
    invoke-virtual {p3}, Lcom/byazt/ll/tt;->qy()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/byazt/dj/tt$c;->c(I)Lcom/byazt/dj/tt$c;

    move-result-object p3

    iget-object p4, p0, Lcom/byazt/nm/t$c;->u:Lcom/byazt/ll/tt;

    invoke-virtual {p4}, Lcom/byazt/ll/tt;->gu()I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/byazt/dj/tt$c;->tt(I)Lcom/byazt/dj/tt$c;

    move-result-object p3

    iget-object p4, p0, Lcom/byazt/nm/t$c;->u:Lcom/byazt/ll/tt;

    .line 14
    invoke-virtual {p4}, Lcom/byazt/ll/tt;->u()F

    move-result p4

    invoke-virtual {p3, p4}, Lcom/byazt/dj/tt$c;->c(F)Lcom/byazt/dj/tt$c;

    move-result-object p3

    iget-object p4, p0, Lcom/byazt/nm/t$c;->u:Lcom/byazt/ll/tt;

    invoke-virtual {p4}, Lcom/byazt/ll/tt;->yp()F

    move-result p4

    invoke-virtual {p3, p4}, Lcom/byazt/dj/tt$c;->tt(F)Lcom/byazt/dj/tt$c;

    .line 15
    invoke-virtual {p2}, Lcom/byazt/dj/tt$c;->c()Lcom/byazt/dj/tt;

    move-result-object p2

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/byazt/nm/t$c;->c(Lcom/byazt/omf/h;Lcom/byazt/dj/tt;)V

    return-void
.end method

.method public getAdId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/t$c;->i:Lcom/byazt/nc/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/tt;->getMediaExtraInfo()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/byazt/xf/tt;->tt(Ljava/util/Map;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    :cond_0
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    return-wide v0
.end method

.method public getCreativeId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/t$c;->i:Lcom/byazt/nc/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/tt;->getMediaExtraInfo()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/byazt/xf/tt;->c(Ljava/util/Map;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    :cond_0
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    return-wide v0
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 4
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
    iget-object v0, p0, Lcom/byazt/nm/t$c;->i:Lcom/byazt/nc/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/tt;->getMediaExtraInfo()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "coupon"

    .line 17
    .line 18
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const-string v2, "live_room"

    .line 26
    .line 27
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string v2, "product"

    .line 35
    .line 36
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1}, Lcom/byazt/yl/ve;->setMediaExtraInfo(Ljava/util/Map;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-super {p0}, Lcom/byazt/yl/ve;->getMediaExtraInfo()Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method

.method public getReqId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/t$c;->i:Lcom/byazt/nc/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/tt;->getMediaExtraInfo()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/byazt/xf/tt;->ve(Ljava/util/Map;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const-string v0, ""

    .line 15
    .line 16
    return-object v0
.end method

.method public hasDestroyed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/t$c;->i:Lcom/byazt/nc/tt;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public hideSkipBtn()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/t$c;->i:Lcom/byazt/nc/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/tt;->hideSkipButton()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public hideSkipButton()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PangleSplashLoader hideSkipButton   WaterfallPangleSplashLoader  mCSJSplashAd:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/nm/t$c;->i:Lcom/byazt/nc/tt;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "TTMediationSDK"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/nm/t$c;->i:Lcom/byazt/nc/tt;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/byazt/nc/tt;->hideSkipButton()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/t$c;->i:Lcom/byazt/nc/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/byazt/nc/tt;->setSplashAdListener(Lcom/byazt/vw/c;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/nm/t$c;->i:Lcom/byazt/nc/tt;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/byazt/nc/tt;->setDownloadListener(Lcom/byazt/ocd/ve;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/nm/t$c;->i:Lcom/byazt/nc/tt;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/byazt/nc/tt;->setSplashCardListener(Lcom/byazt/vw/tt;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/byazt/nm/t$c;->i:Lcom/byazt/nc/tt;

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public setAdInteractionListener(Lcom/byazt/ocd/tt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/t$c;->i:Lcom/byazt/nc/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/nc/x;->setAdInteractionListener(Lcom/byazt/ocd/tt;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public showSplashAd(Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/t$c;->i:Lcom/byazt/nc/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/byazt/nc/tt;->showSplashView(Landroid/view/ViewGroup;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public showSplashCardView(Landroid/view/ViewGroup;Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/t$c;->i:Lcom/byazt/nc/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/byazt/nc/tt;->showSplashCardView(Landroid/view/ViewGroup;Landroid/app/Activity;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

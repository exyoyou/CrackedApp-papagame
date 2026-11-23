.class public Lcom/byazt/nm/sl$c;
.super Lcom/byazt/yl/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x39d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/nm/sl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field public da:Lcom/byazt/nc/z;

.field public final synthetic i:Lcom/byazt/nm/sl;

.field public sl:Z

.field public t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public x:Lcom/byazt/nh/sp;


# direct methods
.method public constructor <init>(Lcom/byazt/nm/sl;Ljava/util/Map;)V
    .locals 1
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
    iput-object p1, p0, Lcom/byazt/nm/sl$c;->i:Lcom/byazt/nm/sl;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/yl/ve;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/byazt/nm/sl$c$1;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, Lcom/byazt/nm/sl$c$1;-><init>(Lcom/byazt/nm/sl$c;Ljava/util/function/Function;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/byazt/nm/sl$c;->x:Lcom/byazt/nh/sp;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/byazt/nm/sl$c;->t:Ljava/util/Map;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic a(Lcom/byazt/nm/sl$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/nm/sl$c;)Lcom/byazt/nc/z;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nm/sl$c;->da:Lcom/byazt/nc/z;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/nm/sl$c;Lcom/byazt/nc/z;)Lcom/byazt/nc/z;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/nm/sl$c;->da:Lcom/byazt/nc/z;

    return-object p1
.end method

.method private c()Lcom/byazt/uhf/c;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    check-cast v0, Lcom/byazt/uhf/c;

    return-object v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 8

    .line 6
    iget-object v0, p0, Lcom/byazt/nm/sl$c;->i:Lcom/byazt/nm/sl;

    invoke-virtual {v0, p1}, Lcom/byazt/nm/tt;->getPluginCSJLoader(Landroid/content/Context;)Lcom/byazt/omf/h;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/byazt/nm/sl$c;->i:Lcom/byazt/nm/sl;

    invoke-static {v0}, Lcom/byazt/nm/sl;->c(Lcom/byazt/nm/sl;)Lcom/byazt/ll/tt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ll/tt;->cu()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "pangle"

    .line 8
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 10
    check-cast v0, Ljava/lang/String;

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/byazt/nm/sl$c;->i:Lcom/byazt/nm/sl;

    .line 13
    invoke-static {v1}, Lcom/byazt/nm/sl;->c(Lcom/byazt/nm/sl;)Lcom/byazt/ll/tt;

    move-result-object v2

    iget-object v1, p0, Lcom/byazt/nm/sl$c;->i:Lcom/byazt/nm/sl;

    .line 14
    invoke-static {v1}, Lcom/byazt/nm/sl;->tt(Lcom/byazt/nm/sl;)Lcom/byazt/dv/tt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/dv/tt;->t()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/byazt/nm/sl$c;->i:Lcom/byazt/nm/sl;

    .line 15
    invoke-static {v1}, Lcom/byazt/nm/sl;->tt(Lcom/byazt/nm/sl;)Lcom/byazt/dv/tt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/dv/tt;->m()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/byazt/nm/sl$c;->i:Lcom/byazt/nm/sl;

    .line 16
    invoke-static {v1}, Lcom/byazt/nm/sl;->tt(Lcom/byazt/nm/sl;)Lcom/byazt/dv/tt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/dv/tt;->nu()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/byazt/nm/sl$c;->i:Lcom/byazt/nm/sl;

    .line 17
    invoke-static {v1}, Lcom/byazt/nm/sl;->tt(Lcom/byazt/nm/sl;)Lcom/byazt/dv/tt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/dv/tt;->zm()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 18
    invoke-static/range {v2 .. v7}, Lcom/byazt/xf/tt;->c(Lcom/byazt/ll/tt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/byazt/dj/tt$c;

    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/byazt/nm/sl$c;->i:Lcom/byazt/nm/sl;

    .line 20
    invoke-static {v2}, Lcom/byazt/nm/sl;->c(Lcom/byazt/nm/sl;)Lcom/byazt/ll/tt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/ll/tt;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/dj/tt$c;->a(Ljava/lang/String;)Lcom/byazt/dj/tt$c;

    move-result-object v2

    .line 21
    invoke-virtual {v2, v0}, Lcom/byazt/dj/tt$c;->n(Ljava/lang/String;)Lcom/byazt/dj/tt$c;

    move-result-object v0

    iget-object v2, p0, Lcom/byazt/nm/sl$c;->i:Lcom/byazt/nm/sl;

    .line 22
    invoke-static {v2}, Lcom/byazt/nm/sl;->c(Lcom/byazt/nm/sl;)Lcom/byazt/ll/tt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/ll/tt;->yv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/byazt/dj/tt$c;->da(Ljava/lang/String;)Lcom/byazt/dj/tt$c;

    move-result-object v0

    iget-object v2, p0, Lcom/byazt/nm/sl$c;->i:Lcom/byazt/nm/sl;

    .line 23
    invoke-static {v2}, Lcom/byazt/nm/sl;->c(Lcom/byazt/nm/sl;)Lcom/byazt/ll/tt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/ll/tt;->p()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/byazt/dj/tt$c;->x(I)Lcom/byazt/dj/tt$c;

    move-result-object v0

    const/16 v2, 0x438

    .line 24
    invoke-virtual {v0, v2}, Lcom/byazt/dj/tt$c;->c(I)Lcom/byazt/dj/tt$c;

    move-result-object v0

    const/16 v2, 0x780

    invoke-virtual {v0, v2}, Lcom/byazt/dj/tt$c;->tt(I)Lcom/byazt/dj/tt$c;

    move-result-object v0

    iget-object v2, p0, Lcom/byazt/nm/sl$c;->i:Lcom/byazt/nm/sl;

    .line 25
    invoke-static {v2}, Lcom/byazt/nm/sl;->c(Lcom/byazt/nm/sl;)Lcom/byazt/ll/tt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/ll/tt;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/byazt/dj/tt$c;->uj(I)Lcom/byazt/dj/tt$c;

    .line 26
    invoke-virtual {v1}, Lcom/byazt/dj/tt$c;->c()Lcom/byazt/dj/tt;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/nm/sl$c;->x:Lcom/byazt/nh/sp;

    invoke-virtual {p1, v0, v1}, Lcom/byazt/omf/h;->loadRewardVideoAd(Lcom/byazt/dj/tt;Lcom/byazt/nh/sp;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/nm/sl$c;Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/nm/sl$c;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/nm/sl$c;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/nm/sl$c;->sl:Z

    return p1
.end method

.method public static synthetic da(Lcom/byazt/nm/sl$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic gr(Lcom/byazt/nm/sl$c;)Lcom/byazt/zq/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic gt(Lcom/byazt/nm/sl$c;)Lcom/byazt/zq/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic gu(Lcom/byazt/nm/sl$c;)Lcom/byazt/zq/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/byazt/nm/sl$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/byazt/nm/sl$c;)Lcom/byazt/uhf/c;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/nm/sl$c;->c()Lcom/byazt/uhf/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic my(Lcom/byazt/nm/sl$c;)Lcom/byazt/zq/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/nm/sl$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic nu(Lcom/byazt/nm/sl$c;)Lcom/byazt/zq/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic qy(Lcom/byazt/nm/sl$c;)Lcom/byazt/zq/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic rh(Lcom/byazt/nm/sl$c;)Lcom/byazt/zq/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic rl(Lcom/byazt/nm/sl$c;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/nm/sl$c;->tt()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic sl(Lcom/byazt/nm/sl$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sp(Lcom/byazt/nm/sl$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic t(Lcom/byazt/nm/sl$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method private tt()Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/nm/sl$c;->i:Lcom/byazt/nm/sl;

    const-string v1, "pangle"

    invoke-virtual {v0, v1}, Lcom/byazt/nm/tt;->getSdkVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0.0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/nm/sl$c;->i:Lcom/byazt/nm/sl;

    invoke-virtual {v0, v1}, Lcom/byazt/nm/tt;->getSdkVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "4.4.0.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method public static synthetic tt(Lcom/byazt/nm/sl$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/nm/sl$c;->sl:Z

    return p0
.end method

.method public static synthetic u(Lcom/byazt/nm/sl$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/nm/sl$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/nm/sl$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic x(Lcom/byazt/nm/sl$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic yp(Lcom/byazt/nm/sl$c;)Lcom/byazt/zh/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic z(Lcom/byazt/nm/sl$c;)Lcom/byazt/zq/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public adnHasAdVideoCachedApi()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAdId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/sl$c;->da:Lcom/byazt/nc/z;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/z;->getMediaExtraInfo()Ljava/util/Map;

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

.method public getAdLifecycleId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/sl$c;->da:Lcom/byazt/nc/z;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/byazt/yi/ve;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/byazt/yi/ve;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/yi/ve;->getLifecycleId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method public getCreativeId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/sl$c;->da:Lcom/byazt/nc/z;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/z;->getMediaExtraInfo()Ljava/util/Map;

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
    iget-object v0, p0, Lcom/byazt/nm/sl$c;->da:Lcom/byazt/nc/z;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/z;->getMediaExtraInfo()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setMediaExtraInfo(Ljava/util/Map;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0}, Lcom/byazt/yl/ve;->getMediaExtraInfo()Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getReqId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/sl$c;->da:Lcom/byazt/nc/z;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/z;->getMediaExtraInfo()Ljava/util/Map;

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
    iget-object v0, p0, Lcom/byazt/nm/sl$c;->da:Lcom/byazt/nc/z;

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

.method public isAdnPreload()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/nm/sl$c;->sl:Z

    .line 2
    .line 3
    return v0
.end method

.method public isReadyStatus()Ljava/lang/Integer;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/sl$c;->da:Lcom/byazt/nc/z;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/z;->getExpirationTimestamp()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    cmp-long v4, v0, v2

    .line 14
    .line 15
    if-lez v4, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0

    .line 23
    :cond_0
    const/4 v0, 0x3

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/sl$c;->da:Lcom/byazt/nc/z;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/byazt/nc/z;->setDownloadListener(Lcom/byazt/ocd/ve;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/nm/sl$c;->da:Lcom/byazt/nc/z;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/byazt/nc/z;->setRewardAdInteractionListener(Lcom/byazt/tn/c;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/nm/sl$c;->da:Lcom/byazt/nc/z;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/byazt/nc/x;->setAdInteractionListener(Lcom/byazt/ocd/tt;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/byazt/nm/sl$c;->da:Lcom/byazt/nc/z;

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public setAdInteractionListener(Lcom/byazt/ocd/tt;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PangleRewardLoader WaterfallPangleRewardLoader setAdInteractionListener pluginTTAdInteractionListener:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "  mTTRewardVideoAd: "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/byazt/nm/sl$c;->da:Lcom/byazt/nc/z;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "TTMediationSDK"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/nm/sl$c;->da:Lcom/byazt/nc/z;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lcom/byazt/nc/x;->setAdInteractionListener(Lcom/byazt/ocd/tt;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public showAd(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/sl$c;->da:Lcom/byazt/nc/z;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/nc/z;->showRewardVideoAd(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {v0, p1}, Lcom/byazt/nc/z;->showRewardVideoAd(Landroid/app/Activity;)V

    .line 12
    .line 13
    .line 14
    :cond_1
    return-void
.end method

.class public Lcom/byazt/ra/n;
.super Lcom/byazt/nc/sl;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2a9,
        0x2e
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/hz/c;

.field public tt:Lcom/byazt/gl/c;


# direct methods
.method public constructor <init>(Lcom/byazt/hz/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/nc/sl;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/ra/n;->c:Lcom/byazt/hz/c;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/byazt/ra/n;->c()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ra/n;)Lcom/byazt/gl/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ra/n;->tt:Lcom/byazt/gl/c;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/ra/n;->c:Lcom/byazt/hz/c;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Lcom/byazt/ra/n$1;

    invoke-direct {v1, p0}, Lcom/byazt/ra/n$1;-><init>(Lcom/byazt/ra/n;)V

    invoke-virtual {v0, v1}, Lcom/byazt/hz/c;->c(Lcom/byazt/bi/c;)V

    return-void
.end method


# virtual methods
.method public getExpirationTimestamp()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getFullVideoAdType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInteractionType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ra/n;->c:Lcom/byazt/hz/c;

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
    iget-object v0, p0, Lcom/byazt/ra/n;->c:Lcom/byazt/hz/c;

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

.method public getMediationManager()Lcom/byazt/sbm/uj;
    .locals 3

    .line 1
    new-instance v0, Lcom/byazt/ra/x;

    .line 2
    .line 3
    new-instance v1, Lcom/byazt/ra/a;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/ra/n;->c:Lcom/byazt/hz/c;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lcom/byazt/ra/a;-><init>(Lcom/byazt/hz/c;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/byazt/ra/x;-><init>(Lcom/byazt/bz/ve;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setAdInteractionListener(Lcom/byazt/ocd/tt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ra/n;->c:Lcom/byazt/hz/c;

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
    iget-object v0, p0, Lcom/byazt/ra/n;->c:Lcom/byazt/hz/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/byazt/ra/n$2;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/byazt/ra/n$2;-><init>(Lcom/byazt/ra/n;Lcom/byazt/ocd/ve;)V

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

.method public setFullScreenVideoAdInteractionListener(Lcom/byazt/gl/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ra/n;->tt:Lcom/byazt/gl/c;

    .line 2
    .line 3
    return-void
.end method

.method public setPrice(Ljava/lang/Double;)V
    .locals 0

    return-void
.end method

.method public showFullScreenVideoAd(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ra/n;->c:Lcom/byazt/hz/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/byazt/hz/c;->c(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public showFullScreenVideoAd(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/ra/n;->c:Lcom/byazt/hz/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/hz/c;->c(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public win(Ljava/lang/Double;)V
    .locals 0

    return-void
.end method

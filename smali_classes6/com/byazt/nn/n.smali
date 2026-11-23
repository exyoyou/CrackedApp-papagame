.class public Lcom/byazt/nn/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dd/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3fc,
        0x2e
    }
.end annotation


# instance fields
.field public c:J

.field public n:Lcom/byazt/dd/tt;

.field public tt:Lcom/byazt/su/DownloadModel;

.field public uj:Lcom/byazt/su/DownloadController;

.field public ve:Lcom/byazt/su/DownloadEventConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;)V
    .locals 0
    .param p3    # Lcom/byazt/su/DownloadModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/byazt/su/DownloadEventConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/byazt/su/DownloadController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/byazt/nn/n;->c:J

    .line 4
    iput-object p3, p0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 5
    iput-object p4, p0, Lcom/byazt/nn/n;->ve:Lcom/byazt/su/DownloadEventConfig;

    .line 6
    iput-object p5, p0, Lcom/byazt/nn/n;->uj:Lcom/byazt/su/DownloadController;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/su/DownloadModel;->getDeepLink()Lcom/byazt/e/DeepLink;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/byazt/su/DownloadModel;->getDeepLink()Lcom/byazt/e/DeepLink;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/e/DeepLink;->getOpenUrl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/su/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public da()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nn/n;->ve:Lcom/byazt/su/DownloadEventConfig;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/su/DownloadEventConfig;->getClickButtonTag()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public gr()Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/byazt/nn/n;->c:J

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    const-wide/16 v3, 0x0

    .line 5
    .line 6
    cmp-long v5, v0, v3

    .line 7
    .line 8
    if-eqz v5, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v1, p0, Lcom/byazt/nn/n;->ve:Lcom/byazt/su/DownloadEventConfig;

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    iget-object v1, p0, Lcom/byazt/nn/n;->uj:Lcom/byazt/su/DownloadController;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {v0}, Lcom/byazt/su/DownloadModel;->isAd()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-wide v0, p0, Lcom/byazt/nn/n;->c:J

    .line 30
    .line 31
    cmp-long v5, v0, v3

    .line 32
    .line 33
    if-gtz v5, :cond_1

    .line 34
    .line 35
    return v2

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    return v0

    .line 38
    :cond_2
    :goto_0
    return v2
.end method

.method public gt()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nn/n;->ve:Lcom/byazt/su/DownloadEventConfig;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/su/DownloadEventConfig;->getDownloadScene()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public gu()Lcom/byazt/su/DownloadController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nn/n;->uj:Lcom/byazt/su/DownloadController;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nn/n;->ve:Lcom/byazt/su/DownloadEventConfig;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/su/DownloadEventConfig;->getRefer()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public m()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nn/n;->ve:Lcom/byazt/su/DownloadEventConfig;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/su/DownloadEventConfig;->getExtraJson()Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public my()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/su/DownloadModel;->getPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public nu()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nn/n;->uj:Lcom/byazt/su/DownloadController;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/su/DownloadController;->enableNewActivity()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public qy()Lcom/byazt/su/DownloadEventConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nn/n;->ve:Lcom/byazt/su/DownloadEventConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public rh()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/su/DownloadModel;->getDownloadSettings()Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public rl()Lcom/byazt/su/DownloadModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 2
    .line 3
    return-object v0
.end method

.method public sl()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nn/n;->ve:Lcom/byazt/su/DownloadEventConfig;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/su/DownloadEventConfig;->getParamsJson()Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public sp()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/su/DownloadModel;->getExtra()Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public t()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/su/DownloadModel;->getExtraValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public tt()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/su/DownloadModel;->getId()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nn/n;->ve:Lcom/byazt/su/DownloadEventConfig;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/su/DownloadEventConfig;->isEnableV3Event()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public uj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/su/DownloadModel;->getLogExtra()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public ve()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/su/DownloadModel;->isAd()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public x()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nn/n;->uj:Lcom/byazt/su/DownloadController;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/su/DownloadController;->getDownloadMode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/byazt/su/DownloadModel;->getFunnelType()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public yp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/su/DownloadModel;->getClickTrackUrl()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public z()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nn/n;->ve:Lcom/byazt/su/DownloadEventConfig;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/su/DownloadEventConfig;->getExtraEventObject()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public zm()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/byazt/nn/n;->gr()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/byazt/su/DownloadModel;->isAd()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 18
    .line 19
    instance-of v2, v0, Lcom/byazt/ar/AdDownloadModel;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/byazt/su/DownloadModel;->getLogExtra()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/byazt/nn/n;->ve:Lcom/byazt/su/DownloadEventConfig;

    .line 34
    .line 35
    instance-of v0, v0, Lcom/byazt/ar/AdDownloadEventConfig;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/byazt/nn/n;->uj:Lcom/byazt/su/DownloadController;

    .line 40
    .line 41
    instance-of v0, v0, Lcom/byazt/ar/AdDownloadController;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    return v0

    .line 47
    :cond_1
    return v1

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 49
    .line 50
    instance-of v0, v0, Lcom/byazt/ar/AdDownloadModel;

    .line 51
    .line 52
    return v0
.end method

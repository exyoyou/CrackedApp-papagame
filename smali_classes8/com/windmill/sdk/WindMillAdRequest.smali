.class public Lcom/windmill/sdk/WindMillAdRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private adCount:I

.field protected adType:I

.field public checkCheatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isLoadToOut:Z

.field public isRefreshRequest:Z

.field private loadId:Ljava/lang/String;

.field private options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public orginLoadId:Ljava/lang/String;

.field private placementId:Ljava/lang/String;

.field public rewardSign:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/windmill/sdk/WindMillAdRequest;->isLoadToOut:Z

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/windmill/sdk/WindMillAdRequest;->options:Ljava/util/Map;

    .line 4
    iput-boolean v0, p0, Lcom/windmill/sdk/WindMillAdRequest;->isRefreshRequest:Z

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/windmill/sdk/WindMillAdRequest;->rewardSign:Ljava/lang/String;

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/windmill/sdk/WindMillAdRequest;->checkCheatMap:Ljava/util/HashMap;

    .line 7
    iput-object v0, p0, Lcom/windmill/sdk/WindMillAdRequest;->orginLoadId:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/windmill/sdk/WindMillAdRequest;->placementId:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/windmill/sdk/WindMillAdRequest;->userId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/windmill/sdk/WindMillAdRequest;->adType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "placementId",
            "userId",
            "adCount",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/windmill/sdk/WindMillAdRequest;->isLoadToOut:Z

    .line 35
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/windmill/sdk/WindMillAdRequest;->options:Ljava/util/Map;

    .line 36
    iput-boolean v0, p0, Lcom/windmill/sdk/WindMillAdRequest;->isRefreshRequest:Z

    const-string v0, ""

    .line 37
    iput-object v0, p0, Lcom/windmill/sdk/WindMillAdRequest;->rewardSign:Ljava/lang/String;

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/windmill/sdk/WindMillAdRequest;->checkCheatMap:Ljava/util/HashMap;

    .line 39
    iput-object v0, p0, Lcom/windmill/sdk/WindMillAdRequest;->orginLoadId:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/windmill/sdk/WindMillAdRequest;->placementId:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/windmill/sdk/WindMillAdRequest;->userId:Ljava/lang/String;

    if-eqz p4, :cond_0

    .line 42
    iget-object p1, p0, Lcom/windmill/sdk/WindMillAdRequest;->options:Ljava/util/Map;

    invoke-interface {p1, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 43
    :cond_0
    iput p3, p0, Lcom/windmill/sdk/WindMillAdRequest;->adCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "placementId",
            "userId",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/windmill/sdk/WindMillAdRequest;->isLoadToOut:Z

    .line 24
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/windmill/sdk/WindMillAdRequest;->options:Ljava/util/Map;

    .line 25
    iput-boolean v0, p0, Lcom/windmill/sdk/WindMillAdRequest;->isRefreshRequest:Z

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/windmill/sdk/WindMillAdRequest;->rewardSign:Ljava/lang/String;

    .line 27
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/windmill/sdk/WindMillAdRequest;->checkCheatMap:Ljava/util/HashMap;

    .line 28
    iput-object v0, p0, Lcom/windmill/sdk/WindMillAdRequest;->orginLoadId:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/windmill/sdk/WindMillAdRequest;->placementId:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/windmill/sdk/WindMillAdRequest;->userId:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 31
    iget-object p1, p0, Lcom/windmill/sdk/WindMillAdRequest;->options:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    const/4 p1, 0x1

    .line 32
    iput p1, p0, Lcom/windmill/sdk/WindMillAdRequest;->adType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "placementId",
            "userId",
            "options",
            "adType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/windmill/sdk/WindMillAdRequest;->isLoadToOut:Z

    .line 13
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/windmill/sdk/WindMillAdRequest;->options:Ljava/util/Map;

    .line 14
    iput-boolean v0, p0, Lcom/windmill/sdk/WindMillAdRequest;->isRefreshRequest:Z

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lcom/windmill/sdk/WindMillAdRequest;->rewardSign:Ljava/lang/String;

    .line 16
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/windmill/sdk/WindMillAdRequest;->checkCheatMap:Ljava/util/HashMap;

    .line 17
    iput-object v0, p0, Lcom/windmill/sdk/WindMillAdRequest;->orginLoadId:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/windmill/sdk/WindMillAdRequest;->placementId:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/windmill/sdk/WindMillAdRequest;->userId:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 20
    iget-object p1, p0, Lcom/windmill/sdk/WindMillAdRequest;->options:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 21
    :cond_0
    iput p4, p0, Lcom/windmill/sdk/WindMillAdRequest;->adType:I

    return-void
.end method


# virtual methods
.method public getAdCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/WindMillAdRequest;->adCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getAdType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/WindMillAdRequest;->adType:I

    .line 2
    .line 3
    return v0
.end method

.method public getLoadId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAdRequest;->loadId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOptions()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAdRequest;->options:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAdRequest;->placementId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAdRequest;->userId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isRefreshRequest()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/windmill/sdk/WindMillAdRequest;->isRefreshRequest:Z

    .line 2
    .line 3
    return v0
.end method

.method public ischeckCheat(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadId"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAdRequest;->checkCheatMap:Ljava/util/HashMap;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAdRequest;->checkCheatMap:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/windmill/sdk/WindMillAdRequest;->getAdType()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/4 v0, 0x1

    .line 38
    if-ne p1, v0, :cond_1

    .line 39
    .line 40
    return v0

    .line 41
    :cond_1
    return v2
.end method

.method public setAdCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adCount"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/windmill/sdk/WindMillAdRequest;->adCount:I

    .line 2
    .line 3
    return-void
.end method

.method public setLoadId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/WindMillAdRequest;->loadId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOptions(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "optionMap"
        }
    .end annotation

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
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAdRequest;->options:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setPlacementId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placementId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/WindMillAdRequest;->placementId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRefreshRequest(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refreshRequest"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/windmill/sdk/WindMillAdRequest;->isRefreshRequest:Z

    .line 2
    .line 3
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/WindMillAdRequest;->userId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.class public Lcom/byazt/ah/uj;
.super Lcom/byazt/sbm/a;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f6,
        0xf
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/sbm/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getAdLoadInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/sbm/tt;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getBestEcpm()Lcom/byazt/ah/c;
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/ah/c;

    invoke-direct {v0}, Lcom/byazt/ah/c;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getBestEcpm()Lcom/byazt/sbm/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ah/uj;->getBestEcpm()Lcom/byazt/ah/c;

    move-result-object v0

    return-object v0
.end method

.method public getCacheList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/sbm/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getMultiBiddingEcpm()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/sbm/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getShowEcpm()Lcom/byazt/ah/c;
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/ah/c;

    invoke-direct {v0}, Lcom/byazt/ah/c;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getShowEcpm()Lcom/byazt/sbm/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ah/uj;->getShowEcpm()Lcom/byazt/ah/c;

    move-result-object v0

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

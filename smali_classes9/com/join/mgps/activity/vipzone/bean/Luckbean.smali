.class public Lcom/join/mgps/activity/vipzone/bean/Luckbean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field count:I

.field lastPrize:Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

.field prize_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/vipzone/bean/LuckPrizeBean;",
            ">;"
        }
    .end annotation
.end field

.field rule:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->count:I

    .line 2
    .line 3
    return v0
.end method

.method public getLastPrize()Lcom/join/mgps/activity/vipzone/bean/PrizeBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->lastPrize:Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrize_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/vipzone/bean/LuckPrizeBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->prize_list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRule()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->rule:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->count:I

    .line 2
    .line 3
    return-void
.end method

.method public setLastPrize(Lcom/join/mgps/activity/vipzone/bean/PrizeBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastPrize"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->lastPrize:Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    .line 2
    .line 3
    return-void
.end method

.method public setPrize_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prize_list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/vipzone/bean/LuckPrizeBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->prize_list:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setRule(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rule"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->rule:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

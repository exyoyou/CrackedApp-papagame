.class public Lcom/papa/sim/statistic/db/BossTable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ad:Ljava/lang/String;

.field private args1:Ljava/lang/String;

.field private args2:Ljava/lang/String;

.field private countType:Ljava/lang/String;

.field private id:I

.field private time:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "0"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/papa/sim/statistic/db/BossTable;->uid:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getAd()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/db/BossTable;->ad:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getArgs1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/db/BossTable;->args1:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getArgs2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/db/BossTable;->args2:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCountType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/db/BossTable;->countType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/db/BossTable;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/db/BossTable;->time:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/db/BossTable;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/db/BossTable;->uid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAd(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/db/BossTable;->ad:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setArgs1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/db/BossTable;->args1:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setArgs2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/db/BossTable;->args2:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCountType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/db/BossTable;->countType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/db/BossTable;->id:I

    .line 2
    .line 3
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/db/BossTable;->time:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/db/BossTable;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/db/BossTable;->uid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

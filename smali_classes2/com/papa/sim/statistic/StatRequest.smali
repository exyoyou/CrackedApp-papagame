.class public Lcom/papa/sim/statistic/StatRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ad:I

.field private countType:I

.field private data:Lcom/papa/sim/statistic/Data;

.field private debug:Z

.field private deviceId:Ljava/lang/String;

.field private event:Ljava/lang/String;

.field private ext:Lcom/papa/sim/statistic/Ext;

.field private id:I

.field private isNew:Z

.field private isRequest:Z

.field private mac:Ljava/lang/String;

.field private time:J

.field private uid:I

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/papa/sim/statistic/StatRequest;->uid:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/papa/sim/statistic/StatRequest;->isNew:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/papa/sim/statistic/StatRequest;->isRequest:Z

    .line 10
    .line 11
    new-instance v0, Lcom/papa/sim/statistic/Data;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/papa/sim/statistic/StatRequest;->data:Lcom/papa/sim/statistic/Data;

    .line 17
    .line 18
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/papa/sim/statistic/StatRequest;->ext:Lcom/papa/sim/statistic/Ext;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public getAd()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/StatRequest;->ad:I

    .line 2
    .line 3
    return v0
.end method

.method public getCountType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/StatRequest;->countType:I

    .line 2
    .line 3
    return v0
.end method

.method public getData()Lcom/papa/sim/statistic/Data;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatRequest;->data:Lcom/papa/sim/statistic/Data;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatRequest;->deviceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatRequest;->event:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExt()Lcom/papa/sim/statistic/Ext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatRequest;->ext:Lcom/papa/sim/statistic/Ext;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/StatRequest;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatRequest;->mac:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa/sim/statistic/StatRequest;->time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/sim/statistic/StatRequest;->uid:I

    .line 2
    .line 3
    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/StatRequest;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isDebug()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/sim/statistic/StatRequest;->debug:Z

    .line 2
    .line 3
    return v0
.end method

.method public isNew()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/sim/statistic/StatRequest;->isNew:Z

    .line 2
    .line 3
    return v0
.end method

.method public isRequest()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/sim/statistic/StatRequest;->isRequest:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAd(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/StatRequest;->ad:I

    .line 2
    .line 3
    return-void
.end method

.method public setCountType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/StatRequest;->countType:I

    .line 2
    .line 3
    return-void
.end method

.method public setData(Lcom/papa/sim/statistic/Data;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatRequest;->data:Lcom/papa/sim/statistic/Data;

    .line 2
    .line 3
    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/sim/statistic/StatRequest;->debug:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatRequest;->deviceId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatRequest;->event:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setExt(Lcom/papa/sim/statistic/Ext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatRequest;->ext:Lcom/papa/sim/statistic/Ext;

    .line 2
    .line 3
    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/StatRequest;->id:I

    .line 2
    .line 3
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatRequest;->mac:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNew(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/sim/statistic/StatRequest;->isNew:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRequest(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/sim/statistic/StatRequest;->isRequest:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa/sim/statistic/StatRequest;->time:J

    .line 2
    .line 3
    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/sim/statistic/StatRequest;->uid:I

    .line 2
    .line 3
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatRequest;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.class public Lapp/mgsim/arena/AreaInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private area:I

.field private host:Ljava/lang/String;

.field private onLinePeopleCounts:I

.field private pingTime:J

.field private port:I


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
.method public getArea()I
    .locals 1

    .line 1
    iget v0, p0, Lapp/mgsim/arena/AreaInfo;->area:I

    .line 2
    .line 3
    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lapp/mgsim/arena/AreaInfo;->host:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOnLinePeopleCounts()I
    .locals 1

    .line 1
    iget v0, p0, Lapp/mgsim/arena/AreaInfo;->onLinePeopleCounts:I

    .line 2
    .line 3
    return v0
.end method

.method public getPingTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lapp/mgsim/arena/AreaInfo;->pingTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPort()I
    .locals 1

    .line 1
    iget v0, p0, Lapp/mgsim/arena/AreaInfo;->port:I

    .line 2
    .line 3
    return v0
.end method

.method public setArea(I)V
    .locals 0

    .line 1
    iput p1, p0, Lapp/mgsim/arena/AreaInfo;->area:I

    .line 2
    .line 3
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/mgsim/arena/AreaInfo;->host:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOnLinePeopleCounts(I)V
    .locals 0

    .line 1
    iput p1, p0, Lapp/mgsim/arena/AreaInfo;->onLinePeopleCounts:I

    .line 2
    .line 3
    return-void
.end method

.method public setPingTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lapp/mgsim/arena/AreaInfo;->pingTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lapp/mgsim/arena/AreaInfo;->port:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "AreaInfo{pingTime="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-wide v1, p0, Lapp/mgsim/arena/AreaInfo;->pingTime:J

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", host=\'"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lapp/mgsim/arena/AreaInfo;->host:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x27

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", port="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lapp/mgsim/arena/AreaInfo;->port:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", onLinePeopleCounts="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v1, p0, Lapp/mgsim/arena/AreaInfo;->onLinePeopleCounts:I

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ", area="

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget v1, p0, Lapp/mgsim/arena/AreaInfo;->area:I

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const/16 v1, 0x7d

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method

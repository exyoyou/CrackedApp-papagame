.class public Lcom/join/mgps/dto/SimulatorAdPlayRecord;
.super Lcom/join/mgps/dto/BaseBean;
.source "SourceFile"


# instance fields
.field private adType:I

.field private maxTimes:I

.field private times:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseBean;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adType",
            "times",
            "maxTimes"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseBean;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->adType:I

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->times:I

    .line 5
    iput p3, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->maxTimes:I

    return-void
.end method


# virtual methods
.method public add()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->times:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->times:I

    .line 6
    .line 7
    return-void
.end method

.method public canPlay()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->times:I

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->maxTimes:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    check-cast p1, Lcom/join/mgps/dto/SimulatorAdPlayRecord;

    .line 20
    .line 21
    iget v2, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->adType:I

    .line 22
    .line 23
    iget p1, p1, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->adType:I

    .line 24
    .line 25
    if-ne v2, p1, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 v0, 0x0

    .line 29
    :goto_0
    return v0

    .line 30
    :cond_3
    :goto_1
    return v1
.end method

.method public getAdType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->adType:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxTimes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->maxTimes:I

    .line 2
    .line 3
    return v0
.end method

.method public getTimes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->times:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget v1, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->adType:I

    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public setAdType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->adType:I

    .line 2
    .line 3
    return-void
.end method

.method public setMaxTimes(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxTimes"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->maxTimes:I

    .line 2
    .line 3
    return-void
.end method

.method public setTimes(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "times"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->times:I

    .line 2
    .line 3
    return-void
.end method

.method public typeOf(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->adType:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    return p1
.end method

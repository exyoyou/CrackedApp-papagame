.class public Lcom/windmill/sdk/models/FreEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private channelId:I

.field private day:I

.field private hour:I

.field private month:I

.field private placementId:Ljava/lang/String;

.field private tameStamp:J

.field private tbPlacementId:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "channelId",
            "tbPlacementId",
            "placementId"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/windmill/sdk/models/FreEntity;->channelId:I

    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/models/FreEntity;->tbPlacementId:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/windmill/sdk/models/FreEntity;->placementId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "channelId",
            "tbPlacementId",
            "placementId",
            "month",
            "day",
            "hour",
            "tameStamp"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/windmill/sdk/models/FreEntity;->channelId:I

    .line 7
    iput-object p2, p0, Lcom/windmill/sdk/models/FreEntity;->tbPlacementId:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/windmill/sdk/models/FreEntity;->placementId:Ljava/lang/String;

    .line 9
    iput p4, p0, Lcom/windmill/sdk/models/FreEntity;->month:I

    .line 10
    iput p5, p0, Lcom/windmill/sdk/models/FreEntity;->day:I

    .line 11
    iput p6, p0, Lcom/windmill/sdk/models/FreEntity;->hour:I

    .line 12
    iput-wide p7, p0, Lcom/windmill/sdk/models/FreEntity;->tameStamp:J

    return-void
.end method


# virtual methods
.method public getChannelId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/models/FreEntity;->channelId:I

    .line 2
    .line 3
    return v0
.end method

.method public getDay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/models/FreEntity;->day:I

    .line 2
    .line 3
    return v0
.end method

.method public getHour()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/models/FreEntity;->hour:I

    .line 2
    .line 3
    return v0
.end method

.method public getMonth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/models/FreEntity;->month:I

    .line 2
    .line 3
    return v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/FreEntity;->placementId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTameStamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/windmill/sdk/models/FreEntity;->tameStamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTbPlacementId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/FreEntity;->tbPlacementId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setDay(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "day"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/windmill/sdk/models/FreEntity;->day:I

    .line 2
    .line 3
    return-void
.end method

.method public setHour(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hour"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/windmill/sdk/models/FreEntity;->hour:I

    .line 2
    .line 3
    return-void
.end method

.method public setMonth(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "month"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/windmill/sdk/models/FreEntity;->month:I

    .line 2
    .line 3
    return-void
.end method

.method public setTameStamp(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tameStamp"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/windmill/sdk/models/FreEntity;->tameStamp:J

    .line 2
    .line 3
    return-void
.end method

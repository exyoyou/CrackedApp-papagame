.class public Lcom/windmill/sdk/models/WaterfallFilterData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/models/WaterfallFilterData$Builder;
    }
.end annotation


# instance fields
.field private adnPlacementId:Ljava/lang/String;

.field private final bidType:Ljava/lang/String;

.field private channelId:Ljava/lang/String;

.field private final filterIndex:I

.field private placementId:Ljava/lang/String;

.field private final price:Ljava/lang/String;

.field private renderType:Ljava/lang/String;

.field private subType:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/windmill/sdk/models/WaterfallFilterData$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->placementId:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->channelId:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->adnPlacementId:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->subType:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->renderType:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->access$000(Lcom/windmill/sdk/models/WaterfallFilterData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->filterIndex:I

    .line 9
    invoke-static {p1}, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->access$100(Lcom/windmill/sdk/models/WaterfallFilterData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->placementId:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->access$200(Lcom/windmill/sdk/models/WaterfallFilterData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->channelId:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->access$300(Lcom/windmill/sdk/models/WaterfallFilterData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->adnPlacementId:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->access$400(Lcom/windmill/sdk/models/WaterfallFilterData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->price:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->access$500(Lcom/windmill/sdk/models/WaterfallFilterData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->bidType:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->access$600(Lcom/windmill/sdk/models/WaterfallFilterData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->subType:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->access$700(Lcom/windmill/sdk/models/WaterfallFilterData$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->renderType:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/windmill/sdk/models/WaterfallFilterData$Builder;Lcom/windmill/sdk/models/WaterfallFilterData$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/windmill/sdk/models/WaterfallFilterData;-><init>(Lcom/windmill/sdk/models/WaterfallFilterData$Builder;)V

    return-void
.end method


# virtual methods
.method public getAdnPlacementId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->adnPlacementId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBidType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->bidType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->channelId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFilterIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->filterIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->placementId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->price:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWithKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    const-string v0, "channelId"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->channelId:Ljava/lang/String;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    const-string v0, "adnPlacementId"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->adnPlacementId:Ljava/lang/String;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    const-string v0, "eCpm"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->price:Ljava/lang/String;

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_2
    const-string v0, "biddingType"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    iget-object p1, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->bidType:Ljava/lang/String;

    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_3
    const-string v0, "adnPlacementSubType"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    iget-object p1, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->subType:Ljava/lang/String;

    .line 54
    .line 55
    return-object p1

    .line 56
    :cond_4
    const-string v0, "adnPlacementRenderType"

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_5

    .line 63
    .line 64
    iget-object p1, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->renderType:Ljava/lang/String;

    .line 65
    .line 66
    return-object p1

    .line 67
    :cond_5
    const/4 p1, 0x0

    .line 68
    return-object p1
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
    const-string v1, "WaterfallFilterData{filterIndex="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->filterIndex:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", placementId=\'"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->placementId:Ljava/lang/String;

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
    const-string v2, ", channelId=\'"

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->channelId:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, ", adnPlacementId=\'"

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->adnPlacementId:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v2, ", price=\'"

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->price:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v2, ", bidType=\'"

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->bidType:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v2, ", subType=\'"

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v2, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->subType:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v2, ", renderType=\'"

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v2, p0, Lcom/windmill/sdk/models/WaterfallFilterData;->renderType:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const/16 v1, 0x7d

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    return-object v0
.end method

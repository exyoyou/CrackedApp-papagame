.class public Lcom/windmill/sdk/models/WaterfallFilterData$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/models/WaterfallFilterData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private adnPlacementId:Ljava/lang/String;

.field private bidType:Ljava/lang/String;

.field private channelId:Ljava/lang/String;

.field private filterIndex:I

.field private placementId:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private renderType:Ljava/lang/String;

.field private subType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->placementId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->channelId:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->adnPlacementId:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->subType:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->renderType:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method static synthetic access$000(Lcom/windmill/sdk/models/WaterfallFilterData$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->filterIndex:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$100(Lcom/windmill/sdk/models/WaterfallFilterData$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->placementId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/windmill/sdk/models/WaterfallFilterData$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->channelId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/windmill/sdk/models/WaterfallFilterData$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->adnPlacementId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/windmill/sdk/models/WaterfallFilterData$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->price:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/windmill/sdk/models/WaterfallFilterData$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->bidType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/windmill/sdk/models/WaterfallFilterData$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->subType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/windmill/sdk/models/WaterfallFilterData$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->renderType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public adnPlacementId(Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallFilterData$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adnPlacementId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->adnPlacementId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public bidType(Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallFilterData$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bidType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->bidType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public build()Lcom/windmill/sdk/models/WaterfallFilterData;
    .locals 2

    .line 1
    new-instance v0, Lcom/windmill/sdk/models/WaterfallFilterData;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/windmill/sdk/models/WaterfallFilterData;-><init>(Lcom/windmill/sdk/models/WaterfallFilterData$Builder;Lcom/windmill/sdk/models/WaterfallFilterData$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public channelId(Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallFilterData$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->channelId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public filterIndex(I)Lcom/windmill/sdk/models/WaterfallFilterData$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filterIndex"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->filterIndex:I

    .line 2
    .line 3
    return-object p0
.end method

.method public placementId(Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallFilterData$Builder;
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
    iput-object p1, p0, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->placementId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public price(Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallFilterData$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "price"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->price:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public renderType(Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallFilterData$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->renderType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public subType(Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallFilterData$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->subType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

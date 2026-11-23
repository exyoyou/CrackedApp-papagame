.class public Lcom/join/mgps/dto/RequestGoogleRankArgs;
.super Lcom/join/mgps/dto/RequestPnAndPcArgs;
.source "SourceFile"


# instance fields
.field private area:I

.field private ranking_type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/RequestPnAndPcArgs;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "area",
            "ranking_type",
            "pn",
            "pc"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/dto/RequestPnAndPcArgs;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/RequestGoogleRankArgs;->area:I

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/RequestGoogleRankArgs;->ranking_type:I

    .line 5
    invoke-virtual {p0, p4}, Lcom/join/mgps/dto/RequestPnAndPcArgs;->setPc(I)V

    .line 6
    invoke-virtual {p0, p3}, Lcom/join/mgps/dto/RequestPnAndPcArgs;->setPn(I)V

    return-void
.end method


# virtual methods
.method public getArea()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestGoogleRankArgs;->area:I

    .line 2
    .line 3
    return v0
.end method

.method public getRanking_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestGoogleRankArgs;->ranking_type:I

    .line 2
    .line 3
    return v0
.end method

.method public setArea(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "area"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestGoogleRankArgs;->area:I

    .line 2
    .line 3
    return-void
.end method

.method public setRanking_type(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ranking_type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestGoogleRankArgs;->ranking_type:I

    .line 2
    .line 3
    return-void
.end method

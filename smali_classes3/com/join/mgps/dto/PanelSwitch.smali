.class public Lcom/join/mgps/dto/PanelSwitch;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private community:I

.field private discount:I

.field private taste:I


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
.method public getCommunity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PanelSwitch;->community:I

    .line 2
    .line 3
    return v0
.end method

.method public getDiscount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PanelSwitch;->discount:I

    .line 2
    .line 3
    return v0
.end method

.method public getTaste()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PanelSwitch;->taste:I

    .line 2
    .line 3
    return v0
.end method

.method public setCommunity(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "community"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PanelSwitch;->community:I

    .line 2
    .line 3
    return-void
.end method

.method public setDiscount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "discount"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PanelSwitch;->discount:I

    .line 2
    .line 3
    return-void
.end method

.method public setTaste(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taste"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PanelSwitch;->taste:I

    .line 2
    .line 3
    return-void
.end method

.class public Lcom/join/mgps/dto/RequestWarArgs;
.super Lcom/join/mgps/dto/BaseDto;
.source "SourceFile"


# instance fields
.field private pn:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pn",
            "type"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/RequestWarArgs;->pn:I

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/RequestWarArgs;->type:I

    return-void
.end method


# virtual methods
.method public getPn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestWarArgs;->pn:I

    .line 2
    .line 3
    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestWarArgs;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public setPn(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pn"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestWarArgs;->pn:I

    .line 2
    .line 3
    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestWarArgs;->type:I

    .line 2
    .line 3
    return-void
.end method

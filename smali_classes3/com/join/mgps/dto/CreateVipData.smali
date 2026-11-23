.class public Lcom/join/mgps/dto/CreateVipData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private amount:I

.field private extra:Ljava/lang/String;

.field private month:I

.field private order:Ljava/lang/String;

.field private uid:I


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
.method public getAmount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CreateVipData;->amount:I

    .line 2
    .line 3
    return v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CreateVipData;->extra:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMonth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CreateVipData;->month:I

    .line 2
    .line 3
    return v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CreateVipData;->order:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CreateVipData;->uid:I

    .line 2
    .line 3
    return v0
.end method

.method public setAmount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "amount"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CreateVipData;->amount:I

    .line 2
    .line 3
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extra"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CreateVipData;->extra:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/CreateVipData;->month:I

    .line 2
    .line 3
    return-void
.end method

.method public setOrder(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "order"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CreateVipData;->order:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CreateVipData;->uid:I

    .line 2
    .line 3
    return-void
.end method

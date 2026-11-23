.class public Lcom/join/mgps/dto/PayActivityRebate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private min_money:I

.field private rebate_money:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "min_money",
            "rebate_money"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/PayActivityRebate;->min_money:I

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/PayActivityRebate;->rebate_money:I

    return-void
.end method


# virtual methods
.method public getMin_money()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PayActivityRebate;->min_money:I

    .line 2
    .line 3
    return v0
.end method

.method public getRebate_money()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PayActivityRebate;->rebate_money:I

    .line 2
    .line 3
    return v0
.end method

.method public setMin_money(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "min_money"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PayActivityRebate;->min_money:I

    .line 2
    .line 3
    return-void
.end method

.method public setRebate_money(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rebate_money"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PayActivityRebate;->rebate_money:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "PayActivityRebate{min_money="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/join/mgps/dto/PayActivityRebate;->min_money:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", rebate_money="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/join/mgps/dto/PayActivityRebate;->rebate_money:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x7d

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

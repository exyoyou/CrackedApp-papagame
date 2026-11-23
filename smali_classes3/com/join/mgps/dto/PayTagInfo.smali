.class public Lcom/join/mgps/dto/PayTagInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private amount_check:I

.field private game_app_key:Ljava/lang/String;

.field private pay_game_amount:I


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
.method public getAmount_check()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PayTagInfo;->amount_check:I

    .line 2
    .line 3
    return v0
.end method

.method public getGame_app_key()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayTagInfo;->game_app_key:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPayGameAmount()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PayTagInfo;->pay_game_amount:I

    .line 2
    .line 3
    int-to-double v0, v0

    .line 4
    invoke-static {v0, v1}, Lcom/join/mgps/Util/t2;->n(D)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public getPay_game_amount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PayTagInfo;->pay_game_amount:I

    .line 2
    .line 3
    return v0
.end method

.method public setAmount_check(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "amount_check"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PayTagInfo;->amount_check:I

    .line 2
    .line 3
    return-void
.end method

.method public setGame_app_key(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_app_key"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayTagInfo;->game_app_key:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPay_game_amount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pay_game_amount"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PayTagInfo;->pay_game_amount:I

    .line 2
    .line 3
    return-void
.end method

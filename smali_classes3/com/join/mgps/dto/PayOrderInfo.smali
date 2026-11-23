.class public Lcom/join/mgps/dto/PayOrderInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private game_app_key:Ljava/lang/String;

.field private game_name:Ljava/lang/String;

.field private pay_game_amount:Ljava/lang/String;

.field private pay_show_type:I

.field private pay_type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/dto/PayOrderInfo;->pay_show_type:I

    .line 6
    .line 7
    iput v0, p0, Lcom/join/mgps/dto/PayOrderInfo;->pay_type:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public getGame_app_key()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayOrderInfo;->game_app_key:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayOrderInfo;->game_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPay_game_amount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayOrderInfo;->pay_game_amount:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPay_show_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PayOrderInfo;->pay_show_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getPay_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PayOrderInfo;->pay_type:I

    .line 2
    .line 3
    return v0
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
    iput-object p1, p0, Lcom/join/mgps/dto/PayOrderInfo;->game_app_key:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayOrderInfo;->game_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPay_game_amount(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/PayOrderInfo;->pay_game_amount:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPay_show_type(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pay_show_type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PayOrderInfo;->pay_show_type:I

    .line 2
    .line 3
    return-void
.end method

.method public setPay_type(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pay_type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PayOrderInfo;->pay_type:I

    .line 2
    .line 3
    return-void
.end method

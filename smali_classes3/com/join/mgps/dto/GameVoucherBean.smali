.class public Lcom/join/mgps/dto/GameVoucherBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private game_coupon_end_time:Ljava/lang/String;

.field private game_coupon_id:Ljava/lang/String;

.field private game_coupon_is_receive:Z

.field private game_coupon_money:D

.field private game_coupon_receive_source:Ljava/lang/String;

.field private game_coupon_start_time:Ljava/lang/String;

.field private game_coupon_status:I

.field private game_coupon_surplus_number:I

.field private game_coupon_title:Ljava/lang/String;

.field private game_coupon_unclaimed_source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZDII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "game_coupon_id",
            "game_coupon_title",
            "game_coupon_start_time",
            "game_coupon_end_time",
            "game_coupon_unclaimed_source",
            "game_coupon_receive_source",
            "game_coupon_is_receive",
            "game_coupon_money",
            "game_coupon_surplus_number",
            "game_coupon_status"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_id:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_title:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_start_time:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_end_time:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_unclaimed_source:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_receive_source:Ljava/lang/String;

    .line 9
    iput-boolean p7, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_is_receive:Z

    .line 10
    iput-wide p8, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_money:D

    .line 11
    iput p10, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_surplus_number:I

    .line 12
    iput p11, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_status:I

    return-void
.end method


# virtual methods
.method public getGame_coupon_end_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_end_time:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_coupon_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_coupon_money()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_money:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getGame_coupon_receive_source()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_receive_source:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_coupon_start_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_start_time:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_coupon_status()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_status:I

    .line 2
    .line 3
    return v0
.end method

.method public getGame_coupon_surplus_number()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_surplus_number:I

    .line 2
    .line 3
    return v0
.end method

.method public getGame_coupon_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_coupon_unclaimed_source()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_unclaimed_source:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isGame_coupon_is_receive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_is_receive:Z

    .line 2
    .line 3
    return v0
.end method

.method public setGame_coupon_end_time(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_coupon_end_time"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_end_time:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_coupon_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_coupon_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_coupon_is_receive(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_coupon_is_receive"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_is_receive:Z

    .line 2
    .line 3
    return-void
.end method

.method public setGame_coupon_money(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_coupon_money"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_money:D

    .line 2
    .line 3
    return-void
.end method

.method public setGame_coupon_receive_source(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_coupon_receive_source"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_receive_source:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_coupon_start_time(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_coupon_start_time"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_start_time:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_coupon_status(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_coupon_status"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_status:I

    .line 2
    .line 3
    return-void
.end method

.method public setGame_coupon_surplus_number(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_coupon_surplus_number"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_surplus_number:I

    .line 2
    .line 3
    return-void
.end method

.method public setGame_coupon_title(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_coupon_title"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_coupon_unclaimed_source(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_coupon_unclaimed_source"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_unclaimed_source:Ljava/lang/String;

    .line 2
    .line 3
    return-void
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
    const-string v1, "GameVoucherBean{game_coupon_id=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_id:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x27

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", game_coupon_title=\'"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_title:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ", game_coupon_start_time=\'"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_start_time:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, ", game_coupon_end_time=\'"

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_end_time:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, ", game_coupon_unclaimed_source=\'"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_unclaimed_source:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v2, ", game_coupon_receive_source=\'"

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_receive_source:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", game_coupon_is_receive="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-boolean v1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_is_receive:Z

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", game_coupon_money="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-wide v1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_money:D

    .line 102
    .line 103
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", game_coupon_surplus_number="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget v1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_surplus_number:I

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ", game_coupon_status="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget v1, p0, Lcom/join/mgps/dto/GameVoucherBean;->game_coupon_status:I

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const/16 v1, 0x7d

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    return-object v0
.end method

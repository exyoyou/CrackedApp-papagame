.class public Lcom/join/mgps/dto/AccountVoucherGameBean;
.super Lcom/join/mgps/dto/CollectionBeanSub;
.source "SourceFile"


# instance fields
.field private coupon_id:I

.field private coupon_money:D

.field private coupon_surplus:I

.field private coupon_title:Ljava/lang/String;

.field private coupon_type:I

.field private game_crc:Ljava/lang/String;

.field private game_icon:Ljava/lang/String;

.field private game_tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation
.end field

.field private game_tpl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/CollectionBeanSub;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getCoupon_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_id:I

    .line 2
    .line 3
    return v0
.end method

.method public getCoupon_money()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_money:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getCoupon_surplus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_surplus:I

    .line 2
    .line 3
    return v0
.end method

.method public getCoupon_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCoupon_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getGame_crc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->game_crc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_icon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->game_icon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_tags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->game_tags:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_tpl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->game_tpl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCoupon_id(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coupon_id"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_id:I

    .line 2
    .line 3
    return-void
.end method

.method public setCoupon_money(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coupon_money"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_money:D

    .line 2
    .line 3
    return-void
.end method

.method public setCoupon_surplus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coupon_surplus"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_surplus:I

    .line 2
    .line 3
    return-void
.end method

.method public setCoupon_title(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coupon_title"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCoupon_type(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coupon_type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_type:I

    .line 2
    .line 3
    return-void
.end method

.method public setGame_crc(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_crc"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->game_crc:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_icon(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_icon"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->game_icon:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_tags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_tags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->game_tags:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_tpl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_tpl"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->game_tpl:Ljava/lang/String;

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
    const-string v1, "AccountVoucherGameBean{coupon_title=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_title:Ljava/lang/String;

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
    const-string v2, ", coupon_id="

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v2, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_id:I

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, ", game_tags="

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->game_tags:Ljava/util/List;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, ", game_icon=\'"

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->game_icon:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, ", game_tpl=\'"

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->game_tpl:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, ", game_crc=\'"

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->game_crc:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, ", coupon_type="

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget v1, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_type:I

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v1, ", coupon_money="

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-wide v1, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_money:D

    .line 96
    .line 97
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v1, ", coupon_surplus="

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget v1, p0, Lcom/join/mgps/dto/AccountVoucherGameBean;->coupon_surplus:I

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const/16 v1, 0x7d

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    return-object v0
.end method

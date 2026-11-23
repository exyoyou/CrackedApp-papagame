.class public Lcom/join/mgps/dto/PaymentInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private agentId:Ljava/lang/String;

.field private billInfo:Ljava/lang/String;

.field private billNo:Ljava/lang/String;

.field private hasError:Z

.field private message:Ljava/lang/String;

.field private tokenID:Ljava/lang/String;


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

.method private getBillInfoItem(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaymentInfo;->billInfo:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p1, "="

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/join/mgps/dto/PaymentInfo;->billInfo:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-gez v0, :cond_1

    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/dto/PaymentInfo;->billInfo:Ljava/lang/String;

    .line 34
    .line 35
    const/16 v2, 0x7c

    .line 36
    .line 37
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-ltz v1, :cond_2

    .line 42
    .line 43
    iget-object v2, p0, Lcom/join/mgps/dto/PaymentInfo;->billInfo:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    add-int/2addr v0, p1

    .line 50
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/dto/PaymentInfo;->billInfo:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    add-int/2addr v0, p1

    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    :goto_0
    return-object p1
.end method

.method public static getPayResultName(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1
    const/4 v0, -0x2

    if-eq p0, v0, :cond_3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string p0, "\u652f\u4ed8\u6210\u529f"

    goto :goto_0

    :cond_1
    const-string p0, "\u5904\u7406\u4e2d..."

    goto :goto_0

    :cond_2
    const-string p0, "\u652f\u4ed8\u5931\u8d25"

    goto :goto_0

    :cond_3
    const-string p0, "\u652f\u4ed8\u672a\u5b8c\u6210"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getAgentId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaymentInfo;->agentId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBillInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaymentInfo;->billInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBillNo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaymentInfo;->billNo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getJunnetBillNo()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "jnet_bill_no"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/dto/PaymentInfo;->getBillInfoItem(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaymentInfo;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPayAmount()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "pay_amt"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/dto/PaymentInfo;->getBillInfoItem(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPayResult()I
    .locals 1

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/dto/PaymentInfo;->getBillInfoItem(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return v0

    .line 12
    :catch_0
    const/4 v0, -0x1

    .line 13
    return v0
.end method

.method public getPayResultName()Ljava/lang/String;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/dto/PaymentInfo;->getPayResult()I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/join/mgps/dto/PaymentInfo;->getPayResultName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayType()I
    .locals 1

    .line 1
    const-string v0, "pay_type"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/dto/PaymentInfo;->getBillInfoItem(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return v0

    .line 12
    :catch_0
    const/4 v0, -0x1

    .line 13
    return v0
.end method

.method public getPayTypeName()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/PaymentInfo;->getPayType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_4

    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    const/16 v1, 0x23

    .line 13
    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    const/16 v1, 0x1d

    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    const/16 v1, 0x1e

    .line 21
    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    packed-switch v0, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    packed-switch v0, :pswitch_data_1

    .line 28
    .line 29
    .line 30
    packed-switch v0, :pswitch_data_2

    .line 31
    .line 32
    .line 33
    const-string v0, "\u3010\u672a\u77e5\u652f\u4ed8\u65b9\u5f0f\u3011"

    .line 34
    .line 35
    return-object v0

    .line 36
    :pswitch_0
    const-string v0, "QQ\u5e01\u5361"

    .line 37
    .line 38
    return-object v0

    .line 39
    :pswitch_1
    const-string v0, "\u591a\u591a\u5361\uff08\u539f\u5965\u6bd4\u5efa\u8bbe\u5361\uff09"

    .line 40
    .line 41
    return-object v0

    .line 42
    :pswitch_2
    const-string v0, "\u7eb5\u6e38\u4e00\u5361\u901a"

    .line 43
    .line 44
    return-object v0

    .line 45
    :pswitch_3
    const-string v0, "\u6781\u5149\u4e00\u5361\u901a"

    .line 46
    .line 47
    return-object v0

    .line 48
    :pswitch_4
    const-string v0, "\u7f51\u9f9991\u5e01\u5361"

    .line 49
    .line 50
    return-object v0

    .line 51
    :pswitch_5
    const-string v0, "\u68a6\u5de5\u5382\u7f51\u7edc"

    .line 52
    .line 53
    return-object v0

    .line 54
    :pswitch_6
    const-string v0, "\u9e92\u9e9f\u4e00\u5361\u901a"

    .line 55
    .line 56
    return-object v0

    .line 57
    :pswitch_7
    const-string v0, "\u4e2d\u5e7f\u4e00\u5361\u901a"

    .line 58
    .line 59
    return-object v0

    .line 60
    :pswitch_8
    const-string v0, "\u76db\u79d1\u4e00\u5361\u901a"

    .line 61
    .line 62
    return-object v0

    .line 63
    :pswitch_9
    const-string v0, "\u4e50\u90fd\u4e00\u5361\u901a"

    .line 64
    .line 65
    return-object v0

    .line 66
    :pswitch_a
    const-string v0, "\u4e45\u6e38\u4e00\u5361\u901a"

    .line 67
    .line 68
    return-object v0

    .line 69
    :pswitch_b
    const-string v0, "\u641c\u72d0\u4e00\u5361\u901a"

    .line 70
    .line 71
    return-object v0

    .line 72
    :pswitch_c
    const-string v0, "\u91d1\u5c71\u4e00\u5361\u901a"

    .line 73
    .line 74
    return-object v0

    .line 75
    :pswitch_d
    const-string v0, "\u5b8c\u7f8e\u4e00\u5361\u901a"

    .line 76
    .line 77
    return-object v0

    .line 78
    :pswitch_e
    const-string v0, "\u5f81\u9014\u4e00\u5361\u901a"

    .line 79
    .line 80
    return-object v0

    .line 81
    :pswitch_f
    const-string v0, "\u7f51\u6613\u4e00\u5361\u901a"

    .line 82
    .line 83
    return-object v0

    .line 84
    :pswitch_10
    const-string v0, "\u76db\u5927\u4e00\u5361\u901a"

    .line 85
    .line 86
    return-object v0

    .line 87
    :pswitch_11
    const-string v0, "\u7b2c\u4e09\u65b9\u5361\u652f\u4ed8"

    .line 88
    .line 89
    return-object v0

    .line 90
    :pswitch_12
    const-string v0, "\u94f6\u884cWAP\u7f51\u94f6\u652f\u4ed8"

    .line 91
    .line 92
    return-object v0

    .line 93
    :pswitch_13
    const-string v0, "\u94f6\u884c\u5feb\u6377\u652f\u4ed8"

    .line 94
    .line 95
    return-object v0

    .line 96
    :pswitch_14
    const-string v0, "\u94f6\u884c\u65e0\u5361\u652f\u4ed8"

    .line 97
    .line 98
    return-object v0

    .line 99
    :pswitch_15
    const-string v0, "\u7535\u4fe1\u5361"

    .line 100
    .line 101
    return-object v0

    .line 102
    :pswitch_16
    const-string v0, "\u8054\u901a\u5361"

    .line 103
    .line 104
    return-object v0

    .line 105
    :pswitch_17
    const-string v0, "\u795e\u5dde\u884c"

    .line 106
    .line 107
    return-object v0

    .line 108
    :cond_0
    const-string v0, "\u5fae\u4fe1\u652f\u4ed8"

    .line 109
    .line 110
    return-object v0

    .line 111
    :cond_1
    const-string v0, "\u4fe1\u7528\u5361\u65e0\u5361\u652f\u4ed8"

    .line 112
    .line 113
    return-object v0

    .line 114
    :cond_2
    const-string v0, "\u76db\u5927\u5361\u652f\u4ed8"

    .line 115
    .line 116
    return-object v0

    .line 117
    :cond_3
    const-string v0, "\u9a8f\u5361\u652f\u4ed8"

    .line 118
    .line 119
    return-object v0

    .line 120
    :cond_4
    const-string v0, "\u4f59\u989d\u652f\u4ed8"

    .line 121
    .line 122
    return-object v0

    .line 123
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :pswitch_data_2
    .packed-switch 0x28
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTokenID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaymentInfo;->tokenID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/PaymentInfo;->hasError:Z

    .line 2
    .line 3
    return v0
.end method

.method public isHasError()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/PaymentInfo;->hasError:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAgentId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "agentId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaymentInfo;->agentId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setBillInfo(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "billInfo"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaymentInfo;->billInfo:Ljava/lang/String;

    .line 2
    .line 3
    const-string p1, "agent_bill_id"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/join/mgps/dto/PaymentInfo;->getBillInfoItem(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/join/mgps/dto/PaymentInfo;->billNo:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public setBillNo(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "billNo"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaymentInfo;->billNo:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setHasError(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasError"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/PaymentInfo;->hasError:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaymentInfo;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTokenID(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenID"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaymentInfo;->tokenID:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

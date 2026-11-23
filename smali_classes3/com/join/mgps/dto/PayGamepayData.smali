.class public Lcom/join/mgps/dto/PayGamepayData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private amount:Ljava/lang/String;

.field private callbackURL:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private payMode:I

.field private sdkAppKey:Ljava/lang/String;

.field private sdkPayURL:Ljava/lang/String;

.field private webPaymentURL:Ljava/lang/String;


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
.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayGamepayData;->amount:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCallbackURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayGamepayData;->callbackURL:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayGamepayData;->orderId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPayMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PayGamepayData;->payMode:I

    .line 2
    .line 3
    return v0
.end method

.method public getSdkAppKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayGamepayData;->sdkAppKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSdkPayURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayGamepayData;->sdkPayURL:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWebPaymentURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayGamepayData;->webPaymentURL:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAmount(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/PayGamepayData;->amount:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCallbackURL(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callbackURL"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayGamepayData;->callbackURL:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orderId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayGamepayData;->orderId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPayMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "payMode"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PayGamepayData;->payMode:I

    .line 2
    .line 3
    return-void
.end method

.method public setSdkAppKey(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sdkAppKey"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayGamepayData;->sdkAppKey:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSdkPayURL(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sdkPayURL"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayGamepayData;->sdkPayURL:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setWebPaymentURL(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "webPaymentURL"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayGamepayData;->webPaymentURL:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

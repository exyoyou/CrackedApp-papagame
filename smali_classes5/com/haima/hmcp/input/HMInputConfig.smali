.class public Lcom/haima/hmcp/input/HMInputConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_INPUT_CONNECT_TIMEOUT_SEC:I = 0x6

.field public static final PING_INTERVAL:I = 0xa

.field public static final PING_TIME_OUT_COUNT_MAX:I = 0x3

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public addressUrl:Ljava/lang/String;

.field public connectTimeoutMS:I

.field public inputPingInternal:I

.field public inputPingTimeoutCountMax:I

.field public pingpongConfig:Ljava/lang/String;

.field public pingpongTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    iput v0, p0, Lcom/haima/hmcp/input/HMInputConfig;->inputPingInternal:I

    .line 7
    .line 8
    iput v0, p0, Lcom/haima/hmcp/input/HMInputConfig;->pingpongTimeout:I

    .line 9
    .line 10
    const/16 v0, 0x1770

    .line 11
    .line 12
    iput v0, p0, Lcom/haima/hmcp/input/HMInputConfig;->connectTimeoutMS:I

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    iput v0, p0, Lcom/haima/hmcp/input/HMInputConfig;->inputPingTimeoutCountMax:I

    .line 16
    .line 17
    const-string v0, "20,10;10,20;0,60"

    .line 18
    .line 19
    iput-object v0, p0, Lcom/haima/hmcp/input/HMInputConfig;->pingpongConfig:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public getAddressUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/input/HMInputConfig;->addressUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getConnectTimeoutMS()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/input/HMInputConfig;->connectTimeoutMS:I

    .line 2
    .line 3
    return v0
.end method

.method public getInputPingInternal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/input/HMInputConfig;->inputPingInternal:I

    .line 2
    .line 3
    return v0
.end method

.method public getInputPingTimeoutCountMax()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/input/HMInputConfig;->inputPingTimeoutCountMax:I

    .line 2
    .line 3
    return v0
.end method

.method public getPingpongConfig()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/input/HMInputConfig;->pingpongConfig:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPingpongTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/input/HMInputConfig;->pingpongTimeout:I

    .line 2
    .line 3
    return v0
.end method

.method public setAddressUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/input/HMInputConfig;->addressUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setConnectTimeoutMS(I)V
    .locals 0

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x6

    .line 4
    :cond_0
    mul-int/lit16 p1, p1, 0x3e8

    .line 5
    .line 6
    iput p1, p0, Lcom/haima/hmcp/input/HMInputConfig;->connectTimeoutMS:I

    .line 7
    .line 8
    return-void
.end method

.method public setInputPingInternal(I)V
    .locals 0

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    const/16 p1, 0xa

    .line 4
    .line 5
    :cond_0
    iput p1, p0, Lcom/haima/hmcp/input/HMInputConfig;->inputPingInternal:I

    .line 6
    .line 7
    return-void
.end method

.method public setInputPingTimeoutCountMax(I)V
    .locals 0

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    :cond_0
    iput p1, p0, Lcom/haima/hmcp/input/HMInputConfig;->inputPingTimeoutCountMax:I

    .line 5
    .line 6
    return-void
.end method

.method public setPingpongConfig(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, "20,10;10,20;0,60"

    .line 8
    .line 9
    :cond_0
    iput-object p1, p0, Lcom/haima/hmcp/input/HMInputConfig;->pingpongConfig:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public setPingpongTimeout(I)V
    .locals 0

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    const/16 p1, 0xa

    .line 4
    .line 5
    :cond_0
    iput p1, p0, Lcom/haima/hmcp/input/HMInputConfig;->pingpongTimeout:I

    .line 6
    .line 7
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
    const-string v1, "HMInputConfig{addressUrl=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/haima/hmcp/input/HMInputConfig;->addressUrl:Ljava/lang/String;

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
    const-string v1, ", pingpongInternal="

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v1, p0, Lcom/haima/hmcp/input/HMInputConfig;->inputPingInternal:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", pingpongTimeout="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lcom/haima/hmcp/input/HMInputConfig;->pingpongTimeout:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", connectTimeout="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v1, p0, Lcom/haima/hmcp/input/HMInputConfig;->connectTimeoutMS:I

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ", inputPingTimeoutCountMax="

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget v1, p0, Lcom/haima/hmcp/input/HMInputConfig;->inputPingTimeoutCountMax:I

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, ", pingpongConfig="

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/haima/hmcp/input/HMInputConfig;->pingpongConfig:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const/16 v1, 0x7d

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    return-object v0
.end method

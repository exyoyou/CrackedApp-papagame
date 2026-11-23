.class public Lcom/haima/hmcp/business/sensor/HmSensorConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/business/sensor/HmSensorConfig$SingletonHolder;
    }
.end annotation


# instance fields
.field private mSensorCountlyDataIntervalMs:I

.field private mSensorCountlySwitch:I

.field private mSensorSamplingMinUs:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/haima/hmcp/business/sensor/HmSensorConfig;->mSensorCountlySwitch:I

    const/16 v0, 0x2710

    .line 4
    iput v0, p0, Lcom/haima/hmcp/business/sensor/HmSensorConfig;->mSensorCountlyDataIntervalMs:I

    const/16 v0, 0x4e20

    .line 5
    iput v0, p0, Lcom/haima/hmcp/business/sensor/HmSensorConfig;->mSensorSamplingMinUs:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/haima/hmcp/business/sensor/HmSensorConfig$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/business/sensor/HmSensorConfig;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/haima/hmcp/business/sensor/HmSensorConfig;
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/business/sensor/HmSensorConfig$SingletonHolder;->access$100()Lcom/haima/hmcp/business/sensor/HmSensorConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public getCountlyDataIntervalMs()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/business/sensor/HmSensorConfig;->mSensorCountlyDataIntervalMs:I

    .line 2
    .line 3
    return v0
.end method

.method public getSensorCountlySwitch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/business/sensor/HmSensorConfig;->mSensorCountlySwitch:I

    .line 2
    .line 3
    return v0
.end method

.method public getSensorSamplingMinUs()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/business/sensor/HmSensorConfig;->mSensorSamplingMinUs:I

    .line 2
    .line 3
    return v0
.end method

.method public setCountlyDataIntervalMs(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/business/sensor/HmSensorConfig;->mSensorCountlyDataIntervalMs:I

    .line 2
    .line 3
    return-void
.end method

.method public setSensorCountlySwitch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/business/sensor/HmSensorConfig;->mSensorCountlySwitch:I

    .line 2
    .line 3
    return-void
.end method

.method public setSensorSamplingMinUs(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/business/sensor/HmSensorConfig;->mSensorSamplingMinUs:I

    .line 2
    .line 3
    return-void
.end method

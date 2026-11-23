.class public Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorSendMsg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public accuracy:I

.field public sensorType:I

.field public values:[F


# direct methods
.method public constructor <init>(II[F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorSendMsg;->sensorType:I

    .line 5
    .line 6
    iput p2, p0, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorSendMsg;->accuracy:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorSendMsg;->values:[F

    .line 9
    .line 10
    return-void
.end method

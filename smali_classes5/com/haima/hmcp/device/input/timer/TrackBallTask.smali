.class public Lcom/haima/hmcp/device/input/timer/TrackBallTask;
.super Lcom/haima/hmcp/widgets/CountDownTimer;
.source "SourceFile"


# instance fields
.field private final deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

.field private mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

.field private mTrackBallRight:Lcom/haima/hmcp/beans/PointCoord;


# direct methods
.method public constructor <init>(JJLcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/haima/hmcp/widgets/CountDownTimer;-><init>(JJ)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->getInstance()Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/haima/hmcp/device/input/timer/TrackBallTask;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/haima/hmcp/device/input/timer/TrackBallTask;->mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/haima/hmcp/device/input/timer/TrackBallTask;->mTrackBallRight:Lcom/haima/hmcp/beans/PointCoord;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/timer/TrackBallTask;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->getmAxisStatus()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/haima/hmcp/device/input/timer/TrackBallTask;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/haima/hmcp/device/input/timer/TrackBallTask;->mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 15
    .line 16
    .line 17
    iget-object v3, p0, Lcom/haima/hmcp/device/input/timer/TrackBallTask;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 18
    .line 19
    iget-object v9, p0, Lcom/haima/hmcp/device/input/timer/TrackBallTask;->mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 20
    .line 21
    iget-object v5, p0, Lcom/haima/hmcp/device/input/timer/TrackBallTask;->mTrackBallRight:Lcom/haima/hmcp/beans/PointCoord;

    .line 22
    .line 23
    const/4 v6, 0x2

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x0

    .line 26
    move-object v4, v9

    .line 27
    invoke-virtual/range {v3 .. v9}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->cacheModeMapEvent(Lcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;IFFLcom/haima/hmcp/beans/PointCoord;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/haima/hmcp/device/input/timer/TrackBallTask;->mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    iput v1, v0, Lcom/haima/hmcp/beans/PointCoord;->actionType:I

    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method

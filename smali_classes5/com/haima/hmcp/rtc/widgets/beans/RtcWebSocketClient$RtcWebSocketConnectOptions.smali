.class public Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$RtcWebSocketConnectOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RtcWebSocketConnectOptions"
.end annotation


# instance fields
.field public mHeartBeatDelay:I

.field public mReConnectCount:I

.field public mReConnectDelay:I

.field public mReHandShakeCount:I

.field public mReHandShakeDelay:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$RtcWebSocketConnectOptions;->mReConnectCount:I

    .line 6
    .line 7
    const/16 v1, 0x5dc

    .line 8
    .line 9
    iput v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$RtcWebSocketConnectOptions;->mReConnectDelay:I

    .line 10
    .line 11
    iput v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$RtcWebSocketConnectOptions;->mReHandShakeCount:I

    .line 12
    .line 13
    const/16 v0, 0x3e8

    .line 14
    .line 15
    iput v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$RtcWebSocketConnectOptions;->mReHandShakeDelay:I

    .line 16
    .line 17
    iput v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$RtcWebSocketConnectOptions;->mHeartBeatDelay:I

    .line 18
    .line 19
    return-void
.end method

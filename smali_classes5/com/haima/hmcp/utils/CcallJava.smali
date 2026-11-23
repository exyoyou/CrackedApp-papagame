.class public Lcom/haima/hmcp/utils/CcallJava;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/utils/CcallJava$RtmpOnFrameDelayListener;,
        Lcom/haima/hmcp/utils/CcallJava$OnFrameDelayListener;
    }
.end annotation


# static fields
.field private static mListener:Lcom/haima/hmcp/utils/CcallJava$OnFrameDelayListener;


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

.method public static native getFrameDelayMillisNow()I
.end method

.method public static notifyFirstFrameArrival()V
    .locals 0

    return-void
.end method

.method public static notifyFirstFrameRendering()V
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/CcallJava;->mListener:Lcom/haima/hmcp/utils/CcallJava$OnFrameDelayListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/utils/CcallJava$OnFrameDelayListener;->onFirstFrameArrival()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static notifyFrameDelayEvent(IIIF)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "percent: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "HMFrameDelayDetector"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/haima/hmcp/utils/CcallJava;->mListener:Lcom/haima/hmcp/utils/CcallJava$OnFrameDelayListener;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/haima/hmcp/utils/CcallJava$OnFrameDelayListener;->onFrameDelay(IIIF)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public static notifyNetEvent(JJ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->getInstance()Lcom/haima/hmcp/utils/FrameNetDelayInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->updateNetPts(JJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static notifyRtmpFrameDelayInfo(Lcom/haima/hmcp/beans/FrameDelayInfo;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/CcallJava;->mListener:Lcom/haima/hmcp/utils/CcallJava$OnFrameDelayListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lcom/haima/hmcp/utils/CcallJava$RtmpOnFrameDelayListener;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    check-cast v0, Lcom/haima/hmcp/utils/CcallJava$RtmpOnFrameDelayListener;

    .line 12
    .line 13
    invoke-interface {v0, p0}, Lcom/haima/hmcp/utils/CcallJava$RtmpOnFrameDelayListener;->notifyRtmpFrameDelayInfo(Lcom/haima/hmcp/beans/FrameDelayInfo;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public static notifyStasticInfo(IJLjava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/CcallJava;->mListener:Lcom/haima/hmcp/utils/CcallJava$OnFrameDelayListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/haima/hmcp/utils/CcallJava$OnFrameDelayListener;->notifyStasticInfo(IJLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static reportFrameDelayInfo(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/CcallJava;->mListener:Lcom/haima/hmcp/utils/CcallJava$OnFrameDelayListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/haima/hmcp/utils/CcallJava$OnFrameDelayListener;->reportFrameDelayInfo(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static native setFrameDelayMillis(I)Ljava/lang/String;
.end method

.method public static native setIjkplayLog(Z)V
.end method

.method public static setOnFrameDelayListener(Lcom/haima/hmcp/utils/CcallJava$OnFrameDelayListener;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/haima/hmcp/utils/CcallJava;->mListener:Lcom/haima/hmcp/utils/CcallJava$OnFrameDelayListener;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public native getFrameDecodeUseMillisNow()I
.end method

.method public native getFrameDelayInfoNow()Lcom/haima/hmcp/beans/FrameDelayInfo;
.end method

.method public native getFrameNetUseMillisNow()J
.end method

.method public native getFrameRenderUseMillisNow()I
.end method

.method public native getFrameSizeNow()I
.end method

.method public native getRelFrameDelayMillisNow()J
.end method

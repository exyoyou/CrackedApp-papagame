.class public Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/utils/ScreenShotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenShotConfig"
.end annotation


# instance fields
.field public rtcRenderView:Lcom/haima/hmcp/rtc/widgets/IRenderView;

.field public rtmpRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

.field public streamType:Ljava/lang/String;


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
.method public setRtcRender(Lcom/haima/hmcp/rtc/widgets/IRenderView;)Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;->rtcRenderView:Lcom/haima/hmcp/rtc/widgets/IRenderView;

    .line 2
    .line 3
    return-object p0
.end method

.method public setRtmpRender(Lcom/haima/hmcp/rtmp/widgets/IRenderView;)Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;->rtmpRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 2
    .line 3
    return-object p0
.end method

.method public setStreamType(Ljava/lang/String;)Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;->streamType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method validate()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;->streamType:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    const-string v0, "WEBRTC"

    .line 12
    .line 13
    iget-object v2, p0, Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;->streamType:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;->rtcRenderView:Lcom/haima/hmcp/rtc/widgets/IRenderView;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return v1

    .line 26
    :cond_1
    const-string v0, "RTMP"

    .line 27
    .line 28
    iget-object v2, p0, Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;->streamType:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;->rtmpRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    return v1

    .line 41
    :cond_2
    const/4 v0, 0x1

    .line 42
    return v0
.end method

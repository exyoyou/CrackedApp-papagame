.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/TvModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$6;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public isSupportRotate()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$6;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->streamModel:Lcom/haima/hmcp/listeners/IStreamModel;

    .line 4
    .line 5
    instance-of v1, v0, Lcom/haima/hmcp/rtc/widgets/RtcModel;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast v0, Lcom/haima/hmcp/rtc/widgets/RtcModel;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->getRtcPlayer()Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return v2

    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getmHmRtcAdapter()Lorg/webrtc/haima/HmRtcAdapter;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return v2

    .line 26
    :cond_1
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapter;->isRotationSupported()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "isSupportRotate: "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "AbsIjkVideoView"

    .line 48
    .line 49
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return v2
.end method

.method public onGetRenderView()Lcom/haima/hmcp/listeners/IRenderViewBase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$6;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    .line 4
    .line 5
    return-object v0
.end method

.method public onGetSwitchOrientationTargetView()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$6;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    return-object v0
.end method

.method public onMouseRotate(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$6;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$500(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/ArmMouseModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/model/ArmMouseModel;->rotateMouseView(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$6;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mOrientation:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 4
    .line 5
    return-object v0
.end method

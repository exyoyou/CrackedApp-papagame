.class public Lorg/hmwebrtc/Camera1Capturer;
.super Lorg/hmwebrtc/CameraCapturer;
.source "SourceFile"


# instance fields
.field private final captureToTexture:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/hmwebrtc/CameraVideoCapturer$CameraEventsHandler;Z)V
    .locals 1

    .line 1
    new-instance v0, Lorg/hmwebrtc/Camera1Enumerator;

    .line 2
    .line 3
    invoke-direct {v0, p3}, Lorg/hmwebrtc/Camera1Enumerator;-><init>(Z)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2, v0}, Lorg/hmwebrtc/CameraCapturer;-><init>(Ljava/lang/String;Lorg/hmwebrtc/CameraVideoCapturer$CameraEventsHandler;Lorg/hmwebrtc/CameraEnumerator;)V

    .line 7
    .line 8
    .line 9
    iput-boolean p3, p0, Lorg/hmwebrtc/Camera1Capturer;->captureToTexture:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic changeCaptureFormat(III)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/hmwebrtc/CameraCapturer;->changeCaptureFormat(III)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected createCameraSession(Lorg/hmwebrtc/CameraSession$CreateSessionCallback;Lorg/hmwebrtc/CameraSession$Events;Landroid/content/Context;Lorg/hmwebrtc/SurfaceTextureHelper;Ljava/lang/String;III)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    iget-boolean v3, v0, Lorg/hmwebrtc/Camera1Capturer;->captureToTexture:Z

    .line 3
    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    move-object v6, p5

    .line 9
    move/from16 v7, p6

    .line 10
    .line 11
    move/from16 v8, p7

    .line 12
    .line 13
    move/from16 v9, p8

    .line 14
    .line 15
    invoke-static/range {v1 .. v9}, Lorg/hmwebrtc/Camera1Session;->create(Lorg/hmwebrtc/CameraSession$CreateSessionCallback;Lorg/hmwebrtc/CameraSession$Events;ZLandroid/content/Context;Lorg/hmwebrtc/SurfaceTextureHelper;Ljava/lang/String;III)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public bridge synthetic dispose()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/hmwebrtc/CameraCapturer;->dispose()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic initialize(Lorg/hmwebrtc/SurfaceTextureHelper;Landroid/content/Context;Lorg/hmwebrtc/CapturerObserver;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/hmwebrtc/CameraCapturer;->initialize(Lorg/hmwebrtc/SurfaceTextureHelper;Landroid/content/Context;Lorg/hmwebrtc/CapturerObserver;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic isScreencast()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/hmwebrtc/CameraCapturer;->isScreencast()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic printStackTrace()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/hmwebrtc/CameraCapturer;->printStackTrace()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic startCapture(III)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/hmwebrtc/CameraCapturer;->startCapture(III)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic startCaptureWithSpecifiedCamera(Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lorg/hmwebrtc/CameraCapturer;->startCaptureWithSpecifiedCamera(Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;IIILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic stopCapture()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/hmwebrtc/CameraCapturer;->stopCapture()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic switchCamera(Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/hmwebrtc/CameraCapturer;->switchCamera(Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    return-void
.end method

.method public bridge synthetic switchCamera(Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lorg/hmwebrtc/CameraCapturer;->switchCamera(Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V

    return-void
.end method

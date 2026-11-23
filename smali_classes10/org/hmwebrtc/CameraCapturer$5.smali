.class Lorg/hmwebrtc/CameraCapturer$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hmwebrtc/CameraCapturer;->startCaptureWithSpecifiedCamera(Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;IIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hmwebrtc/CameraCapturer;

.field final synthetic val$switchEventsHandler:Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;


# direct methods
.method constructor <init>(Lorg/hmwebrtc/CameraCapturer;Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/CameraCapturer$5;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/hmwebrtc/CameraCapturer$5;->val$switchEventsHandler:Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/CameraCapturer$5;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 2
    .line 3
    const-string v1, "No camera to switch to."

    .line 4
    .line 5
    iget-object v2, p0, Lorg/hmwebrtc/CameraCapturer$5;->val$switchEventsHandler:Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lorg/hmwebrtc/CameraCapturer;->access$1900(Lorg/hmwebrtc/CameraCapturer;Ljava/lang/String;Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

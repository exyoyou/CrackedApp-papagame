.class Lorg/hmwebrtc/CameraCapturer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/CameraCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hmwebrtc/CameraCapturer;


# direct methods
.method constructor <init>(Lorg/hmwebrtc/CameraCapturer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/CameraCapturer$3;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/CameraCapturer$3;->this$0:Lorg/hmwebrtc/CameraCapturer;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/hmwebrtc/CameraCapturer;->access$1000(Lorg/hmwebrtc/CameraCapturer;)Lorg/hmwebrtc/CameraVideoCapturer$CameraEventsHandler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Camera failed to start within timeout."

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lorg/hmwebrtc/CameraVideoCapturer$CameraEventsHandler;->onCameraError(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

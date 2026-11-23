.class Lorg/webrtc/haima/camera/HmCameraManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/camera/HmCameraManager;->startVideoSourceInternal(IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/camera/HmCameraManager;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/camera/HmCameraManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager$1;->this$0:Lorg/webrtc/haima/camera/HmCameraManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCameraSwitchDone(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager$1;->this$0:Lorg/webrtc/haima/camera/HmCameraManager;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/camera/HmCameraManager;->access$000(Lorg/webrtc/haima/camera/HmCameraManager;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "onCameraSwitchDone: isFrontCamera = "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager$1;->this$0:Lorg/webrtc/haima/camera/HmCameraManager;

    .line 28
    .line 29
    invoke-static {p1}, Lorg/webrtc/haima/camera/HmCameraManager;->access$100(Lorg/webrtc/haima/camera/HmCameraManager;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager$1;->this$0:Lorg/webrtc/haima/camera/HmCameraManager;

    .line 33
    .line 34
    invoke-static {p1}, Lorg/webrtc/haima/camera/HmCameraManager;->access$200(Lorg/webrtc/haima/camera/HmCameraManager;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    monitor-enter p1

    .line 39
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager$1;->this$0:Lorg/webrtc/haima/camera/HmCameraManager;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-static {v0, v1}, Lorg/webrtc/haima/camera/HmCameraManager;->access$302(Lorg/webrtc/haima/camera/HmCameraManager;Z)Z

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager$1;->this$0:Lorg/webrtc/haima/camera/HmCameraManager;

    .line 46
    .line 47
    invoke-static {v0}, Lorg/webrtc/haima/camera/HmCameraManager;->access$200(Lorg/webrtc/haima/camera/HmCameraManager;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 52
    .line 53
    .line 54
    monitor-exit p1

    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw v0
.end method

.method public onCameraSwitchError(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager$1;->this$0:Lorg/webrtc/haima/camera/HmCameraManager;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/camera/HmCameraManager;->access$000(Lorg/webrtc/haima/camera/HmCameraManager;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "onCameraSwitchError: errorDescription = "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager$1;->this$0:Lorg/webrtc/haima/camera/HmCameraManager;

    .line 28
    .line 29
    invoke-static {p1}, Lorg/webrtc/haima/camera/HmCameraManager;->access$200(Lorg/webrtc/haima/camera/HmCameraManager;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    monitor-enter p1

    .line 34
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager$1;->this$0:Lorg/webrtc/haima/camera/HmCameraManager;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-static {v0, v1}, Lorg/webrtc/haima/camera/HmCameraManager;->access$302(Lorg/webrtc/haima/camera/HmCameraManager;Z)Z

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager$1;->this$0:Lorg/webrtc/haima/camera/HmCameraManager;

    .line 41
    .line 42
    invoke-static {v0}, Lorg/webrtc/haima/camera/HmCameraManager;->access$200(Lorg/webrtc/haima/camera/HmCameraManager;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 47
    .line 48
    .line 49
    monitor-exit p1

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw v0
.end method

.class Lorg/hmwebrtc/ScreenCapturerAndroid$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hmwebrtc/ScreenCapturerAndroid;->stopCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hmwebrtc/ScreenCapturerAndroid;


# direct methods
.method constructor <init>(Lorg/hmwebrtc/ScreenCapturerAndroid;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/ScreenCapturerAndroid$1;->this$0:Lorg/hmwebrtc/ScreenCapturerAndroid;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/ScreenCapturerAndroid$1;->this$0:Lorg/hmwebrtc/ScreenCapturerAndroid;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/hmwebrtc/ScreenCapturerAndroid;->access$000(Lorg/hmwebrtc/ScreenCapturerAndroid;)Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/hmwebrtc/SurfaceTextureHelper;->stopListening()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lorg/hmwebrtc/ScreenCapturerAndroid$1;->this$0:Lorg/hmwebrtc/ScreenCapturerAndroid;

    .line 11
    .line 12
    invoke-static {v0}, Lorg/hmwebrtc/ScreenCapturerAndroid;->access$100(Lorg/hmwebrtc/ScreenCapturerAndroid;)Lorg/hmwebrtc/CapturerObserver;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lorg/hmwebrtc/CapturerObserver;->onCapturerStopped()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lorg/hmwebrtc/ScreenCapturerAndroid$1;->this$0:Lorg/hmwebrtc/ScreenCapturerAndroid;

    .line 20
    .line 21
    invoke-static {v0}, Lorg/hmwebrtc/ScreenCapturerAndroid;->access$200(Lorg/hmwebrtc/ScreenCapturerAndroid;)Landroid/hardware/display/VirtualDisplay;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lorg/hmwebrtc/ScreenCapturerAndroid$1;->this$0:Lorg/hmwebrtc/ScreenCapturerAndroid;

    .line 29
    .line 30
    invoke-static {v0}, Lorg/hmwebrtc/ScreenCapturerAndroid;->access$200(Lorg/hmwebrtc/ScreenCapturerAndroid;)Landroid/hardware/display/VirtualDisplay;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lorg/hmwebrtc/ScreenCapturerAndroid$1;->this$0:Lorg/hmwebrtc/ScreenCapturerAndroid;

    .line 38
    .line 39
    invoke-static {v0, v1}, Lorg/hmwebrtc/ScreenCapturerAndroid;->access$202(Lorg/hmwebrtc/ScreenCapturerAndroid;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/ScreenCapturerAndroid$1;->this$0:Lorg/hmwebrtc/ScreenCapturerAndroid;

    .line 43
    .line 44
    invoke-static {v0}, Lorg/hmwebrtc/ScreenCapturerAndroid;->access$300(Lorg/hmwebrtc/ScreenCapturerAndroid;)Landroid/media/projection/MediaProjection;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lorg/hmwebrtc/ScreenCapturerAndroid$1;->this$0:Lorg/hmwebrtc/ScreenCapturerAndroid;

    .line 51
    .line 52
    invoke-static {v0}, Lorg/hmwebrtc/ScreenCapturerAndroid;->access$300(Lorg/hmwebrtc/ScreenCapturerAndroid;)Landroid/media/projection/MediaProjection;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v2, p0, Lorg/hmwebrtc/ScreenCapturerAndroid$1;->this$0:Lorg/hmwebrtc/ScreenCapturerAndroid;

    .line 57
    .line 58
    invoke-static {v2}, Lorg/hmwebrtc/ScreenCapturerAndroid;->access$400(Lorg/hmwebrtc/ScreenCapturerAndroid;)Landroid/media/projection/MediaProjection$Callback;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v0, v2}, Landroid/media/projection/MediaProjection;->unregisterCallback(Landroid/media/projection/MediaProjection$Callback;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lorg/hmwebrtc/ScreenCapturerAndroid$1;->this$0:Lorg/hmwebrtc/ScreenCapturerAndroid;

    .line 66
    .line 67
    invoke-static {v0}, Lorg/hmwebrtc/ScreenCapturerAndroid;->access$300(Lorg/hmwebrtc/ScreenCapturerAndroid;)Landroid/media/projection/MediaProjection;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lorg/hmwebrtc/ScreenCapturerAndroid$1;->this$0:Lorg/hmwebrtc/ScreenCapturerAndroid;

    .line 75
    .line 76
    invoke-static {v0, v1}, Lorg/hmwebrtc/ScreenCapturerAndroid;->access$302(Lorg/hmwebrtc/ScreenCapturerAndroid;Landroid/media/projection/MediaProjection;)Landroid/media/projection/MediaProjection;

    .line 77
    .line 78
    .line 79
    :cond_1
    return-void
.end method

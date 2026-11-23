.class Lorg/webrtc/haima/HmCameraWrapper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/haima/camerarecorder/CameraRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/HmCameraWrapper;->lambda$setUpCameraInternal$2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/HmCameraWrapper;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/HmCameraWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmCameraWrapper$2;->this$0:Lorg/webrtc/haima/HmCameraWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCameraThreadFinish()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onGetFlashSupport(Z)V
    .locals 0

    return-void
.end method

.method public onRecordComplete()V
    .locals 0

    return-void
.end method

.method public onRecordStart()V
    .locals 0

    return-void
.end method

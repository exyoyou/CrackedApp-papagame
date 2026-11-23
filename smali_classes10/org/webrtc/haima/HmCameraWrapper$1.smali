.class Lorg/webrtc/haima/HmCameraWrapper$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/HmCameraWrapper;->startRecord(Lorg/webrtc/haima/HmDCCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/HmCameraWrapper;

.field final synthetic val$hmDCCamera:Lorg/webrtc/haima/HmDCCamera;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/HmCameraWrapper;Lorg/webrtc/haima/HmDCCamera;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmCameraWrapper$1;->this$0:Lorg/webrtc/haima/HmCameraWrapper;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/webrtc/haima/HmCameraWrapper$1;->val$hmDCCamera:Lorg/webrtc/haima/HmDCCamera;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x64

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    iget-object v0, p0, Lorg/webrtc/haima/HmCameraWrapper$1;->this$0:Lorg/webrtc/haima/HmCameraWrapper;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/webrtc/haima/HmCameraWrapper$1;->val$hmDCCamera:Lorg/webrtc/haima/HmDCCamera;

    .line 9
    .line 10
    invoke-static {v0, v1}, Lorg/webrtc/haima/HmCameraWrapper;->access$000(Lorg/webrtc/haima/HmCameraWrapper;Lorg/webrtc/haima/HmDCCamera;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

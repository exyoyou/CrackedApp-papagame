.class public final synthetic Lorg/hmwebrtc/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/VideoSink;


# instance fields
.field public final synthetic b:Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;


# direct methods
.method public synthetic constructor <init>(Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/hmwebrtc/d;->b:Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;

    return-void
.end method


# virtual methods
.method public final onFrame(Lorg/hmwebrtc/VideoFrame;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/d;->b:Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;

    invoke-static {v0, p1}, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->a(Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;Lorg/hmwebrtc/VideoFrame;)V

    return-void
.end method

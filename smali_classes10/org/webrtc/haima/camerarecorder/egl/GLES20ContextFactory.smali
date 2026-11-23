.class public Lorg/webrtc/haima/camerarecorder/egl/GLES20ContextFactory;
.super Lorg/webrtc/haima/camerarecorder/egl/DefaultContextFactory;
.source "SourceFile"


# static fields
.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lorg/webrtc/haima/camerarecorder/egl/DefaultContextFactory;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.class public final synthetic Lorg/hmwebrtc/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/VideoEncoder$Callback;


# instance fields
.field public final synthetic a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/hmwebrtc/u0;->a:J

    return-void
.end method


# virtual methods
.method public final onEncodedFrame(Lorg/hmwebrtc/EncodedImage;Lorg/hmwebrtc/VideoEncoder$CodecSpecificInfo;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/u0;->a:J

    invoke-static {v0, v1, p1, p2}, Lorg/hmwebrtc/VideoEncoderWrapper;->a(JLorg/hmwebrtc/EncodedImage;Lorg/hmwebrtc/VideoEncoder$CodecSpecificInfo;)V

    return-void
.end method

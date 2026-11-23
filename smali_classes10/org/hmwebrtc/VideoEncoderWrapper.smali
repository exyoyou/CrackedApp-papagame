.class Lorg/hmwebrtc/VideoEncoderWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(JLorg/hmwebrtc/EncodedImage;Lorg/hmwebrtc/VideoEncoder$CodecSpecificInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/hmwebrtc/VideoEncoderWrapper;->lambda$createEncoderCallback$0(JLorg/hmwebrtc/EncodedImage;Lorg/hmwebrtc/VideoEncoder$CodecSpecificInfo;)V

    return-void
.end method

.method static createEncoderCallback(J)Lorg/hmwebrtc/VideoEncoder$Callback;
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    new-instance v0, Lorg/hmwebrtc/u0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/hmwebrtc/u0;-><init>(J)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method static getScalingSettingsHigh(Lorg/hmwebrtc/VideoEncoder$ScalingSettings;)Ljava/lang/Integer;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/VideoEncoder$ScalingSettings;->high:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static getScalingSettingsLow(Lorg/hmwebrtc/VideoEncoder$ScalingSettings;)Ljava/lang/Integer;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/VideoEncoder$ScalingSettings;->low:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static getScalingSettingsOn(Lorg/hmwebrtc/VideoEncoder$ScalingSettings;)Z
    .locals 0
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-boolean p0, p0, Lorg/hmwebrtc/VideoEncoder$ScalingSettings;->on:Z

    .line 2
    .line 3
    return p0
.end method

.method private static synthetic lambda$createEncoderCallback$0(JLorg/hmwebrtc/EncodedImage;Lorg/hmwebrtc/VideoEncoder$CodecSpecificInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/hmwebrtc/VideoEncoderWrapper;->nativeOnEncodedFrame(JLorg/hmwebrtc/EncodedImage;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static native nativeOnEncodedFrame(JLorg/hmwebrtc/EncodedImage;)V
.end method

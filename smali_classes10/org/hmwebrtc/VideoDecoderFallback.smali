.class public Lorg/hmwebrtc/VideoDecoderFallback;
.super Lorg/hmwebrtc/WrappedNativeVideoDecoder;
.source "SourceFile"


# instance fields
.field private final fallback:Lorg/hmwebrtc/VideoDecoder;

.field private final primary:Lorg/hmwebrtc/VideoDecoder;


# direct methods
.method public constructor <init>(Lorg/hmwebrtc/VideoDecoder;Lorg/hmwebrtc/VideoDecoder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/WrappedNativeVideoDecoder;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/hmwebrtc/VideoDecoderFallback;->fallback:Lorg/hmwebrtc/VideoDecoder;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/hmwebrtc/VideoDecoderFallback;->primary:Lorg/hmwebrtc/VideoDecoder;

    .line 7
    .line 8
    return-void
.end method

.method private static native nativeCreateDecoder(Lorg/hmwebrtc/VideoDecoder;Lorg/hmwebrtc/VideoDecoder;)J
.end method


# virtual methods
.method public createNativeVideoDecoder()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/VideoDecoderFallback;->fallback:Lorg/hmwebrtc/VideoDecoder;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/hmwebrtc/VideoDecoderFallback;->primary:Lorg/hmwebrtc/VideoDecoder;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/VideoDecoderFallback;->nativeCreateDecoder(Lorg/hmwebrtc/VideoDecoder;Lorg/hmwebrtc/VideoDecoder;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

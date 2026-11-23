.class Lorg/hmwebrtc/HardwareVideoDecoderFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/HardwareVideoDecoderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/hmwebrtc/Predicate<",
        "Landroid/media/MediaCodecInfo;",
        ">;"
    }
.end annotation


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


# virtual methods
.method public synthetic and(Lorg/hmwebrtc/Predicate;)Lorg/hmwebrtc/Predicate;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/hmwebrtc/Predicate$-CC;->a(Lorg/hmwebrtc/Predicate;Lorg/hmwebrtc/Predicate;)Lorg/hmwebrtc/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic negate()Lorg/hmwebrtc/Predicate;
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/hmwebrtc/Predicate$-CC;->b(Lorg/hmwebrtc/Predicate;)Lorg/hmwebrtc/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Lorg/hmwebrtc/Predicate;)Lorg/hmwebrtc/Predicate;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/hmwebrtc/Predicate$-CC;->c(Lorg/hmwebrtc/Predicate;Lorg/hmwebrtc/Predicate;)Lorg/hmwebrtc/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public test(Landroid/media/MediaCodecInfo;)Z
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/hmwebrtc/MediaCodecUtils;->isHardwareAccelerated(Landroid/media/MediaCodecInfo;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/media/MediaCodecInfo;

    invoke-virtual {p0, p1}, Lorg/hmwebrtc/HardwareVideoDecoderFactory$1;->test(Landroid/media/MediaCodecInfo;)Z

    move-result p1

    return p1
.end method

.class public Lorg/hmwebrtc/PlatformSoftwareVideoDecoderFactory;
.super Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;
.source "SourceFile"


# static fields
.field private static final defaultAllowedPredicate:Lorg/hmwebrtc/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hmwebrtc/Predicate<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/hmwebrtc/PlatformSoftwareVideoDecoderFactory$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/hmwebrtc/PlatformSoftwareVideoDecoderFactory$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/hmwebrtc/PlatformSoftwareVideoDecoderFactory;->defaultAllowedPredicate:Lorg/hmwebrtc/Predicate;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILorg/hmwebrtc/EglBase$Context;)V
    .locals 1
    .param p3    # Lorg/hmwebrtc/EglBase$Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    sget-object v0, Lorg/hmwebrtc/PlatformSoftwareVideoDecoderFactory;->defaultAllowedPredicate:Lorg/hmwebrtc/Predicate;

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;-><init>(Ljava/lang/Object;ILorg/hmwebrtc/Predicate;Lorg/hmwebrtc/EglBase$Context;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->isPlatform:Z

    return-void
.end method

.method public constructor <init>(Lorg/hmwebrtc/EglBase$Context;)V
    .locals 1
    .param p1    # Lorg/hmwebrtc/EglBase$Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lorg/hmwebrtc/PlatformSoftwareVideoDecoderFactory;->defaultAllowedPredicate:Lorg/hmwebrtc/Predicate;

    invoke-direct {p0, p1, v0}, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;-><init>(Lorg/hmwebrtc/EglBase$Context;Lorg/hmwebrtc/Predicate;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->isPlatform:Z

    return-void
.end method

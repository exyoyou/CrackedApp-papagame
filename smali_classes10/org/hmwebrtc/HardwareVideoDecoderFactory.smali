.class public Lorg/hmwebrtc/HardwareVideoDecoderFactory;
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
    new-instance v0, Lorg/hmwebrtc/HardwareVideoDecoderFactory$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/hmwebrtc/HardwareVideoDecoderFactory$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/hmwebrtc/HardwareVideoDecoderFactory;->defaultAllowedPredicate:Lorg/hmwebrtc/Predicate;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/hmwebrtc/HardwareVideoDecoderFactory;-><init>(Lorg/hmwebrtc/EglBase$Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILorg/hmwebrtc/EglBase$Context;)V
    .locals 1
    .param p3    # Lorg/hmwebrtc/EglBase$Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/hmwebrtc/HardwareVideoDecoderFactory;-><init>(Ljava/lang/Object;ILorg/hmwebrtc/Predicate;Lorg/hmwebrtc/EglBase$Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILorg/hmwebrtc/Predicate;Lorg/hmwebrtc/EglBase$Context;)V
    .locals 1
    .param p3    # Lorg/hmwebrtc/Predicate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lorg/hmwebrtc/EglBase$Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Lorg/hmwebrtc/Predicate<",
            "Landroid/media/MediaCodecInfo;",
            ">;",
            "Lorg/hmwebrtc/EglBase$Context;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 7
    sget-object p3, Lorg/hmwebrtc/HardwareVideoDecoderFactory;->defaultAllowedPredicate:Lorg/hmwebrtc/Predicate;

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lorg/hmwebrtc/HardwareVideoDecoderFactory;->defaultAllowedPredicate:Lorg/hmwebrtc/Predicate;

    invoke-interface {p3, v0}, Lorg/hmwebrtc/Predicate;->and(Lorg/hmwebrtc/Predicate;)Lorg/hmwebrtc/Predicate;

    move-result-object p3

    .line 9
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;-><init>(Ljava/lang/Object;ILorg/hmwebrtc/Predicate;Lorg/hmwebrtc/EglBase$Context;)V

    return-void
.end method

.method public constructor <init>(Lorg/hmwebrtc/EglBase$Context;)V
    .locals 1
    .param p1    # Lorg/hmwebrtc/EglBase$Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/hmwebrtc/HardwareVideoDecoderFactory;-><init>(Lorg/hmwebrtc/EglBase$Context;Lorg/hmwebrtc/Predicate;)V

    return-void
.end method

.method public constructor <init>(Lorg/hmwebrtc/EglBase$Context;Lorg/hmwebrtc/Predicate;)V
    .locals 1
    .param p1    # Lorg/hmwebrtc/EglBase$Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/hmwebrtc/Predicate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hmwebrtc/EglBase$Context;",
            "Lorg/hmwebrtc/Predicate<",
            "Landroid/media/MediaCodecInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 3
    sget-object p2, Lorg/hmwebrtc/HardwareVideoDecoderFactory;->defaultAllowedPredicate:Lorg/hmwebrtc/Predicate;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lorg/hmwebrtc/HardwareVideoDecoderFactory;->defaultAllowedPredicate:Lorg/hmwebrtc/Predicate;

    invoke-interface {p2, v0}, Lorg/hmwebrtc/Predicate;->and(Lorg/hmwebrtc/Predicate;)Lorg/hmwebrtc/Predicate;

    move-result-object p2

    .line 5
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;-><init>(Lorg/hmwebrtc/EglBase$Context;Lorg/hmwebrtc/Predicate;)V

    return-void
.end method

.class public Lorg/hmwebrtc/VideoEncoder$EncodeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/VideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncodeInfo"
.end annotation


# instance fields
.field public final frameTypes:[Lorg/hmwebrtc/EncodedImage$FrameType;


# direct methods
.method public constructor <init>([Lorg/hmwebrtc/EncodedImage$FrameType;)V
    .locals 0
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "EncodeInfo"
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/hmwebrtc/VideoEncoder$EncodeInfo;->frameTypes:[Lorg/hmwebrtc/EncodedImage$FrameType;

    .line 5
    .line 6
    return-void
.end method

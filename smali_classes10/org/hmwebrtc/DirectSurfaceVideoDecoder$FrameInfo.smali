.class Lorg/hmwebrtc/DirectSurfaceVideoDecoder$FrameInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/DirectSurfaceVideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameInfo"
.end annotation


# instance fields
.field final decodeStartTimeMs:J

.field final presentationTimeUs:J

.field final rotation:I


# direct methods
.method constructor <init>(JIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$FrameInfo;->decodeStartTimeMs:J

    .line 5
    .line 6
    iput p3, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$FrameInfo;->rotation:I

    .line 7
    .line 8
    iput-wide p4, p0, Lorg/hmwebrtc/DirectSurfaceVideoDecoder$FrameInfo;->presentationTimeUs:J

    .line 9
    .line 10
    return-void
.end method

.class public Lorg/hmwebrtc/EncodedImage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/RefCounted;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/EncodedImage$Builder;,
        Lorg/hmwebrtc/EncodedImage$FrameType;
    }
.end annotation


# instance fields
.field public final buffer:Ljava/nio/ByteBuffer;

.field public final captureTimeMs:J

.field public final captureTimeNs:J

.field public final encodedHeight:I

.field public final encodedWidth:I

.field public final frameType:Lorg/hmwebrtc/EncodedImage$FrameType;

.field public final qp:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final refCountDelegate:Lorg/hmwebrtc/RefCountDelegate;

.field public final rotation:I


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/Runnable;IIJLorg/hmwebrtc/EncodedImage$FrameType;ILjava/lang/Integer;)V
    .locals 0
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/hmwebrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    .line 4
    iput p3, p0, Lorg/hmwebrtc/EncodedImage;->encodedWidth:I

    .line 5
    iput p4, p0, Lorg/hmwebrtc/EncodedImage;->encodedHeight:I

    .line 6
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p5, p6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p3

    iput-wide p3, p0, Lorg/hmwebrtc/EncodedImage;->captureTimeMs:J

    .line 7
    iput-wide p5, p0, Lorg/hmwebrtc/EncodedImage;->captureTimeNs:J

    .line 8
    iput-object p7, p0, Lorg/hmwebrtc/EncodedImage;->frameType:Lorg/hmwebrtc/EncodedImage$FrameType;

    .line 9
    iput p8, p0, Lorg/hmwebrtc/EncodedImage;->rotation:I

    .line 10
    iput-object p9, p0, Lorg/hmwebrtc/EncodedImage;->qp:Ljava/lang/Integer;

    .line 11
    new-instance p1, Lorg/hmwebrtc/RefCountDelegate;

    invoke-direct {p1, p2}, Lorg/hmwebrtc/RefCountDelegate;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lorg/hmwebrtc/EncodedImage;->refCountDelegate:Lorg/hmwebrtc/RefCountDelegate;

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/Runnable;IIJLorg/hmwebrtc/EncodedImage$FrameType;ILjava/lang/Integer;Lorg/hmwebrtc/EncodedImage$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lorg/hmwebrtc/EncodedImage;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/Runnable;IIJLorg/hmwebrtc/EncodedImage$FrameType;ILjava/lang/Integer;)V

    return-void
.end method

.method public static builder()Lorg/hmwebrtc/EncodedImage$Builder;
    .locals 2

    .line 1
    new-instance v0, Lorg/hmwebrtc/EncodedImage$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/hmwebrtc/EncodedImage$Builder;-><init>(Lorg/hmwebrtc/EncodedImage$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private getBuffer()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    return-object v0
.end method

.method private getCaptureTimeNs()J
    .locals 2
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/EncodedImage;->captureTimeNs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private getEncodedHeight()I
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget v0, p0, Lorg/hmwebrtc/EncodedImage;->encodedHeight:I

    .line 2
    .line 3
    return v0
.end method

.method private getEncodedWidth()I
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget v0, p0, Lorg/hmwebrtc/EncodedImage;->encodedWidth:I

    .line 2
    .line 3
    return v0
.end method

.method private getFrameType()I
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/EncodedImage;->frameType:Lorg/hmwebrtc/EncodedImage$FrameType;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/EncodedImage$FrameType;->getNative()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private getQp()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/EncodedImage;->qp:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method private getRotation()I
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget v0, p0, Lorg/hmwebrtc/EncodedImage;->rotation:I

    .line 2
    .line 3
    return v0
.end method


# virtual methods
.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/EncodedImage;->refCountDelegate:Lorg/hmwebrtc/RefCountDelegate;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/RefCountDelegate;->release()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public retain()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/EncodedImage;->refCountDelegate:Lorg/hmwebrtc/RefCountDelegate;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/RefCountDelegate;->retain()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.class Ltv/haima/ijk/media/player/egl/VideoFrameDrawer$YuvUploader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/haima/ijk/media/player/egl/VideoFrameDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YuvUploader"
.end annotation


# instance fields
.field private copyBuffer:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private yuvTextures:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltv/haima/ijk/media/player/egl/VideoFrameDrawer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ltv/haima/ijk/media/player/egl/VideoFrameDrawer$YuvUploader;-><init>()V

    return-void
.end method


# virtual methods
.method public getYuvTextures()[I
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public release()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ltv/haima/ijk/media/player/egl/VideoFrameDrawer$YuvUploader;->copyBuffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    iget-object v1, p0, Ltv/haima/ijk/media/player/egl/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Ltv/haima/ijk/media/player/egl/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public uploadFromBuffer(Ltv/haima/ijk/media/player/egl/VideoFrame$I420Buffer;)[I
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-interface {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame$I420Buffer;->getStrideY()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame$I420Buffer;->getStrideU()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-interface {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame$I420Buffer;->getStrideV()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    filled-new-array {v0, v1, v2}, [I

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x3

    .line 18
    new-array v1, v1, [Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-interface {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    aput-object v3, v1, v2

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-interface {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    aput-object v3, v1, v2

    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    invoke-interface {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    aput-object v3, v1, v2

    .line 40
    .line 41
    invoke-interface {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame$Buffer;->getWidth()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-interface {p1}, Ltv/haima/ijk/media/player/egl/VideoFrame$Buffer;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-virtual {p0, v2, p1, v0, v1}, Ltv/haima/ijk/media/player/egl/VideoFrameDrawer$YuvUploader;->uploadYuvData(II[I[Ljava/nio/ByteBuffer;)[I

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1
.end method

.method public uploadYuvData(II[I[Ljava/nio/ByteBuffer;)[I
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

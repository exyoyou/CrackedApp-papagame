.class Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/TextureBufferImpl$RefCountMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/SurfaceTextureAccelerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextureInfo"
.end annotation


# instance fields
.field egl:Lorg/hmwebrtc/EglBase14;

.field height:I

.field index:I

.field owner:Lorg/hmwebrtc/SurfaceTextureAccelerator;

.field surface:Landroid/graphics/SurfaceTexture;

.field textureId:I

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onDestroy(Lorg/hmwebrtc/TextureBufferImpl;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;->owner:Lorg/hmwebrtc/SurfaceTextureAccelerator;

    .line 2
    .line 3
    invoke-static {p1, p0}, Lorg/hmwebrtc/SurfaceTextureAccelerator;->access$000(Lorg/hmwebrtc/SurfaceTextureAccelerator;Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRelease(Lorg/hmwebrtc/TextureBufferImpl;)V
    .locals 0

    return-void
.end method

.method public onRetain(Lorg/hmwebrtc/TextureBufferImpl;)V
    .locals 0

    return-void
.end method

.method public updateSize(II)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;->width:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;->height:I

    .line 6
    .line 7
    if-eq v0, p2, :cond_1

    .line 8
    .line 9
    :cond_0
    iput p1, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;->width:I

    .line 10
    .line 11
    iput p2, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;->height:I

    .line 12
    .line 13
    iget-object v0, p0, Lorg/hmwebrtc/SurfaceTextureAccelerator$TextureInfo;->surface:Landroid/graphics/SurfaceTexture;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

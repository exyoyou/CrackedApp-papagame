.class final Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Ltv/haima/ijk/media/player/ISurfaceTextureHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SurfaceCallback"
.end annotation


# instance fields
.field private mDidDetachFromWindow:Z

.field private mHeight:I

.field private mIsFormatChanged:Z

.field private mRenderCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/haima/hmcp/rtmp/widgets/IRenderView$IRenderCallback;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mWeakRenderView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I

.field private mWillDetachFromWindow:Z


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;)V
    .locals 1
    .param p1    # Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mWillDetachFromWindow:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mDidDetachFromWindow:Z

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public addRenderCallback(Lcom/haima/hmcp/rtmp/widgets/IRenderView$IRenderCallback;)V
    .locals 4
    .param p1    # Lcom/haima/hmcp/rtmp/widgets/IRenderView$IRenderCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$InternalSurfaceHolder;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 21
    .line 22
    invoke-direct {v0, v1, v2, p0}, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/haima/ijk/media/player/ISurfaceTextureHost;)V

    .line 23
    .line 24
    .line 25
    iget v1, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mWidth:I

    .line 26
    .line 27
    iget v2, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mHeight:I

    .line 28
    .line 29
    invoke-interface {p1, v0, v1, v2}, Lcom/haima/hmcp/rtmp/widgets/IRenderView$IRenderCallback;->onSurfaceCreated(Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;II)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    iget-boolean v1, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    new-instance v0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$InternalSurfaceHolder;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 51
    .line 52
    invoke-direct {v0, v1, v2, p0}, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/haima/ijk/media/player/ISurfaceTextureHost;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget v1, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mWidth:I

    .line 56
    .line 57
    iget v2, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mHeight:I

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-interface {p1, v0, v3, v1, v2}, Lcom/haima/hmcp/rtmp/widgets/IRenderView$IRenderCallback;->onSurfaceChanged(Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;III)V

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void
.end method

.method public didDetachFromWindow()V
    .locals 2

    .line 1
    const-string v0, "TextureRenderView"

    .line 2
    .line 3
    const-string v1, "didDetachFromWindow()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mDidDetachFromWindow:Z

    .line 10
    .line 11
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 5
    .line 6
    iput p2, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mWidth:I

    .line 7
    .line 8
    iput p2, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mHeight:I

    .line 9
    .line 10
    new-instance p3, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$InternalSurfaceHolder;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;

    .line 19
    .line 20
    invoke-direct {p3, v0, p1, p0}, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/haima/ijk/media/player/ISurfaceTextureHost;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/haima/hmcp/rtmp/widgets/IRenderView$IRenderCallback;

    .line 44
    .line 45
    invoke-interface {v0, p3, p2, p2}, Lcom/haima/hmcp/rtmp/widgets/IRenderView$IRenderCallback;->onSurfaceCreated(Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;II)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 5
    .line 6
    iput v0, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mWidth:I

    .line 7
    .line 8
    iput v0, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mHeight:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;->setIjkTexture(Landroid/graphics/SurfaceTexture;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$InternalSurfaceHolder;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;

    .line 30
    .line 31
    invoke-direct {v0, v1, p1, p0}, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/haima/ijk/media/player/ISurfaceTextureHost;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lcom/haima/hmcp/rtmp/widgets/IRenderView$IRenderCallback;

    .line 55
    .line 56
    invoke-interface {v1, v0}, Lcom/haima/hmcp/rtmp/widgets/IRenderView$IRenderCallback;->onSurfaceDestroyed(Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;->getCloseStream()Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 5
    .line 6
    iput p2, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mWidth:I

    .line 7
    .line 8
    iput p3, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mHeight:I

    .line 9
    .line 10
    new-instance v0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$InternalSurfaceHolder;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;

    .line 19
    .line 20
    invoke-direct {v0, v1, p1, p0}, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/haima/ijk/media/player/ISurfaceTextureHost;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/haima/hmcp/rtmp/widgets/IRenderView$IRenderCallback;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-interface {v1, v0, v2, p2, p3}, Lcom/haima/hmcp/rtmp/widgets/IRenderView$IRenderCallback;->onSurfaceChanged(Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;III)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    const-string v0, "TextureRenderView"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p1, "releaseSurfaceTexture: null"

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-boolean v1, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mDidDetachFromWindow:Z

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 16
    .line 17
    if-eq p1, v1, :cond_1

    .line 18
    .line 19
    const-string v1, "releaseSurfaceTexture: didDetachFromWindow(): release different SurfaceTexture"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string p1, "releaseSurfaceTexture: didDetachFromWindow(): already released by TextureView"

    .line 29
    .line 30
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-boolean v1, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mWillDetachFromWindow:Z

    .line 35
    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 39
    .line 40
    if-eq p1, v1, :cond_3

    .line 41
    .line 42
    const-string v1, "releaseSurfaceTexture: willDetachFromWindow(): release different SurfaceTexture"

    .line 43
    .line 44
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const-string p1, "releaseSurfaceTexture: willDetachFromWindow(): will released by TextureView"

    .line 52
    .line 53
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 58
    .line 59
    if-eq p1, v1, :cond_5

    .line 60
    .line 61
    const-string v1, "releaseSurfaceTexture: alive: release different SurfaceTexture"

    .line 62
    .line 63
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_5
    const-string p1, "releaseSurfaceTexture: alive: will released by TextureView"

    .line 71
    .line 72
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void
.end method

.method public removeRenderCallback(Lcom/haima/hmcp/rtmp/widgets/IRenderView$IRenderCallback;)V
    .locals 1
    .param p1    # Lcom/haima/hmcp/rtmp/widgets/IRenderView$IRenderCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public willDetachFromWindow()V
    .locals 2

    .line 1
    const-string v0, "TextureRenderView"

    .line 2
    .line 3
    const-string v1, "willDetachFromWindow()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView$SurfaceCallback;->mWillDetachFromWindow:Z

    .line 10
    .line 11
    return-void
.end method

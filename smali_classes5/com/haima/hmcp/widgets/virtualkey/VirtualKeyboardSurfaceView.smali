.class public Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VirtualKeyboardSurfaceView"


# instance fields
.field private buttonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/PointCoord;",
            ">;"
        }
    .end annotation
.end field

.field private isDrawing:Z

.field private mFireCoord:Lcom/haima/hmcp/beans/PointCoord;

.field private mSightBeadCoord:Lcom/haima/hmcp/beans/PointCoord;

.field private paint:Landroid/graphics/Paint;

.field private scaleX:F

.field private scaleY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    iput p1, p0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->scaleX:F

    .line 3
    iput p1, p0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->scaleY:F

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->isDrawing:Z

    .line 5
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    iput p1, p0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->scaleX:F

    .line 8
    iput p1, p0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->scaleY:F

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->isDrawing:Z

    .line 10
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->init()V

    return-void
.end method

.method private drawContent(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    const-string v0, "VirtualKeyboardSurfaceView"

    .line 2
    .line 3
    const-string v1, "VirtualKeyboardSurfaceView drawContent start"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->buttonList:Ljava/util/List;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->buttonList:Ljava/util/List;

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/haima/hmcp/beans/PointCoord;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v2, v1}, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyViewFactory;->createVirtualKeyView(Landroid/content/Context;Lcom/haima/hmcp/beans/PointCoord;)Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 54
    .line 55
    int-to-float v3, v3

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 61
    .line 62
    int-to-float v4, v4

    .line 63
    invoke-virtual {v2, v3, v4}, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->setSurfaceSize(FF)V

    .line 64
    .line 65
    .line 66
    iget v3, p0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->scaleX:F

    .line 67
    .line 68
    iget v4, p0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->scaleY:F

    .line 69
    .line 70
    invoke-virtual {v2, p1, v1, v3, v4}, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->drawVirtualKey(Landroid/graphics/Canvas;Lcom/haima/hmcp/beans/PointCoord;FF)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->mFireCoord:Lcom/haima/hmcp/beans/PointCoord;

    .line 75
    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->mFireCoord:Lcom/haima/hmcp/beans/PointCoord;

    .line 83
    .line 84
    invoke-static {v0, v1}, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyViewFactory;->createVirtualKeyView(Landroid/content/Context;Lcom/haima/hmcp/beans/PointCoord;)Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 95
    .line 96
    int-to-float v1, v1

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 102
    .line 103
    int-to-float v2, v2

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->setSurfaceSize(FF)V

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->mFireCoord:Lcom/haima/hmcp/beans/PointCoord;

    .line 108
    .line 109
    iget v2, p0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->scaleX:F

    .line 110
    .line 111
    iget v3, p0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->scaleY:F

    .line 112
    .line 113
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->drawVirtualKey(Landroid/graphics/Canvas;Lcom/haima/hmcp/beans/PointCoord;FF)V

    .line 114
    .line 115
    .line 116
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->mSightBeadCoord:Lcom/haima/hmcp/beans/PointCoord;

    .line 117
    .line 118
    if-eqz v0, :cond_3

    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->mSightBeadCoord:Lcom/haima/hmcp/beans/PointCoord;

    .line 125
    .line 126
    invoke-static {v0, v1}, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyViewFactory;->createVirtualKeyView(Landroid/content/Context;Lcom/haima/hmcp/beans/PointCoord;)Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-eqz v0, :cond_3

    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 137
    .line 138
    int-to-float v1, v1

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 144
    .line 145
    int-to-float v2, v2

    .line 146
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->setSurfaceSize(FF)V

    .line 147
    .line 148
    .line 149
    iget-object v1, p0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->mSightBeadCoord:Lcom/haima/hmcp/beans/PointCoord;

    .line 150
    .line 151
    iget v2, p0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->scaleX:F

    .line 152
    .line 153
    iget v3, p0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->scaleY:F

    .line 154
    .line 155
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;->drawVirtualKey(Landroid/graphics/Canvas;Lcom/haima/hmcp/beans/PointCoord;FF)V

    .line 156
    .line 157
    .line 158
    :cond_3
    return-void

    .line 159
    :catchall_0
    move-exception p1

    .line 160
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    throw p1
.end method

.method private drawToSurface()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->isDrawing:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/TextureView;->lockCanvas()Landroid/graphics/Canvas;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    :try_start_0
    invoke-direct {p0, v0}, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->drawContent(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 27
    .line 28
    .line 29
    throw v1

    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method private init()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->paint:Landroid/graphics/Paint;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->buttonList:Ljava/util/List;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private startDrawing()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->isDrawing:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "VirtualKeyboardSurfaceView"

    .line 7
    .line 8
    const-string v1, "VirtualKeyboardSurfaceView start"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->isDrawing:Z

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->drawToSurface()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private stopDrawing()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->isDrawing:Z

    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->drawToSurface()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/TextureView;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->startDrawing()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->stopDrawing()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->startDrawing()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->stopDrawing()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setFireCoord(Lcom/haima/hmcp/beans/PointCoord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->mFireCoord:Lcom/haima/hmcp/beans/PointCoord;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->drawToSurface()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSightBeadCoord(Lcom/haima/hmcp/beans/PointCoord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->mSightBeadCoord:Lcom/haima/hmcp/beans/PointCoord;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->drawToSurface()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public updateKeyboardMapping(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/PointCoord;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->buttonList:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->buttonList:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->buttonList:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;->drawToSurface()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p1
.end method

.class public abstract Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"


# static fields
.field protected static final DIRECTION_DOWN:I = 0x2

.field protected static final DIRECTION_LEFT:I = 0x4

.field protected static final DIRECTION_LEFT_DOWN:I = 0x6

.field protected static final DIRECTION_LEFT_UP:I = 0x5

.field protected static final DIRECTION_RIGHT:I = 0x8

.field protected static final DIRECTION_RIGHT_DOWN:I = 0xa

.field protected static final DIRECTION_RIGHT_UP:I = 0x9

.field protected static final DIRECTION_UP:I = 0x1


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private canvas:Landroid/graphics/Canvas;

.field private defaultVirBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;"
        }
    .end annotation
.end field

.field private drawThread:Ljava/lang/Thread;

.field private isAbleDraw:Z

.field private keyDirectionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;",
            ">;"
        }
    .end annotation
.end field

.field private keyWasdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private mHasLoadedFromJson:Z

.field public mIsUserConfig:Z

.field private mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;",
            ">;"
        }
    .end annotation
.end field

.field private observers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/haima/hmcp/virtual/listeners/VirtualViewObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final operateListener:Lcom/haima/hmcp/virtual/listeners/OperateListener;

.field protected operatorView:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;

.field private surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field public viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

.field protected virtualType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->lock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->mHasLoadedFromJson:Z

    .line 5
    new-instance p1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$1;

    invoke-direct {p1, p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$1;-><init>(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)V

    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 6
    new-instance p1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$2;

    invoke-direct {p1, p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$2;-><init>(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)V

    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

    .line 7
    new-instance p1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;

    invoke-direct {p1, p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;-><init>(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)V

    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->operateListener:Lcom/haima/hmcp/virtual/listeners/OperateListener;

    .line 8
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 11
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->lock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->mHasLoadedFromJson:Z

    .line 13
    new-instance p1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$1;

    invoke-direct {p1, p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$1;-><init>(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)V

    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 14
    new-instance p1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$2;

    invoke-direct {p1, p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$2;-><init>(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)V

    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

    .line 15
    new-instance p1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;

    invoke-direct {p1, p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;-><init>(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)V

    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->operateListener:Lcom/haima/hmcp/virtual/listeners/OperateListener;

    .line 16
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 19
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->lock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->mHasLoadedFromJson:Z

    .line 21
    new-instance p1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$1;

    invoke-direct {p1, p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$1;-><init>(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)V

    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 22
    new-instance p1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$2;

    invoke-direct {p1, p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$2;-><init>(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)V

    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

    .line 23
    new-instance p1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;

    invoke-direct {p1, p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$3;-><init>(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)V

    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->operateListener:Lcom/haima/hmcp/virtual/listeners/OperateListener;

    .line 24
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->isAbleDraw:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$002(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->isAbleDraw:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$100(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Ljava/lang/Thread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->drawThread:Ljava/lang/Thread;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->mHasLoadedFromJson:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$102(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->drawThread:Ljava/lang/Thread;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1100(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;Lcom/haima/hmcp/virtual/listeners/VirtualViewObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->addObserver(Lcom/haima/hmcp/virtual/listeners/VirtualViewObserver;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1200(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Landroid/graphics/Canvas;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->canvas:Landroid/graphics/Canvas;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1202(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;Landroid/graphics/Canvas;)Landroid/graphics/Canvas;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->canvas:Landroid/graphics/Canvas;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$200(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->createDrawThread()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->touchInterceptCondition(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$500(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;ILjava/util/List;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->parseDirectionData(ILjava/util/List;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;ILjava/util/List;III)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->parseKeyBoardRocker(ILjava/util/List;III)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$700(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->mViews:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;Lcom/haima/hmcp/virtual/listeners/VirtualViewObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->removeObserver(Lcom/haima/hmcp/virtual/listeners/VirtualViewObserver;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$900(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->defaultVirBeanList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method private addObserver(Lcom/haima/hmcp/virtual/listeners/VirtualViewObserver;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->observers:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private checkAdjacent(Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->getX()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->getY()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    int-to-float p1, p1

    .line 11
    invoke-virtual {p2}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->getX()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    int-to-float v1, v1

    .line 16
    invoke-virtual {p2}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->getY()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    int-to-float p2, p2

    .line 21
    sub-float/2addr v0, v1

    .line 22
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/high16 v1, 0x41a00000    # 20.0f

    .line 27
    .line 28
    cmpg-float v0, v0, v1

    .line 29
    .line 30
    if-lez v0, :cond_1

    .line 31
    .line 32
    sub-float/2addr p1, p2

    .line 33
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    cmpg-float p1, p1, v1

    .line 38
    .line 39
    if-gtz p1, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p1, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 45
    :goto_1
    return p1
.end method

.method private cleanObserver()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->observers:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private createDrawThread()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView$4;-><init>(Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->drawThread:Ljava/lang/Thread;

    .line 12
    .line 13
    return-void
.end method

.method private getKeysIndexByDirection(I)[I
    .locals 5

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq p1, v0, :cond_7

    .line 5
    .line 6
    const/16 v0, 0xc8

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eq p1, v0, :cond_6

    .line 10
    .line 11
    const/16 v0, 0x12c

    .line 12
    .line 13
    if-eq p1, v0, :cond_5

    .line 14
    .line 15
    const/16 v0, 0x190

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    if-eq p1, v0, :cond_4

    .line 19
    .line 20
    const/16 v0, 0x1f4

    .line 21
    .line 22
    if-eq p1, v0, :cond_3

    .line 23
    .line 24
    const/16 v0, 0x258

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    if-eq p1, v0, :cond_2

    .line 28
    .line 29
    const/16 v0, 0x2bc

    .line 30
    .line 31
    if-eq p1, v0, :cond_1

    .line 32
    .line 33
    const/16 v0, 0x320

    .line 34
    .line 35
    if-eq p1, v0, :cond_0

    .line 36
    .line 37
    new-array p1, v2, [I

    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_0
    filled-new-array {v1, v4}, [I

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1

    .line 45
    :cond_1
    filled-new-array {v4}, [I

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    :cond_2
    filled-new-array {v3, v4}, [I

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1

    .line 55
    :cond_3
    filled-new-array {v3}, [I

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1

    .line 60
    :cond_4
    filled-new-array {v3, v2}, [I

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1

    .line 65
    :cond_5
    filled-new-array {v2}, [I

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1

    .line 70
    :cond_6
    filled-new-array {v1, v2}, [I

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    return-object p1

    .line 75
    :cond_7
    filled-new-array {v1}, [I

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    return-object p1
.end method

.method private parseDirectionData(ILjava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;",
            ">;I)V"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string p2, "send stick direction error  keys size < 4"

    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/16 p2, 0x64

    .line 12
    .line 13
    if-eq p3, p2, :cond_8

    .line 14
    .line 15
    const/16 p2, 0xc8

    .line 16
    .line 17
    if-eq p3, p2, :cond_7

    .line 18
    .line 19
    const/16 p2, 0x12c

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    const-string v1, "UP"

    .line 23
    .line 24
    if-eq p3, p2, :cond_6

    .line 25
    .line 26
    const/16 p2, 0x190

    .line 27
    .line 28
    if-eq p3, p2, :cond_5

    .line 29
    .line 30
    const/16 p2, 0x1f4

    .line 31
    .line 32
    if-eq p3, p2, :cond_4

    .line 33
    .line 34
    const/16 p2, 0x258

    .line 35
    .line 36
    if-eq p3, p2, :cond_3

    .line 37
    .line 38
    const/16 p2, 0x2bc

    .line 39
    .line 40
    if-eq p3, p2, :cond_2

    .line 41
    .line 42
    const/16 p2, 0x320

    .line 43
    .line 44
    if-eq p3, p2, :cond_1

    .line 45
    .line 46
    new-instance p2, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 47
    .line 48
    invoke-direct {p2, v1, v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->receiveStickData(ILcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    new-instance p2, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 56
    .line 57
    const-string p3, "RIGHT_BOTTOM"

    .line 58
    .line 59
    const/16 v0, 0xa

    .line 60
    .line 61
    invoke-direct {p2, p3, v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;-><init>(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->receiveStickData(ILcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    new-instance p2, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 69
    .line 70
    const-string p3, "DOWN"

    .line 71
    .line 72
    const/4 v0, 0x2

    .line 73
    invoke-direct {p2, p3, v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;-><init>(Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->receiveStickData(ILcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    new-instance p2, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 81
    .line 82
    const-string p3, "LEFT_BOTTOM"

    .line 83
    .line 84
    const/4 v0, 0x6

    .line 85
    invoke-direct {p2, p3, v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;-><init>(Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->receiveStickData(ILcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    new-instance p2, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 93
    .line 94
    const-string p3, "LEFT"

    .line 95
    .line 96
    const/4 v0, 0x4

    .line 97
    invoke-direct {p2, p3, v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;-><init>(Ljava/lang/String;I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->receiveStickData(ILcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_5
    new-instance p2, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 105
    .line 106
    const-string p3, "LEFT_TOP"

    .line 107
    .line 108
    const/4 v0, 0x5

    .line 109
    invoke-direct {p2, p3, v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;-><init>(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->receiveStickData(ILcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_6
    new-instance p2, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 117
    .line 118
    invoke-direct {p2, v1, v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;-><init>(Ljava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->receiveStickData(ILcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_7
    new-instance p2, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 126
    .line 127
    const-string p3, "RIGHT_TOP"

    .line 128
    .line 129
    const/16 v0, 0x9

    .line 130
    .line 131
    invoke-direct {p2, p3, v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;-><init>(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->receiveStickData(ILcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_8
    new-instance p2, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 139
    .line 140
    const-string p3, "RIGHT"

    .line 141
    .line 142
    const/16 v0, 0x8

    .line 143
    .line 144
    invoke-direct {p2, p3, v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;-><init>(Ljava/lang/String;I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->receiveStickData(ILcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;)V

    .line 148
    .line 149
    .line 150
    :goto_0
    return-void
.end method

.method private parseKeyBoardRocker(ILjava/util/List;III)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;",
            ">;III)V"
        }
    .end annotation

    .line 1
    const/4 p2, 0x7

    .line 2
    if-ne p5, p2, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->keyDirectionList:Ljava/util/List;

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->keyWasdList:Ljava/util/List;

    .line 8
    .line 9
    :goto_0
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-nez p1, :cond_8

    .line 12
    .line 13
    invoke-direct {p0, p4}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->getKeysIndexByDirection(I)[I

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p0, p3}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->getKeysIndexByDirection(I)[I

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    array-length p4, p1

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_1
    if-ge v2, p4, :cond_4

    .line 24
    .line 25
    aget v3, p1, v2

    .line 26
    .line 27
    array-length v4, p3

    .line 28
    const/4 v5, 0x0

    .line 29
    :goto_2
    if-ge v5, v4, :cond_2

    .line 30
    .line 31
    aget v6, p3, v5

    .line 32
    .line 33
    if-ne v3, v6, :cond_1

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    goto :goto_3

    .line 37
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const/4 v4, 0x0

    .line 41
    :goto_3
    if-nez v4, :cond_3

    .line 42
    .line 43
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 48
    .line 49
    invoke-virtual {p0, v1, v3, p5}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->receiveKeyBoardData(ILcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;I)V

    .line 50
    .line 51
    .line 52
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    array-length p4, p3

    .line 56
    const/4 v2, 0x0

    .line 57
    :goto_4
    if-ge v2, p4, :cond_9

    .line 58
    .line 59
    aget v3, p3, v2

    .line 60
    .line 61
    array-length v4, p1

    .line 62
    const/4 v5, 0x0

    .line 63
    :goto_5
    if-ge v5, v4, :cond_6

    .line 64
    .line 65
    aget v6, p1, v5

    .line 66
    .line 67
    if-ne v3, v6, :cond_5

    .line 68
    .line 69
    const/4 v4, 0x1

    .line 70
    goto :goto_6

    .line 71
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 72
    .line 73
    goto :goto_5

    .line 74
    :cond_6
    const/4 v4, 0x0

    .line 75
    :goto_6
    if-nez v4, :cond_7

    .line 76
    .line 77
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 82
    .line 83
    invoke-virtual {p0, v0, v3, p5}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->receiveKeyBoardData(ILcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;I)V

    .line 84
    .line 85
    .line 86
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_8
    invoke-direct {p0, p3}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->getKeysIndexByDirection(I)[I

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    array-length p3, p1

    .line 94
    :goto_7
    if-ge v0, p3, :cond_9

    .line 95
    .line 96
    aget p4, p1, v0

    .line 97
    .line 98
    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p4

    .line 102
    check-cast p4, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 103
    .line 104
    invoke-virtual {p0, v1, p4, p5}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->receiveKeyBoardData(ILcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;I)V

    .line 105
    .line 106
    .line 107
    add-int/lit8 v0, v0, 0x1

    .line 108
    .line 109
    goto :goto_7

    .line 110
    :cond_9
    return-void
.end method

.method private preCheckScale(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->mHasLoadedFromJson:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->mIsUserConfig:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v2, "preCheckScale: app call loadKeyboardConfigFromJson & not user config"

    .line 13
    .line 14
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    iget-boolean v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->mHasLoadedFromJson:Z

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2, p1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->hasLocalConfig(I)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    const-string v0, "preCheckScale: app don\'t call loadKeyboardConfigFromJson & localConfig is null"

    .line 37
    .line 38
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v1, v0

    .line 43
    :goto_1
    if-nez v1, :cond_2

    .line 44
    .line 45
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 46
    .line 47
    const-string v0, "preCheckScale don\'t execute."

    .line 48
    .line 49
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getScaleByApp()F

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->setBaseScale(F)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->notifyBaseScale()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_2
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const/high16 v0, 0x3f800000    # 1.0f

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->setBaseScale(F)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->notifyBaseScale()V

    .line 81
    .line 82
    .line 83
    new-instance p1, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->mViews:Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_3

    .line 99
    .line 100
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->getRect()Landroid/graphics/Rect;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_3
    invoke-static {p1}, Lcom/haima/hmcp/utils/ScaleUtil;->calculateScaleFactor(Ljava/util/List;)F

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 119
    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v3, "preCheckScale scaleFactor="

    .line 126
    .line 127
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    cmpg-float v0, p1, v0

    .line 141
    .line 142
    if-gez v0, :cond_4

    .line 143
    .line 144
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->setBaseScale(F)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->notifyBaseScale()V

    .line 152
    .line 153
    .line 154
    :cond_4
    return-void
.end method

.method private removeObserver(Lcom/haima/hmcp/virtual/listeners/VirtualViewObserver;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->observers:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private touchInterceptCondition(I)Z
    .locals 1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method protected abstract editKeyboardConfigNotify(Ljava/lang/String;Lcom/haima/hmcp/enums/EditStatus;)V
.end method

.method public enterEditModel(Lcom/haima/hmcp/business/PluginContext;ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->operatorView:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-boolean v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string p2, "now it\'s editing model already"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/4 v1, 0x1

    .line 18
    sput-boolean v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    sget-boolean v0, Lcom/haima/hmcp/Constants;->CONFIG_IS_CLOUD_COMPUTER_KEYBOARD_EDIT_MODE:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    new-instance v0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;

    .line 27
    .line 28
    invoke-direct {v0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewCloudComputer;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->operatorView:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;

    .line 35
    .line 36
    invoke-direct {v0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorView;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->operatorView:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;

    .line 40
    .line 41
    :goto_0
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->operatorView:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->operateListener:Lcom/haima/hmcp/virtual/listeners/OperateListener;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;->setOperateListener(Lcom/haima/hmcp/virtual/listeners/OperateListener;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    instance-of p1, p1, Landroid/view/ViewGroup;

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Landroid/view/ViewGroup;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->operatorView:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->operatorView:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;->setResetEnabled(Z)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->operatorView:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;

    .line 73
    .line 74
    iget p2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->virtualType:I

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;->setVirType(I)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->operatorView:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;

    .line 80
    .line 81
    invoke-virtual {p1, p3}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;->setShowGuide(Z)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->operatorView:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;

    .line 85
    .line 86
    const/4 p2, 0x0

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    sget-boolean p1, Lcom/haima/hmcp/Constants;->CONFIG_IS_KEYBOARD_EDIT_SHOW_ANIMATION:Z

    .line 91
    .line 92
    if-eqz p1, :cond_3

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->startAnim()V

    .line 95
    .line 96
    .line 97
    :cond_3
    return-void
.end method

.method public exit()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->operatorView:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;->exit()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected init()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->mViews:Ljava/util/List;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->defaultVirBeanList:Ljava/util/List;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->observers:Ljava/util/HashMap;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, "HmBaseVirtualSurface init()"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->isAbleDraw:Z

    .line 31
    .line 32
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->keyWasdList:Ljava/util/List;

    .line 43
    .line 44
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 45
    .line 46
    const-string v2, "W"

    .line 47
    .line 48
    const/16 v3, 0x57

    .line 49
    .line 50
    invoke-direct {v1, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;-><init>(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->keyWasdList:Ljava/util/List;

    .line 57
    .line 58
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 59
    .line 60
    const-string v2, "S"

    .line 61
    .line 62
    const/16 v3, 0x53

    .line 63
    .line 64
    invoke-direct {v1, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;-><init>(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->keyWasdList:Ljava/util/List;

    .line 71
    .line 72
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 73
    .line 74
    const-string v2, "A"

    .line 75
    .line 76
    const/16 v3, 0x41

    .line 77
    .line 78
    invoke-direct {v1, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;-><init>(Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->keyWasdList:Ljava/util/List;

    .line 85
    .line 86
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 87
    .line 88
    const-string v2, "D"

    .line 89
    .line 90
    const/16 v3, 0x44

    .line 91
    .line 92
    invoke-direct {v1, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;-><init>(Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    new-instance v0, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->keyDirectionList:Ljava/util/List;

    .line 104
    .line 105
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 106
    .line 107
    const-string v2, "\u2191"

    .line 108
    .line 109
    const/16 v3, 0x26

    .line 110
    .line 111
    invoke-direct {v1, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;-><init>(Ljava/lang/String;I)V

    .line 112
    .line 113
    .line 114
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->keyDirectionList:Ljava/util/List;

    .line 118
    .line 119
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 120
    .line 121
    const-string v2, "\u2193"

    .line 122
    .line 123
    const/16 v3, 0x28

    .line 124
    .line 125
    invoke-direct {v1, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;-><init>(Ljava/lang/String;I)V

    .line 126
    .line 127
    .line 128
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->keyDirectionList:Ljava/util/List;

    .line 132
    .line 133
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 134
    .line 135
    const-string v2, "\u2190"

    .line 136
    .line 137
    const/16 v3, 0x25

    .line 138
    .line 139
    invoke-direct {v1, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;-><init>(Ljava/lang/String;I)V

    .line 140
    .line 141
    .line 142
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->keyDirectionList:Ljava/util/List;

    .line 146
    .line 147
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;

    .line 148
    .line 149
    const-string v2, "\u2192"

    .line 150
    .line 151
    const/16 v3, 0x27

    .line 152
    .line 153
    invoke-direct {v1, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;-><init>(Ljava/lang/String;I)V

    .line 154
    .line 155
    .line 156
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method public isEditModeShow()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->operatorView:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public loadVirtualData(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->defaultVirBeanList:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->copy()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->defaultVirBeanList:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0, p2}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->setVirtualType(I)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->mViews:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->defaultVirBeanList:Ljava/util/List;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

    .line 58
    .line 59
    invoke-virtual {p1, v1, v2, v3, p2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->convertVirBean2View(Ljava/util/List;Landroid/content/Context;Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;I)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->mViews:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->cleanObserver()V

    .line 69
    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 86
    .line 87
    invoke-direct {p0, v1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->addObserver(Lcom/haima/hmcp/virtual/listeners/VirtualViewObserver;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    sget-boolean p1, Lcom/haima/hmcp/Constants;->CONFIG_VIRTUAL_KEYBOARD_OVERLAP_SWITCH:Z

    .line 92
    .line 93
    if-nez p1, :cond_3

    .line 94
    .line 95
    sget-boolean p1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->isScaleSetByApp:Z

    .line 96
    .line 97
    if-nez p1, :cond_3

    .line 98
    .line 99
    invoke-direct {p0, p2}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->preCheckScale(I)V

    .line 100
    .line 101
    .line 102
    :cond_3
    monitor-exit v0

    .line 103
    return-void

    .line 104
    :catchall_0
    move-exception p1

    .line 105
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    throw p1
.end method

.method public notifyBaseScale()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "notifyScale"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->mViews:Ljava/util/List;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->notifyBaseScale()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method protected notifySave()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->observers:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/haima/hmcp/virtual/listeners/VirtualViewObserver;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {v1}, Lcom/haima/hmcp/virtual/listeners/VirtualViewObserver;->onSave()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method protected abstract receiveKeyBoardData(ILcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;I)V
.end method

.method protected abstract receiveMouseData(IIILcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;)V
.end method

.method protected abstract receiveStickData(ILcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;)V
.end method

.method protected abstract receiveStickRocker(IIFF)V
.end method

.method public resetOperator()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->operatorView:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    sput-boolean v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->operatorView:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;->reSet()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setLoadedFromJson(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->mHasLoadedFromJson:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTransparency(F)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->setTransparency(F)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->mViews:Ljava/util/List;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->setTransparency(F)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public setUserConfig(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->mIsUserConfig:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVirtualType(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->virtualType:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->operatorView:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;->setVirType(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public startAnim()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Random;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->mViews:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v1, :cond_7

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_7

    .line 15
    .line 16
    new-instance v1, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->mViews:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x1

    .line 33
    if-eqz v3, :cond_5

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 40
    .line 41
    if-nez v3, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v3}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->prepareShake()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    iget-object v8, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->mViews:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    const/4 v10, 0x2

    .line 66
    if-eqz v9, :cond_4

    .line 67
    .line 68
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    check-cast v9, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 73
    .line 74
    if-eq v9, v3, :cond_1

    .line 75
    .line 76
    if-nez v9, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    invoke-direct {p0, v3, v9}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->checkAdjacent(Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;)Z

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    if-eqz v11, :cond_1

    .line 84
    .line 85
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    check-cast v9, [F

    .line 90
    .line 91
    if-eqz v9, :cond_3

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    new-array v9, v10, [F

    .line 95
    .line 96
    fill-array-data v9, :array_0

    .line 97
    .line 98
    .line 99
    :goto_2
    aget v9, v9, v5

    .line 100
    .line 101
    :goto_3
    sub-float v10, v7, v9

    .line 102
    .line 103
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    const v11, 0x3ecccccd    # 0.4f

    .line 108
    .line 109
    .line 110
    cmpg-float v10, v10, v11

    .line 111
    .line 112
    if-gez v10, :cond_1

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    goto :goto_3

    .line 119
    :cond_4
    new-array v8, v10, [F

    .line 120
    .line 121
    aput v6, v8, v4

    .line 122
    .line 123
    aput v7, v8, v5

    .line 124
    .line 125
    invoke-interface {v1, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_5
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->mViews:Ljava/util/List;

    .line 130
    .line 131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_7

    .line 140
    .line 141
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    check-cast v2, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 146
    .line 147
    if-eqz v2, :cond_6

    .line 148
    .line 149
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    check-cast v3, [F

    .line 154
    .line 155
    aget v6, v3, v4

    .line 156
    .line 157
    aget v3, v3, v5

    .line 158
    .line 159
    invoke-virtual {v2, v6, v3}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->startShake(FF)V

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_7
    return-void

    .line 164
    nop

    .line 165
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public stopAnim()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->mViews:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->stopShake()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-void
.end method

.method public touchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->operatorView:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    sget-boolean v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;->consumeThisEvent(Landroid/view/MotionEvent;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->mViews:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_5

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 43
    .line 44
    invoke-virtual {v2, p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_3

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_3

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    :cond_3
    if-eqz v2, :cond_4

    .line 58
    .line 59
    sget-boolean v2, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 60
    .line 61
    if-eqz v2, :cond_4

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    if-eqz v1, :cond_2

    .line 65
    .line 66
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->operatorView:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;

    .line 67
    .line 68
    if-eqz v0, :cond_6

    .line 69
    .line 70
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 71
    .line 72
    if-eqz v0, :cond_6

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-nez p1, :cond_6

    .line 79
    .line 80
    if-nez v1, :cond_6

    .line 81
    .line 82
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualTextureView;->operatorView:Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;

    .line 83
    .line 84
    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;->selectVirtualView(Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;)V

    .line 86
    .line 87
    .line 88
    :cond_6
    return-void
.end method

.method protected abstract useSpecificSensitivity(ZF)V
.end method

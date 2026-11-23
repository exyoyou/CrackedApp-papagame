.class public Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;
.super Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;
    }
.end annotation


# static fields
.field private static final ANIMATOR_DURATION:I = 0x12c

.field private static final CLICK_INTERVAL:J = 0xc8L

.field private static final DEFAULT_SELECTED_BACKGROUND_COLOR:Ljava/lang/String; = "#b3222222"

.field private static final DEFAULT_SELECTED_BORDER_COLOR:Ljava/lang/String; = "#007AFF"

.field private static final DRAWER_SPACING:I = 0x20

.field private static final EDITING_BG_PADDING:I = 0x10

.field private static final ICON_WIDTH_HEIGHT_SCALE:F = 0.58f

.field private static final ICON_WIDTH_SCALE:F = 0.37f

.field private static final ITEM_SPACING:I = 0x20

.field private static final MAX_TOUCH_POINTS:I = 0x5

.field private static final RECT_OFFSET:I = 0x3

.field private static final STYLE_BOMB:I = 0x1

.field private static final STYLE_STAIRS:I = 0x2

.field private static final TOUCH_SLOP:F = 10.0f


# instance fields
.field private final activeTouchPoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;",
            ">;"
        }
    .end annotation
.end field

.field private centerX:I

.field private centerY:I

.field private currentRotation:F

.field private drawerAnimator:Landroid/animation/ValueAnimator;

.field private final drawerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/DrawerItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private drawerListOffset:F

.field private drawerProgress:F

.field private isOpen:Z

.field private isRightMode:Z

.field private lastTouchX:F

.field private lastTouchY:F

.field private mCenterBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

.field private mCenterMirrorBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

.field private mCenterSourceBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

.field private mDrawerUpBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

.field private resIds:[I

.field private rotateAnimator:Landroid/animation/ValueAnimator;

.field private selectedBorderColor:Ljava/lang/String;

.field private style:I

.field private textAlpha:F

.field private textColorAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;Landroid/content/Context;Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;-><init>(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;Landroid/content/Context;Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;I)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/haima/hmcp/virtual/BitmapRef;

    .line 5
    .line 6
    invoke-direct {p1}, Lcom/haima/hmcp/virtual/BitmapRef;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->mDrawerUpBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 10
    .line 11
    new-instance p1, Lcom/haima/hmcp/virtual/BitmapRef;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/haima/hmcp/virtual/BitmapRef;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->mCenterSourceBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 17
    .line 18
    new-instance p1, Lcom/haima/hmcp/virtual/BitmapRef;

    .line 19
    .line 20
    invoke-direct {p1}, Lcom/haima/hmcp/virtual/BitmapRef;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->mCenterBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 24
    .line 25
    new-instance p1, Lcom/haima/hmcp/virtual/BitmapRef;

    .line 26
    .line 27
    invoke-direct {p1}, Lcom/haima/hmcp/virtual/BitmapRef;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->mCenterMirrorBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->drawerListOffset:F

    .line 34
    .line 35
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->drawerProgress:F

    .line 36
    .line 37
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->currentRotation:F

    .line 38
    .line 39
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->textAlpha:F

    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isRightMode:Z

    .line 43
    .line 44
    new-instance p1, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->drawerList:Ljava/util/List;

    .line 50
    .line 51
    const-string p1, "#007AFF"

    .line 52
    .line 53
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->selectedBorderColor:Ljava/lang/String;

    .line 54
    .line 55
    new-instance p1, Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->activeTouchPoints:Ljava/util/Map;

    .line 61
    .line 62
    const/4 p1, 0x1

    .line 63
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->style:I

    .line 64
    .line 65
    iget-boolean p2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isRight:Z

    .line 66
    .line 67
    if-nez p2, :cond_0

    .line 68
    .line 69
    return-void

    .line 70
    :cond_0
    new-instance p2, Landroid/graphics/Paint;

    .line 71
    .line 72
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object p2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 76
    .line 77
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 81
    .line 82
    sget p2, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->transparency:F

    .line 83
    .line 84
    const/high16 p3, 0x437f0000    # 255.0f

    .line 85
    .line 86
    mul-float p2, p2, p3

    .line 87
    .line 88
    float-to-int p2, p2

    .line 89
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->initDrawer()V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;)Lcom/haima/hmcp/virtual/BitmapRef;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->mDrawerUpBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;)Lcom/haima/hmcp/virtual/BitmapRef;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->mCenterSourceBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->processCenterBitmap(Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isOpen:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$302(Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isOpen:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic c(Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->lambda$startTextColorAnimation$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private calcDrawerIconWidthHeight()[F
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->mCenterSourceBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getBaseScale()F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v5, "calcWidthHeight baseScale="

    .line 35
    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v3, v4}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    int-to-float v1, v1

    .line 50
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->screenScale:F

    .line 51
    .line 52
    mul-float v3, v3, v1

    .line 53
    .line 54
    iget-object v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getScale()F

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    mul-float v3, v3, v4

    .line 61
    .line 62
    mul-float v3, v3, v2

    .line 63
    .line 64
    float-to-int v3, v3

    .line 65
    int-to-float v0, v0

    .line 66
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->screenScale:F

    .line 67
    .line 68
    mul-float v4, v4, v0

    .line 69
    .line 70
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 71
    .line 72
    invoke-virtual {v5}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getScale()F

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    mul-float v4, v4, v5

    .line 77
    .line 78
    mul-float v4, v4, v2

    .line 79
    .line 80
    float-to-int v2, v4

    .line 81
    int-to-float v3, v3

    .line 82
    div-float/2addr v3, v1

    .line 83
    int-to-float v1, v2

    .line 84
    div-float/2addr v1, v0

    .line 85
    const/4 v0, 0x2

    .line 86
    new-array v0, v0, [F

    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    aput v3, v0, v2

    .line 90
    .line 91
    const/4 v2, 0x1

    .line 92
    aput v1, v0, v2

    .line 93
    .line 94
    return-object v0
.end method

.method private calcDrawerItemWidthHeight(Lcom/haima/hmcp/virtual/bean/DrawerItemBean;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getBaseScale()F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "calcWidthHeight baseScale="

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPosition()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->getH()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    int-to-float v1, v1

    .line 45
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->screenScale:F

    .line 46
    .line 47
    mul-float v1, v1, v2

    .line 48
    .line 49
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getScale()F

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    mul-float v1, v1, v2

    .line 56
    .line 57
    mul-float v1, v1, v0

    .line 58
    .line 59
    float-to-int v1, v1

    .line 60
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPosition()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->getH()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    int-to-float v2, v2

    .line 71
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->screenScale:F

    .line 72
    .line 73
    mul-float v2, v2, v3

    .line 74
    .line 75
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getScale()F

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    mul-float v2, v2, v3

    .line 82
    .line 83
    mul-float v2, v2, v0

    .line 84
    .line 85
    float-to-int v0, v2

    .line 86
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 87
    .line 88
    iput v2, p1, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->width:I

    .line 89
    .line 90
    iput v2, p1, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->height:I

    .line 91
    .line 92
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 93
    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v3, "calcWidthHeight item.width = "

    .line 100
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v1, ", item.height = "

    .line 108
    .line 109
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 123
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v1, "calcWidthHeight x ="

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v1, ", y = "

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->checkPosition()V

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method private calculateDrawerList(Ljava/lang/Float;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->hasDrawerList()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->getDrawerList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->calculateViewBeanCenter()V

    .line 12
    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isRightMode:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->centerX:I

    .line 19
    .line 20
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 21
    .line 22
    div-int/lit8 v2, v2, 0x2

    .line 23
    .line 24
    sub-int/2addr v1, v2

    .line 25
    add-int/lit8 v1, v1, -0x20

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->centerX:I

    .line 29
    .line 30
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 31
    .line 32
    div-int/lit8 v2, v2, 0x2

    .line 33
    .line 34
    add-int/2addr v1, v2

    .line 35
    add-int/lit8 v1, v1, 0x20

    .line 36
    .line 37
    :goto_0
    const/4 v2, 0x0

    .line 38
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-ge v2, v3, :cond_4

    .line 43
    .line 44
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    iget-object v4, v3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->source:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    invoke-virtual {v4, v5}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setScale(F)V

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-direct {p0, v3}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->calcDrawerItemWidthHeight(Lcom/haima/hmcp/virtual/bean/DrawerItemBean;)V

    .line 62
    .line 63
    .line 64
    if-nez v2, :cond_2

    .line 65
    .line 66
    iget-boolean v4, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isRightMode:Z

    .line 67
    .line 68
    if-eqz v4, :cond_2

    .line 69
    .line 70
    iget v4, v3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->width:I

    .line 71
    .line 72
    sub-int/2addr v1, v4

    .line 73
    :cond_2
    iget-boolean v4, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isRightMode:Z

    .line 74
    .line 75
    if-eqz v4, :cond_3

    .line 76
    .line 77
    iget v4, v3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->width:I

    .line 78
    .line 79
    add-int/lit8 v4, v4, 0x20

    .line 80
    .line 81
    mul-int v4, v4, v2

    .line 82
    .line 83
    sub-int v4, v1, v4

    .line 84
    .line 85
    iput v4, v3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->x:I

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    iget v4, v3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->width:I

    .line 89
    .line 90
    add-int/lit8 v4, v4, 0x20

    .line 91
    .line 92
    mul-int v4, v4, v2

    .line 93
    .line 94
    add-int/2addr v4, v1

    .line 95
    iput v4, v3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->x:I

    .line 96
    .line 97
    :goto_2
    iget v4, v3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->x:I

    .line 98
    .line 99
    iget v5, v3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->width:I

    .line 100
    .line 101
    div-int/lit8 v5, v5, 0x2

    .line 102
    .line 103
    add-int/2addr v4, v5

    .line 104
    iput v4, v3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->centerX:I

    .line 105
    .line 106
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->centerY:I

    .line 107
    .line 108
    iput v4, v3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->centerY:I

    .line 109
    .line 110
    iget v5, v3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->height:I

    .line 111
    .line 112
    div-int/lit8 v5, v5, 0x2

    .line 113
    .line 114
    sub-int/2addr v4, v5

    .line 115
    iput v4, v3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->y:I

    .line 116
    .line 117
    invoke-virtual {v3}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->updateTextSize()V

    .line 118
    .line 119
    .line 120
    add-int/lit8 v2, v2, 0x1

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    return-void
.end method

.method private checkAdjacent(Lcom/haima/hmcp/virtual/bean/DrawerItemBean;Lcom/haima/hmcp/virtual/bean/DrawerItemBean;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->getX()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->getY()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    int-to-float p1, p1

    .line 11
    invoke-virtual {p2}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->getX()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    int-to-float v1, v1

    .line 16
    invoke-virtual {p2}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->getY()I

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

.method private checkX(I)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isEditMode:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x13

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x3

    .line 9
    :goto_0
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->screenWidth:I

    .line 10
    .line 11
    sub-int/2addr v1, v0

    .line 12
    if-ge p1, v0, :cond_1

    .line 13
    .line 14
    return v0

    .line 15
    :cond_1
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 16
    .line 17
    sub-int/2addr v1, v0

    .line 18
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method private checkY(I)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isEditMode:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x13

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x3

    .line 9
    :goto_0
    add-int/lit8 v1, v0, 0x0

    .line 10
    .line 11
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->screenHeight:I

    .line 12
    .line 13
    sub-int/2addr v2, v0

    .line 14
    if-ge p1, v1, :cond_1

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 18
    .line 19
    sub-int/2addr v2, v0

    .line 20
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public static synthetic d(Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->lambda$startDrawerAnimation$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private dp2Px(I)I
    .locals 2

    .line 1
    int-to-float p1, p1

    .line 2
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    float-to-int p1, p1

    .line 18
    return p1
.end method

.method private drawDrawerIcon(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->mCenterBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "mCenterBitmap is null in drawDrawerIcon"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 29
    .line 30
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 31
    .line 32
    sub-int/2addr v4, v1

    .line 33
    div-int/lit8 v4, v4, 0x2

    .line 34
    .line 35
    add-int/2addr v3, v4

    .line 36
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 37
    .line 38
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 39
    .line 40
    sub-int/2addr v5, v2

    .line 41
    div-int/lit8 v5, v5, 0x2

    .line 42
    .line 43
    add-int/2addr v4, v5

    .line 44
    int-to-float v3, v3

    .line 45
    int-to-float v1, v1

    .line 46
    const/high16 v5, 0x40000000    # 2.0f

    .line 47
    .line 48
    div-float/2addr v1, v5

    .line 49
    add-float/2addr v1, v3

    .line 50
    int-to-float v4, v4

    .line 51
    int-to-float v2, v2

    .line 52
    div-float/2addr v2, v5

    .line 53
    add-float/2addr v2, v4

    .line 54
    sget-boolean v5, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 55
    .line 56
    if-eqz v5, :cond_2

    .line 57
    .line 58
    iget-boolean v5, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isRightMode:Z

    .line 59
    .line 60
    if-eqz v5, :cond_1

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/high16 v5, 0x43340000    # 180.0f

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-boolean v5, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isRightMode:Z

    .line 68
    .line 69
    if-eqz v5, :cond_3

    .line 70
    .line 71
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->currentRotation:F

    .line 72
    .line 73
    neg-float v5, v5

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->currentRotation:F

    .line 76
    .line 77
    :goto_0
    invoke-virtual {p1, v5, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 81
    .line 82
    invoke-virtual {p1, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method private drawSelectedRect(Landroid/graphics/Canvas;FFFFLjava/lang/Integer;FLjava/lang/Integer;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v6, Landroid/graphics/Paint;

    .line 5
    .line 6
    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 7
    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 19
    .line 20
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    .line 22
    .line 23
    move-object v0, p1

    .line 24
    move v1, p2

    .line 25
    move v2, p3

    .line 26
    move v3, p4

    .line 27
    move v4, p5

    .line 28
    move-object v5, v6

    .line 29
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    cmpl-float v0, p7, v0

    .line 34
    .line 35
    if-lez v0, :cond_3

    .line 36
    .line 37
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 38
    .line 39
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6, p7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 43
    .line 44
    .line 45
    if-eqz p8, :cond_2

    .line 46
    .line 47
    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const/high16 v0, -0x1000000

    .line 56
    .line 57
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    .line 59
    .line 60
    :goto_0
    move-object v0, p1

    .line 61
    move v1, p2

    .line 62
    move v2, p3

    .line 63
    move v3, p4

    .line 64
    move v4, p5

    .line 65
    move-object v5, v6

    .line 66
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 70
    .line 71
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 72
    .line 73
    const/4 v1, 0x7

    .line 74
    new-array v1, v1, [Ljava/lang/Object;

    .line 75
    .line 76
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    const/4 v2, 0x0

    .line 81
    aput-object p2, v1, v2

    .line 82
    .line 83
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    const/4 p3, 0x1

    .line 88
    aput-object p2, v1, p3

    .line 89
    .line 90
    const/4 p2, 0x2

    .line 91
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 92
    .line 93
    .line 94
    move-result-object p4

    .line 95
    aput-object p4, v1, p2

    .line 96
    .line 97
    const/4 p2, 0x3

    .line 98
    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 99
    .line 100
    .line 101
    move-result-object p4

    .line 102
    aput-object p4, v1, p2

    .line 103
    .line 104
    const p2, 0xffffff

    .line 105
    .line 106
    .line 107
    const-string p4, "#%06X"

    .line 108
    .line 109
    const-string p5, "null"

    .line 110
    .line 111
    if-eqz p6, :cond_4

    .line 112
    .line 113
    new-array v3, p3, [Ljava/lang/Object;

    .line 114
    .line 115
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result p6

    .line 119
    and-int/2addr p6, p2

    .line 120
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object p6

    .line 124
    aput-object p6, v3, v2

    .line 125
    .line 126
    invoke-static {p4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p6

    .line 130
    goto :goto_1

    .line 131
    :cond_4
    move-object p6, p5

    .line 132
    :goto_1
    const/4 v3, 0x4

    .line 133
    aput-object p6, v1, v3

    .line 134
    .line 135
    const/4 p6, 0x5

    .line 136
    invoke-static {p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 137
    .line 138
    .line 139
    move-result-object p7

    .line 140
    aput-object p7, v1, p6

    .line 141
    .line 142
    if-eqz p8, :cond_5

    .line 143
    .line 144
    new-array p3, p3, [Ljava/lang/Object;

    .line 145
    .line 146
    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    .line 147
    .line 148
    .line 149
    move-result p5

    .line 150
    and-int/2addr p2, p5

    .line 151
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    aput-object p2, p3, v2

    .line 156
    .line 157
    invoke-static {p4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p5

    .line 161
    :cond_5
    const/4 p2, 0x6

    .line 162
    aput-object p5, v1, p2

    .line 163
    .line 164
    const-string p2, "Draw rect: left=%.2f, top=%.2f, right=%.2f, bottom=%.2f, fillColor=%s, strokeWidth=%.2f, strokeColor=%s"

    .line 165
    .line 166
    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    return-void
.end method

.method private drawTextWithAlpha(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    if-nez p5, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p5}, Landroid/graphics/Paint;->getAlpha()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    int-to-float v1, v0

    .line 13
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->textAlpha:F

    .line 14
    .line 15
    mul-float v1, v1, v2

    .line 16
    .line 17
    float-to-int v1, v1

    .line 18
    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 30
    .line 31
    const/4 p4, 0x2

    .line 32
    new-array p4, p4, [Ljava/lang/Object;

    .line 33
    .line 34
    iget p5, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->textAlpha:F

    .line 35
    .line 36
    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 37
    .line 38
    .line 39
    move-result-object p5

    .line 40
    const/4 v0, 0x0

    .line 41
    aput-object p5, p4, v0

    .line 42
    .line 43
    const/4 p5, 0x1

    .line 44
    aput-object p2, p4, p5

    .line 45
    .line 46
    const-string p2, "Drawing text with alpha: %.2f, text: %s"

    .line 47
    .line 48
    invoke-static {p3, p2, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic e(Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->lambda$startRotateAnimation$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private getDrawerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/DrawerItemBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->drawerList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method private getSelectedBorderColor()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getDrawerSelectedBorderColor()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getLocalConfig()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v0, v1, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->drawerSelectedBorderColor:Ljava/lang/String;

    .line 28
    .line 29
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getLayoutBean()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getConfig()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    iget-object v0, v1, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->drawerSelectedBorderColor:Ljava/lang/String;

    .line 52
    .line 53
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const-string v2, "#007AFF"

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    move-object v0, v2

    .line 62
    :cond_3
    :try_start_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    move-object v2, v0

    .line 66
    :catch_0
    return-object v2
.end method

.method private handleUpEvent(Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;)V
    .locals 4

    .line 1
    iget-boolean v0, p1, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;->isInDrawerList:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p1, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;->touchedItem:Lcom/haima/hmcp/virtual/bean/DrawerItemBean;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    sget-boolean v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isEditMode:Z

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->getItemUpBitmap()Landroid/graphics/Bitmap;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->getItemDownBitmap()Landroid/graphics/Bitmap;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :goto_0
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->setItemCurrentBitmap(Landroid/graphics/Bitmap;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;->isClick()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

    .line 36
    .line 37
    if-eqz p1, :cond_4

    .line 38
    .line 39
    invoke-interface {p1, p0}, Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;->onClickListener(Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

    .line 44
    .line 45
    if-eqz v1, :cond_4

    .line 46
    .line 47
    iget-object v0, v0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->source:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeys()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->sourceType:I

    .line 54
    .line 55
    iget-object p1, p1, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;->touchedItem:Lcom/haima/hmcp/virtual/bean/DrawerItemBean;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->source:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    const/4 v3, 0x1

    .line 64
    invoke-interface {v1, v3, v0, v2, p1}, Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;->onBtnTouchEvent(ILjava/util/List;II)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    iget-boolean v0, p1, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;->isInDrawerButton:Z

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;->isClick()Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    sget-boolean p1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 79
    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

    .line 83
    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    invoke-interface {p1, p0}, Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;->onClickListener(Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->toggleDrawer()V

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_1
    return-void
.end method

.method private hasDrawerList()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->drawerList:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

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

.method private hasPressedDrawerItem()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->activeTouchPoints:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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
    check-cast v1, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;

    .line 22
    .line 23
    iget-boolean v2, v1, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;->isInDrawerList:Z

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iget-object v1, v1, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;->touchedItem:Lcom/haima/hmcp/virtual/bean/DrawerItemBean;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    return v0

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    return v0
.end method

.method private initBitmap()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->name:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->sourceType:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {v0, v1, v2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getBtnBgID(Ljava/lang/String;II)[I

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->resIds:[I

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->getSelectedBorderColor()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->selectedBorderColor:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicSelectedMD5()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicUnselectedMD5()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicCenterMD5()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iget-object v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 45
    .line 46
    invoke-virtual {v4}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicSelectedUrl()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 51
    .line 52
    invoke-virtual {v5}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicUnselectedUrl()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    iget-object v6, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 57
    .line 58
    invoke-virtual {v6}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicCenterUrl()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    move-object v0, v1

    .line 64
    move-object v2, v0

    .line 65
    move-object v3, v2

    .line 66
    move-object v4, v3

    .line 67
    move-object v5, v4

    .line 68
    move-object v6, v5

    .line 69
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-nez v7, :cond_1

    .line 74
    .line 75
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-nez v7, :cond_1

    .line 80
    .line 81
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_2

    .line 86
    .line 87
    :cond_1
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-virtual {v7}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getLocalConfig()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    if-eqz v7, :cond_2

    .line 96
    .line 97
    invoke-virtual {v7}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_common_drawer_bg_selected_MD5()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v7}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_common_drawer_bg_unselected_MD5()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v7}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_common_drawer_icon_MD5()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    if-nez v7, :cond_3

    .line 114
    .line 115
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    if-nez v7, :cond_3

    .line 120
    .line 121
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    if-eqz v7, :cond_4

    .line 126
    .line 127
    :cond_3
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    invoke-virtual {v7}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getLayoutBean()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    if-eqz v7, :cond_4

    .line 136
    .line 137
    invoke-virtual {v7}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getConfig()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    if-eqz v7, :cond_4

    .line 142
    .line 143
    invoke-virtual {v7}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_common_drawer_bg_selected_MD5()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v7}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_common_drawer_bg_unselected_MD5()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v7}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_common_drawer_icon_MD5()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    if-nez v7, :cond_5

    .line 160
    .line 161
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    if-nez v7, :cond_5

    .line 166
    .line 167
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    if-eqz v7, :cond_6

    .line 172
    .line 173
    :cond_5
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    invoke-virtual {v7}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getLocalConfig()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    if-eqz v7, :cond_6

    .line 182
    .line 183
    invoke-virtual {v7}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_common_drawer_bg_selected_url()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    invoke-virtual {v7}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_common_drawer_bg_unselected_url()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    invoke-virtual {v7}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_common_drawer_icon_url()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    if-nez v7, :cond_7

    .line 200
    .line 201
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 202
    .line 203
    .line 204
    move-result v7

    .line 205
    if-nez v7, :cond_7

    .line 206
    .line 207
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 208
    .line 209
    .line 210
    move-result v7

    .line 211
    if-eqz v7, :cond_8

    .line 212
    .line 213
    :cond_7
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 214
    .line 215
    .line 216
    move-result-object v7

    .line 217
    invoke-virtual {v7}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getLayoutBean()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    if-eqz v7, :cond_8

    .line 222
    .line 223
    invoke-virtual {v7}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getConfig()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    if-eqz v7, :cond_8

    .line 228
    .line 229
    invoke-virtual {v7}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_common_drawer_bg_selected_url()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-virtual {v7}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_common_drawer_bg_unselected_url()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    invoke-virtual {v7}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_common_drawer_icon_url()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    :cond_8
    move-object v13, v5

    .line 242
    move-object v11, v6

    .line 243
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 244
    .line 245
    invoke-virtual {v5}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getScale()F

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    const/4 v6, 0x1

    .line 250
    const/4 v12, 0x0

    .line 251
    cmpl-float v5, v5, v12

    .line 252
    .line 253
    if-nez v5, :cond_9

    .line 254
    .line 255
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 256
    .line 257
    new-instance v7, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    const-string v8, "scale is 0, bitmap width = "

    .line 263
    .line 264
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v8, ", height = "

    .line 271
    .line 272
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    invoke-static {v5, v7}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    const/4 v9, 0x1

    .line 286
    const/4 v10, 0x1

    .line 287
    goto :goto_1

    .line 288
    :cond_9
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 289
    .line 290
    iget v7, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 291
    .line 292
    move v9, v5

    .line 293
    move v10, v7

    .line 294
    :goto_1
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 295
    .line 296
    .line 297
    move-result v5

    .line 298
    if-nez v5, :cond_a

    .line 299
    .line 300
    invoke-static {}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getInstance()Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    invoke-virtual {v5, v13, v9, v10}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getBitmapSync(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    goto :goto_2

    .line 309
    :cond_a
    move-object v5, v1

    .line 310
    :goto_2
    if-eqz v5, :cond_b

    .line 311
    .line 312
    iget-object v6, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->mDrawerUpBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 313
    .line 314
    invoke-virtual {v6, v5}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 315
    .line 316
    .line 317
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 318
    .line 319
    new-instance v6, Ljava/lang/StringBuilder;

    .line 320
    .line 321
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .line 323
    .line 324
    const-string v7, "initDrawerBitmap: use cached network bitmap for UP state, url="

    .line 325
    .line 326
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v6

    .line 336
    invoke-static {v5, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    goto :goto_3

    .line 340
    :cond_b
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->mDrawerUpBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 341
    .line 342
    iget-object v7, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 343
    .line 344
    iget-object v8, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->resIds:[I

    .line 345
    .line 346
    aget v6, v8, v6

    .line 347
    .line 348
    invoke-static {v7, v2, v6, v9, v10}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    .line 349
    .line 350
    .line 351
    move-result-object v6

    .line 352
    invoke-virtual {v5, v6}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 353
    .line 354
    .line 355
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 356
    .line 357
    .line 358
    move-result v5

    .line 359
    if-nez v5, :cond_c

    .line 360
    .line 361
    invoke-static {}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getInstance()Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 362
    .line 363
    .line 364
    move-result-object v5

    .line 365
    iget-object v6, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 366
    .line 367
    new-instance v8, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$1;

    .line 368
    .line 369
    invoke-direct {v8, p0, v9, v10, v13}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$1;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;IILjava/lang/String;)V

    .line 370
    .line 371
    .line 372
    move-object v7, v13

    .line 373
    invoke-virtual/range {v5 .. v10}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->addDownloadListener(Landroid/content/Context;Ljava/lang/String;Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$DownloadListener;II)V

    .line 374
    .line 375
    .line 376
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 377
    .line 378
    new-instance v6, Ljava/lang/StringBuilder;

    .line 379
    .line 380
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .line 382
    .line 383
    const-string v7, "initDrawerBitmap: registered listener for UP state, waiting for preload, url="

    .line 384
    .line 385
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v6

    .line 395
    invoke-static {v5, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    :cond_c
    :goto_3
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 399
    .line 400
    invoke-virtual {v5}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getScale()F

    .line 401
    .line 402
    .line 403
    move-result v5

    .line 404
    const/high16 v6, 0x3f800000    # 1.0f

    .line 405
    .line 406
    cmpl-float v5, v5, v12

    .line 407
    .line 408
    if-nez v5, :cond_d

    .line 409
    .line 410
    const/high16 v5, 0x3f800000    # 1.0f

    .line 411
    .line 412
    goto :goto_4

    .line 413
    :cond_d
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 414
    .line 415
    int-to-float v5, v5

    .line 416
    const v7, 0x3ebd70a4    # 0.37f

    .line 417
    .line 418
    .line 419
    mul-float v5, v5, v7

    .line 420
    .line 421
    :goto_4
    float-to-int v9, v5

    .line 422
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 423
    .line 424
    invoke-virtual {v5}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getScale()F

    .line 425
    .line 426
    .line 427
    move-result v5

    .line 428
    cmpl-float v5, v5, v12

    .line 429
    .line 430
    if-nez v5, :cond_e

    .line 431
    .line 432
    goto :goto_5

    .line 433
    :cond_e
    int-to-float v5, v9

    .line 434
    const v6, 0x3f147ae1    # 0.58f

    .line 435
    .line 436
    .line 437
    div-float v6, v5, v6

    .line 438
    .line 439
    :goto_5
    float-to-int v10, v6

    .line 440
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 441
    .line 442
    .line 443
    move-result v5

    .line 444
    if-nez v5, :cond_f

    .line 445
    .line 446
    invoke-static {}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getInstance()Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    invoke-virtual {v1, v11, v9, v10}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getBitmapSync(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    :cond_f
    if-eqz v1, :cond_10

    .line 455
    .line 456
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->mCenterSourceBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 457
    .line 458
    invoke-virtual {v3, v1}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 459
    .line 460
    .line 461
    invoke-direct {p0, v1}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->processCenterBitmap(Landroid/graphics/Bitmap;)V

    .line 462
    .line 463
    .line 464
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 465
    .line 466
    new-instance v3, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .line 470
    .line 471
    const-string v5, "initDrawerBitmap: use cached network bitmap for CENTER icon, url="

    .line 472
    .line 473
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v3

    .line 483
    invoke-static {v1, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    goto :goto_6

    .line 487
    :cond_10
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->mCenterSourceBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 488
    .line 489
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 490
    .line 491
    sget v6, Lcom/haima/hmcp/R$mipmap;->hm_vir_drawer_icon:I

    .line 492
    .line 493
    invoke-static {v5, v3, v6, v9, v10}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    .line 494
    .line 495
    .line 496
    move-result-object v3

    .line 497
    invoke-virtual {v1, v3}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 498
    .line 499
    .line 500
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->mCenterSourceBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 501
    .line 502
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    if-eqz v1, :cond_11

    .line 507
    .line 508
    invoke-direct {p0, v1}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->processCenterBitmap(Landroid/graphics/Bitmap;)V

    .line 509
    .line 510
    .line 511
    :cond_11
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 512
    .line 513
    .line 514
    move-result v1

    .line 515
    if-nez v1, :cond_12

    .line 516
    .line 517
    invoke-static {}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getInstance()Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 518
    .line 519
    .line 520
    move-result-object v5

    .line 521
    iget-object v6, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 522
    .line 523
    new-instance v8, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$2;

    .line 524
    .line 525
    invoke-direct {v8, p0, v9, v10, v11}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$2;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;IILjava/lang/String;)V

    .line 526
    .line 527
    .line 528
    move-object v7, v11

    .line 529
    invoke-virtual/range {v5 .. v10}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->addDownloadListener(Landroid/content/Context;Ljava/lang/String;Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$DownloadListener;II)V

    .line 530
    .line 531
    .line 532
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 533
    .line 534
    new-instance v3, Ljava/lang/StringBuilder;

    .line 535
    .line 536
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 537
    .line 538
    .line 539
    const-string v5, "initDrawerBitmap: registered listener for CENTER icon, waiting for preload, url="

    .line 540
    .line 541
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v3

    .line 551
    invoke-static {v1, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    :cond_12
    :goto_6
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->hasDrawerList()Z

    .line 555
    .line 556
    .line 557
    move-result v1

    .line 558
    if-eqz v1, :cond_13

    .line 559
    .line 560
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->getDrawerList()Ljava/util/List;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 569
    .line 570
    .line 571
    move-result v3

    .line 572
    if-eqz v3, :cond_13

    .line 573
    .line 574
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object v3

    .line 578
    move-object v8, v3

    .line 579
    check-cast v8, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;

    .line 580
    .line 581
    move-object v7, p0

    .line 582
    move-object v9, v0

    .line 583
    move-object v10, v2

    .line 584
    move-object v11, v4

    .line 585
    move-object v12, v13

    .line 586
    invoke-direct/range {v7 .. v12}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->initDrawerItemBitmaps(Lcom/haima/hmcp/virtual/bean/DrawerItemBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    goto :goto_7

    .line 590
    :cond_13
    return-void
.end method

.method private initDrawer()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isOpen:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->drawerListOffset:F

    .line 6
    .line 7
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->currentRotation:F

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->updateDrawerMode()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->initDrawerData()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->initBitmap()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private initDrawerData()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->calculateViewBeanCenter()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getDrawerList()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getDrawerList()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->drawerList:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 27
    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isRightMode:Z

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 34
    .line 35
    add-int/lit8 v0, v0, -0x20

    .line 36
    .line 37
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 38
    .line 39
    sub-int/2addr v0, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 42
    .line 43
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 44
    .line 45
    add-int/2addr v0, v1

    .line 46
    add-int/lit8 v0, v0, 0x20

    .line 47
    .line 48
    :goto_0
    const/4 v1, 0x0

    .line 49
    const/4 v2, 0x0

    .line 50
    :goto_1
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getDrawerList()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-ge v2, v3, :cond_2

    .line 61
    .line 62
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 63
    .line 64
    invoke-virtual {v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getDrawerList()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 73
    .line 74
    new-instance v4, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;

    .line 75
    .line 76
    invoke-direct {v4}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v3, v4, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->source:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 80
    .line 81
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 82
    .line 83
    iput v3, v4, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->height:I

    .line 84
    .line 85
    iput v3, v4, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->width:I

    .line 86
    .line 87
    iget-boolean v5, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isRightMode:Z

    .line 88
    .line 89
    if-eqz v5, :cond_1

    .line 90
    .line 91
    add-int/lit8 v5, v3, 0x20

    .line 92
    .line 93
    mul-int v5, v5, v2

    .line 94
    .line 95
    sub-int v5, v0, v5

    .line 96
    .line 97
    iput v5, v4, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->x:I

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_1
    add-int/lit8 v5, v3, 0x20

    .line 101
    .line 102
    mul-int v5, v5, v2

    .line 103
    .line 104
    add-int/2addr v5, v0

    .line 105
    iput v5, v4, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->x:I

    .line 106
    .line 107
    :goto_2
    iget v5, v4, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->x:I

    .line 108
    .line 109
    div-int/lit8 v6, v3, 0x2

    .line 110
    .line 111
    add-int/2addr v5, v6

    .line 112
    iput v5, v4, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->centerX:I

    .line 113
    .line 114
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->centerY:I

    .line 115
    .line 116
    iput v5, v4, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->centerY:I

    .line 117
    .line 118
    div-int/lit8 v3, v3, 0x2

    .line 119
    .line 120
    sub-int/2addr v5, v3

    .line 121
    iput v5, v4, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->y:I

    .line 122
    .line 123
    invoke-virtual {v4}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->calcName()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->updateTextSize()V

    .line 127
    .line 128
    .line 129
    sget v3, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->transparency:F

    .line 130
    .line 131
    invoke-virtual {v4, v3}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->setTransparency(F)V

    .line 132
    .line 133
    .line 134
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 135
    .line 136
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 137
    .line 138
    const/4 v6, 0x7

    .line 139
    new-array v6, v6, [Ljava/lang/Object;

    .line 140
    .line 141
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    aput-object v7, v6, v1

    .line 146
    .line 147
    iget v7, v4, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->x:I

    .line 148
    .line 149
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    const/4 v8, 0x1

    .line 154
    aput-object v7, v6, v8

    .line 155
    .line 156
    iget v7, v4, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->y:I

    .line 157
    .line 158
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    const/4 v8, 0x2

    .line 163
    aput-object v7, v6, v8

    .line 164
    .line 165
    iget v7, v4, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->width:I

    .line 166
    .line 167
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    const/4 v8, 0x3

    .line 172
    aput-object v7, v6, v8

    .line 173
    .line 174
    iget v7, v4, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->height:I

    .line 175
    .line 176
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    const/4 v8, 0x4

    .line 181
    aput-object v7, v6, v8

    .line 182
    .line 183
    iget v7, v4, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->centerX:I

    .line 184
    .line 185
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    const/4 v8, 0x5

    .line 190
    aput-object v7, v6, v8

    .line 191
    .line 192
    iget v7, v4, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->centerY:I

    .line 193
    .line 194
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    const/4 v8, 0x6

    .line 199
    aput-object v7, v6, v8

    .line 200
    .line 201
    const-string v7, "init drawer item %d: x=%d, y=%d, width=%d, height=%d, centerX=%d, centerY=%d"

    .line 202
    .line 203
    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    invoke-static {v3, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->drawerList:Ljava/util/List;

    .line 211
    .line 212
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    add-int/lit8 v2, v2, 0x1

    .line 216
    .line 217
    goto/16 :goto_1

    .line 218
    .line 219
    :cond_2
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isRightMode:Z

    .line 220
    .line 221
    if-eqz v0, :cond_3

    .line 222
    .line 223
    const/high16 v0, 0x43340000    # 180.0f

    .line 224
    .line 225
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->currentRotation:F

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_3
    const/4 v0, 0x0

    .line 229
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->currentRotation:F

    .line 230
    .line 231
    :goto_3
    return-void
.end method

.method private initDrawerItemBitmaps(Lcom/haima/hmcp/virtual/bean/DrawerItemBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p4

    .line 6
    .line 7
    move-object/from16 v9, p5

    .line 8
    .line 9
    if-nez v7, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, v7, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->source:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getScale()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v10, 0x0

    .line 19
    const/4 v11, 0x1

    .line 20
    cmpl-float v0, v0, v10

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, v6, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "scale is 0, drawer item bitmap width = "

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, ", height = "

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 v12, 0x1

    .line 55
    const/4 v13, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget v0, v7, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->width:I

    .line 58
    .line 59
    iget v1, v7, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->height:I

    .line 60
    .line 61
    move v12, v0

    .line 62
    move v13, v1

    .line 63
    :goto_0
    iget-object v0, v7, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->source:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const/16 v1, 0xd

    .line 70
    .line 71
    invoke-static {v0, v11, v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getBtnBgID(Ljava/lang/String;II)[I

    .line 72
    .line 73
    .line 74
    move-result-object v14

    .line 75
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    const/4 v15, 0x0

    .line 80
    if-nez v0, :cond_2

    .line 81
    .line 82
    invoke-static {}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getInstance()Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0, v8, v12, v13}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getBitmapSync(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    move-object v0, v15

    .line 92
    :goto_1
    if-eqz v0, :cond_3

    .line 93
    .line 94
    iget-object v1, v7, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->itemDownBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, v6, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 100
    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v2, "initDrawerItemBitmaps: use cached network bitmap for item DOWN state, url="

    .line 107
    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_3
    iget-object v0, v6, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 123
    .line 124
    const/4 v1, 0x0

    .line 125
    aget v1, v14, v1

    .line 126
    .line 127
    move-object/from16 v2, p2

    .line 128
    .line 129
    invoke-static {v0, v2, v1, v12, v13}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v7, v0}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->setItemDownBitmap(Landroid/graphics/Bitmap;)V

    .line 134
    .line 135
    .line 136
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-nez v0, :cond_4

    .line 141
    .line 142
    invoke-static {}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getInstance()Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 143
    .line 144
    .line 145
    move-result-object v16

    .line 146
    iget-object v5, v6, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 147
    .line 148
    new-instance v17, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$3;

    .line 149
    .line 150
    move-object/from16 v0, v17

    .line 151
    .line 152
    move-object/from16 v1, p0

    .line 153
    .line 154
    move-object/from16 v2, p1

    .line 155
    .line 156
    move v3, v12

    .line 157
    move v4, v13

    .line 158
    move-object/from16 v18, v5

    .line 159
    .line 160
    move-object/from16 v5, p4

    .line 161
    .line 162
    invoke-direct/range {v0 .. v5}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$3;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;Lcom/haima/hmcp/virtual/bean/DrawerItemBean;IILjava/lang/String;)V

    .line 163
    .line 164
    .line 165
    move-object/from16 v0, v16

    .line 166
    .line 167
    move-object/from16 v1, v18

    .line 168
    .line 169
    move-object/from16 v2, p4

    .line 170
    .line 171
    move-object/from16 v3, v17

    .line 172
    .line 173
    move v4, v12

    .line 174
    move v5, v13

    .line 175
    invoke-virtual/range {v0 .. v5}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->addDownloadListener(Landroid/content/Context;Ljava/lang/String;Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$DownloadListener;II)V

    .line 176
    .line 177
    .line 178
    iget-object v0, v6, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 179
    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v2, "initDrawerItemBitmaps: registered listener for item DOWN state, waiting for preload, url="

    .line 186
    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :cond_4
    :goto_2
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-nez v0, :cond_5

    .line 205
    .line 206
    invoke-static {}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getInstance()Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v0, v9, v12, v13}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getBitmapSync(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    goto :goto_3

    .line 215
    :cond_5
    move-object v0, v15

    .line 216
    :goto_3
    if-eqz v0, :cond_6

    .line 217
    .line 218
    iget-object v1, v7, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->itemUpBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 219
    .line 220
    invoke-virtual {v1, v0}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 221
    .line 222
    .line 223
    iget-object v0, v6, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 224
    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    const-string v2, "initDrawerItemBitmaps: use cached network bitmap for item UP state, url="

    .line 231
    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_6
    iget-object v0, v6, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 247
    .line 248
    aget v1, v14, v11

    .line 249
    .line 250
    move-object/from16 v2, p3

    .line 251
    .line 252
    invoke-static {v0, v2, v1, v12, v13}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-virtual {v7, v0}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->setItemUpBitmap(Landroid/graphics/Bitmap;)V

    .line 257
    .line 258
    .line 259
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-nez v0, :cond_7

    .line 264
    .line 265
    invoke-static {}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getInstance()Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 266
    .line 267
    .line 268
    move-result-object v8

    .line 269
    iget-object v14, v6, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 270
    .line 271
    new-instance v16, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$4;

    .line 272
    .line 273
    move-object/from16 v0, v16

    .line 274
    .line 275
    move-object/from16 v1, p0

    .line 276
    .line 277
    move-object/from16 v2, p1

    .line 278
    .line 279
    move v3, v12

    .line 280
    move v4, v13

    .line 281
    move-object/from16 v5, p5

    .line 282
    .line 283
    invoke-direct/range {v0 .. v5}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$4;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;Lcom/haima/hmcp/virtual/bean/DrawerItemBean;IILjava/lang/String;)V

    .line 284
    .line 285
    .line 286
    move-object v0, v8

    .line 287
    move-object v1, v14

    .line 288
    move-object/from16 v2, p5

    .line 289
    .line 290
    move-object/from16 v3, v16

    .line 291
    .line 292
    move v4, v12

    .line 293
    move v5, v13

    .line 294
    invoke-virtual/range {v0 .. v5}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->addDownloadListener(Landroid/content/Context;Ljava/lang/String;Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$DownloadListener;II)V

    .line 295
    .line 296
    .line 297
    iget-object v0, v6, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 298
    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    const-string v2, "initDrawerItemBitmaps: registered listener for item UP state, waiting for preload, url="

    .line 305
    .line 306
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    :cond_7
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->getItemUpBitmap()Landroid/graphics/Bitmap;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-virtual {v7, v0}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->setItemCurrentBitmap(Landroid/graphics/Bitmap;)V

    .line 324
    .line 325
    .line 326
    iget-object v0, v7, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->source:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 327
    .line 328
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicCenterMD5()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    iget-object v1, v7, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->source:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 333
    .line 334
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicCenterUrl()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v8

    .line 338
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    if-nez v1, :cond_b

    .line 343
    .line 344
    iget-object v1, v7, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->source:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 345
    .line 346
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getScale()F

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    cmpl-float v1, v1, v10

    .line 351
    .line 352
    if-nez v1, :cond_8

    .line 353
    .line 354
    goto :goto_5

    .line 355
    :cond_8
    iget v1, v7, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->height:I

    .line 356
    .line 357
    int-to-float v1, v1

    .line 358
    const v2, 0x3f3ae148    # 0.73f

    .line 359
    .line 360
    .line 361
    mul-float v1, v1, v2

    .line 362
    .line 363
    float-to-int v11, v1

    .line 364
    :goto_5
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    if-nez v1, :cond_9

    .line 369
    .line 370
    invoke-static {}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getInstance()Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    invoke-virtual {v1, v8, v11, v11}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getBitmapSync(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 375
    .line 376
    .line 377
    move-result-object v15

    .line 378
    :cond_9
    if-eqz v15, :cond_a

    .line 379
    .line 380
    iget-object v0, v7, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->itemCenterBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 381
    .line 382
    invoke-virtual {v0, v15}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 383
    .line 384
    .line 385
    iget-object v0, v6, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 386
    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    .line 388
    .line 389
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    .line 391
    .line 392
    const-string v2, "initDrawerItemBitmaps: use cached network bitmap for item CENTER icon, url="

    .line 393
    .line 394
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    goto :goto_6

    .line 408
    :cond_a
    iget-object v1, v7, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->itemCenterBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 409
    .line 410
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    iget-object v3, v6, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 415
    .line 416
    invoke-virtual {v2, v3, v0, v11, v11}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getBitmapByBase64Data(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    invoke-virtual {v1, v0}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 421
    .line 422
    .line 423
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 424
    .line 425
    .line 426
    move-result v0

    .line 427
    if-nez v0, :cond_b

    .line 428
    .line 429
    invoke-static {}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getInstance()Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 430
    .line 431
    .line 432
    move-result-object v16

    .line 433
    iget-object v9, v6, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 434
    .line 435
    new-instance v19, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$5;

    .line 436
    .line 437
    move-object/from16 v0, v19

    .line 438
    .line 439
    move-object/from16 v1, p0

    .line 440
    .line 441
    move-object/from16 v2, p1

    .line 442
    .line 443
    move v3, v11

    .line 444
    move v4, v11

    .line 445
    move-object v5, v8

    .line 446
    invoke-direct/range {v0 .. v5}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$5;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;Lcom/haima/hmcp/virtual/bean/DrawerItemBean;IILjava/lang/String;)V

    .line 447
    .line 448
    .line 449
    move-object/from16 v17, v9

    .line 450
    .line 451
    move-object/from16 v18, v8

    .line 452
    .line 453
    move/from16 v20, v11

    .line 454
    .line 455
    move/from16 v21, v11

    .line 456
    .line 457
    invoke-virtual/range {v16 .. v21}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->addDownloadListener(Landroid/content/Context;Ljava/lang/String;Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$DownloadListener;II)V

    .line 458
    .line 459
    .line 460
    iget-object v0, v6, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 461
    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    .line 463
    .line 464
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 465
    .line 466
    .line 467
    const-string v2, "initDrawerItemBitmaps: registered listener for item CENTER icon, waiting for preload, url="

    .line 468
    .line 469
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    :cond_b
    :goto_6
    return-void
.end method

.method private initDrawerItemShakeData(Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 15
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
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->hasDrawerList()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_a

    .line 11
    .line 12
    new-instance v1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->getDrawerList()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x1

    .line 31
    if-eqz v4, :cond_6

    .line 32
    .line 33
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;

    .line 38
    .line 39
    if-nez v4, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    const/4 v11, 0x2

    .line 59
    if-eqz v10, :cond_5

    .line 60
    .line 61
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    check-cast v10, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;

    .line 66
    .line 67
    if-eq v10, v4, :cond_4

    .line 68
    .line 69
    if-nez v10, :cond_2

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_2
    move-object v12, p0

    .line 73
    invoke-direct {p0, v4, v10}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->checkAdjacent(Lcom/haima/hmcp/virtual/bean/DrawerItemBean;Lcom/haima/hmcp/virtual/bean/DrawerItemBean;)Z

    .line 74
    .line 75
    .line 76
    move-result v13

    .line 77
    if-eqz v13, :cond_1

    .line 78
    .line 79
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    check-cast v10, [F

    .line 84
    .line 85
    if-eqz v10, :cond_3

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    new-array v10, v11, [F

    .line 89
    .line 90
    fill-array-data v10, :array_0

    .line 91
    .line 92
    .line 93
    :goto_2
    aget v10, v10, v6

    .line 94
    .line 95
    :goto_3
    sub-float v11, v8, v10

    .line 96
    .line 97
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 98
    .line 99
    .line 100
    move-result v11

    .line 101
    const v13, 0x3ecccccd    # 0.4f

    .line 102
    .line 103
    .line 104
    cmpg-float v11, v11, v13

    .line 105
    .line 106
    if-gez v11, :cond_1

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    goto :goto_3

    .line 113
    :cond_4
    :goto_4
    move-object v12, p0

    .line 114
    goto :goto_1

    .line 115
    :cond_5
    move-object v12, p0

    .line 116
    new-array v9, v11, [F

    .line 117
    .line 118
    aput v7, v9, v5

    .line 119
    .line 120
    aput v8, v9, v6

    .line 121
    .line 122
    invoke-interface {v1, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_6
    move-object v12, p0

    .line 127
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    :cond_7
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-eqz v3, :cond_b

    .line 136
    .line 137
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    check-cast v3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;

    .line 142
    .line 143
    if-eqz v3, :cond_7

    .line 144
    .line 145
    if-eqz p1, :cond_8

    .line 146
    .line 147
    if-eqz p2, :cond_8

    .line 148
    .line 149
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Float;->floatValue()F

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Float;->floatValue()F

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    goto :goto_6

    .line 158
    :cond_8
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    check-cast v4, [F

    .line 163
    .line 164
    if-eqz v4, :cond_9

    .line 165
    .line 166
    aget v7, v4, v5

    .line 167
    .line 168
    aget v4, v4, v6

    .line 169
    .line 170
    move v14, v7

    .line 171
    move v7, v4

    .line 172
    move v4, v14

    .line 173
    goto :goto_6

    .line 174
    :cond_9
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    :goto_6
    invoke-virtual {v3, v4, v7}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->startShake(FF)V

    .line 183
    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_a
    move-object v12, p0

    .line 187
    :cond_b
    return-void

    .line 188
    nop

    .line 189
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private isPointInItem(FFLcom/haima/hmcp/virtual/bean/DrawerItemBean;)Z
    .locals 4

    .line 1
    invoke-virtual {p3}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->getX()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p3}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->getY()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->width:I

    .line 10
    .line 11
    iget p3, p3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->height:I

    .line 12
    .line 13
    int-to-float v3, v0

    .line 14
    cmpl-float v3, p1, v3

    .line 15
    .line 16
    if-ltz v3, :cond_0

    .line 17
    .line 18
    add-int/2addr v0, v2

    .line 19
    int-to-float v0, v0

    .line 20
    cmpg-float p1, p1, v0

    .line 21
    .line 22
    if-gtz p1, :cond_0

    .line 23
    .line 24
    int-to-float p1, v1

    .line 25
    cmpl-float p1, p2, p1

    .line 26
    .line 27
    if-ltz p1, :cond_0

    .line 28
    .line 29
    add-int/2addr v1, p3

    .line 30
    int-to-float p1, v1

    .line 31
    cmpg-float p1, p2, p1

    .line 32
    .line 33
    if-gtz p1, :cond_0

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    :goto_0
    return p1
.end method

.method private synthetic lambda$startDrawerAnimation$0(Landroid/animation/ValueAnimator;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/Float;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->hasDrawerList()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x1

    .line 21
    if-eqz v1, :cond_4

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->getDrawerList()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    sub-int/2addr v4, v3

    .line 32
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-ge v5, v6, :cond_4

    .line 44
    .line 45
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    check-cast v6, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;

    .line 50
    .line 51
    if-nez v6, :cond_0

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_0
    iget v7, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->style:I

    .line 55
    .line 56
    if-ne v7, v3, :cond_1

    .line 57
    .line 58
    invoke-virtual {v6}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->getStartOffset()F

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    invoke-virtual {v6}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->getEndOffset()F

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    invoke-virtual {v6}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->getStartOffset()F

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    sub-float/2addr v8, v9

    .line 71
    mul-float v8, v8, v0

    .line 72
    .line 73
    add-float/2addr v7, v8

    .line 74
    goto :goto_2

    .line 75
    :cond_1
    invoke-virtual {v4}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->getStartOffset()F

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    invoke-virtual {v4}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->getEndOffset()F

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    invoke-virtual {v4}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->getStartOffset()F

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    sub-float/2addr v8, v9

    .line 88
    mul-float v8, v8, v0

    .line 89
    .line 90
    add-float/2addr v7, v8

    .line 91
    iget-boolean v8, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isRightMode:Z

    .line 92
    .line 93
    if-eqz v8, :cond_2

    .line 94
    .line 95
    iget v8, v6, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->x:I

    .line 96
    .line 97
    int-to-float v9, v8

    .line 98
    cmpg-float v9, v7, v9

    .line 99
    .line 100
    if-gtz v9, :cond_3

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    iget v8, v6, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->x:I

    .line 104
    .line 105
    int-to-float v9, v8

    .line 106
    cmpl-float v9, v7, v9

    .line 107
    .line 108
    if-ltz v9, :cond_3

    .line 109
    .line 110
    :goto_1
    int-to-float v7, v8

    .line 111
    :cond_3
    :goto_2
    invoke-virtual {v6, v7}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->setItemOffset(F)V

    .line 112
    .line 113
    .line 114
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_4
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->drawerProgress:F

    .line 118
    .line 119
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->drawerListOffset:F

    .line 120
    .line 121
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 122
    .line 123
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 124
    .line 125
    const/4 v5, 0x2

    .line 126
    new-array v5, v5, [Ljava/lang/Object;

    .line 127
    .line 128
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    aput-object p1, v5, v2

    .line 133
    .line 134
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    aput-object p1, v5, v3

    .line 139
    .line 140
    const-string p1, "Drawer animation update - offset: %.2f, progress: %.2f"

    .line 141
    .line 142
    invoke-static {v4, p1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-void
.end method

.method private synthetic lambda$startRotateAnimation$1(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->currentRotation:F

    .line 12
    .line 13
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    new-array v2, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    aput-object p1, v2, v3

    .line 26
    .line 27
    const-string p1, "Rotate animation update - currentRotation: %.2f"

    .line 28
    .line 29
    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private synthetic lambda$startTextColorAnimation$2(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->textAlpha:F

    .line 12
    .line 13
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    new-array v2, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    aput-object p1, v2, v3

    .line 26
    .line 27
    const-string p1, "Text color animation update - alpha: %.2f"

    .line 28
    .line 29
    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private processCenterBitmap(Landroid/graphics/Bitmap;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    const-string v2, "processCenterBitmap: sourceBitmap is null"

    .line 7
    .line 8
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->calcDrawerIconWidthHeight()[F

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/high16 v2, 0x3f800000    # 1.0f

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aget v3, v1, v3

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    .line 25
    .line 26
    :goto_0
    if-eqz v1, :cond_2

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    aget v2, v1, v2

    .line 30
    .line 31
    :cond_2
    const/4 v1, 0x0

    .line 32
    cmpl-float v4, v3, v1

    .line 33
    .line 34
    if-lez v4, :cond_6

    .line 35
    .line 36
    cmpl-float v1, v2, v1

    .line 37
    .line 38
    if-lez v1, :cond_6

    .line 39
    .line 40
    new-instance v6, Landroid/graphics/Matrix;

    .line 41
    .line 42
    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, v3, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    const/4 v7, 0x1

    .line 59
    move-object/from16 v1, p1

    .line 60
    .line 61
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_7

    .line 66
    .line 67
    iget-object v2, v0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->mCenterSourceBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/BitmapRef;->hasNetwork()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    iget-object v2, v0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->mCenterBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 76
    .line 77
    invoke-virtual {v2, v1}, Lcom/haima/hmcp/virtual/BitmapRef;->setNetwork(Landroid/graphics/Bitmap;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    iget-object v2, v0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->mCenterBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 82
    .line 83
    invoke-virtual {v2, v1}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 84
    .line 85
    .line 86
    :goto_1
    new-instance v13, Landroid/graphics/Matrix;

    .line 87
    .line 88
    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    .line 89
    .line 90
    .line 91
    const/high16 v2, -0x3ccc0000    # -180.0f

    .line 92
    .line 93
    invoke-virtual {v13, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 94
    .line 95
    .line 96
    const/4 v9, 0x0

    .line 97
    const/4 v10, 0x0

    .line 98
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 103
    .line 104
    .line 105
    move-result v12

    .line 106
    const/4 v14, 0x1

    .line 107
    move-object v8, v1

    .line 108
    invoke-static/range {v8 .. v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    if-eqz v2, :cond_5

    .line 113
    .line 114
    iget-object v3, v0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->mCenterSourceBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 115
    .line 116
    invoke-virtual {v3}, Lcom/haima/hmcp/virtual/BitmapRef;->hasNetwork()Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-eqz v3, :cond_4

    .line 121
    .line 122
    iget-object v3, v0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->mCenterMirrorBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 123
    .line 124
    invoke-virtual {v3, v2}, Lcom/haima/hmcp/virtual/BitmapRef;->setNetwork(Landroid/graphics/Bitmap;)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_4
    iget-object v3, v0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->mCenterMirrorBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 129
    .line 130
    invoke-virtual {v3, v2}, Lcom/haima/hmcp/virtual/BitmapRef;->setDefault(Landroid/graphics/Bitmap;)V

    .line 131
    .line 132
    .line 133
    :cond_5
    :goto_2
    iget-object v2, v0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 134
    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v4, "processCenterBitmap: success, centerBitmap="

    .line 141
    .line 142
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v4, "x"

    .line 153
    .line 154
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_6
    iget-object v1, v0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 173
    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v5, "processCenterBitmap: invalid scale, width="

    .line 180
    .line 181
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v3, ", height="

    .line 188
    .line 189
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :cond_7
    :goto_3
    return-void
.end method

.method private startDrawerAnimation()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->drawerAnimator:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->hasDrawerList()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_5

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->getDrawerList()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-ge v2, v3, :cond_5

    .line 25
    .line 26
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;

    .line 31
    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    iget-boolean v4, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isRightMode:Z

    .line 36
    .line 37
    if-eqz v4, :cond_3

    .line 38
    .line 39
    iget-boolean v4, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isOpen:Z

    .line 40
    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    iget v4, v3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->x:I

    .line 44
    .line 45
    int-to-float v4, v4

    .line 46
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 47
    .line 48
    iget v6, v3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->width:I

    .line 49
    .line 50
    add-int/2addr v5, v6

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 53
    .line 54
    iget v5, v3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->width:I

    .line 55
    .line 56
    add-int/2addr v4, v5

    .line 57
    int-to-float v4, v4

    .line 58
    iget v5, v3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->x:I

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    iget-boolean v4, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isOpen:Z

    .line 62
    .line 63
    if-eqz v4, :cond_4

    .line 64
    .line 65
    iget v4, v3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->x:I

    .line 66
    .line 67
    int-to-float v4, v4

    .line 68
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 69
    .line 70
    iget v6, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 71
    .line 72
    add-int/2addr v5, v6

    .line 73
    iget v6, v3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->width:I

    .line 74
    .line 75
    sub-int/2addr v5, v6

    .line 76
    goto :goto_1

    .line 77
    :cond_4
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 78
    .line 79
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 80
    .line 81
    add-int/2addr v4, v5

    .line 82
    iget v5, v3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->width:I

    .line 83
    .line 84
    sub-int/2addr v4, v5

    .line 85
    int-to-float v4, v4

    .line 86
    iget v5, v3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->x:I

    .line 87
    .line 88
    :goto_1
    int-to-float v5, v5

    .line 89
    invoke-virtual {v3, v4}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->setStartOffset(F)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v5}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->setEndOffset(F)V

    .line 93
    .line 94
    .line 95
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_5
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isRightMode:Z

    .line 99
    .line 100
    const/4 v2, 0x0

    .line 101
    if-eqz v0, :cond_8

    .line 102
    .line 103
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isOpen:Z

    .line 104
    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 108
    .line 109
    neg-int v3, v3

    .line 110
    int-to-float v3, v3

    .line 111
    goto :goto_3

    .line 112
    :cond_6
    const/4 v3, 0x0

    .line 113
    :goto_3
    if-eqz v0, :cond_7

    .line 114
    .line 115
    goto :goto_6

    .line 116
    :cond_7
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 117
    .line 118
    neg-int v0, v0

    .line 119
    :goto_4
    int-to-float v2, v0

    .line 120
    goto :goto_6

    .line 121
    :cond_8
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isOpen:Z

    .line 122
    .line 123
    if-eqz v0, :cond_9

    .line 124
    .line 125
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 126
    .line 127
    int-to-float v3, v3

    .line 128
    goto :goto_5

    .line 129
    :cond_9
    const/4 v3, 0x0

    .line 130
    :goto_5
    if-eqz v0, :cond_a

    .line 131
    .line 132
    goto :goto_6

    .line 133
    :cond_a
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :goto_6
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 137
    .line 138
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 139
    .line 140
    const/4 v5, 0x4

    .line 141
    new-array v5, v5, [Ljava/lang/Object;

    .line 142
    .line 143
    iget-boolean v6, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isOpen:Z

    .line 144
    .line 145
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    aput-object v6, v5, v1

    .line 150
    .line 151
    iget-boolean v6, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isRightMode:Z

    .line 152
    .line 153
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    const/4 v7, 0x1

    .line 158
    aput-object v6, v5, v7

    .line 159
    .line 160
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    const/4 v8, 0x2

    .line 165
    aput-object v6, v5, v8

    .line 166
    .line 167
    const/4 v6, 0x3

    .line 168
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    aput-object v9, v5, v6

    .line 173
    .line 174
    const-string v6, "Start drawer animation - isOpen: %b, isRightMode: %b, startValue: %.2f, endValue: %.2f"

    .line 175
    .line 176
    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    invoke-static {v0, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    new-array v0, v8, [F

    .line 184
    .line 185
    aput v3, v0, v1

    .line 186
    .line 187
    aput v2, v0, v7

    .line 188
    .line 189
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->drawerAnimator:Landroid/animation/ValueAnimator;

    .line 194
    .line 195
    const-wide/16 v1, 0x12c

    .line 196
    .line 197
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->drawerAnimator:Landroid/animation/ValueAnimator;

    .line 201
    .line 202
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 203
    .line 204
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->drawerAnimator:Landroid/animation/ValueAnimator;

    .line 211
    .line 212
    new-instance v1, Lcom/haima/hmcp/virtual/views/e;

    .line 213
    .line 214
    invoke-direct {v1, p0}, Lcom/haima/hmcp/virtual/views/e;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 218
    .line 219
    .line 220
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->drawerAnimator:Landroid/animation/ValueAnimator;

    .line 221
    .line 222
    new-instance v1, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$6;

    .line 223
    .line 224
    invoke-direct {v1, p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$6;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->drawerAnimator:Landroid/animation/ValueAnimator;

    .line 231
    .line 232
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 233
    .line 234
    .line 235
    return-void
.end method

.method private startRotateAnimation()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->rotateAnimator:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->currentRotation:F

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isRightMode:Z

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isOpen:Z

    .line 16
    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    const/high16 v2, 0x43340000    # 180.0f

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-boolean v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isOpen:Z

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const/high16 v2, -0x3ccc0000    # -180.0f

    .line 28
    .line 29
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 32
    .line 33
    const/4 v4, 0x3

    .line 34
    new-array v4, v4, [Ljava/lang/Object;

    .line 35
    .line 36
    iget-boolean v5, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isOpen:Z

    .line 37
    .line 38
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    const/4 v6, 0x0

    .line 43
    aput-object v5, v4, v6

    .line 44
    .line 45
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    const/4 v7, 0x1

    .line 50
    aput-object v5, v4, v7

    .line 51
    .line 52
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    const/4 v8, 0x2

    .line 57
    aput-object v5, v4, v8

    .line 58
    .line 59
    const-string v5, "Start rotate animation - isOpen: %b, startRotation: %.2f, endRotation: %.2f"

    .line 60
    .line 61
    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-static {v1, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-array v1, v8, [F

    .line 69
    .line 70
    aput v0, v1, v6

    .line 71
    .line 72
    aput v2, v1, v7

    .line 73
    .line 74
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->rotateAnimator:Landroid/animation/ValueAnimator;

    .line 79
    .line 80
    const-wide/16 v1, 0x12c

    .line 81
    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->rotateAnimator:Landroid/animation/ValueAnimator;

    .line 86
    .line 87
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 88
    .line 89
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->rotateAnimator:Landroid/animation/ValueAnimator;

    .line 96
    .line 97
    new-instance v1, Lcom/haima/hmcp/virtual/views/c;

    .line 98
    .line 99
    invoke-direct {v1, p0}, Lcom/haima/hmcp/virtual/views/c;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->rotateAnimator:Landroid/animation/ValueAnimator;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method private startTextColorAnimation()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->textColorAnimator:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isOpen:Z

    .line 9
    .line 10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/high16 v3, 0x3f800000    # 1.0f

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v3, 0x0

    .line 19
    :goto_0
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    :cond_2
    const/4 v0, 0x2

    .line 23
    new-array v0, v0, [F

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    aput v3, v0, v2

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    aput v1, v0, v2

    .line 30
    .line 31
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->textColorAnimator:Landroid/animation/ValueAnimator;

    .line 36
    .line 37
    const-wide/16 v1, 0x12c

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->textColorAnimator:Landroid/animation/ValueAnimator;

    .line 43
    .line 44
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 45
    .line 46
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->textColorAnimator:Landroid/animation/ValueAnimator;

    .line 53
    .line 54
    new-instance v1, Lcom/haima/hmcp/virtual/views/d;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/haima/hmcp/virtual/views/d;-><init>(Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->textColorAnimator:Landroid/animation/ValueAnimator;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method private toggleDrawer()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isOpen:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->hasPressedDrawerItem()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    .line 17
    iget-boolean v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isOpen:Z

    .line 18
    .line 19
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x0

    .line 24
    aput-object v2, v1, v3

    .line 25
    .line 26
    const-string v2, "Toggle drawer - current state: %b"

    .line 27
    .line 28
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->drawerAnimator:Landroid/animation/ValueAnimator;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->rotateAnimator:Landroid/animation/ValueAnimator;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->textColorAnimator:Landroid/animation/ValueAnimator;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 54
    .line 55
    .line 56
    :cond_3
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->startDrawerAnimation()V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->startRotateAnimation()V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->startTextColorAnimation()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private updateDrawerListPosition()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->hasDrawerList()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isRightMode:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    add-int/lit8 v0, v0, -0x20

    .line 14
    .line 15
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 16
    .line 17
    sub-int/2addr v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 20
    .line 21
    add-int/2addr v0, v1

    .line 22
    add-int/lit8 v0, v0, 0x20

    .line 23
    .line 24
    :goto_0
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->getDrawerList()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-ge v2, v3, :cond_3

    .line 34
    .line 35
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;

    .line 40
    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_1
    iget-boolean v4, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isRightMode:Z

    .line 45
    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    iget v4, v3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->width:I

    .line 49
    .line 50
    add-int/lit8 v4, v4, 0x20

    .line 51
    .line 52
    mul-int v4, v4, v2

    .line 53
    .line 54
    sub-int v4, v0, v4

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    iget v4, v3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->width:I

    .line 58
    .line 59
    add-int/lit8 v4, v4, 0x20

    .line 60
    .line 61
    mul-int v4, v4, v2

    .line 62
    .line 63
    add-int/2addr v4, v0

    .line 64
    :goto_2
    iget v5, v3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->width:I

    .line 65
    .line 66
    div-int/lit8 v5, v5, 0x2

    .line 67
    .line 68
    add-int/2addr v5, v4

    .line 69
    iput v5, v3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->centerX:I

    .line 70
    .line 71
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->centerY:I

    .line 72
    .line 73
    iput v5, v3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->centerY:I

    .line 74
    .line 75
    iget v6, v3, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->height:I

    .line 76
    .line 77
    div-int/lit8 v6, v6, 0x2

    .line 78
    .line 79
    sub-int/2addr v5, v6

    .line 80
    invoke-virtual {v3, v4}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->setX(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v5}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->setY(I)V

    .line 84
    .line 85
    .line 86
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    return-void
.end method

.method private updateDrawerMode()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->calculateViewBeanCenter()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->centerX:I

    .line 5
    .line 6
    sget v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->containerWidth:I

    .line 7
    .line 8
    div-int/lit8 v1, v1, 0x2

    .line 9
    .line 10
    if-le v0, v1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    iput-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isRightMode:Z

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public calculateViewBeanCenter()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPosition()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 12
    .line 13
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    div-int/2addr v1, v2

    .line 17
    add-int/2addr v0, v1

    .line 18
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->centerX:I

    .line 19
    .line 20
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 21
    .line 22
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 23
    .line 24
    div-int/2addr v3, v2

    .line 25
    add-int/2addr v1, v3

    .line 26
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->centerY:I

    .line 27
    .line 28
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 31
    .line 32
    new-array v2, v2, [Ljava/lang/Object;

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    aput-object v0, v2, v4

    .line 40
    .line 41
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->centerY:I

    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/4 v4, 0x1

    .line 48
    aput-object v0, v2, v4

    .line 49
    .line 50
    const-string v0, "ViewBean center coordinates: x=%d, y=%d"

    .line 51
    .line 52
    invoke-static {v3, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void
.end method

.method public changeName(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->changeName(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public changeScale(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->changeScale(F)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->calculateDrawerList(Ljava/lang/Float;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->initBitmap()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 14

    .line 1
    invoke-super {p0, p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->draw(Landroid/graphics/Canvas;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v11

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->mDrawerUpBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 23
    .line 24
    .line 25
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 26
    .line 27
    const/4 v12, 0x0

    .line 28
    const/4 v13, 0x1

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isEditMode:Z

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getScale()F

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    cmpl-float v0, v0, v12

    .line 42
    .line 43
    if-lez v0, :cond_3

    .line 44
    .line 45
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isRightMode:Z

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 50
    .line 51
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->getDrawerList()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 60
    .line 61
    add-int/lit8 v3, v3, 0x20

    .line 62
    .line 63
    mul-int v2, v2, v3

    .line 64
    .line 65
    sub-int/2addr v0, v2

    .line 66
    int-to-float v0, v0

    .line 67
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 68
    .line 69
    int-to-float v2, v2

    .line 70
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 71
    .line 72
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 73
    .line 74
    add-int/2addr v3, v4

    .line 75
    int-to-float v3, v3

    .line 76
    move v4, v0

    .line 77
    move v5, v2

    .line 78
    move v6, v3

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 81
    .line 82
    int-to-float v2, v0

    .line 83
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 84
    .line 85
    int-to-float v3, v3

    .line 86
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 87
    .line 88
    add-int/2addr v0, v4

    .line 89
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->getDrawerList()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 98
    .line 99
    add-int/lit8 v5, v5, 0x20

    .line 100
    .line 101
    mul-int v4, v4, v5

    .line 102
    .line 103
    add-int/2addr v0, v4

    .line 104
    int-to-float v0, v0

    .line 105
    move v6, v0

    .line 106
    move v4, v2

    .line 107
    move v5, v3

    .line 108
    :goto_0
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 109
    .line 110
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 111
    .line 112
    add-int/2addr v0, v2

    .line 113
    int-to-float v7, v0

    .line 114
    invoke-direct {p0, v13}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->dp2Px(I)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    int-to-float v9, v0

    .line 119
    const-string v0, "#b3222222"

    .line 120
    .line 121
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    move-object v2, p0

    .line 130
    move-object v3, p1

    .line 131
    move-object v10, v11

    .line 132
    invoke-direct/range {v2 .. v10}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->drawSelectedRect(Landroid/graphics/Canvas;FFFFLjava/lang/Integer;FLjava/lang/Integer;)V

    .line 133
    .line 134
    .line 135
    :cond_3
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->drawerAnimator:Landroid/animation/ValueAnimator;

    .line 136
    .line 137
    if-eqz v0, :cond_5

    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_5

    .line 144
    .line 145
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->hasDrawerList()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_5

    .line 150
    .line 151
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->getDrawerList()Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-nez v2, :cond_5

    .line 160
    .line 161
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    sub-int/2addr v2, v13

    .line 166
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    check-cast v0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;

    .line 171
    .line 172
    iget-boolean v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isRightMode:Z

    .line 173
    .line 174
    if-eqz v2, :cond_4

    .line 175
    .line 176
    iget v0, v0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->x:I

    .line 177
    .line 178
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 179
    .line 180
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 181
    .line 182
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 183
    .line 184
    add-int/2addr v4, v2

    .line 185
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_4
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 190
    .line 191
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 192
    .line 193
    add-int/2addr v2, v3

    .line 194
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 195
    .line 196
    iget v4, v0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->x:I

    .line 197
    .line 198
    iget v0, v0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->width:I

    .line 199
    .line 200
    add-int/2addr v4, v0

    .line 201
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 202
    .line 203
    add-int/2addr v0, v3

    .line 204
    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 205
    .line 206
    .line 207
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->hasDrawerList()Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_e

    .line 212
    .line 213
    const/4 v0, 0x0

    .line 214
    :goto_2
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->drawerList:Ljava/util/List;

    .line 215
    .line 216
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-ge v0, v2, :cond_e

    .line 221
    .line 222
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->drawerList:Ljava/util/List;

    .line 223
    .line 224
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    check-cast v2, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;

    .line 229
    .line 230
    if-eqz v2, :cond_d

    .line 231
    .line 232
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->getPosition()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    if-nez v3, :cond_6

    .line 237
    .line 238
    goto/16 :goto_7

    .line 239
    .line 240
    :cond_6
    sget-boolean v3, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 241
    .line 242
    if-eqz v3, :cond_7

    .line 243
    .line 244
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->getX()I

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->getY()I

    .line 249
    .line 250
    .line 251
    move-result v4

    .line 252
    :goto_3
    move v9, v3

    .line 253
    move v10, v4

    .line 254
    goto :goto_5

    .line 255
    :cond_7
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->drawerAnimator:Landroid/animation/ValueAnimator;

    .line 256
    .line 257
    if-eqz v3, :cond_8

    .line 258
    .line 259
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    if-eqz v3, :cond_8

    .line 264
    .line 265
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->getItemOffset()F

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    float-to-int v3, v3

    .line 270
    goto :goto_4

    .line 271
    :cond_8
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->getX()I

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    :goto_4
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 276
    .line 277
    goto :goto_3

    .line 278
    :goto_5
    sget-boolean v3, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 279
    .line 280
    if-nez v3, :cond_9

    .line 281
    .line 282
    iget-boolean v4, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isOpen:Z

    .line 283
    .line 284
    if-nez v4, :cond_9

    .line 285
    .line 286
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->drawerListOffset:F

    .line 287
    .line 288
    cmpl-float v4, v4, v12

    .line 289
    .line 290
    if-eqz v4, :cond_d

    .line 291
    .line 292
    :cond_9
    if-eqz v3, :cond_b

    .line 293
    .line 294
    sget-boolean v3, Lcom/haima/hmcp/Constants;->CONFIG_IS_KEYBOARD_EDIT_SHOW_ANIMATION:Z

    .line 295
    .line 296
    if-eqz v3, :cond_a

    .line 297
    .line 298
    iget-boolean v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isEditMode:Z

    .line 299
    .line 300
    if-nez v3, :cond_a

    .line 301
    .line 302
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 303
    .line 304
    invoke-virtual {v2, p1, v3}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->drawBitmapAnim(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 305
    .line 306
    .line 307
    goto :goto_6

    .line 308
    :cond_a
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->getItemUpBitmap()Landroid/graphics/Bitmap;

    .line 309
    .line 310
    .line 311
    move-result-object v5

    .line 312
    iget-object v8, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 313
    .line 314
    move-object v3, v2

    .line 315
    move-object v4, p1

    .line 316
    move v6, v9

    .line 317
    move v7, v10

    .line 318
    invoke-virtual/range {v3 .. v8}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IILandroid/graphics/Paint;)V

    .line 319
    .line 320
    .line 321
    goto :goto_6

    .line 322
    :cond_b
    iget-object v5, v2, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->itemCurrentBitmap:Landroid/graphics/Bitmap;

    .line 323
    .line 324
    iget-object v8, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 325
    .line 326
    move-object v3, v2

    .line 327
    move-object v4, p1

    .line 328
    move v6, v9

    .line 329
    move v7, v10

    .line 330
    invoke-virtual/range {v3 .. v8}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IILandroid/graphics/Paint;)V

    .line 331
    .line 332
    .line 333
    :goto_6
    sget-boolean v3, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 334
    .line 335
    if-eqz v3, :cond_c

    .line 336
    .line 337
    const/high16 v7, 0x3f800000    # 1.0f

    .line 338
    .line 339
    iget-boolean v8, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isEditMode:Z

    .line 340
    .line 341
    move-object v3, v2

    .line 342
    move-object v4, p1

    .line 343
    move v5, v9

    .line 344
    move v6, v10

    .line 345
    invoke-virtual/range {v3 .. v8}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->drawText(Landroid/graphics/Canvas;IIFZ)V

    .line 346
    .line 347
    .line 348
    goto :goto_7

    .line 349
    :cond_c
    iget v7, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->textAlpha:F

    .line 350
    .line 351
    iget-boolean v8, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isEditMode:Z

    .line 352
    .line 353
    move-object v3, v2

    .line 354
    move-object v4, p1

    .line 355
    move v5, v9

    .line 356
    move v6, v10

    .line 357
    invoke-virtual/range {v3 .. v8}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->drawText(Landroid/graphics/Canvas;IIFZ)V

    .line 358
    .line 359
    .line 360
    :cond_d
    :goto_7
    add-int/lit8 v0, v0, 0x1

    .line 361
    .line 362
    goto/16 :goto_2

    .line 363
    .line 364
    :cond_e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 365
    .line 366
    .line 367
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 368
    .line 369
    if-eqz v0, :cond_f

    .line 370
    .line 371
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 372
    .line 373
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->drawAlignLines(Landroid/graphics/Canvas;)V

    .line 374
    .line 375
    .line 376
    :cond_f
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 377
    .line 378
    if-eqz v0, :cond_11

    .line 379
    .line 380
    sget-boolean v0, Lcom/haima/hmcp/Constants;->CONFIG_IS_KEYBOARD_EDIT_SHOW_ANIMATION:Z

    .line 381
    .line 382
    if-eqz v0, :cond_10

    .line 383
    .line 384
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isEditMode:Z

    .line 385
    .line 386
    if-nez v0, :cond_10

    .line 387
    .line 388
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->mDrawerUpBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 389
    .line 390
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->bitmap:Landroid/graphics/Bitmap;

    .line 395
    .line 396
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->drawBitmapAnim(Landroid/graphics/Canvas;)V

    .line 397
    .line 398
    .line 399
    goto :goto_8

    .line 400
    :cond_10
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->mDrawerUpBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 401
    .line 402
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 407
    .line 408
    int-to-float v2, v2

    .line 409
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 410
    .line 411
    int-to-float v3, v3

    .line 412
    iget-object v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 413
    .line 414
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 415
    .line 416
    .line 417
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->drawDrawerIcon(Landroid/graphics/Canvas;)V

    .line 418
    .line 419
    .line 420
    goto :goto_8

    .line 421
    :cond_11
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->mDrawerUpBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 422
    .line 423
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 428
    .line 429
    int-to-float v2, v2

    .line 430
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 431
    .line 432
    int-to-float v3, v3

    .line 433
    iget-object v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 434
    .line 435
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 436
    .line 437
    .line 438
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->drawDrawerIcon(Landroid/graphics/Canvas;)V

    .line 439
    .line 440
    .line 441
    :goto_8
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 442
    .line 443
    if-eqz v0, :cond_13

    .line 444
    .line 445
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isEditMode:Z

    .line 446
    .line 447
    if-eqz v0, :cond_13

    .line 448
    .line 449
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewBean:Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 450
    .line 451
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getScale()F

    .line 452
    .line 453
    .line 454
    move-result v0

    .line 455
    cmpl-float v0, v0, v12

    .line 456
    .line 457
    if-lez v0, :cond_13

    .line 458
    .line 459
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isRightMode:Z

    .line 460
    .line 461
    if-eqz v0, :cond_12

    .line 462
    .line 463
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 464
    .line 465
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->getDrawerList()Ljava/util/List;

    .line 466
    .line 467
    .line 468
    move-result-object v2

    .line 469
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 470
    .line 471
    .line 472
    move-result v2

    .line 473
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 474
    .line 475
    add-int/lit8 v3, v3, 0x20

    .line 476
    .line 477
    mul-int v2, v2, v3

    .line 478
    .line 479
    sub-int/2addr v0, v2

    .line 480
    int-to-float v0, v0

    .line 481
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 482
    .line 483
    int-to-float v2, v2

    .line 484
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 485
    .line 486
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 487
    .line 488
    add-int/2addr v3, v4

    .line 489
    int-to-float v3, v3

    .line 490
    move v4, v0

    .line 491
    move v5, v2

    .line 492
    move v6, v3

    .line 493
    goto :goto_9

    .line 494
    :cond_12
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 495
    .line 496
    int-to-float v2, v0

    .line 497
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 498
    .line 499
    int-to-float v3, v3

    .line 500
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 501
    .line 502
    add-int/2addr v0, v4

    .line 503
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->getDrawerList()Ljava/util/List;

    .line 504
    .line 505
    .line 506
    move-result-object v4

    .line 507
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 508
    .line 509
    .line 510
    move-result v4

    .line 511
    iget v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 512
    .line 513
    add-int/lit8 v5, v5, 0x20

    .line 514
    .line 515
    mul-int v4, v4, v5

    .line 516
    .line 517
    add-int/2addr v0, v4

    .line 518
    int-to-float v0, v0

    .line 519
    move v6, v0

    .line 520
    move v4, v2

    .line 521
    move v5, v3

    .line 522
    :goto_9
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 523
    .line 524
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 525
    .line 526
    add-int/2addr v0, v2

    .line 527
    int-to-float v7, v0

    .line 528
    invoke-direct {p0, v13}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->dp2Px(I)I

    .line 529
    .line 530
    .line 531
    move-result v0

    .line 532
    int-to-float v9, v0

    .line 533
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->selectedBorderColor:Ljava/lang/String;

    .line 534
    .line 535
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 536
    .line 537
    .line 538
    move-result v0

    .line 539
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 540
    .line 541
    .line 542
    move-result-object v10

    .line 543
    move-object v2, p0

    .line 544
    move-object v3, p1

    .line 545
    move-object v8, v11

    .line 546
    invoke-direct/range {v2 .. v10}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->drawSelectedRect(Landroid/graphics/Canvas;FFFFLjava/lang/Integer;FLjava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    .line 548
    .line 549
    :cond_13
    return v13

    .line 550
    :catch_0
    move-exception p1

    .line 551
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->TAG:Ljava/lang/String;

    .line 552
    .line 553
    new-instance v2, Ljava/lang/StringBuilder;

    .line 554
    .line 555
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 556
    .line 557
    .line 558
    const-string v3, "draw error: "

    .line 559
    .line 560
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object p1

    .line 567
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object p1

    .line 574
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    return v1
.end method

.method protected drawBitmapAnim(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->bitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->matrix:Landroid/graphics/Matrix;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->matrix:Landroid/graphics/Matrix;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->bitmap:Landroid/graphics/Bitmap;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    int-to-float v0, v0

    .line 27
    const/high16 v1, 0x40000000    # 2.0f

    .line 28
    .line 29
    div-float/2addr v0, v1

    .line 30
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->bitmap:Landroid/graphics/Bitmap;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    int-to-float v2, v2

    .line 37
    div-float/2addr v2, v1

    .line 38
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->matrix:Landroid/graphics/Matrix;

    .line 39
    .line 40
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->currentAngle:F

    .line 41
    .line 42
    invoke-virtual {v3, v4, v0, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 43
    .line 44
    .line 45
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->matrix:Landroid/graphics/Matrix;

    .line 46
    .line 47
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->currentX:F

    .line 48
    .line 49
    sub-float/2addr v4, v0

    .line 50
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->currentY:F

    .line 51
    .line 52
    sub-float/2addr v0, v2

    .line 53
    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->bitmap:Landroid/graphics/Bitmap;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->matrix:Landroid/graphics/Matrix;

    .line 59
    .line 60
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 61
    .line 62
    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 63
    .line 64
    .line 65
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isRightMode:Z

    .line 66
    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->mCenterBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->mCenterMirrorBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 73
    .line 74
    :goto_0
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->matrix:Landroid/graphics/Matrix;

    .line 81
    .line 82
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    int-to-float v2, v2

    .line 90
    div-float/2addr v2, v1

    .line 91
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    int-to-float v3, v3

    .line 96
    div-float/2addr v3, v1

    .line 97
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->matrix:Landroid/graphics/Matrix;

    .line 98
    .line 99
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->currentAngle:F

    .line 100
    .line 101
    invoke-virtual {v1, v4, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->matrix:Landroid/graphics/Matrix;

    .line 105
    .line 106
    iget v4, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->currentX:F

    .line 107
    .line 108
    sub-float/2addr v4, v2

    .line 109
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->currentY:F

    .line 110
    .line 111
    sub-float/2addr v2, v3

    .line 112
    invoke-virtual {v1, v4, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->matrix:Landroid/graphics/Matrix;

    .line 116
    .line 117
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 118
    .line 119
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 120
    .line 121
    .line 122
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 123
    .line 124
    .line 125
    :cond_3
    :goto_1
    return-void
.end method

.method protected getCurrentDisplayBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->mDrawerUpBitmapRef:Lcom/haima/hmcp/virtual/BitmapRef;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/BitmapRef;->get()Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public notifyBaseScale()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->notifyBaseScale()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->calculateDrawerList(Ljava/lang/Float;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->initBitmap()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onSave()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->updateDrawerMode()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->initDrawerData()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    sget-boolean v3, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-le v3, v4, :cond_1

    .line 27
    .line 28
    return v1

    .line 29
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v5, 0x5

    .line 34
    if-eqz v3, :cond_a

    .line 35
    .line 36
    if-eq v3, v4, :cond_5

    .line 37
    .line 38
    const/4 v6, 0x2

    .line 39
    if-eq v3, v6, :cond_2

    .line 40
    .line 41
    const/4 v6, 0x3

    .line 42
    if-eq v3, v6, :cond_5

    .line 43
    .line 44
    if-eq v3, v5, :cond_a

    .line 45
    .line 46
    const/4 p1, 0x6

    .line 47
    if-eq v3, p1, :cond_5

    .line 48
    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :cond_2
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 52
    .line 53
    if-eqz v0, :cond_12

    .line 54
    .line 55
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-interface {v0}, Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;->onViewEdit()V

    .line 60
    .line 61
    .line 62
    :cond_3
    const/4 v0, 0x0

    .line 63
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-ge v0, v2, :cond_12

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->activeTouchPoints:Ljava/util/Map;

    .line 74
    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;

    .line 84
    .line 85
    if-eqz v2, :cond_4

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    invoke-virtual {v2, v1, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;->update(FF)V

    .line 96
    .line 97
    .line 98
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->editModeTouchOffsetX:F

    .line 99
    .line 100
    sub-float v0, v1, v0

    .line 101
    .line 102
    float-to-int v0, v0

    .line 103
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->editModeTouchOffsetY:F

    .line 104
    .line 105
    sub-float v2, p1, v2

    .line 106
    .line 107
    float-to-int v2, v2

    .line 108
    invoke-direct {p0, v0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->checkX(I)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 113
    .line 114
    invoke-direct {p0, v2}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->checkY(I)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 119
    .line 120
    iput v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->lastX:F

    .line 121
    .line 122
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->lastY:F

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->updateRect()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->calculateViewBeanCenter()V

    .line 128
    .line 129
    .line 130
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->updateDrawerListPosition()V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 134
    .line 135
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 136
    .line 137
    iget v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 138
    .line 139
    iget v2, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->width:I

    .line 140
    .line 141
    iget v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->height:I

    .line 142
    .line 143
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->updateAlignLinesView(IIII)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 147
    .line 148
    iput-boolean v4, p1, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->isMovingState:Z

    .line 149
    .line 150
    return v4

    .line 151
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_5
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->activeTouchPoints:Ljava/util/Map;

    .line 155
    .line 156
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    check-cast p1, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;

    .line 165
    .line 166
    if-eqz p1, :cond_12

    .line 167
    .line 168
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v0, v2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->removePointID(Ljava/lang/Integer;)V

    .line 177
    .line 178
    .line 179
    iget-boolean v0, p1, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;->isInDrawerList:Z

    .line 180
    .line 181
    if-eqz v0, :cond_6

    .line 182
    .line 183
    iget-object v0, p1, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;->touchedItem:Lcom/haima/hmcp/virtual/bean/DrawerItemBean;

    .line 184
    .line 185
    if-eqz v0, :cond_6

    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->getItemUpBitmap()Landroid/graphics/Bitmap;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    iput-object v2, v0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->itemCurrentBitmap:Landroid/graphics/Bitmap;

    .line 192
    .line 193
    :cond_6
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->handleUpEvent(Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;)V

    .line 194
    .line 195
    .line 196
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->activeTouchPoints:Ljava/util/Map;

    .line 197
    .line 198
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-eqz p1, :cond_9

    .line 203
    .line 204
    iput-boolean v1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPressed:Z

    .line 205
    .line 206
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 207
    .line 208
    iput-boolean v1, p1, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->isMovingState:Z

    .line 209
    .line 210
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->hasDrawerList()Z

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-eqz p1, :cond_8

    .line 215
    .line 216
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->getDrawerList()Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    :cond_7
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-eqz v0, :cond_8

    .line 229
    .line 230
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    check-cast v0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;

    .line 235
    .line 236
    if-eqz v0, :cond_7

    .line 237
    .line 238
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->getItemUpBitmap()Landroid/graphics/Bitmap;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    iput-object v1, v0, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->itemCurrentBitmap:Landroid/graphics/Bitmap;

    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_8
    sget-boolean p1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 246
    .line 247
    if-eqz p1, :cond_9

    .line 248
    .line 249
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->updateRect()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->checkPosition()V

    .line 253
    .line 254
    .line 255
    :cond_9
    return v4

    .line 256
    :cond_a
    iget-object v3, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->activeTouchPoints:Ljava/util/Map;

    .line 257
    .line 258
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    if-ge v3, v5, :cond_12

    .line 263
    .line 264
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 269
    .line 270
    .line 271
    move-result p1

    .line 272
    new-instance v0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;

    .line 273
    .line 274
    invoke-direct {v0, v3, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;-><init>(FF)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0, v3, p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->isPointInView(FF)Z

    .line 278
    .line 279
    .line 280
    move-result v5

    .line 281
    iput-boolean v5, v0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;->isInDrawerButton:Z

    .line 282
    .line 283
    iput-boolean v1, v0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;->isInDrawerList:Z

    .line 284
    .line 285
    iget-boolean v5, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isOpen:Z

    .line 286
    .line 287
    if-nez v5, :cond_b

    .line 288
    .line 289
    sget-boolean v5, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 290
    .line 291
    if-eqz v5, :cond_e

    .line 292
    .line 293
    :cond_b
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->hasDrawerList()Z

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    if-eqz v5, :cond_e

    .line 298
    .line 299
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->getDrawerList()Ljava/util/List;

    .line 300
    .line 301
    .line 302
    move-result-object v5

    .line 303
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 304
    .line 305
    .line 306
    move-result-object v5

    .line 307
    :cond_c
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 308
    .line 309
    .line 310
    move-result v6

    .line 311
    if-eqz v6, :cond_e

    .line 312
    .line 313
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    check-cast v6, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;

    .line 318
    .line 319
    if-eqz v6, :cond_c

    .line 320
    .line 321
    invoke-virtual {v6}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->getPosition()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;

    .line 322
    .line 323
    .line 324
    move-result-object v7

    .line 325
    if-nez v7, :cond_d

    .line 326
    .line 327
    goto :goto_2

    .line 328
    :cond_d
    invoke-direct {p0, v3, p1, v6}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->isPointInItem(FFLcom/haima/hmcp/virtual/bean/DrawerItemBean;)Z

    .line 329
    .line 330
    .line 331
    move-result v7

    .line 332
    if-eqz v7, :cond_c

    .line 333
    .line 334
    iput-boolean v4, v0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;->isInDrawerList:Z

    .line 335
    .line 336
    iput-object v6, v0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;->touchedItem:Lcom/haima/hmcp/virtual/bean/DrawerItemBean;

    .line 337
    .line 338
    invoke-virtual {v6}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->getItemDownBitmap()Landroid/graphics/Bitmap;

    .line 339
    .line 340
    .line 341
    move-result-object v5

    .line 342
    invoke-virtual {v6, v5}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->setItemCurrentBitmap(Landroid/graphics/Bitmap;)V

    .line 343
    .line 344
    .line 345
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->viewListener:Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;

    .line 346
    .line 347
    if-eqz v5, :cond_e

    .line 348
    .line 349
    invoke-virtual {v6}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->getSource()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 350
    .line 351
    .line 352
    move-result-object v7

    .line 353
    invoke-virtual {v7}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeys()Ljava/util/List;

    .line 354
    .line 355
    .line 356
    move-result-object v7

    .line 357
    iget v8, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->sourceType:I

    .line 358
    .line 359
    invoke-virtual {v6}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->getSource()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 360
    .line 361
    .line 362
    move-result-object v6

    .line 363
    invoke-virtual {v6}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 364
    .line 365
    .line 366
    move-result v6

    .line 367
    invoke-interface {v5, v1, v7, v8, v6}, Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;->onBtnTouchEvent(ILjava/util/List;II)V

    .line 368
    .line 369
    .line 370
    :cond_e
    iget-boolean v5, v0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;->isInDrawerButton:Z

    .line 371
    .line 372
    if-nez v5, :cond_f

    .line 373
    .line 374
    iget-boolean v5, v0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer$TouchPoint;->isInDrawerList:Z

    .line 375
    .line 376
    if-eqz v5, :cond_12

    .line 377
    .line 378
    :cond_f
    iget-object v1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->activeTouchPoints:Ljava/util/Map;

    .line 379
    .line 380
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 381
    .line 382
    .line 383
    move-result-object v5

    .line 384
    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->addPointID(Ljava/lang/Integer;)V

    .line 396
    .line 397
    .line 398
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->ableVibrator:Z

    .line 399
    .line 400
    if-eqz v0, :cond_10

    .line 401
    .line 402
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mCtx:Landroid/content/Context;

    .line 403
    .line 404
    invoke-static {v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->vibrator(Landroid/content/Context;)V

    .line 405
    .line 406
    .line 407
    :cond_10
    sget-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 408
    .line 409
    if-eqz v0, :cond_11

    .line 410
    .line 411
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->x:I

    .line 412
    .line 413
    int-to-float v0, v0

    .line 414
    sub-float v0, v3, v0

    .line 415
    .line 416
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->editModeTouchOffsetX:F

    .line 417
    .line 418
    iget v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->y:I

    .line 419
    .line 420
    int-to-float v0, v0

    .line 421
    sub-float v0, p1, v0

    .line 422
    .line 423
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->editModeTouchOffsetY:F

    .line 424
    .line 425
    iput v3, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->lastX:F

    .line 426
    .line 427
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->lastY:F

    .line 428
    .line 429
    iget-object p1, p0, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->mHmVirtualAlignLinesHelper:Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;

    .line 430
    .line 431
    iput-boolean v4, p1, Lcom/haima/hmcp/virtual/views/HmVirtualAlignLinesHelper;->isMovingState:Z

    .line 432
    .line 433
    :cond_11
    return v4

    .line 434
    :cond_12
    :goto_3
    return v1
.end method

.method public prepareShake()V
    .locals 0

    return-void
.end method

.method public setDrawerStyle(I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-le p1, v0, :cond_0

    .line 3
    .line 4
    iput v0, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->style:I

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iput p1, p0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->style:I

    .line 8
    .line 9
    :goto_0
    return-void
.end method

.method public setTransparency(F)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->setTransparency(F)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->hasDrawerList()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->getDrawerList()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v1, p1}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->setTransparency(F)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method public startShake(FF)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x16
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->initDrawerItemShakeData(Ljava/lang/Float;Ljava/lang/Float;)V

    .line 10
    .line 11
    .line 12
    invoke-super {p0, p1, p2}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->startShake(FF)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public stopShake()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->stopShake()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->hasDrawerList()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->getDrawerList()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/bean/DrawerItemBean;->stopShake()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

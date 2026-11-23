.class public Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/virtual/HmVirtualDeviceManager$OperateListener;
    }
.end annotation


# static fields
.field public static final BASE_SCALE_DEFAULT:F = 1.0f

.field public static final BASE_SCALE_MAX:F = 3.0f

.field public static final BASE_SCALE_MIN:F = 0.0f

.field public static final FULL_KB_TYPE_OTHER:I = -0x7b

.field private static final KEYBOARD_MODE_MASK:I = 0x2

.field public static final KEY_TYPE_BTN_DRAWER:I = 0xd

.field public static final KEY_TYPE_BTN_MOUSE_L:I = 0x8

.field public static final KEY_TYPE_BTN_MOUSE_MID:I = 0xa

.field public static final KEY_TYPE_BTN_MOUSE_R:I = 0x9

.field public static final KEY_TYPE_BTN_MOUSE_WHEEL_DOWN:I = 0xc

.field public static final KEY_TYPE_BTN_MOUSE_WHEEL_UP:I = 0xb

.field public static final KEY_TYPE_BTN_SENSITIVITY_KEYBOARD:I = -0x1

.field public static final KEY_TYPE_BTN_SENSITIVITY_XBOX:I = -0x2

.field public static final KEY_TYPE_GROUP:I = 0x2

.field public static final KEY_TYPE_ONE:I = 0x1

.field public static final KEY_TYPE_ROCKER_DIRECTION:I = 0x3

.field public static final KEY_TYPE_ROCKER_L:I = 0x4

.field public static final KEY_TYPE_ROCKER_R:I = 0x5

.field public static final KEY_TYPE_ROCKER_UDLR:I = 0x7

.field public static final KEY_TYPE_ROCKER_WASD:I = 0x6

.field public static final MODE_MOUSE_NONE:I = 0x0

.field public static final MODE_MOUSE_SLIP:I = 0x2

.field public static final MODE_MOUSE_TOUCH:I = 0x1

.field public static final TAG:Ljava/lang/String;

.field public static final TYPE_KEYBOARD:I = 0x1

.field public static final TYPE_STICK:I = 0x0

.field private static final XBOX_MODE_MASK:I = 0x1

.field public static ableVibrator:Z

.field public static containerHeight:I

.field public static containerWidth:I

.field public static editMode:Z

.field public static isAlphaSetByApp:Z

.field public static isScaleSetByApp:Z

.field public static isShowRawKeySetByApp:Z

.field private static mInstances:Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

.field public static rawRootPoint:Landroid/graphics/Point;

.field public static showAlignLine:Z

.field public static showRawKey:Z

.field public static transparency:F


# instance fields
.field private final SP_KEY_FNBTNS_KEYBOARD:Ljava/lang/String;

.field private final SP_KEY_FNBTNS_XBOX:Ljava/lang/String;

.field private currentVirtualType:I

.field private final defTemplate:Ljava/lang/String;

.field private layoutBean:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

.field private localConfig:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

.field private localKeyBoardBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;"
        }
    .end annotation
.end field

.field private localXboxBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseScale:F

.field mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mIsUsingLargeLayoutConfig:Z

.field private mModeIsCheckedFlags:I

.field private mPicsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private operateListener:Lcom/haima/hmcp/virtual/HmVirtualDeviceManager$OperateListener;

.field private packageName:Ljava/lang/String;

.field private pointIDList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private scaleByApp:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    sput-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->ableVibrator:Z

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Point;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->rawRootPoint:Landroid/graphics/Point;

    .line 25
    .line 26
    sput-boolean v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->showAlignLine:Z

    .line 27
    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->pointIDList:Ljava/util/List;

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    iput-object v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->packageName:Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "{\"config\":{\"default_layout\":\"\",\"xbox_alpha\":1},\"keyboard\":[],\"mouse\":{\"btn_sensitivity\":1,\"mode\":2,\"sensitivity\":1},\"xbox\":[{\"kT\":1,\"ks\":[{\"c\":0,\"k\":\"LT\"}],\"n\":\"LT\",\"p\":{\"h\":144,\"w\":144,\"x\":0.062,\"y\":0.222},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":256,\"k\":\"LB\"}],\"n\":\"LB\",\"p\":{\"h\":144,\"w\":144,\"x\":0.062,\"y\":0.378},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":0,\"k\":\"RT\"}],\"n\":\"RT\",\"p\":{\"h\":144,\"w\":144,\"x\":0.863,\"y\":0.222},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":512,\"k\":\"RB\"}],\"n\":\"RB\",\"p\":{\"h\":144,\"w\":144,\"x\":0.863,\"y\":0.378},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":16,\"k\":\"START\"}],\"n\":\"START\",\"p\":{\"h\":96,\"w\":96,\"x\":0.509,\"y\":0.033},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":32,\"k\":\"SELECT\"}],\"n\":\"SELECT\",\"p\":{\"h\":96,\"w\":96,\"x\":0.441,\"y\":0.033},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":64,\"k\":\"LS\"}],\"n\":\"LS\",\"p\":{\"h\":120,\"w\":120,\"x\":0.01,\"y\":0.519},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":128,\"k\":\"RS\"}],\"n\":\"RS\",\"p\":{\"h\":120,\"w\":120,\"x\":0.927,\"y\":0.519},\"s\":1,\"sT\":2},{\"kT\":4,\"ks\":[{\"c\":0,\"k\":\"LR\"}],\"n\":\"LR\",\"p\":{\"h\":320,\"w\":320,\"x\":0.083,\"y\":0.611},\"s\":1,\"sT\":2},{\"kT\":3,\"ks\":[{\"c\":1,\"k\":\"UP\"},{\"c\":2,\"k\":\"DOWN\"},{\"c\":4,\"k\":\"LEFT\"},{\"c\":8,\"k\":\"RIGHT\"}],\"n\":\"DIRECTION\",\"p\":{\"h\":240,\"w\":240,\"x\":0.312,\"y\":0.722},\"s\":1,\"sT\":2},{\"kT\":5,\"ks\":[{\"c\":0,\"k\":\"RR\"}],\"n\":\"RR\",\"p\":{\"h\":240,\"w\":240,\"x\":0.562,\"y\":0.722},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":4096,\"k\":\"A\"}],\"n\":\"A\",\"p\":{\"h\":120,\"w\":120,\"x\":0.839,\"y\":0.833},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":8192,\"k\":\"B\"}],\"n\":\"B\",\"p\":{\"h\":120,\"w\":120,\"x\":0.896,\"y\":0.731},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":16384,\"k\":\"X\"}],\"n\":\"X\",\"p\":{\"h\":120,\"w\":120,\"x\":0.781,\"y\":0.731},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":32768,\"k\":\"Y\"}],\"n\":\"Y\",\"p\":{\"h\":120,\"w\":120,\"x\":0.839,\"y\":0.63},\"s\":1,\"sT\":2}]}"

    .line 16
    .line 17
    iput-object v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->defTemplate:Ljava/lang/String;

    .line 18
    .line 19
    const/high16 v0, 0x3f800000    # 1.0f

    .line 20
    .line 21
    iput v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->mBaseScale:F

    .line 22
    .line 23
    iput v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->scaleByApp:F

    .line 24
    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->mPicsMap:Ljava/util/Map;

    .line 31
    .line 32
    const-string v0, "_FnBtnsFromXbox"

    .line 33
    .line 34
    iput-object v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->SP_KEY_FNBTNS_XBOX:Ljava/lang/String;

    .line 35
    .line 36
    const-string v0, "_FnBtnsFromKeyboard"

    .line 37
    .line 38
    iput-object v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->SP_KEY_FNBTNS_KEYBOARD:Ljava/lang/String;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->mModeIsCheckedFlags:I

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->reset()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->mPicsMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method private appendKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->mIsUsingLargeLayoutConfig:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "_Large"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, ""

    .line 9
    .line 10
    :goto_0
    return-object v0
.end method

.method private createExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9

    .line 1
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    .line 9
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 10
    .line 11
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v7, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager$1;

    .line 15
    .line 16
    invoke-direct {v7, p0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager$1;-><init>(Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;)V

    .line 17
    .line 18
    .line 19
    move-object v0, v8

    .line 20
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 21
    .line 22
    .line 23
    return-object v8
.end method

.method private ensureListInitialized(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-object p1
.end method

.method private filterOutFnBtns(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x2

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, -0x1

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz p2, :cond_5

    .line 11
    .line 12
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    sub-int/2addr v5, v4

    .line 17
    :goto_0
    if-ltz v5, :cond_5

    .line 18
    .line 19
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    check-cast v6, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 24
    .line 25
    if-eqz v6, :cond_4

    .line 26
    .line 27
    invoke-virtual {v6}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    if-eq v7, v3, :cond_0

    .line 32
    .line 33
    invoke-virtual {v6}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-ne v7, v1, :cond_4

    .line 38
    .line 39
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-eqz v8, :cond_2

    .line 48
    .line 49
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    check-cast v8, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 54
    .line 55
    if-eqz v8, :cond_1

    .line 56
    .line 57
    invoke-virtual {v8}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    invoke-virtual {v6}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    if-ne v8, v9, :cond_1

    .line 66
    .line 67
    const/4 v7, 0x1

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    const/4 v7, 0x0

    .line 70
    :goto_1
    if-nez v7, :cond_3

    .line 71
    .line 72
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :cond_3
    if-eqz p3, :cond_4

    .line 76
    .line 77
    invoke-interface {p2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_4
    add-int/lit8 v5, v5, -0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    if-eqz p1, :cond_b

    .line 84
    .line 85
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    sub-int/2addr p2, v4

    .line 90
    :goto_2
    if-ltz p2, :cond_b

    .line 91
    .line 92
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    check-cast v5, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 97
    .line 98
    if-eqz v5, :cond_a

    .line 99
    .line 100
    invoke-virtual {v5}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    if-eq v6, v3, :cond_6

    .line 105
    .line 106
    invoke-virtual {v5}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-ne v6, v1, :cond_a

    .line 111
    .line 112
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-eqz v7, :cond_8

    .line 121
    .line 122
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    check-cast v7, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 127
    .line 128
    if-eqz v7, :cond_7

    .line 129
    .line 130
    invoke-virtual {v7}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    invoke-virtual {v5}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    if-ne v7, v8, :cond_7

    .line 139
    .line 140
    const/4 v6, 0x1

    .line 141
    goto :goto_3

    .line 142
    :cond_8
    const/4 v6, 0x0

    .line 143
    :goto_3
    if-nez v6, :cond_9

    .line 144
    .line 145
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    :cond_9
    if-eqz p3, :cond_a

    .line 149
    .line 150
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    :cond_a
    add-int/lit8 p2, p2, -0x1

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_b
    return-object v0
.end method

.method public static declared-synchronized get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;
    .locals 2

    .line 1
    const-class v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->mInstances:Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->mInstances:Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 14
    .line 15
    :cond_0
    sget-object v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->mInstances:Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0

    .line 21
    throw v1
.end method

.method private getExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->createExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 18
    .line 19
    return-object v0
.end method

.method private getFnBtnsFromLocal(Landroid/content/Context;I)Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    sget-object p1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    const-string p2, "getFnBtnsFromLocal: context is null"

    .line 7
    .line 8
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    :try_start_0
    sget-object v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v3, 0x1

    .line 20
    if-ne p2, v3, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object v5, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->packageName:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    const-string v2, "_FnBtnsFromKeyboard"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const-string v2, "_FnBtnsFromXbox"

    .line 39
    .line 40
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v4, ""

    .line 48
    .line 49
    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_6

    .line 58
    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v5, "getFnBtnsFromLocal: loading fnBtns json from key="

    .line 65
    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v2, ", json="

    .line 73
    .line 74
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-class v2, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 88
    .line 89
    invoke-static {p1, v2}, Lcom/alibaba/fastjson/a;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_5

    .line 94
    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-lez v2, :cond_5

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_7

    .line 110
    .line 111
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 116
    .line 117
    if-eqz v1, :cond_3

    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-nez p2, :cond_4

    .line 124
    .line 125
    const/4 v4, -0x2

    .line 126
    if-ne v2, v4, :cond_4

    .line 127
    .line 128
    sget-object p1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 129
    .line 130
    const-string p2, "getFnBtnsFromLocal: found xbox sensitivity button"

    .line 131
    .line 132
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-object v1

    .line 136
    :cond_4
    if-ne p2, v3, :cond_3

    .line 137
    .line 138
    const/4 v4, -0x1

    .line 139
    if-ne v2, v4, :cond_3

    .line 140
    .line 141
    sget-object p1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 142
    .line 143
    const-string p2, "getFnBtnsFromLocal: found keyboard sensitivity button"

    .line 144
    .line 145
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    return-object v1

    .line 149
    :cond_5
    const-string p1, "getFnBtnsFromLocal: fnBtnsList is empty or null"

    .line 150
    .line 151
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    const-string p2, "getFnBtnsFromLocal: no fnBtns data found in SharedPreferences for key="

    .line 161
    .line 162
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :catch_0
    move-exception p1

    .line 177
    sget-object p2, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 178
    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    const-string v2, "getFnBtnsFromLocal error: "

    .line 185
    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    :cond_7
    :goto_1
    return-object v0
.end method

.method private getSaveLayoutBean(Ljava/util/List;IZ)Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;IZ)",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-object v2

    .line 9
    :cond_0
    new-instance v3, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 10
    .line 11
    invoke-direct {v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;-><init>()V

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_d

    .line 15
    .line 16
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    goto/16 :goto_4

    .line 23
    .line 24
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-eqz v6, :cond_2

    .line 38
    .line 39
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    check-cast v6, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 44
    .line 45
    invoke-virtual {v6}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->copy()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    new-instance v6, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-eqz v8, :cond_9

    .line 72
    .line 73
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    check-cast v8, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 78
    .line 79
    invoke-virtual {v8}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    const/16 v10, 0xd

    .line 84
    .line 85
    if-eq v9, v10, :cond_4

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    invoke-virtual {v8}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getDrawerList()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    invoke-interface {v5, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    .line 94
    .line 95
    invoke-virtual {v8}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getDrawerList()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v8, v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setDrawerList(Ljava/util/List;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v8, v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setDrawerSelectedBorderColor(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    if-nez p3, :cond_5

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_5
    invoke-virtual {v8}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getDrawerId()Ljava/lang/Long;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    if-nez v9, :cond_6

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_6
    iget-object v9, v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->layoutBean:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 122
    .line 123
    if-eqz v9, :cond_3

    .line 124
    .line 125
    invoke-virtual {v9}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getConfig()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    if-eqz v9, :cond_3

    .line 130
    .line 131
    iget-object v9, v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->layoutBean:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 132
    .line 133
    invoke-virtual {v9}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getConfig()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    iget-object v9, v9, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->drawerList:Ljava/util/List;

    .line 138
    .line 139
    if-eqz v9, :cond_3

    .line 140
    .line 141
    iget-object v9, v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->layoutBean:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 142
    .line 143
    invoke-virtual {v9}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getConfig()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    iget-object v9, v9, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->drawerList:Ljava/util/List;

    .line 148
    .line 149
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    :cond_7
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v10

    .line 157
    if-eqz v10, :cond_3

    .line 158
    .line 159
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    check-cast v10, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 164
    .line 165
    invoke-virtual {v10}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getDrawerId()Ljava/lang/Long;

    .line 166
    .line 167
    .line 168
    move-result-object v11

    .line 169
    if-nez v11, :cond_8

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_8
    invoke-virtual {v8}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getDrawerId()Ljava/lang/Long;

    .line 173
    .line 174
    .line 175
    move-result-object v11

    .line 176
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 177
    .line 178
    .line 179
    move-result-wide v11

    .line 180
    invoke-virtual {v10}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getDrawerId()Ljava/lang/Long;

    .line 181
    .line 182
    .line 183
    move-result-object v13

    .line 184
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 185
    .line 186
    .line 187
    move-result-wide v13

    .line 188
    cmp-long v15, v11, v13

    .line 189
    .line 190
    if-nez v15, :cond_7

    .line 191
    .line 192
    invoke-virtual {v8}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getScale()F

    .line 193
    .line 194
    .line 195
    move-result v11

    .line 196
    invoke-virtual {v10, v11}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setScale(F)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v8}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPosition()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;

    .line 200
    .line 201
    .line 202
    move-result-object v11

    .line 203
    invoke-virtual {v10, v11}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setPosition(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;)V

    .line 204
    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_9
    invoke-interface {v4, v6}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 208
    .line 209
    .line 210
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 211
    .line 212
    .line 213
    new-instance v2, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 214
    .line 215
    invoke-direct {v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;-><init>()V

    .line 216
    .line 217
    .line 218
    iput-object v2, v3, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->config:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 219
    .line 220
    iput-object v6, v2, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->drawerList:Ljava/util/List;

    .line 221
    .line 222
    iget-object v5, v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->localConfig:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 223
    .line 224
    if-eqz v5, :cond_a

    .line 225
    .line 226
    iget-object v5, v5, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_icon_MD5:Ljava/lang/String;

    .line 227
    .line 228
    iput-object v5, v2, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_icon_MD5:Ljava/lang/String;

    .line 229
    .line 230
    iget-object v2, v3, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->config:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 231
    .line 232
    iget-object v5, v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->localConfig:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 233
    .line 234
    iget-object v5, v5, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_icon_url:Ljava/lang/String;

    .line 235
    .line 236
    iput-object v5, v2, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_icon_url:Ljava/lang/String;

    .line 237
    .line 238
    iget-object v2, v3, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->config:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 239
    .line 240
    iget-object v5, v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->localConfig:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 241
    .line 242
    iget-object v5, v5, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_selected_MD5:Ljava/lang/String;

    .line 243
    .line 244
    iput-object v5, v2, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_selected_MD5:Ljava/lang/String;

    .line 245
    .line 246
    iget-object v2, v3, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->config:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 247
    .line 248
    iget-object v5, v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->localConfig:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 249
    .line 250
    iget-object v5, v5, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_selected_url:Ljava/lang/String;

    .line 251
    .line 252
    iput-object v5, v2, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_selected_url:Ljava/lang/String;

    .line 253
    .line 254
    iget-object v2, v3, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->config:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 255
    .line 256
    iget-object v5, v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->localConfig:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 257
    .line 258
    iget-object v5, v5, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_unselected_MD5:Ljava/lang/String;

    .line 259
    .line 260
    iput-object v5, v2, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_unselected_MD5:Ljava/lang/String;

    .line 261
    .line 262
    iget-object v2, v3, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->config:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 263
    .line 264
    iget-object v5, v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->localConfig:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 265
    .line 266
    iget-object v5, v5, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_unselected_url:Ljava/lang/String;

    .line 267
    .line 268
    iput-object v5, v2, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_unselected_url:Ljava/lang/String;

    .line 269
    .line 270
    iget-object v2, v3, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->config:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 271
    .line 272
    iget-object v5, v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->localConfig:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 273
    .line 274
    iget-object v5, v5, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->drawerSelectedBorderColor:Ljava/lang/String;

    .line 275
    .line 276
    iput-object v5, v2, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->drawerSelectedBorderColor:Ljava/lang/String;

    .line 277
    .line 278
    goto :goto_3

    .line 279
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getLayoutBean()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    iget-object v2, v2, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->config:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 284
    .line 285
    if-eqz v2, :cond_b

    .line 286
    .line 287
    iget-object v2, v3, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->config:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 288
    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getLayoutBean()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    iget-object v5, v5, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->config:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 294
    .line 295
    iget-object v5, v5, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_icon_MD5:Ljava/lang/String;

    .line 296
    .line 297
    iput-object v5, v2, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_icon_MD5:Ljava/lang/String;

    .line 298
    .line 299
    iget-object v2, v3, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->config:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 300
    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getLayoutBean()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    iget-object v5, v5, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->config:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 306
    .line 307
    iget-object v5, v5, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_icon_url:Ljava/lang/String;

    .line 308
    .line 309
    iput-object v5, v2, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_icon_url:Ljava/lang/String;

    .line 310
    .line 311
    iget-object v2, v3, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->config:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 312
    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getLayoutBean()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    iget-object v5, v5, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->config:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 318
    .line 319
    iget-object v5, v5, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_selected_MD5:Ljava/lang/String;

    .line 320
    .line 321
    iput-object v5, v2, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_selected_MD5:Ljava/lang/String;

    .line 322
    .line 323
    iget-object v2, v3, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->config:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 324
    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getLayoutBean()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 326
    .line 327
    .line 328
    move-result-object v5

    .line 329
    iget-object v5, v5, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->config:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 330
    .line 331
    iget-object v5, v5, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_selected_url:Ljava/lang/String;

    .line 332
    .line 333
    iput-object v5, v2, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_selected_url:Ljava/lang/String;

    .line 334
    .line 335
    iget-object v2, v3, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->config:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 336
    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getLayoutBean()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 338
    .line 339
    .line 340
    move-result-object v5

    .line 341
    iget-object v5, v5, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->config:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 342
    .line 343
    iget-object v5, v5, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_unselected_MD5:Ljava/lang/String;

    .line 344
    .line 345
    iput-object v5, v2, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_unselected_MD5:Ljava/lang/String;

    .line 346
    .line 347
    iget-object v2, v3, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->config:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 348
    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getLayoutBean()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 350
    .line 351
    .line 352
    move-result-object v5

    .line 353
    iget-object v5, v5, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->config:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 354
    .line 355
    iget-object v5, v5, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_unselected_url:Ljava/lang/String;

    .line 356
    .line 357
    iput-object v5, v2, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_unselected_url:Ljava/lang/String;

    .line 358
    .line 359
    iget-object v2, v3, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->config:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 360
    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getLayoutBean()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 362
    .line 363
    .line 364
    move-result-object v5

    .line 365
    iget-object v5, v5, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->config:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 366
    .line 367
    iget-object v5, v5, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->drawerSelectedBorderColor:Ljava/lang/String;

    .line 368
    .line 369
    iput-object v5, v2, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->drawerSelectedBorderColor:Ljava/lang/String;

    .line 370
    .line 371
    :cond_b
    :goto_3
    const/4 v2, 0x1

    .line 372
    if-ne v1, v2, :cond_c

    .line 373
    .line 374
    invoke-virtual {v3, v4}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->setKeyboard(Ljava/util/List;)V

    .line 375
    .line 376
    .line 377
    goto :goto_4

    .line 378
    :cond_c
    invoke-virtual {v3, v4}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->setXbox(Ljava/util/List;)V

    .line 379
    .line 380
    .line 381
    :cond_d
    :goto_4
    return-object v3
.end method

.method private isCloudDirectionStyle(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicSelectedMD5()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicUnselectedMD5()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getCrossPicRockerDirectionMD5()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicSelectedUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicUnselectedUrl()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getCrossPicRockerDirectionUrl()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v6, 0x1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v1, 0x0

    .line 51
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_2

    .line 56
    .line 57
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_2

    .line 62
    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_2

    .line 68
    .line 69
    const/4 p1, 0x1

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    const/4 p1, 0x0

    .line 72
    :goto_1
    if-nez v1, :cond_3

    .line 73
    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    :cond_3
    const/4 v0, 0x1

    .line 77
    :cond_4
    return v0
.end method

.method private loadLocalBeanList(Ljava/lang/String;Landroid/content/Context;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v4, "_"

    .line 17
    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->appendKey()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string v5, ""

    .line 36
    .line 37
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    const-class v7, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 46
    .line 47
    if-nez v6, :cond_1

    .line 48
    .line 49
    new-instance v6, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v8, "loadLocalXbox="

    .line 55
    .line 56
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-static {v0, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v3, v7}, Lcom/alibaba/fastjson/a;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    iput-object v3, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->localXboxBeanList:Ljava/util/List;

    .line 74
    .line 75
    invoke-direct {p0, p2, v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getFnBtnsFromLocal(Landroid/content/Context;I)Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-eqz v1, :cond_0

    .line 80
    .line 81
    iget-object v3, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->localXboxBeanList:Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->localXboxBeanList:Ljava/util/List;

    .line 87
    .line 88
    sget-object v3, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils$PicsSupplementType;->XBOX:Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils$PicsSupplementType;

    .line 89
    .line 90
    invoke-direct {p0, v1, v3}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->supplementSources(Ljava/util/List;Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils$PicsSupplementType;)V

    .line 91
    .line 92
    .line 93
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const/4 v3, 0x1

    .line 105
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->appendKey()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-interface {v2, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-nez v4, :cond_4

    .line 128
    .line 129
    new-instance v4, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string p1, "_config"

    .line 138
    .line 139
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-interface {v2, p1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v4, "loadLocalKeyboard, config ="

    .line 156
    .line 157
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string v4, "loadLocalKeyboard="

    .line 176
    .line 177
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-nez v0, :cond_2

    .line 195
    .line 196
    const-class v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 197
    .line 198
    invoke-static {p1, v0}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    check-cast p1, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 203
    .line 204
    iget-object v0, p1, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->config:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 205
    .line 206
    iput-object v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->localConfig:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 207
    .line 208
    goto :goto_0

    .line 209
    :cond_2
    const/4 p1, 0x0

    .line 210
    :goto_0
    invoke-static {v1, v7}, Lcom/alibaba/fastjson/a;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-direct {p0, p1, v0, v3}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->processSavedLayoutBean(Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;Ljava/util/List;I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getKeyboard()Ljava/util/List;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    iput-object p1, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->localKeyBoardBeanList:Ljava/util/List;

    .line 222
    .line 223
    invoke-direct {p0, p2, v3}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getFnBtnsFromLocal(Landroid/content/Context;I)Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    if-eqz p1, :cond_3

    .line 228
    .line 229
    iget-object p2, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->localKeyBoardBeanList:Ljava/util/List;

    .line 230
    .line 231
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    :cond_3
    iget-object p1, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->localKeyBoardBeanList:Ljava/util/List;

    .line 235
    .line 236
    sget-object p2, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils$PicsSupplementType;->KEYBOARD:Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils$PicsSupplementType;

    .line 237
    .line 238
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->supplementSources(Ljava/util/List;Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils$PicsSupplementType;)V

    .line 239
    .line 240
    .line 241
    :cond_4
    return-void
.end method

.method private processDrawer(Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;)V
    .locals 14

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, "processDrawer: data is null"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getConfig()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    sget-object p1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "processDrawer: config is null"

    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getConfig()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v0, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->drawerSelectedBorderColor:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getConfig()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getDrawerList()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget-object v2, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v4, "processDrawer: drawerList size = "

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 v5, 0x0

    .line 60
    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    if-eqz v1, :cond_10

    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_3

    .line 77
    .line 78
    goto/16 :goto_5

    .line 79
    .line 80
    :cond_3
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getKeyboard()Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v5, "processDrawer: keyboardList size = "

    .line 90
    .line 91
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    :cond_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    if-eqz p1, :cond_f

    .line 111
    .line 112
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_5

    .line 117
    .line 118
    goto/16 :goto_4

    .line 119
    .line 120
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-eqz v3, :cond_d

    .line 134
    .line 135
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    check-cast v3, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 140
    .line 141
    if-eqz v3, :cond_6

    .line 142
    .line 143
    invoke-virtual {v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getDrawerId()Ljava/lang/Long;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    sget-object v5, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 148
    .line 149
    new-instance v6, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v7, "processDrawer: processing drawer with id = "

    .line 155
    .line 156
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-static {v5, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    if-nez v4, :cond_7

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    :cond_8
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result v7

    .line 185
    if-eqz v7, :cond_b

    .line 186
    .line 187
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    check-cast v7, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 192
    .line 193
    if-eqz v7, :cond_8

    .line 194
    .line 195
    invoke-virtual {v7}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 196
    .line 197
    .line 198
    move-result v8

    .line 199
    const/4 v9, 0x6

    .line 200
    if-eq v8, v9, :cond_8

    .line 201
    .line 202
    invoke-virtual {v7}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 203
    .line 204
    .line 205
    move-result v8

    .line 206
    const/4 v9, 0x7

    .line 207
    if-ne v8, v9, :cond_9

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_9
    invoke-virtual {v7}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getDrawerId()Ljava/lang/Long;

    .line 211
    .line 212
    .line 213
    move-result-object v8

    .line 214
    if-nez v8, :cond_a

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_a
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 218
    .line 219
    .line 220
    move-result-wide v9

    .line 221
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 222
    .line 223
    .line 224
    move-result-wide v11

    .line 225
    cmp-long v13, v9, v11

    .line 226
    .line 227
    if-nez v13, :cond_8

    .line 228
    .line 229
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    sget-object v7, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 233
    .line 234
    new-instance v9, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    const-string v10, "processDrawer: matched keyboard with drawerId = "

    .line 240
    .line 241
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v8

    .line 251
    invoke-static {v7, v8}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    goto :goto_2

    .line 255
    :cond_b
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    if-nez v6, :cond_6

    .line 260
    .line 261
    invoke-virtual {v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getDrawerList()Ljava/util/List;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    if-nez v6, :cond_c

    .line 266
    .line 267
    new-instance v6, Ljava/util/ArrayList;

    .line 268
    .line 269
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v3, v6}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setDrawerList(Ljava/util/List;)V

    .line 273
    .line 274
    .line 275
    goto :goto_3

    .line 276
    :cond_c
    invoke-virtual {v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getDrawerList()Ljava/util/List;

    .line 277
    .line 278
    .line 279
    move-result-object v6

    .line 280
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 281
    .line 282
    .line 283
    :goto_3
    invoke-virtual {v3, v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setDrawerSelectedBorderColor(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getDrawerList()Ljava/util/List;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    invoke-interface {v6, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 291
    .line 292
    .line 293
    sget-object v6, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 294
    .line 295
    new-instance v7, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .line 299
    .line 300
    const-string v8, "processDrawer: added "

    .line 301
    .line 302
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 306
    .line 307
    .line 308
    move-result v8

    .line 309
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    const-string v8, " keyboards to drawer "

    .line 313
    .line 314
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v4

    .line 324
    invoke-static {v6, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-interface {p1, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 328
    .line 329
    .line 330
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    new-instance v3, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .line 337
    .line 338
    const-string v4, "processDrawer: removed matched keyboards from keyboardList, remaining size = "

    .line 339
    .line 340
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 344
    .line 345
    .line 346
    move-result v4

    .line 347
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    invoke-static {v6, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    goto/16 :goto_1

    .line 358
    .line 359
    :cond_d
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    if-eqz v0, :cond_e

    .line 364
    .line 365
    sget-object p1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 366
    .line 367
    const-string v0, "processDrawer: drawerList is empty after processing"

    .line 368
    .line 369
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    return-void

    .line 373
    :cond_e
    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 374
    .line 375
    .line 376
    sget-object v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 377
    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    .line 379
    .line 380
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .line 382
    .line 383
    const-string v2, "processDrawer: added drawerList to keyboardList, final keyboardList size = "

    .line 384
    .line 385
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 389
    .line 390
    .line 391
    move-result p1

    .line 392
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    return-void

    .line 403
    :cond_f
    :goto_4
    const-string p1, "processDrawer: keyboardList is empty or null"

    .line 404
    .line 405
    invoke-static {v2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    return-void

    .line 409
    :cond_10
    :goto_5
    const-string p1, "processDrawer: drawerList is empty or null"

    .line 410
    .line 411
    invoke-static {v2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    return-void
.end method

.method private processFnBtns(Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, "processFnBtns: data is null"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getFnBtns()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_a

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    move-object v2, v1

    .line 30
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_5

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const/4 v5, -0x1

    .line 49
    if-ne v4, v5, :cond_3

    .line 50
    .line 51
    if-nez v1, :cond_3

    .line 52
    .line 53
    move-object v1, v3

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const/4 v5, -0x2

    .line 56
    if-ne v4, v5, :cond_4

    .line 57
    .line 58
    if-nez v2, :cond_4

    .line 59
    .line 60
    move-object v2, v3

    .line 61
    :cond_4
    :goto_0
    if-eqz v1, :cond_2

    .line 62
    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    :cond_5
    if-eqz v1, :cond_6

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getKeyboard()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-direct {p0, v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->ensureListInitialized(Ljava/util/List;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getKeyboardModeIsChecked()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    iput-boolean v3, v1, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->sensitivityFnBtnChecked:Z

    .line 80
    .line 81
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->setKeyboard(Ljava/util/List;)V

    .line 85
    .line 86
    .line 87
    :cond_6
    if-eqz v2, :cond_7

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getXbox()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-direct {p0, v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->ensureListInitialized(Ljava/util/List;)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getXboxModeIsChecked()Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    iput-boolean v3, v2, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->sensitivityFnBtnChecked:Z

    .line 102
    .line 103
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->setXbox(Ljava/util/List;)V

    .line 107
    .line 108
    .line 109
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .line 113
    .line 114
    if-eqz v1, :cond_8

    .line 115
    .line 116
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    :cond_8
    if-eqz v2, :cond_9

    .line 120
    .line 121
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    :cond_9
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->setFnBtns(Ljava/util/List;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_a
    :goto_1
    sget-object p1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 129
    .line 130
    const-string v0, "processFnBtns: fnBtns is empty"

    .line 131
    .line 132
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method private processPics(Landroid/content/Context;Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->processPicsInConfig(Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getXbox()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p0, v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->processVirList(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getKeyboard()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-direct {p0, p2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->processVirList(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->savePicsToLocalStorage(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method private processPicsInConfig(Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getConfig()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_common_bg_unselected_MD5()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_common_bg_unselected()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "pic_common_bg_unselected"

    .line 16
    .line 17
    invoke-virtual {p0, v0, v1, v2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->savePicsToMemory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_common_bg_selected_MD5()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_common_bg_selected()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "pic_common_bg_selected"

    .line 29
    .line 30
    invoke-virtual {p0, v0, v1, v2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->savePicsToMemory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_rocker_center_MD5()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_rocker_center()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "pic_rocker_center"

    .line 42
    .line 43
    invoke-virtual {p0, v0, v1, v2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->savePicsToMemory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_rocker_direction_MD5()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_rocker_direction()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v2, "pic_rocker_direction"

    .line 55
    .line 56
    invoke-virtual {p0, v0, v1, v2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->savePicsToMemory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_common_drawer_icon_MD5()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_common_drawer_icon()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string v2, "pic_common_drawer_icon"

    .line 68
    .line 69
    invoke-virtual {p0, v0, v1, v2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->savePicsToMemory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_common_drawer_bg_selected_MD5()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_common_drawer_bg_selected()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v2, "pic_common_drawer_bg_selected"

    .line 81
    .line 82
    invoke-virtual {p0, v0, v1, v2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->savePicsToMemory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_common_drawer_bg_unselected_MD5()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getPic_common_drawer_bg_unselected()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-string v1, "pic_common_drawer_bg_unselected"

    .line 94
    .line 95
    invoke-virtual {p0, v0, p1, v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->savePicsToMemory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_0
    return-void
.end method

.method private processSavedLayoutBean(Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;Ljava/util/List;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;I)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;-><init>()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object/from16 v1, p1

    .line 12
    .line 13
    :goto_0
    iget-object v2, v1, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->config:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    new-instance v2, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 18
    .line 19
    invoke-direct {v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v2, v1, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->config:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 23
    .line 24
    :cond_1
    if-eqz v0, :cond_f

    .line 25
    .line 26
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    goto/16 :goto_6

    .line 33
    .line 34
    :cond_2
    iget-object v2, v1, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->config:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getDrawerList()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-eqz v3, :cond_d

    .line 41
    .line 42
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_3

    .line 47
    .line 48
    goto/16 :goto_4

    .line 49
    .line 50
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_b

    .line 64
    .line 65
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 70
    .line 71
    if-eqz v5, :cond_4

    .line 72
    .line 73
    invoke-virtual {v5}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->copy()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    iget-object v6, v2, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->drawerSelectedBorderColor:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v5, v6}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setDrawerSelectedBorderColor(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getDrawerId()Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    sget-object v7, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 87
    .line 88
    new-instance v8, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v9, "processSavedLayoutBean: processing drawer with id = "

    .line 94
    .line 95
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    invoke-static {v7, v8}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    if-nez v6, :cond_5

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    :cond_6
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    if-eqz v9, :cond_9

    .line 125
    .line 126
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v9

    .line 130
    check-cast v9, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 131
    .line 132
    if-eqz v9, :cond_6

    .line 133
    .line 134
    invoke-virtual {v9}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 135
    .line 136
    .line 137
    move-result v10

    .line 138
    const/4 v11, 0x6

    .line 139
    if-eq v10, v11, :cond_6

    .line 140
    .line 141
    invoke-virtual {v9}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 142
    .line 143
    .line 144
    move-result v10

    .line 145
    const/4 v11, 0x7

    .line 146
    if-ne v10, v11, :cond_7

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_7
    invoke-virtual {v9}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getDrawerId()Ljava/lang/Long;

    .line 150
    .line 151
    .line 152
    move-result-object v10

    .line 153
    if-nez v10, :cond_8

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_8
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 157
    .line 158
    .line 159
    move-result-wide v11

    .line 160
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 161
    .line 162
    .line 163
    move-result-wide v13

    .line 164
    cmp-long v15, v11, v13

    .line 165
    .line 166
    if-nez v15, :cond_6

    .line 167
    .line 168
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    sget-object v9, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 172
    .line 173
    new-instance v11, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    const-string v12, "processSavedLayoutBean: matched keyboard with drawerId = "

    .line 179
    .line 180
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v10

    .line 190
    invoke-static {v9, v10}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_9
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    if-nez v8, :cond_4

    .line 199
    .line 200
    invoke-virtual {v5}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getDrawerList()Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object v8

    .line 204
    if-nez v8, :cond_a

    .line 205
    .line 206
    new-instance v8, Ljava/util/ArrayList;

    .line 207
    .line 208
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v5, v8}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setDrawerList(Ljava/util/List;)V

    .line 212
    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_a
    invoke-virtual {v5}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getDrawerList()Ljava/util/List;

    .line 216
    .line 217
    .line 218
    move-result-object v8

    .line 219
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 220
    .line 221
    .line 222
    sget-object v8, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 223
    .line 224
    const-string v9, "processSavedLayoutBean: clear drawer list"

    .line 225
    .line 226
    invoke-static {v8, v9}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    :goto_3
    invoke-virtual {v5}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getDrawerList()Ljava/util/List;

    .line 230
    .line 231
    .line 232
    move-result-object v8

    .line 233
    invoke-interface {v8, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 234
    .line 235
    .line 236
    sget-object v8, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 237
    .line 238
    new-instance v9, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    .line 243
    const-string v10, "processSavedLayoutBean: added "

    .line 244
    .line 245
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 249
    .line 250
    .line 251
    move-result v10

    .line 252
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string v10, " keyboards to drawer "

    .line 256
    .line 257
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    invoke-static {v8, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-interface {v0, v7}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 271
    .line 272
    .line 273
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    new-instance v5, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .line 280
    .line 281
    const-string v6, "processSavedLayoutBean: removed matched keyboards from keyboardList, remaining size = "

    .line 282
    .line 283
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 287
    .line 288
    .line 289
    move-result v6

    .line 290
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    invoke-static {v8, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_1

    .line 301
    .line 302
    :cond_b
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    if-eqz v2, :cond_c

    .line 307
    .line 308
    sget-object v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 309
    .line 310
    const-string v1, "processSavedLayoutBean: drawerList is empty after processing"

    .line 311
    .line 312
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    return-void

    .line 316
    :cond_c
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1, v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->setKeyboard(Ljava/util/List;)V

    .line 320
    .line 321
    .line 322
    sget-object v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 323
    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .line 328
    .line 329
    const-string v3, "processSavedLayoutBean: added drawerList to keyboardList, final keyboardList size = "

    .line 330
    .line 331
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    return-void

    .line 349
    :cond_d
    :goto_4
    const/4 v2, 0x1

    .line 350
    move/from16 v3, p3

    .line 351
    .line 352
    if-ne v3, v2, :cond_e

    .line 353
    .line 354
    invoke-virtual {v1, v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->setKeyboard(Ljava/util/List;)V

    .line 355
    .line 356
    .line 357
    goto :goto_5

    .line 358
    :cond_e
    invoke-virtual {v1, v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->setXbox(Ljava/util/List;)V

    .line 359
    .line 360
    .line 361
    :goto_5
    sget-object v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 362
    .line 363
    const-string v1, "processSavedLayoutBean: drawerList is empty or null"

    .line 364
    .line 365
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    return-void

    .line 369
    :cond_f
    :goto_6
    sget-object v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 370
    .line 371
    const-string v1, "processSavedLayoutBean: keyboardList is empty or null"

    .line 372
    .line 373
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    return-void
.end method

.method private processVirList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicSelectedMD5()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicSelected()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v4, " pic_selected"

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {p0, v1, v2, v3}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->savePicsToMemory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicUnselectedMD5()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicUnselected()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v4, " pic_unselected"

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {p0, v1, v2, v3}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->savePicsToMemory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getCrossPicRockerDirectionMD5()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getCrossPicRockerDirection()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v4, " cross_pic_rocker_direction"

    .line 114
    .line 115
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {p0, v1, v2, v3}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->savePicsToMemory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicCenterMD5()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getPicCenter()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v4, " pic_center"

    .line 146
    .line 147
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {p0, v1, v2, v3}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->savePicsToMemory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    const/16 v2, 0xd

    .line 162
    .line 163
    if-ne v1, v2, :cond_1

    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getDrawerList()Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    if-eqz v1, :cond_1

    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getDrawerList()Ljava/util/List;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-direct {p0, v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->processVirList(Ljava/util/List;)V

    .line 176
    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_2
    :goto_1
    return-void
.end method

.method private saveFnBtns(Landroid/content/Context;ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p2, v1, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p2, 0x0

    .line 8
    :goto_0
    const/4 v2, 0x0

    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    move-object v3, p3

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    move-object v3, v2

    .line 14
    :goto_1
    if-eqz p2, :cond_2

    .line 15
    .line 16
    move-object p3, v2

    .line 17
    :cond_2
    invoke-direct {p0, v3, p3, v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->filterOutFnBtns(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    sget-object v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string v2, "saveFnBtns start"

    .line 24
    .line 25
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    if-eqz p3, :cond_4

    .line 29
    .line 30
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-lez v2, :cond_4

    .line 35
    .line 36
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 41
    .line 42
    .line 43
    invoke-static {p3}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object v3, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->packageName:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    if-eqz p2, :cond_3

    .line 58
    .line 59
    const-string p2, "_FnBtnsFromKeyboard"

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    const-string p2, "_FnBtnsFromXbox"

    .line 63
    .line 64
    :goto_2
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    .line 81
    .line 82
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 83
    .line 84
    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v0, "saveFnBtns "

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p2, " Json = "

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_4
    return-void
.end method

.method private savePicsToLocalStorage(Landroid/content/Context;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->mPicsMap:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager$2;

    .line 17
    .line 18
    invoke-direct {v1, p0, p1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager$2;-><init>(Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    :goto_0
    sget-object p1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v1, "savePicsToLocalStorage ignored:PicsMap\'s size is "

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->mPicsMap:Ljava/util/Map;

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private supplementSources(Ljava/util/List;Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils$PicsSupplementType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;",
            "Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils$PicsSupplementType;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 25
    .line 26
    invoke-static {v0, p2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->picsSupplement(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils$PicsSupplementType;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public addPointID(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->pointIDList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->pointIDList:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    :cond_0
    :goto_0
    return-void
.end method

.method public convertOneBean2View(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;Landroid/content/Context;Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;I)Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :pswitch_0
    const/4 v0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :pswitch_1
    new-instance v0, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;

    .line 11
    .line 12
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;-><init>(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;Landroid/content/Context;Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_2
    new-instance v0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;

    .line 17
    .line 18
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;-><init>(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;Landroid/content/Context;Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->isCloudDirectionStyle(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    new-instance v0, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;

    .line 29
    .line 30
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/haima/hmcp/virtual/views/HmVirtualDirection;-><init>(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;Landroid/content/Context;Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;

    .line 35
    .line 36
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/haima/hmcp/virtual/views/HmVirtualHandle;-><init>(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;Landroid/content/Context;Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_4
    new-instance v0, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;

    .line 41
    .line 42
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/haima/hmcp/virtual/views/HmVirtualBtn;-><init>(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;Landroid/content/Context;Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_5
    new-instance v0, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;

    .line 47
    .line 48
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/haima/hmcp/virtual/views/HmVirtualCheckBox;-><init>(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;Landroid/content/Context;Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;I)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-object v0

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public convertVirBean2View(Ljava/util/List;Landroid/content/Context;Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;",
            "I)",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 21
    .line 22
    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->convertOneBean2View(Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;Landroid/content/Context;Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;I)Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-object v0
.end method

.method public deleteLocalKeyboardLayout(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    sget-object v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "deleteLocalKeyboardLayout"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :try_start_0
    iput-object v2, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->localKeyBoardBeanList:Ljava/util/List;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->packageName:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, "_"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->appendKey()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    iget-object v3, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->packageName:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v3, "_FnBtnsFromKeyboard"

    .line 66
    .line 67
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    .line 76
    .line 77
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->operateListener:Lcom/haima/hmcp/virtual/HmVirtualDeviceManager$OperateListener;

    .line 81
    .line 82
    if-eqz p1, :cond_0

    .line 83
    .line 84
    invoke-interface {p1, v2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager$OperateListener;->onReset(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception p1

    .line 89
    sget-object v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 90
    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v2, "deleteLocalKeyboardLayout error = "

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_0
    :goto_0
    return-void
.end method

.method public deleteLocalXboxLayout(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    sget-object v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "deleteLocalXboxLayout"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :try_start_0
    iput-object v2, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->localXboxBeanList:Ljava/util/List;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->packageName:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v3, "_"

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->appendKey()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 52
    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    iget-object v3, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->packageName:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v3, "_FnBtnsFromXbox"

    .line 65
    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    .line 75
    .line 76
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->operateListener:Lcom/haima/hmcp/virtual/HmVirtualDeviceManager$OperateListener;

    .line 80
    .line 81
    if-eqz p1, :cond_0

    .line 82
    .line 83
    invoke-interface {p1, v2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager$OperateListener;->onReset(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    .line 90
    .line 91
    sget-object v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 92
    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v2, "deleteLocalXboxLayout error = "

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_0
    :goto_0
    return-void
.end method

.method public filterDrawerData(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_5

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 35
    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getKeyType()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/16 v4, 0xd

    .line 44
    .line 45
    if-ne v3, v4, :cond_4

    .line 46
    .line 47
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->getDrawerList()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-nez v3, :cond_1

    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_1

    .line 71
    .line 72
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->copy()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    if-eqz v3, :cond_3

    .line 83
    .line 84
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->copy()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-eqz v2, :cond_1

    .line 93
    .line 94
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_5
    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 99
    .line 100
    .line 101
    return-object v1

    .line 102
    :cond_6
    :goto_2
    return-object p1
.end method

.method public getBaseScale()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->mBaseScale:F

    .line 2
    .line 3
    return v0
.end method

.method public getBitmapByBase64Data(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 10
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->mPicsMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 13
    invoke-static {v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->base64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    move-object v0, p1

    goto :goto_2

    .line 14
    :cond_1
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getBitmapFromLocal(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 15
    :cond_2
    :goto_1
    sget-object p1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    const-string p2, "getBitmapByBase64Data failed:params is invalid"

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 16
    sget-object p2, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBitmapByBase64Data failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method

.method public getBitmapByBase64Data(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->mPicsMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 4
    invoke-static {v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->base64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x0

    move-object v0, p1

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getBitmapFromLocal(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    move-object v0, p1

    const/4 p1, 0x1

    :goto_0
    if-eqz v0, :cond_3

    .line 6
    sget-object v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBitmapByBase64Data succeed and "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " isFromLocal :"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {v0, p3, p4, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 8
    :cond_2
    :goto_1
    sget-object p1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    const-string p2, "getBitmapByBase64Data failed:params is invalid"

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 9
    sget-object p2, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getBitmapByBase64Data failed:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-object v0
.end method

.method public getBitmapFromLocal(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    const-string v0, "getBitmapFromLocal failed: "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    sget-object p2, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v2, "getBitmapFromLocal failed:name is empty"

    .line 13
    .line 14
    invoke-static {p2, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_0
    if-nez p2, :cond_1

    .line 19
    .line 20
    sget-object p2, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    const-string v2, "getBitmapFromLocal failed:context is null"

    .line 23
    .line 24
    invoke-static {p2, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v3, Ljava/io/File;

    .line 34
    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p2, "HmVirPicsCache"

    .line 53
    .line 54
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-direct {v3, p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-nez p2, :cond_2

    .line 69
    .line 70
    sget-object p2, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 71
    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v3, " targetFile is not exists"

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-static {p2, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-object v1

    .line 96
    :cond_2
    new-instance p2, Ljava/io/BufferedReader;

    .line 97
    .line 98
    new-instance v4, Ljava/io/FileReader;

    .line 99
    .line 100
    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 101
    .line 102
    .line 103
    invoke-direct {p2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 104
    .line 105
    .line 106
    :goto_0
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    if-eqz v3, :cond_3

    .line 111
    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    if-eqz p2, :cond_4

    .line 121
    .line 122
    sget-object p2, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 123
    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v3, " base64Data is empty"

    .line 136
    .line 137
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-static {p2, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return-object v1

    .line 148
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-static {p2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->base64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 153
    .line 154
    .line 155
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    return-object p1

    .line 157
    :catch_0
    move-exception p2

    .line 158
    sget-object v2, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 159
    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-static {v2, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    return-object v1
.end method

.method public getCurrentConfigJson()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->layoutBean:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->copy()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->localKeyBoardBeanList:Ljava/util/List;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->filterDrawerData(Ljava/util/List;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->setKeyboard(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getConfig()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getConfig()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v1, v1, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->drawerList:Ljava/util/List;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getConfig()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v1, v1, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->drawerList:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-virtual {v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->setDrawerList(Ljava/util/List;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getKeyboard()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {p0, v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->filterDrawerData(Ljava/util/List;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->setKeyboard(Ljava/util/List;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    iget-object v1, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->localXboxBeanList:Ljava/util/List;

    .line 76
    .line 77
    if-eqz v1, :cond_5

    .line 78
    .line 79
    new-instance v1, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->localXboxBeanList:Ljava/util/List;

    .line 85
    .line 86
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_4

    .line 95
    .line 96
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    check-cast v3, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 101
    .line 102
    invoke-virtual {v3}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->copy()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    if-eqz v3, :cond_3

    .line 107
    .line 108
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_4
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->setXbox(Ljava/util/List;)V

    .line 113
    .line 114
    .line 115
    :cond_5
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getKeyboard()Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getXbox()Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    const/4 v3, 0x1

    .line 124
    invoke-direct {p0, v1, v2, v3}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->filterOutFnBtns(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    if-eqz v1, :cond_6

    .line 129
    .line 130
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-lez v2, :cond_6

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->setFnBtns(Ljava/util/List;)V

    .line 137
    .line 138
    .line 139
    :cond_6
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    return-object v0
.end method

.method public getKeyboardLayout()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->localKeyBoardBeanList:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->layoutBean:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getKeyboard()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    return-object v0
.end method

.method public getKeyboardModeIsChecked()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->mModeIsCheckedFlags:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public getLayoutBean()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->layoutBean:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLayoutPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLocalConfig()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->localConfig:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScaleByApp()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->scaleByApp:F

    .line 2
    .line 3
    return v0
.end method

.method public getXboxLayout()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->localXboxBeanList:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->layoutBean:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getXbox()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    return-object v0
.end method

.method public getXboxModeIsChecked()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->mModeIsCheckedFlags:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    return v1
.end method

.method public hasLocalConfig(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v1, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->localKeyBoardBeanList:Ljava/util/List;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    :cond_0
    return v0

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->localXboxBeanList:Ljava/util/List;

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    :cond_2
    return v0
.end method

.method public isUsePointID(Ljava/lang/Integer;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->pointIDList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public loadingLayoutFromJson(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->loadingLayoutFromJson(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    move-result-object p1

    return-object p1
.end method

.method public loadingLayoutFromJson(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;
    .locals 3

    .line 2
    sget-object v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load json = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->reset()V

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "{\"config\":{\"default_layout\":\"\",\"xbox_alpha\":1},\"keyboard\":[],\"mouse\":{\"btn_sensitivity\":1,\"mode\":2,\"sensitivity\":1},\"xbox\":[{\"kT\":1,\"ks\":[{\"c\":0,\"k\":\"LT\"}],\"n\":\"LT\",\"p\":{\"h\":144,\"w\":144,\"x\":0.062,\"y\":0.222},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":256,\"k\":\"LB\"}],\"n\":\"LB\",\"p\":{\"h\":144,\"w\":144,\"x\":0.062,\"y\":0.378},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":0,\"k\":\"RT\"}],\"n\":\"RT\",\"p\":{\"h\":144,\"w\":144,\"x\":0.863,\"y\":0.222},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":512,\"k\":\"RB\"}],\"n\":\"RB\",\"p\":{\"h\":144,\"w\":144,\"x\":0.863,\"y\":0.378},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":16,\"k\":\"START\"}],\"n\":\"START\",\"p\":{\"h\":96,\"w\":96,\"x\":0.509,\"y\":0.033},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":32,\"k\":\"SELECT\"}],\"n\":\"SELECT\",\"p\":{\"h\":96,\"w\":96,\"x\":0.441,\"y\":0.033},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":64,\"k\":\"LS\"}],\"n\":\"LS\",\"p\":{\"h\":120,\"w\":120,\"x\":0.01,\"y\":0.519},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":128,\"k\":\"RS\"}],\"n\":\"RS\",\"p\":{\"h\":120,\"w\":120,\"x\":0.927,\"y\":0.519},\"s\":1,\"sT\":2},{\"kT\":4,\"ks\":[{\"c\":0,\"k\":\"LR\"}],\"n\":\"LR\",\"p\":{\"h\":320,\"w\":320,\"x\":0.083,\"y\":0.611},\"s\":1,\"sT\":2},{\"kT\":3,\"ks\":[{\"c\":1,\"k\":\"UP\"},{\"c\":2,\"k\":\"DOWN\"},{\"c\":4,\"k\":\"LEFT\"},{\"c\":8,\"k\":\"RIGHT\"}],\"n\":\"DIRECTION\",\"p\":{\"h\":240,\"w\":240,\"x\":0.312,\"y\":0.722},\"s\":1,\"sT\":2},{\"kT\":5,\"ks\":[{\"c\":0,\"k\":\"RR\"}],\"n\":\"RR\",\"p\":{\"h\":240,\"w\":240,\"x\":0.562,\"y\":0.722},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":4096,\"k\":\"A\"}],\"n\":\"A\",\"p\":{\"h\":120,\"w\":120,\"x\":0.839,\"y\":0.833},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":8192,\"k\":\"B\"}],\"n\":\"B\",\"p\":{\"h\":120,\"w\":120,\"x\":0.896,\"y\":0.731},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":16384,\"k\":\"X\"}],\"n\":\"X\",\"p\":{\"h\":120,\"w\":120,\"x\":0.781,\"y\":0.731},\"s\":1,\"sT\":2},{\"kT\":1,\"ks\":[{\"c\":32768,\"k\":\"Y\"}],\"n\":\"Y\",\"p\":{\"h\":120,\"w\":120,\"x\":0.839,\"y\":0.63},\"s\":1,\"sT\":2}]}"

    .line 5
    :cond_0
    iput-object p2, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->packageName:Ljava/lang/String;

    .line 6
    sget v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->containerWidth:I

    if-eqz v0, :cond_1

    sget v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->containerHeight:I

    if-nez v0, :cond_2

    .line 7
    :cond_1
    invoke-static {p3}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getDisplayMetrics(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 8
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->updateContainerWH(II)V

    .line 9
    :cond_2
    :try_start_0
    const-class v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    iput-object p1, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->layoutBean:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 10
    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->processDrawer(Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;)V

    .line 11
    iget-object p1, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->layoutBean:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    invoke-direct {p0, p1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->processFnBtns(Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;)V

    .line 12
    iget-object p1, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->layoutBean:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    invoke-direct {p0, p3, p1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->processPics(Landroid/content/Context;Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;)V

    .line 13
    iget-object p1, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->layoutBean:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getConfig()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->isAlphaSetByApp:Z

    if-nez p1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->layoutBean:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getConfig()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->getXbox_alpha()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->setTransparency(F)V

    :cond_3
    if-eqz p4, :cond_4

    .line 15
    invoke-direct {p0, p2, p3}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->loadLocalBeanList(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->layoutBean:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    return-object p1

    :catch_0
    move-exception p1

    .line 17
    sget-object p2, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "loadingLayoutFromJson error "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->layoutBean:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    return-object p1
.end method

.method public removePointID(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->pointIDList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->pointIDList:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    :cond_0
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "reset()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->localXboxBeanList:Ljava/util/List;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->localKeyBoardBeanList:Ljava/util/List;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->pointIDList:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->layoutBean:Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 19
    .line 20
    sget-boolean v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->isAlphaSetByApp:Z

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    const/high16 v1, 0x3f800000    # 1.0f

    .line 25
    .line 26
    sput v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->transparency:F

    .line 27
    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    sput-boolean v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 30
    .line 31
    sget-boolean v2, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->isShowRawKeySetByApp:Z

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    sput-boolean v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->showRawKey:Z

    .line 36
    .line 37
    :cond_1
    iput-object v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->operateListener:Lcom/haima/hmcp/virtual/HmVirtualDeviceManager$OperateListener;

    .line 38
    .line 39
    return-void
.end method

.method public resetModeIsCheckedFlags()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->mModeIsCheckedFlags:I

    .line 3
    .line 4
    return-void
.end method

.method public restoreSettingsState()V
    .locals 1

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->setBaseScale(F)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    sput-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->isAlphaSetByApp:Z

    .line 8
    .line 9
    sput-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->isShowRawKeySetByApp:Z

    .line 10
    .line 11
    sput-boolean v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->isScaleSetByApp:Z

    .line 12
    .line 13
    return-void
.end method

.method public saveLayout(Ljava/util/List;ILandroid/content/Context;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;I",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "saveLayout ;type="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->copy()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 v1, 0x1

    .line 55
    if-ne p2, v1, :cond_2

    .line 56
    .line 57
    iput-object v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->localKeyBoardBeanList:Ljava/util/List;

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    iput-object v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->localXboxBeanList:Ljava/util/List;

    .line 61
    .line 62
    :goto_1
    iget-object v2, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->operateListener:Lcom/haima/hmcp/virtual/HmVirtualDeviceManager$OperateListener;

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    invoke-interface {v2, p2, p1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager$OperateListener;->onSave(ILjava/util/List;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    invoke-direct {p0, v0, p2, p4}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->getSaveLayoutBean(Ljava/util/List;IZ)Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-ne p2, v1, :cond_4

    .line 74
    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->getKeyboard()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    :cond_4
    new-instance p4, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_6

    .line 95
    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->copy()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    if-eqz v1, :cond_5

    .line 107
    .line 108
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_6
    invoke-direct {p0, p3, p2, p4}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->saveFnBtns(Landroid/content/Context;ILjava/util/List;)V

    .line 113
    .line 114
    .line 115
    invoke-static {p4}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p4

    .line 119
    sget-object v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 120
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v2, "save Json = "

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const/4 v1, 0x0

    .line 142
    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    iget-object v4, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->packageName:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v4, "_"

    .line 161
    .line 162
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-direct {p0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->appendKey()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    invoke-interface {v2, p2, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    .line 181
    .line 182
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 183
    .line 184
    .line 185
    if-eqz p1, :cond_7

    .line 186
    .line 187
    const/4 p2, 0x0

    .line 188
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->setXbox(Ljava/util/List;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;->setKeyboard(Ljava/util/List;)V

    .line 192
    .line 193
    .line 194
    invoke-static {p1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    new-instance p2, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    const-string p4, "config save Json = "

    .line 204
    .line 205
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    invoke-static {v0, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    new-instance p3, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    iget-object p4, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->packageName:Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string p4, "_config"

    .line 237
    .line 238
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p3

    .line 245
    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 246
    .line 247
    .line 248
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .line 250
    .line 251
    goto :goto_3

    .line 252
    :catch_0
    move-exception p1

    .line 253
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 254
    .line 255
    .line 256
    sget-object p2, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 257
    .line 258
    new-instance p3, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    const-string p4, "saveLayout error = "

    .line 264
    .line 265
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    :cond_7
    :goto_3
    return-void
.end method

.method public savePicsToMemory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "savePicsToMemory : "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p3, "  "

    .line 17
    .line 18
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p3, " "

    .line 25
    .line 26
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    invoke-static {v0, p3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    if-nez p3, :cond_1

    .line 44
    .line 45
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-eqz p3, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object p3, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->mPicsMap:Ljava/util/Map;

    .line 53
    .line 54
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    return-void
.end method

.method public setBaseScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->mBaseScale:F

    .line 2
    .line 3
    return-void
.end method

.method public setIsUsingLargeLayoutConfig(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->mIsUsingLargeLayoutConfig:Z

    .line 2
    .line 3
    return-void
.end method

.method public setKeyboardModeIsChecked(Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->mModeIsCheckedFlags:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    or-int/2addr p1, v0

    .line 11
    iput p1, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->mModeIsCheckedFlags:I

    .line 12
    .line 13
    return-void
.end method

.method public setListener(Lcom/haima/hmcp/virtual/HmVirtualDeviceManager$OperateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->operateListener:Lcom/haima/hmcp/virtual/HmVirtualDeviceManager$OperateListener;

    .line 2
    .line 3
    return-void
.end method

.method public setScaleByApp(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->scaleByApp:F

    .line 2
    .line 3
    return-void
.end method

.method public setTransparency(F)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "updateTransparency  "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput p1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->transparency:F

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    cmpg-float v0, p1, v0

    .line 27
    .line 28
    if-gtz v0, :cond_0

    .line 29
    .line 30
    const p1, 0x3c23d70a    # 0.01f

    .line 31
    .line 32
    .line 33
    sput p1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->transparency:F

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 37
    .line 38
    cmpl-float p1, p1, v0

    .line 39
    .line 40
    if-lez p1, :cond_1

    .line 41
    .line 42
    sput v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->transparency:F

    .line 43
    .line 44
    :cond_1
    :goto_0
    return-void
.end method

.method public setXboxModeIsChecked(Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->mModeIsCheckedFlags:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    or-int/2addr p1, v0

    .line 6
    iput p1, p0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->mModeIsCheckedFlags:I

    .line 7
    .line 8
    return-void
.end method

.method public updateContainerWH(II)V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->rawRootPoint:Landroid/graphics/Point;

    .line 7
    .line 8
    sput p1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->containerWidth:I

    .line 9
    .line 10
    sput p2, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->containerHeight:I

    .line 11
    .line 12
    sget-object v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "updateContainerWH;"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, ";"

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    sget p2, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->containerWidth:I

    .line 39
    .line 40
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    sget p1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->containerHeight:I

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

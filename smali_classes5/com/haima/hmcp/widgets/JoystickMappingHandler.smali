.class public Lcom/haima/hmcp/widgets/JoystickMappingHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/widgets/JoystickMappingHandler$Point;
    }
.end annotation


# static fields
.field private static final JOYSTICK_RADIUS:F = 100.0f

.field private static final MAX_INTERVAL_SAMPLES:I = 0xa

.field public static final MOUSE_SCALE:F = 10.0f

.field private static final TAG:Ljava/lang/String; = "JoystickMappingHandler"


# instance fields
.field private accumulatedX:F

.field private accumulatedY:F

.field private activeNonUsePointIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private currentStopDetectionTime:I

.field private fingerLastPositions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/haima/hmcp/widgets/JoystickMappingHandler$Point;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private joyStickReleaseRunnable:Ljava/lang/Runnable;

.field private lastEvent:Landroid/view/MotionEvent;

.field private lastMouseMoveTime:D

.field private lastType:I

.field private mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

.field private mIsMouse:Z

.field private mJoyStickMappingConfig:Lcom/haima/hmcp/beans/JoyStickMappingConfig;

.field private mTouchesMappingConfig:Lcom/haima/hmcp/beans/TouchesMappingConfig;

.field private mouseMoveIntervals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/beans/JoyStickMappingConfig;Lcom/haima/hmcp/beans/TouchesMappingConfig;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->accumulatedX:F

    .line 6
    .line 7
    iput v0, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->accumulatedY:F

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->lastType:I

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->lastEvent:Landroid/view/MotionEvent;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->mouseMoveIntervals:Ljava/util/List;

    .line 21
    .line 22
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    iput-wide v0, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->lastMouseMoveTime:D

    .line 25
    .line 26
    const/16 v0, 0x14

    .line 27
    .line 28
    iput v0, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->currentStopDetectionTime:I

    .line 29
    .line 30
    new-instance v0, Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->fingerLastPositions:Ljava/util/HashMap;

    .line 36
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->activeNonUsePointIds:Ljava/util/List;

    .line 43
    .line 44
    new-instance v0, Landroid/os/Handler;

    .line 45
    .line 46
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->handler:Landroid/os/Handler;

    .line 54
    .line 55
    iput-object p1, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 56
    .line 57
    iput-object p2, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->mJoyStickMappingConfig:Lcom/haima/hmcp/beans/JoyStickMappingConfig;

    .line 58
    .line 59
    iput-object p3, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->mTouchesMappingConfig:Lcom/haima/hmcp/beans/TouchesMappingConfig;

    .line 60
    .line 61
    iput-boolean p4, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->mIsMouse:Z

    .line 62
    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/widgets/JoystickMappingHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->resetJoyStickRockerMapping()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private cancelJoyStickReleaseTimer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->joyStickReleaseRunnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->handler:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private checkMouseRefreshRate()V
    .locals 9

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "checkMouseRefreshRate: begin"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->mJoyStickMappingConfig:Lcom/haima/hmcp/beans/JoyStickMappingConfig;

    .line 9
    .line 10
    if-eqz v1, :cond_5

    .line 11
    .line 12
    iget-object v1, v1, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->MOUSE_REFRESH_RATES:Ljava/util/List;

    .line 13
    .line 14
    if-eqz v1, :cond_5

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    long-to-double v0, v0

    .line 29
    iget-wide v2, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->lastMouseMoveTime:D

    .line 30
    .line 31
    const-wide/16 v4, 0x0

    .line 32
    .line 33
    cmpl-double v6, v2, v4

    .line 34
    .line 35
    if-lez v6, :cond_4

    .line 36
    .line 37
    sub-double v2, v0, v2

    .line 38
    .line 39
    iget-object v6, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->mouseMoveIntervals:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    const/16 v7, 0xa

    .line 46
    .line 47
    if-lt v6, v7, :cond_1

    .line 48
    .line 49
    iget-object v6, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->mouseMoveIntervals:Ljava/util/List;

    .line 50
    .line 51
    const/4 v7, 0x0

    .line 52
    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v6, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->mouseMoveIntervals:Ljava/util/List;

    .line 56
    .line 57
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->mouseMoveIntervals:Ljava/util/List;

    .line 65
    .line 66
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    const/4 v3, 0x5

    .line 71
    if-lt v2, v3, :cond_4

    .line 72
    .line 73
    iget-object v2, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->mouseMoveIntervals:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_2

    .line 84
    .line 85
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Ljava/lang/Double;

    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 92
    .line 93
    .line 94
    move-result-wide v6

    .line 95
    add-double/2addr v4, v6

    .line 96
    goto :goto_0

    .line 97
    :cond_2
    iget-object v2, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->mouseMoveIntervals:Ljava/util/List;

    .line 98
    .line 99
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    int-to-double v2, v2

    .line 104
    div-double/2addr v4, v2

    .line 105
    iget-object v2, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->mJoyStickMappingConfig:Lcom/haima/hmcp/beans/JoyStickMappingConfig;

    .line 106
    .line 107
    iget-object v2, v2, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->MOUSE_REFRESH_RATES:Ljava/util/List;

    .line 108
    .line 109
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-eqz v3, :cond_4

    .line 118
    .line 119
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    check-cast v3, Lcom/haima/hmcp/beans/JoyStickMappingConfig$MouseRefreshRate;

    .line 124
    .line 125
    iget-object v6, v3, Lcom/haima/hmcp/beans/JoyStickMappingConfig$MouseRefreshRate;->interval:Ljava/lang/Double;

    .line 126
    .line 127
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    .line 128
    .line 129
    .line 130
    move-result-wide v6

    .line 131
    cmpg-double v8, v4, v6

    .line 132
    .line 133
    if-gtz v8, :cond_3

    .line 134
    .line 135
    iget-object v2, v3, Lcom/haima/hmcp/beans/JoyStickMappingConfig$MouseRefreshRate;->detectionTime:Ljava/lang/Integer;

    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    iput v2, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->currentStopDetectionTime:I

    .line 142
    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string v3, "avgInterval = "

    .line 149
    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v3, " currentStopDetectionTime = "

    .line 157
    .line 158
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget v3, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->currentStopDetectionTime:I

    .line 162
    .line 163
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    const-string v3, "JoystickInput"

    .line 171
    .line 172
    invoke-static {v3, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :cond_4
    iput-wide v0, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->lastMouseMoveTime:D

    .line 176
    .line 177
    return-void

    .line 178
    :cond_5
    :goto_1
    const-string v1, "checkMouseRefreshRate: no mouse refresh rate config"

    .line 179
    .line 180
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    return-void
.end method

.method private handleAllNonUsePointIds(Landroid/view/MotionEvent;)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->isUsePointID(Ljava/lang/Integer;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    float-to-int v2, v2

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    float-to-int v3, v3

    .line 38
    iget-object v4, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->fingerLastPositions:Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Lcom/haima/hmcp/widgets/JoystickMappingHandler$Point;

    .line 49
    .line 50
    if-nez v4, :cond_1

    .line 51
    .line 52
    new-instance v4, Lcom/haima/hmcp/widgets/JoystickMappingHandler$Point;

    .line 53
    .line 54
    invoke-direct {v4, v2, v3}, Lcom/haima/hmcp/widgets/JoystickMappingHandler$Point;-><init>(II)V

    .line 55
    .line 56
    .line 57
    iget-object v5, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->fingerLastPositions:Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    sget-object v4, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->TAG:Ljava/lang/String;

    .line 67
    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v6, "handleAllNonUsePointIds: Initialized finger "

    .line 74
    .line 75
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v1, " position - X:"

    .line 82
    .line 83
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v1, ", Y:"

    .line 90
    .line 91
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {v4, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_1
    iget-boolean v5, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->mIsMouse:Z

    .line 106
    .line 107
    if-eqz v5, :cond_2

    .line 108
    .line 109
    const/16 v5, 0x1b

    .line 110
    .line 111
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    float-to-int v5, v5

    .line 116
    const/16 v6, 0x1c

    .line 117
    .line 118
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    float-to-int v6, v6

    .line 123
    goto :goto_1

    .line 124
    :cond_2
    iget v5, v4, Lcom/haima/hmcp/widgets/JoystickMappingHandler$Point;->x:I

    .line 125
    .line 126
    sub-int v5, v2, v5

    .line 127
    .line 128
    iget v6, v4, Lcom/haima/hmcp/widgets/JoystickMappingHandler$Point;->y:I

    .line 129
    .line 130
    sub-int v6, v3, v6

    .line 131
    .line 132
    :goto_1
    sget-object v7, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->TAG:Ljava/lang/String;

    .line 133
    .line 134
    new-instance v8, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v9, "handleAllNonUsePointIds pointID:"

    .line 140
    .line 141
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v1, " offsetX:"

    .line 148
    .line 149
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v1, ",offsetY:"

    .line 156
    .line 157
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v1, " (lastX:"

    .line 164
    .line 165
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget v1, v4, Lcom/haima/hmcp/widgets/JoystickMappingHandler$Point;->x:I

    .line 169
    .line 170
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v1, ", lastY:"

    .line 174
    .line 175
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget v1, v4, Lcom/haima/hmcp/widgets/JoystickMappingHandler$Point;->y:I

    .line 179
    .line 180
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v1, ")"

    .line 184
    .line 185
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-static {v7, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    int-to-float v1, v5

    .line 196
    int-to-float v5, v6

    .line 197
    iget-boolean v6, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->mIsMouse:Z

    .line 198
    .line 199
    invoke-direct {p0, p1, v1, v5, v6}, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->handleMouseMovement(Landroid/view/MotionEvent;FFZ)V

    .line 200
    .line 201
    .line 202
    iput v2, v4, Lcom/haima/hmcp/widgets/JoystickMappingHandler$Point;->x:I

    .line 203
    .line 204
    iput v3, v4, Lcom/haima/hmcp/widgets/JoystickMappingHandler$Point;->y:I

    .line 205
    .line 206
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :cond_3
    return-void
.end method

.method private handleMouseMovement(Landroid/view/MotionEvent;FFZ)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->checkMouseRefreshRate()V

    .line 2
    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->cancelJoyStickReleaseTimer()V

    .line 7
    .line 8
    .line 9
    :cond_0
    if-nez p4, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->mTouchesMappingConfig:Lcom/haima/hmcp/beans/TouchesMappingConfig;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget v0, v0, Lcom/haima/hmcp/beans/TouchesMappingConfig;->sensitivity:F

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    cmpg-float v1, v0, v1

    .line 19
    .line 20
    if-gtz v1, :cond_1

    .line 21
    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    .line 24
    :cond_1
    mul-float p2, p2, v0

    .line 25
    .line 26
    mul-float p3, p3, v0

    .line 27
    .line 28
    :cond_2
    if-eqz p4, :cond_3

    .line 29
    .line 30
    const/high16 v0, 0x41200000    # 10.0f

    .line 31
    .line 32
    mul-float p2, p2, v0

    .line 33
    .line 34
    mul-float p3, p3, v0

    .line 35
    .line 36
    :cond_3
    iget v0, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->accumulatedX:F

    .line 37
    .line 38
    add-float/2addr v0, p2

    .line 39
    const/high16 v1, -0x3d380000    # -100.0f

    .line 40
    .line 41
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/high16 v2, 0x42c80000    # 100.0f

    .line 46
    .line 47
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iput v0, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->accumulatedX:F

    .line 52
    .line 53
    iget v0, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->accumulatedY:F

    .line 54
    .line 55
    add-float/2addr v0, p3

    .line 56
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput v0, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->accumulatedY:F

    .line 65
    .line 66
    sget-object v0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->TAG:Ljava/lang/String;

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v3, "handleMouseMovement11: mouseX:"

    .line 74
    .line 75
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p2, ",mouseY:"

    .line 82
    .line 83
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p2, ",accumulatedX:"

    .line 90
    .line 91
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget p2, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->accumulatedX:F

    .line 95
    .line 96
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p2, ",accumulatedY:"

    .line 100
    .line 101
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget p2, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->accumulatedY:F

    .line 105
    .line 106
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-static {v0, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget p2, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->accumulatedX:F

    .line 117
    .line 118
    mul-float p2, p2, p2

    .line 119
    .line 120
    iget p3, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->accumulatedY:F

    .line 121
    .line 122
    mul-float p3, p3, p3

    .line 123
    .line 124
    add-float/2addr p2, p3

    .line 125
    float-to-double p2, p2

    .line 126
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    .line 127
    .line 128
    .line 129
    move-result-wide p2

    .line 130
    double-to-float p2, p2

    .line 131
    cmpl-float p3, p2, v2

    .line 132
    .line 133
    if-lez p3, :cond_4

    .line 134
    .line 135
    div-float p2, v2, p2

    .line 136
    .line 137
    iget p3, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->accumulatedX:F

    .line 138
    .line 139
    mul-float p3, p3, p2

    .line 140
    .line 141
    iput p3, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->accumulatedX:F

    .line 142
    .line 143
    iget p3, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->accumulatedY:F

    .line 144
    .line 145
    mul-float p3, p3, p2

    .line 146
    .line 147
    iput p3, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->accumulatedY:F

    .line 148
    .line 149
    :cond_4
    iget p2, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->accumulatedX:F

    .line 150
    .line 151
    div-float v5, p2, v2

    .line 152
    .line 153
    iget p2, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->accumulatedY:F

    .line 154
    .line 155
    div-float v6, p2, v2

    .line 156
    .line 157
    iget-object p2, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->mTouchesMappingConfig:Lcom/haima/hmcp/beans/TouchesMappingConfig;

    .line 158
    .line 159
    if-eqz p2, :cond_5

    .line 160
    .line 161
    iget-object p2, p2, Lcom/haima/hmcp/beans/TouchesMappingConfig;->touchesMapperType:Ljava/lang/Integer;

    .line 162
    .line 163
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 164
    .line 165
    .line 166
    move-result p2

    .line 167
    goto :goto_0

    .line 168
    :cond_5
    const/4 p2, 0x0

    .line 169
    :goto_0
    const/4 p3, 0x2

    .line 170
    if-eqz p4, :cond_7

    .line 171
    .line 172
    iget-object v1, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->mJoyStickMappingConfig:Lcom/haima/hmcp/beans/JoyStickMappingConfig;

    .line 173
    .line 174
    if-eqz v1, :cond_7

    .line 175
    .line 176
    const-string v2, "LEFT_STICK"

    .line 177
    .line 178
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->getStickEnabled()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-eqz v1, :cond_6

    .line 187
    .line 188
    const/4 v7, 0x2

    .line 189
    goto :goto_1

    .line 190
    :cond_6
    iget-object v1, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->mJoyStickMappingConfig:Lcom/haima/hmcp/beans/JoyStickMappingConfig;

    .line 191
    .line 192
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->getStickEnabled()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    const-string v2, "RIGHT_STICK"

    .line 197
    .line 198
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_7

    .line 203
    .line 204
    const/4 p2, 0x3

    .line 205
    const/4 v7, 0x3

    .line 206
    goto :goto_1

    .line 207
    :cond_7
    move v7, p2

    .line 208
    :goto_1
    iput v7, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->lastType:I

    .line 209
    .line 210
    iput-object p1, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->lastEvent:Landroid/view/MotionEvent;

    .line 211
    .line 212
    new-instance p2, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    const-string v1, "handleMouseMovement: stickX:"

    .line 218
    .line 219
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v1, ",stickY:"

    .line 226
    .line 227
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v1, ",type:"

    .line 234
    .line 235
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    invoke-static {v0, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    if-eqz p4, :cond_8

    .line 249
    .line 250
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->startJoyStickReleaseTimer()V

    .line 251
    .line 252
    .line 253
    iget-object v3, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 254
    .line 255
    iget-boolean v8, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->mIsMouse:Z

    .line 256
    .line 257
    move-object v4, p1

    .line 258
    invoke-virtual/range {v3 .. v8}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendGamePadDataMappingMotion(Landroid/view/InputEvent;FFIZ)Z

    .line 259
    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 263
    .line 264
    .line 265
    move-result p2

    .line 266
    if-ne p2, p3, :cond_9

    .line 267
    .line 268
    iget-object v3, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 269
    .line 270
    iget-boolean v8, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->mIsMouse:Z

    .line 271
    .line 272
    move-object v4, p1

    .line 273
    invoke-virtual/range {v3 .. v8}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendGamePadDataMappingMotion(Landroid/view/InputEvent;FFIZ)Z

    .line 274
    .line 275
    .line 276
    :cond_9
    :goto_2
    return-void
.end method

.method private handleMultiTouchState(Landroid/view/MotionEvent;II)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->isUsePointID(Ljava/lang/Integer;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string p1, ", active count: "

    .line 17
    .line 18
    if-eqz p3, :cond_2

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    if-eq p3, v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    if-eq p3, v0, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x5

    .line 27
    if-eq p3, v0, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x6

    .line 30
    if-eq p3, v0, :cond_1

    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :cond_1
    iget-object p3, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->activeNonUsePointIds:Ljava/util/List;

    .line 35
    .line 36
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    if-eqz p3, :cond_3

    .line 45
    .line 46
    iget-object p3, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->activeNonUsePointIds:Ljava/util/List;

    .line 47
    .line 48
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {p3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    iget-object p3, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->fingerLastPositions:Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    sget-object p3, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->TAG:Ljava/lang/String;

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v1, "handleMultiTouchState: Removed pointID "

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->activeNonUsePointIds:Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string p1, ", cleaned position record"

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {p3, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->activeNonUsePointIds:Ljava/util/List;

    .line 104
    .line 105
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_3

    .line 110
    .line 111
    const-string p1, "handleMultiTouchState: Last non-usePointId finger released, resetting joystick"

    .line 112
    .line 113
    invoke-static {p3, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->resetJoyStickRockerMapping()V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    iget-object p3, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->activeNonUsePointIds:Ljava/util/List;

    .line 121
    .line 122
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result p3

    .line 130
    if-nez p3, :cond_3

    .line 131
    .line 132
    iget-object p3, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->activeNonUsePointIds:Ljava/util/List;

    .line 133
    .line 134
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    sget-object p3, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->TAG:Ljava/lang/String;

    .line 142
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string v1, "handleMultiTouchState: Added pointID "

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->activeNonUsePointIds:Ljava/util/List;

    .line 160
    .line 161
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-static {p3, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :cond_3
    :goto_0
    return-void
.end method

.method private resetJoyStickRockerMapping()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->accumulatedX:F

    .line 3
    .line 4
    iput v0, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->accumulatedY:F

    .line 5
    .line 6
    iget-object v1, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->lastEvent:Landroid/view/MotionEvent;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    iget v5, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->lastType:I

    .line 17
    .line 18
    iget-boolean v6, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->mIsMouse:Z

    .line 19
    .line 20
    invoke-virtual/range {v1 .. v6}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendGamePadDataMappingMotion(Landroid/view/InputEvent;FFIZ)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private startJoyStickReleaseTimer()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->joyStickReleaseRunnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/haima/hmcp/widgets/JoystickMappingHandler$1;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/haima/hmcp/widgets/JoystickMappingHandler$1;-><init>(Lcom/haima/hmcp/widgets/JoystickMappingHandler;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->joyStickReleaseRunnable:Ljava/lang/Runnable;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->handler:Landroid/os/Handler;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->joyStickReleaseRunnable:Ljava/lang/Runnable;

    .line 15
    .line 16
    iget v2, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->currentStopDetectionTime:I

    .line 17
    .line 18
    int-to-long v2, v2

    .line 19
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public handleJoystickMapping(Landroid/view/MotionEvent;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "handleJoystickMapping: mBaseRtcVideoView is null"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const/4 v2, 0x5

    .line 28
    if-ne v0, v2, :cond_2

    .line 29
    .line 30
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-ltz v2, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    float-to-int v3, v3

    .line 41
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    float-to-int v2, v2

    .line 46
    iget-object v4, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->fingerLastPositions:Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    new-instance v6, Lcom/haima/hmcp/widgets/JoystickMappingHandler$Point;

    .line 53
    .line 54
    invoke-direct {v6, v3, v2}, Lcom/haima/hmcp/widgets/JoystickMappingHandler$Point;-><init>(II)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    sget-object v4, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v6, "handleJoystickMapping: Initialized finger "

    .line 68
    .line 69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v6, " coordinates - X:"

    .line 76
    .line 77
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v3, ", Y:"

    .line 84
    .line 85
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {v4, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    invoke-direct {p0, p1, v1, v0}, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->handleMultiTouchState(Landroid/view/MotionEvent;II)V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->handleAllNonUsePointIds(Landroid/view/MotionEvent;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public reset()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->accumulatedX:F

    .line 3
    .line 4
    iput v0, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->accumulatedY:F

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->lastType:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->lastEvent:Landroid/view/MotionEvent;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->fingerLastPositions:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->mouseMoveIntervals:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 20
    .line 21
    .line 22
    const-wide/16 v1, 0x0

    .line 23
    .line 24
    iput-wide v1, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->lastMouseMoveTime:D

    .line 25
    .line 26
    iput v0, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->currentStopDetectionTime:I

    .line 27
    .line 28
    iget-object v0, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->activeNonUsePointIds:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->cancelJoyStickReleaseTimer()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public setBaseRtcVideoView(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    return-void
.end method

.method public setJoyStickMappingConfig(Lcom/haima/hmcp/beans/JoyStickMappingConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->mJoyStickMappingConfig:Lcom/haima/hmcp/beans/JoyStickMappingConfig;

    .line 2
    .line 3
    return-void
.end method

.method public setTouchesMappingConfig(Lcom/haima/hmcp/beans/TouchesMappingConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->mTouchesMappingConfig:Lcom/haima/hmcp/beans/TouchesMappingConfig;

    .line 2
    .line 3
    return-void
.end method

.class public Lcom/haima/hmcp/widgets/TouchUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/widgets/TouchUtil$DeviceInfo;
    }
.end annotation


# static fields
.field private static final DUEATION_LONG_PRESS_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "TouchUtil"

.field private static final mDiscount:I = 0x5


# instance fields
.field private final DEFAULT_GAME_PACKAGE_NAME:Ljava/lang/String;

.field private capturedPointerReverseDeviceInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/haima/hmcp/widgets/TouchUtil$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private curGamePackageName:Ljava/lang/String;

.field private downTime:J

.field private downX:I

.field private downY:I

.field private errorPointID:I

.field private firstPointerIndex:I

.field private firstPointerX:F

.field private firstPointerY:F

.field private handler:Landroid/os/Handler;

.field private hasMouseDown:Z

.field private hasRMouseDown:Z

.field private hasRequestPointerCapture:Z

.field private hotSpotX:F

.field private hotSpotY:F

.field private isDoubleSliding:Z

.field private isTvLMouseDown:Z

.field private isTvMMouseDown:Z

.field private isTvRMouseDown:Z

.field private lastCursorPosition:Landroid/graphics/Point;

.field private lastEventTime:J

.field protected lastPositionMode:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;

.field private lastX:I

.field private lastY:I

.field private mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

.field private mBtnSensitivity:F

.field private mCurPositionMode:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;

.field private mCursorBitmap:Landroid/graphics/Bitmap;

.field private mCursorShowOrHide:Z

.field private mCursorStyle:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

.field private mFunctionSensitivity:Ljava/lang/Float;

.field private mIsHasMove:Z

.field private mIsValidEvent:Z

.field public mJoyStickMappingConfig:Lcom/haima/hmcp/beans/JoyStickMappingConfig;

.field private mJoystickMouseMappingHandler:Lcom/haima/hmcp/widgets/JoystickMappingHandler;

.field private mJoystickTouchMappingHandler:Lcom/haima/hmcp/widgets/JoystickMappingHandler;

.field private mLastCursorPosition:Landroid/graphics/Point;

.field private mLastPosition:Landroid/graphics/Point;

.field private mLastRelativePosition:Landroid/graphics/Point;

.field private mLastX:I

.field private mLastY:I

.field private mMouseLastPosition:Landroid/graphics/Point;

.field private mMouseLastX:I

.field private mMouseLastY:I

.field private mMoveX:I

.field private mMoveY:I

.field private mOriginSensitivity:Ljava/lang/Float;

.field private mPhysicalMouseViewOnSensitivity:F

.field private mPointerIcon:Landroid/view/PointerIcon;

.field private mScale:F

.field private mSpaceAreaPointID:I

.field private mStartX:I

.field private mStartY:I

.field private mTemLastPosition:Landroid/graphics/Point;

.field private mTemLastRelativePosition:Landroid/graphics/Point;

.field private mTempPositionX:I

.field private mTempPositionY:I

.field private mTimer:Ljava/util/Timer;

.field private mTouchMode:Lcom/haima/hmcp/enums/TouchMode;

.field public mTouchesMappingConfig:Lcom/haima/hmcp/beans/TouchesMappingConfig;

.field private mTransparentCursorBitmap:Landroid/graphics/Bitmap;

.field private mUseSpecificSensitivity:Z

.field private mouseAnimateModel:Lcom/haima/hmcp/model/MouseAnimateModel;

.field private pointerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;",
            ">;"
        }
    .end annotation
.end field

.field progressRunnable:Ljava/lang/Runnable;

.field private rightClickTimer:Ljava/util/Timer;

.field private secondPointerIndex:I

.field private secondPointerX:F

.field private secondPointerY:F

.field private tDownEventTime:J

.field private touchConfig:Lcom/haima/hmcp/beans/X86TouchConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/haima/hmcp/Constants;->DEFAULT_TOUCH_MODE:Lcom/haima/hmcp/enums/TouchMode;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTouchMode:Lcom/haima/hmcp/enums/TouchMode;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mIsValidEvent:Z

    .line 10
    .line 11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iput v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mScale:F

    .line 18
    .line 19
    new-instance v3, Landroid/graphics/Point;

    .line 20
    .line 21
    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastPosition:Landroid/graphics/Point;

    .line 25
    .line 26
    new-instance v3, Landroid/graphics/Point;

    .line 27
    .line 28
    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTemLastPosition:Landroid/graphics/Point;

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    iput-boolean v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mCursorShowOrHide:Z

    .line 35
    .line 36
    const/4 v4, -0x1

    .line 37
    iput v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastX:I

    .line 38
    .line 39
    iput v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastY:I

    .line 40
    .line 41
    iput v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mMoveX:I

    .line 42
    .line 43
    iput v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mMoveY:I

    .line 44
    .line 45
    iput-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mOriginSensitivity:Ljava/lang/Float;

    .line 46
    .line 47
    iput-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mFunctionSensitivity:Ljava/lang/Float;

    .line 48
    .line 49
    iput-boolean v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mUseSpecificSensitivity:Z

    .line 50
    .line 51
    iput v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBtnSensitivity:F

    .line 52
    .line 53
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;->ABSOLUTE_MODE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;

    .line 54
    .line 55
    iput-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mCurPositionMode:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;

    .line 56
    .line 57
    new-instance v5, Landroid/graphics/Point;

    .line 58
    .line 59
    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v5, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastRelativePosition:Landroid/graphics/Point;

    .line 63
    .line 64
    new-instance v5, Landroid/graphics/Point;

    .line 65
    .line 66
    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v5, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTemLastRelativePosition:Landroid/graphics/Point;

    .line 70
    .line 71
    new-instance v5, Ljava/util/Timer;

    .line 72
    .line 73
    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v5, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTimer:Ljava/util/Timer;

    .line 77
    .line 78
    new-instance v5, Ljava/util/Timer;

    .line 79
    .line 80
    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v5, p0, Lcom/haima/hmcp/widgets/TouchUtil;->rightClickTimer:Ljava/util/Timer;

    .line 84
    .line 85
    iput v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downX:I

    .line 86
    .line 87
    iput v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downY:I

    .line 88
    .line 89
    const-wide/16 v5, 0x0

    .line 90
    .line 91
    iput-wide v5, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downTime:J

    .line 92
    .line 93
    iput v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastX:I

    .line 94
    .line 95
    iput v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastY:I

    .line 96
    .line 97
    const/4 v7, 0x0

    .line 98
    iput v7, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hotSpotX:F

    .line 99
    .line 100
    iput v7, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hotSpotY:F

    .line 101
    .line 102
    new-instance v7, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v7, p0, Lcom/haima/hmcp/widgets/TouchUtil;->pointerList:Ljava/util/List;

    .line 108
    .line 109
    iput v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->firstPointerIndex:I

    .line 110
    .line 111
    iput v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->secondPointerIndex:I

    .line 112
    .line 113
    iput v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->errorPointID:I

    .line 114
    .line 115
    iput v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mSpaceAreaPointID:I

    .line 116
    .line 117
    new-instance v4, Landroid/graphics/Point;

    .line 118
    .line 119
    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 120
    .line 121
    .line 122
    iput-object v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastCursorPosition:Landroid/graphics/Point;

    .line 123
    .line 124
    iput-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastPositionMode:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;

    .line 125
    .line 126
    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 127
    .line 128
    invoke-static {v3, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    iput-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTransparentCursorBitmap:Landroid/graphics/Bitmap;

    .line 133
    .line 134
    new-instance v2, Landroid/graphics/Point;

    .line 135
    .line 136
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 137
    .line 138
    .line 139
    iput-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mMouseLastPosition:Landroid/graphics/Point;

    .line 140
    .line 141
    new-instance v2, Landroid/graphics/Point;

    .line 142
    .line 143
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 144
    .line 145
    .line 146
    iput-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastCursorPosition:Landroid/graphics/Point;

    .line 147
    .line 148
    iput v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mMouseLastX:I

    .line 149
    .line 150
    iput v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mMouseLastY:I

    .line 151
    .line 152
    new-instance v2, Landroid/os/Handler;

    .line 153
    .line 154
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 159
    .line 160
    .line 161
    iput-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->handler:Landroid/os/Handler;

    .line 162
    .line 163
    iput v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mPhysicalMouseViewOnSensitivity:F

    .line 164
    .line 165
    iput-boolean v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hasRequestPointerCapture:Z

    .line 166
    .line 167
    new-instance v1, Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .line 171
    .line 172
    iput-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->capturedPointerReverseDeviceInfo:Ljava/util/ArrayList;

    .line 173
    .line 174
    iput-wide v5, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastEventTime:J

    .line 175
    .line 176
    iput-boolean v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isDoubleSliding:Z

    .line 177
    .line 178
    const-string v0, "default"

    .line 179
    .line 180
    iput-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->DEFAULT_GAME_PACKAGE_NAME:Ljava/lang/String;

    .line 181
    .line 182
    iput-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->curGamePackageName:Ljava/lang/String;

    .line 183
    .line 184
    new-instance v0, Lcom/haima/hmcp/beans/X86TouchConfig;

    .line 185
    .line 186
    invoke-direct {v0}, Lcom/haima/hmcp/beans/X86TouchConfig;-><init>()V

    .line 187
    .line 188
    .line 189
    iput-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->touchConfig:Lcom/haima/hmcp/beans/X86TouchConfig;

    .line 190
    .line 191
    return-void
.end method

.method public static synthetic a(Lcom/haima/hmcp/widgets/TouchUtil;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->lambda$touchEvent$1()V

    return-void
.end method

.method static synthetic access$002(Lcom/haima/hmcp/widgets/TouchUtil;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isDoubleSliding:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1000(Lcom/haima/hmcp/widgets/TouchUtil;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mPhysicalMouseViewOnSensitivity:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$102(Lcom/haima/hmcp/widgets/TouchUtil;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hasMouseDown:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1100(Lcom/haima/hmcp/widgets/TouchUtil;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hotSpotX:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1102(Lcom/haima/hmcp/widgets/TouchUtil;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hotSpotX:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1200(Lcom/haima/hmcp/widgets/TouchUtil;Landroid/graphics/Bitmap;F)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/widgets/TouchUtil;->isBadHotSpotX(Landroid/graphics/Bitmap;F)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$1300(Lcom/haima/hmcp/widgets/TouchUtil;Landroid/graphics/Bitmap;)F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/TouchUtil;->getFixHotSpotX(Landroid/graphics/Bitmap;)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$1400(Lcom/haima/hmcp/widgets/TouchUtil;Landroid/graphics/Bitmap;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/widgets/TouchUtil;->reportErrorHotSpotX(Landroid/graphics/Bitmap;F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1500(Lcom/haima/hmcp/widgets/TouchUtil;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hotSpotY:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1502(Lcom/haima/hmcp/widgets/TouchUtil;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hotSpotY:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1600(Lcom/haima/hmcp/widgets/TouchUtil;Landroid/graphics/Bitmap;F)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/widgets/TouchUtil;->isBadHotSpotY(Landroid/graphics/Bitmap;F)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$1700(Lcom/haima/hmcp/widgets/TouchUtil;Landroid/graphics/Bitmap;)F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/TouchUtil;->getFixHotSpotY(Landroid/graphics/Bitmap;)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$1800(Lcom/haima/hmcp/widgets/TouchUtil;Landroid/graphics/Bitmap;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/widgets/TouchUtil;->reportErrorHotSpotY(Landroid/graphics/Bitmap;F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1900(Lcom/haima/hmcp/widgets/TouchUtil;)Landroid/view/PointerIcon;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mPointerIcon:Landroid/view/PointerIcon;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1902(Lcom/haima/hmcp/widgets/TouchUtil;Landroid/view/PointerIcon;)Landroid/view/PointerIcon;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mPointerIcon:Landroid/view/PointerIcon;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$202(Lcom/haima/hmcp/widgets/TouchUtil;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTimer:Ljava/util/Timer;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$302(Lcom/haima/hmcp/widgets/TouchUtil;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hasRMouseDown:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$400(Lcom/haima/hmcp/widgets/TouchUtil;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->startAnimator()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/haima/hmcp/widgets/TouchUtil;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/haima/hmcp/widgets/TouchUtil;)Lcom/haima/hmcp/beans/X86TouchConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->touchConfig:Lcom/haima/hmcp/beans/X86TouchConfig;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/haima/hmcp/widgets/TouchUtil;)Landroid/graphics/Point;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastPosition:Landroid/graphics/Point;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$900(Lcom/haima/hmcp/widgets/TouchUtil;Landroid/view/MotionEvent;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/widgets/TouchUtil;->sendMouseButtonEventMapping(Landroid/view/MotionEvent;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic b(Lcom/haima/hmcp/widgets/TouchUtil;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->lambda$touchEvent$0()V

    return-void
.end method

.method private calculatePoint(II)Lcom/haima/hmcp/beans/FPoint;
    .locals 5

    .line 1
    new-instance v0, Lcom/haima/hmcp/beans/FPoint;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/beans/FPoint;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Lcom/haima/hmcp/enums/ScreenOrientation;->PORTRAIT:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 13
    .line 14
    if-ne v1, v2, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    .line 19
    .line 20
    int-to-float v2, p1

    .line 21
    int-to-float v3, p2

    .line 22
    invoke-interface {v1, v2, v3}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getPortaitX(FF)F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget-object v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 27
    .line 28
    iget-object v4, v4, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    .line 29
    .line 30
    invoke-interface {v4, v2, v3}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getPortaitY(FF)F

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iget-object v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 35
    .line 36
    iget-object v3, v3, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    .line 37
    .line 38
    instance-of v4, v3, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;

    .line 39
    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    invoke-interface {v3}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    int-to-float v3, v3

    .line 51
    mul-float v3, v3, v1

    .line 52
    .line 53
    iput v3, v0, Lcom/haima/hmcp/beans/FPoint;->x:F

    .line 54
    .line 55
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 56
    .line 57
    iget-object v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    .line 58
    .line 59
    invoke-interface {v1}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    int-to-float v1, v1

    .line 68
    mul-float v1, v1, v2

    .line 69
    .line 70
    iput v1, v0, Lcom/haima/hmcp/beans/FPoint;->y:F

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    invoke-interface {v3}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    int-to-float v3, v3

    .line 82
    mul-float v3, v3, v1

    .line 83
    .line 84
    iput v3, v0, Lcom/haima/hmcp/beans/FPoint;->x:F

    .line 85
    .line 86
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 87
    .line 88
    iget-object v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    .line 89
    .line 90
    invoke-interface {v1}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    int-to-float v1, v1

    .line 99
    mul-float v1, v1, v2

    .line 100
    .line 101
    iput v1, v0, Lcom/haima/hmcp/beans/FPoint;->y:F

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 105
    .line 106
    iget-object v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    .line 107
    .line 108
    int-to-float v2, p1

    .line 109
    int-to-float v3, p2

    .line 110
    invoke-interface {v1, v2, v3}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getLandscapeX(FF)F

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    iget-object v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 115
    .line 116
    iget-object v4, v4, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    .line 117
    .line 118
    invoke-interface {v4, v2, v3}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getLandscapeY(FF)F

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    iget-object v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 123
    .line 124
    iget-object v3, v3, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    .line 125
    .line 126
    invoke-interface {v3}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    int-to-float v3, v3

    .line 135
    mul-float v3, v3, v1

    .line 136
    .line 137
    iput v3, v0, Lcom/haima/hmcp/beans/FPoint;->x:F

    .line 138
    .line 139
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 140
    .line 141
    iget-object v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    .line 142
    .line 143
    invoke-interface {v1}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    int-to-float v1, v1

    .line 152
    mul-float v1, v1, v2

    .line 153
    .line 154
    iput v1, v0, Lcom/haima/hmcp/beans/FPoint;->y:F

    .line 155
    .line 156
    :goto_0
    sget-object v1, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 157
    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string v3, "mRenderView getMeasuredWidth:"

    .line 164
    .line 165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget-object v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 169
    .line 170
    iget-object v3, v3, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    .line 171
    .line 172
    invoke-interface {v3}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v3, ",height:"

    .line 184
    .line 185
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget-object v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 189
    .line 190
    iget-object v3, v3, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    .line 191
    .line 192
    invoke-interface {v3}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    .line 215
    const-string v3, "rawX = "

    .line 216
    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string p1, "; rawY = "

    .line 224
    .line 225
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string p1, "; targetPoint = "

    .line 232
    .line 233
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/FPoint;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string p1, " ; orientation = "

    .line 244
    .line 245
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    iget-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 249
    .line 250
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    return-object v0
.end method

.method private cancelLeftClickTimer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTimer:Ljava/util/Timer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTimer:Ljava/util/Timer;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTimer:Ljava/util/Timer;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private cancelRightClickTimer()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hasRMouseDown:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->rightClickTimer:Ljava/util/Timer;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->stopAnimator()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->rightClickTimer:Ljava/util/Timer;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->rightClickTimer:Ljava/util/Timer;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->rightClickTimer:Ljava/util/Timer;

    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private checkCursorPosition()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    .line 16
    .line 17
    invoke-interface {v1}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    .line 28
    .line 29
    invoke-interface {v2}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iget-object v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 38
    .line 39
    iget-object v3, v3, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    .line 40
    .line 41
    invoke-interface {v3}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    iget-object v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 50
    .line 51
    iget-object v4, v4, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    .line 52
    .line 53
    invoke-interface {v4}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4}, Landroid/view/View;->getRotation()F

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    const/high16 v5, 0x42b40000    # 90.0f

    .line 62
    .line 63
    cmpl-float v4, v4, v5

    .line 64
    .line 65
    if-nez v4, :cond_0

    .line 66
    .line 67
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 74
    .line 75
    iget-object v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    .line 76
    .line 77
    invoke-interface {v1}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    sub-int/2addr v0, v1

    .line 86
    div-int/lit8 v2, v0, 0x2

    .line 87
    .line 88
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 95
    .line 96
    iget-object v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    .line 97
    .line 98
    invoke-interface {v1}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    sub-int/2addr v0, v1

    .line 107
    div-int/lit8 v3, v0, 0x2

    .line 108
    .line 109
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 110
    .line 111
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    .line 112
    .line 113
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 122
    .line 123
    iget-object v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    .line 124
    .line 125
    invoke-interface {v1}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    :cond_0
    iget-object v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastPosition:Landroid/graphics/Point;

    .line 134
    .line 135
    iget v5, v4, Landroid/graphics/Point;->x:I

    .line 136
    .line 137
    if-gt v5, v2, :cond_1

    .line 138
    .line 139
    iput v2, v4, Landroid/graphics/Point;->x:I

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_1
    add-int/2addr v2, v0

    .line 143
    add-int/lit8 v2, v2, -0x5

    .line 144
    .line 145
    if-lt v5, v2, :cond_2

    .line 146
    .line 147
    iput v2, v4, Landroid/graphics/Point;->x:I

    .line 148
    .line 149
    :cond_2
    :goto_0
    iget v0, v4, Landroid/graphics/Point;->y:I

    .line 150
    .line 151
    if-gt v0, v3, :cond_3

    .line 152
    .line 153
    iput v3, v4, Landroid/graphics/Point;->y:I

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_3
    add-int/2addr v3, v1

    .line 157
    add-int/lit8 v3, v3, -0xa

    .line 158
    .line 159
    if-lt v0, v3, :cond_4

    .line 160
    .line 161
    iput v3, v4, Landroid/graphics/Point;->y:I

    .line 162
    .line 163
    :cond_4
    :goto_1
    return-void
.end method

.method private checkPointerIndex(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x2

    .line 6
    if-ne p1, v0, :cond_1

    .line 7
    .line 8
    iget p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->firstPointerIndex:I

    .line 9
    .line 10
    if-ge p1, v0, :cond_0

    .line 11
    .line 12
    iget p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->secondPointerIndex:I

    .line 13
    .line 14
    if-lt p1, v0, :cond_1

    .line 15
    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->firstPointerIndex:I

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    iput p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->secondPointerIndex:I

    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method private checkPositionOk(II)Z
    .locals 8

    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v0

    const/high16 v2, 0x42b40000    # 90.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    iget-object v2, v2, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    invoke-interface {v2}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 7
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    iget-object v3, v3, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    invoke-interface {v3}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 8
    iget-object v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    iget-object v3, v3, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    invoke-interface {v3}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    .line 9
    iget-object v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    iget-object v4, v4, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    invoke-interface {v4}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    invoke-interface {v0}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 11
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    iget-object v2, v2, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    invoke-interface {v2}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 12
    iget-object v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    iget-object v3, v3, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    invoke-interface {v3}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    .line 13
    iget-object v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    iget-object v4, v4, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    invoke-interface {v4}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 14
    :goto_0
    sget-object v5, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "offsetX:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",offsetY: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", x:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", y:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ";===="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lt p1, v0, :cond_1

    if-lt p2, v2, :cond_1

    if-gt p1, v3, :cond_1

    if-gt p2, v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private checkPositionOk(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/haima/hmcp/widgets/TouchUtil;->checkPositionOk(II)Z

    move-result p1

    return p1
.end method

.method private checkScreenSlideTouchInBoundary(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->touchConfig:Lcom/haima/hmcp/beans/X86TouchConfig;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, v0, Lcom/haima/hmcp/beans/X86TouchConfig;->screenSlideConfig:Lcom/haima/hmcp/beans/X86ScreenSlideConfig;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 13
    .line 14
    if-nez v2, :cond_2

    .line 15
    .line 16
    return v1

    .line 17
    :cond_2
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getScreenWidth()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getScreenHeight()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iget v3, v0, Lcom/haima/hmcp/beans/X86ScreenSlideConfig;->touchRangeL:F

    .line 28
    .line 29
    iget v4, v0, Lcom/haima/hmcp/beans/X86ScreenSlideConfig;->touchRangeU:F

    .line 30
    .line 31
    iget v5, v0, Lcom/haima/hmcp/beans/X86ScreenSlideConfig;->touchRangeR:F

    .line 32
    .line 33
    iget v0, v0, Lcom/haima/hmcp/beans/X86ScreenSlideConfig;->touchRangeD:F

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    const/high16 v7, 0x3f800000    # 1.0f

    .line 37
    .line 38
    const/4 v8, 0x0

    .line 39
    cmpl-float v9, v3, v8

    .line 40
    .line 41
    if-ltz v9, :cond_3

    .line 42
    .line 43
    cmpg-float v9, v3, v7

    .line 44
    .line 45
    if-gtz v9, :cond_3

    .line 46
    .line 47
    int-to-float v9, v1

    .line 48
    mul-float v3, v3, v9

    .line 49
    .line 50
    float-to-int v3, v3

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    const/4 v3, 0x0

    .line 53
    :goto_0
    cmpl-float v9, v4, v8

    .line 54
    .line 55
    if-ltz v9, :cond_4

    .line 56
    .line 57
    cmpg-float v9, v4, v7

    .line 58
    .line 59
    if-gtz v9, :cond_4

    .line 60
    .line 61
    int-to-float v6, v2

    .line 62
    mul-float v4, v4, v6

    .line 63
    .line 64
    float-to-int v6, v4

    .line 65
    :cond_4
    cmpl-float v4, v5, v8

    .line 66
    .line 67
    if-ltz v4, :cond_5

    .line 68
    .line 69
    cmpg-float v4, v5, v7

    .line 70
    .line 71
    if-gtz v4, :cond_5

    .line 72
    .line 73
    int-to-float v4, v1

    .line 74
    mul-float v5, v5, v4

    .line 75
    .line 76
    float-to-int v4, v5

    .line 77
    sub-int/2addr v1, v4

    .line 78
    :cond_5
    cmpl-float v4, v0, v8

    .line 79
    .line 80
    if-ltz v4, :cond_6

    .line 81
    .line 82
    cmpg-float v4, v0, v7

    .line 83
    .line 84
    if-gtz v4, :cond_6

    .line 85
    .line 86
    int-to-float v4, v2

    .line 87
    mul-float v0, v0, v4

    .line 88
    .line 89
    float-to-int v0, v0

    .line 90
    sub-int/2addr v2, v0

    .line 91
    :cond_6
    new-instance v0, Landroid/graphics/Rect;

    .line 92
    .line 93
    invoke-direct {v0, v3, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    invoke-static {v2, p1, v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->isInRect(FFLandroid/graphics/Rect;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    return p1
.end method

.method private formatValue(FF)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    cmpl-float v0, p1, p2

    if-ltz v0, :cond_1

    move p1, p2

    :cond_1
    :goto_0
    return p1
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mCursorBitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v2, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mCursorWidth:I

    .line 11
    .line 12
    iget v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mCursorHeight:I

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-static {v0, v2, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method

.method public static getDirectionPoint(Lcom/haima/hmcp/beans/PointCoord;IIFF)[F
    .locals 9

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    :goto_0
    const/4 v5, 0x5

    .line 13
    const/4 v6, 0x0

    .line 14
    if-ge v2, v5, :cond_2

    .line 15
    .line 16
    const v3, 0x3cf5c28f    # 0.03f

    .line 17
    .line 18
    .line 19
    const v4, 0x3d4ccccd    # 0.05f

    .line 20
    .line 21
    .line 22
    cmpl-float v5, p3, v1

    .line 23
    .line 24
    if-nez v5, :cond_1

    .line 25
    .line 26
    cmpl-float v5, p4, v1

    .line 27
    .line 28
    if-nez v5, :cond_1

    .line 29
    .line 30
    iget v5, p0, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 31
    .line 32
    int-to-float v6, p1

    .line 33
    iget v7, p0, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    .line 34
    .line 35
    mul-float v6, v6, v7

    .line 36
    .line 37
    int-to-float v7, v2

    .line 38
    mul-float v3, v3, v7

    .line 39
    .line 40
    add-float/2addr v3, v4

    .line 41
    mul-float v6, v6, v3

    .line 42
    .line 43
    mul-float v6, v6, v7

    .line 44
    .line 45
    add-float/2addr v5, v6

    .line 46
    iget v4, p0, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 47
    .line 48
    int-to-float v6, p2

    .line 49
    iget v8, p0, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    .line 50
    .line 51
    mul-float v6, v6, v8

    .line 52
    .line 53
    mul-float v6, v6, v3

    .line 54
    .line 55
    mul-float v6, v6, v7

    .line 56
    .line 57
    add-float/2addr v4, v6

    .line 58
    move v3, v5

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    int-to-float v5, p1

    .line 61
    int-to-float v7, p2

    .line 62
    invoke-static {v5, v7}, Lcom/haima/hmcp/utils/TrackBallUtil;->getPCdistence(FF)[Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    iget v7, p0, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 67
    .line 68
    aget-object v6, v5, v6

    .line 69
    .line 70
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    iget v8, p0, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    .line 75
    .line 76
    mul-float v6, v6, v8

    .line 77
    .line 78
    add-float/2addr v7, v6

    .line 79
    sub-float/2addr v7, p3

    .line 80
    int-to-float v6, v2

    .line 81
    mul-float v3, v3, v6

    .line 82
    .line 83
    add-float/2addr v3, v4

    .line 84
    mul-float v7, v7, v3

    .line 85
    .line 86
    mul-float v7, v7, v6

    .line 87
    .line 88
    add-float/2addr v7, p3

    .line 89
    iget v4, p0, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 90
    .line 91
    aget-object v5, v5, v0

    .line 92
    .line 93
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    iget v8, p0, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    .line 98
    .line 99
    mul-float v5, v5, v8

    .line 100
    .line 101
    add-float/2addr v4, v5

    .line 102
    sub-float/2addr v4, p4

    .line 103
    mul-float v4, v4, v3

    .line 104
    .line 105
    mul-float v4, v4, v6

    .line 106
    .line 107
    add-float/2addr v4, p4

    .line 108
    move v3, v7

    .line 109
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    const/4 p0, 0x2

    .line 113
    new-array p0, p0, [F

    .line 114
    .line 115
    aput v3, p0, v6

    .line 116
    .line 117
    aput v4, p0, v0

    .line 118
    .line 119
    return-object p0
.end method

.method private getFixHotSpotX(Landroid/graphics/Bitmap;)F
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/lit8 p1, p1, -0x1

    .line 10
    .line 11
    int-to-float p1, p1

    .line 12
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method private getFixHotSpotY(Landroid/graphics/Bitmap;)F
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/lit8 p1, p1, -0x1

    .line 10
    .line 11
    int-to-float p1, p1

    .line 12
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method private getMouseStyle(Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;)Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;->NORMAL:Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    sget-object v0, Lcom/haima/hmcp/widgets/TouchUtil$14;->$SwitchMap$com$haima$hmcp$proto$GSSDK$GameCursor$CursorStyle:[I

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    aget p1, v0, p1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    if-eq p1, v0, :cond_3

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    if-eq p1, v0, :cond_2

    .line 19
    .line 20
    const/4 v0, 0x3

    .line 21
    if-eq p1, v0, :cond_1

    .line 22
    .line 23
    sget-object p1, Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;->NORMAL:Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_1
    const/4 p1, 0x0

    .line 27
    return-object p1

    .line 28
    :cond_2
    sget-object p1, Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;->BUSY:Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;

    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_3
    sget-object p1, Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;->WORKING:Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;

    .line 32
    .line 33
    return-object p1
.end method

.method private getSensitivityInternal()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mUseSpecificSensitivity:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mFunctionSensitivity:Ljava/lang/Float;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mOriginSensitivity:Ljava/lang/Float;

    .line 9
    .line 10
    :goto_0
    return-object v0
.end method

.method private getStandardCloudDistance()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->touchConfig:Lcom/haima/hmcp/beans/X86TouchConfig;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "getStandardCloudDistance false: touchConfig is null"

    .line 9
    .line 10
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    iget-object v0, v0, Lcom/haima/hmcp/beans/X86TouchConfig;->screenSlideConfig:Lcom/haima/hmcp/beans/X86ScreenSlideConfig;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    sget-object v0, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    const-string v2, "getStandardCloudDistance false: screenSlideConfig is null"

    .line 21
    .line 22
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return v1

    .line 26
    :cond_1
    iget-object v0, v0, Lcom/haima/hmcp/beans/X86ScreenSlideConfig;->pointsAddedValue:Lcom/alibaba/fastjson/JSONObject;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    sget-object v0, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 31
    .line 32
    const-string v2, "getStandardCloudDistance: config.pointsAddedValue is null"

    .line 33
    .line 34
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return v1

    .line 38
    :cond_2
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->curGamePackageName:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_3

    .line 45
    .line 46
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->curGamePackageName:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    :try_start_0
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->curGamePackageName:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    sget-object v2, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 63
    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v4, "getStandardCloudDistance json exception :"

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v2, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    :goto_0
    return v1
.end method

.method private isBadHotSpotX(Landroid/graphics/Bitmap;F)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    cmpg-float v1, p2, v1

    .line 7
    .line 8
    if-ltz v1, :cond_2

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    int-to-float p1, p1

    .line 15
    cmpl-float p1, p2, p1

    .line 16
    .line 17
    if-ltz p1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    :cond_2
    :goto_0
    return v0
.end method

.method private isBadHotSpotY(Landroid/graphics/Bitmap;F)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    cmpg-float v1, p2, v1

    .line 7
    .line 8
    if-ltz v1, :cond_2

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    int-to-float p1, p1

    .line 15
    cmpl-float p1, p2, p1

    .line 16
    .line 17
    if-ltz p1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    :cond_2
    :goto_0
    return v0
.end method

.method private isBusy(Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_WAIT:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    return p1
.end method

.method private isRMouseClickEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x17

    .line 8
    .line 9
    if-lt v1, v2, :cond_3

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/16 v2, 0x2002

    .line 16
    .line 17
    and-int/2addr v1, v2

    .line 18
    const/4 v3, 0x1

    .line 19
    if-ne v1, v2, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v1, 0x0

    .line 24
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 v2, 0x2

    .line 29
    if-ne p1, v2, :cond_2

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    const/4 p1, 0x0

    .line 34
    :goto_1
    if-eqz v1, :cond_3

    .line 35
    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    :cond_3
    return v0
.end method

.method private isWorking(Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_APPSTARTING:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    return p1
.end method

.method private synthetic lambda$touchEvent$0()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/widgets/TouchUtil;->sendLMouseClickEvent(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private synthetic lambda$touchEvent$1()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/widgets/TouchUtil;->sendLMouseClickEvent(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private pointsAdded(IIIIZZ)V
    .locals 22

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move/from16 v0, p3

    .line 4
    .line 5
    move/from16 v1, p4

    .line 6
    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/haima/hmcp/widgets/TouchUtil;->getStandardCloudDistance()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-lez v2, :cond_6

    .line 12
    .line 13
    iget v3, v7, Lcom/haima/hmcp/widgets/TouchUtil;->mScale:F

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    cmpl-float v3, v3, v4

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :cond_0
    int-to-double v3, v0

    .line 23
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 24
    .line 25
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 26
    .line 27
    .line 28
    move-result-wide v8

    .line 29
    int-to-double v10, v1

    .line 30
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    add-double/2addr v8, v5

    .line 35
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    .line 36
    .line 37
    .line 38
    move-result-wide v5

    .line 39
    int-to-float v2, v2

    .line 40
    iget v8, v7, Lcom/haima/hmcp/widgets/TouchUtil;->mScale:F

    .line 41
    .line 42
    div-float/2addr v2, v8

    .line 43
    float-to-double v8, v2

    .line 44
    const-wide/16 v12, 0x0

    .line 45
    .line 46
    cmpl-double v2, v5, v12

    .line 47
    .line 48
    if-eqz v2, :cond_5

    .line 49
    .line 50
    cmpl-double v2, v8, v12

    .line 51
    .line 52
    if-eqz v2, :cond_5

    .line 53
    .line 54
    cmpg-double v2, v5, v8

    .line 55
    .line 56
    if-gtz v2, :cond_1

    .line 57
    .line 58
    goto/16 :goto_1

    .line 59
    .line 60
    :cond_1
    div-double v12, v5, v8

    .line 61
    .line 62
    double-to-int v12, v12

    .line 63
    div-double v13, v3, v5

    .line 64
    .line 65
    div-double/2addr v10, v5

    .line 66
    int-to-float v0, v0

    .line 67
    invoke-direct/range {p0 .. p0}, Lcom/haima/hmcp/widgets/TouchUtil;->getSensitivityInternal()Ljava/lang/Float;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    mul-float v0, v0, v2

    .line 76
    .line 77
    float-to-int v0, v0

    .line 78
    int-to-float v1, v1

    .line 79
    invoke-direct/range {p0 .. p0}, Lcom/haima/hmcp/widgets/TouchUtil;->getSensitivityInternal()Ljava/lang/Float;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    mul-float v1, v1, v2

    .line 88
    .line 89
    float-to-int v1, v1

    .line 90
    add-int v15, p1, v0

    .line 91
    .line 92
    add-int v16, p2, v1

    .line 93
    .line 94
    sget-object v2, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 95
    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v4, "pointsAdded sendAbsMouseEvent : count:"

    .line 102
    .line 103
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v4, ", offsetX:"

    .line 110
    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v0, ", offsetY:"

    .line 118
    .line 119
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v2, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const/4 v0, 0x1

    .line 133
    move/from16 v17, p1

    .line 134
    .line 135
    move/from16 v18, p2

    .line 136
    .line 137
    const/4 v6, 0x1

    .line 138
    :goto_0
    if-gt v6, v12, :cond_2

    .line 139
    .line 140
    mul-double v0, v13, v8

    .line 141
    .line 142
    double-to-int v5, v0

    .line 143
    mul-double v0, v10, v8

    .line 144
    .line 145
    double-to-int v4, v0

    .line 146
    sget-object v0, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 147
    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string v2, "pointsAdded sendAbsMouseEvent : , ox:"

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v2, ", oy:"

    .line 162
    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    const/16 v19, 0x1

    .line 177
    .line 178
    move-object/from16 v0, p0

    .line 179
    .line 180
    move/from16 v1, v17

    .line 181
    .line 182
    move/from16 v2, v18

    .line 183
    .line 184
    move v3, v5

    .line 185
    move/from16 v20, v4

    .line 186
    .line 187
    move/from16 v21, v5

    .line 188
    .line 189
    move/from16 v5, v19

    .line 190
    .line 191
    move/from16 v19, v6

    .line 192
    .line 193
    move/from16 v6, p6

    .line 194
    .line 195
    invoke-direct/range {v0 .. v6}, Lcom/haima/hmcp/widgets/TouchUtil;->sendAbsMouseEventOnce(IIIIZZ)V

    .line 196
    .line 197
    .line 198
    add-int v17, v17, v21

    .line 199
    .line 200
    add-int v18, v18, v20

    .line 201
    .line 202
    add-int/lit8 v6, v19, 0x1

    .line 203
    .line 204
    goto :goto_0

    .line 205
    :cond_2
    sub-int v3, v15, v17

    .line 206
    .line 207
    sub-int v4, v16, v18

    .line 208
    .line 209
    if-nez v3, :cond_3

    .line 210
    .line 211
    if-eqz v4, :cond_4

    .line 212
    .line 213
    :cond_3
    sget-object v0, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 214
    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    const-string v2, "pointsAdded left : , leftX:"

    .line 221
    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v2, ", leftY:"

    .line 229
    .line 230
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    const/4 v5, 0x1

    .line 244
    move-object/from16 v0, p0

    .line 245
    .line 246
    move v1, v15

    .line 247
    move/from16 v2, v16

    .line 248
    .line 249
    move/from16 v6, p6

    .line 250
    .line 251
    invoke-direct/range {v0 .. v6}, Lcom/haima/hmcp/widgets/TouchUtil;->sendAbsMouseEventOnce(IIIIZZ)V

    .line 252
    .line 253
    .line 254
    :cond_4
    return-void

    .line 255
    :cond_5
    :goto_1
    invoke-direct/range {p0 .. p6}, Lcom/haima/hmcp/widgets/TouchUtil;->sendAbsMouseEventOnce(IIIIZZ)V

    .line 256
    .line 257
    .line 258
    return-void

    .line 259
    :cond_6
    :goto_2
    sget-object v3, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 260
    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    const-string v5, "pointsAdded : standardCloudDistance is invalid "

    .line 267
    .line 268
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string v2, " or mScale is invalid "

    .line 275
    .line 276
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    iget v2, v7, Lcom/haima/hmcp/widgets/TouchUtil;->mScale:F

    .line 280
    .line 281
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-static {v3, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-direct/range {p0 .. p6}, Lcom/haima/hmcp/widgets/TouchUtil;->sendAbsMouseEventOnce(IIIIZZ)V

    .line 292
    .line 293
    .line 294
    return-void
.end method

.method private processDoublePointerSlide(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTouchMode:Lcom/haima/hmcp/enums/TouchMode;

    .line 2
    .line 3
    sget-object v1, Lcom/haima/hmcp/enums/TouchMode;->TOUCH_MODE_MOUSE:Lcom/haima/hmcp/enums/TouchMode;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    return v2

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
    move-result v0

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v3, 0x2

    .line 22
    const/4 v4, 0x1

    .line 23
    if-eqz v1, :cond_11

    .line 24
    .line 25
    if-eq v1, v4, :cond_f

    .line 26
    .line 27
    if-eq v1, v3, :cond_3

    .line 28
    .line 29
    const/4 v5, 0x3

    .line 30
    if-eq v1, v5, :cond_f

    .line 31
    .line 32
    const/4 v5, 0x5

    .line 33
    if-eq v1, v5, :cond_11

    .line 34
    .line 35
    const/4 p1, 0x6

    .line 36
    if-eq v1, p1, :cond_1

    .line 37
    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :cond_1
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->isUsePointID(Ljava/lang/Integer;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    return v2

    .line 55
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 56
    .line 57
    new-instance v0, Lcom/haima/hmcp/widgets/TouchUtil$1;

    .line 58
    .line 59
    invoke-direct {v0, p0}, Lcom/haima/hmcp/widgets/TouchUtil$1;-><init>(Lcom/haima/hmcp/widgets/TouchUtil;)V

    .line 60
    .line 61
    .line 62
    const-wide/16 v3, 0x190

    .line 63
    .line 64
    invoke-virtual {p1, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    .line 66
    .line 67
    goto/16 :goto_4

    .line 68
    .line 69
    :cond_3
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/TouchUtil;->getBlankTouchFinger(Landroid/view/MotionEvent;)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-lt v0, v3, :cond_4

    .line 74
    .line 75
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->cancelLeftClickTimer()V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->cancelRightClickTimer()V

    .line 79
    .line 80
    .line 81
    :cond_4
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/TouchUtil;->getBlankTouchFinger(Landroid/view/MotionEvent;)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-ne v0, v3, :cond_13

    .line 86
    .line 87
    iput-boolean v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isDoubleSliding:Z

    .line 88
    .line 89
    sget-object v0, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 90
    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v3, "doublePointerSlide===move"

    .line 97
    .line 98
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/TouchUtil;->checkPointerIndex(Landroid/view/MotionEvent;)V

    .line 116
    .line 117
    .line 118
    iget v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->firstPointerIndex:I

    .line 119
    .line 120
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    iget v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->firstPointerX:F

    .line 125
    .line 126
    sub-float/2addr v1, v3

    .line 127
    iget v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->firstPointerIndex:I

    .line 128
    .line 129
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    iget v5, p0, Lcom/haima/hmcp/widgets/TouchUtil;->firstPointerY:F

    .line 134
    .line 135
    sub-float/2addr v3, v5

    .line 136
    iget v5, p0, Lcom/haima/hmcp/widgets/TouchUtil;->secondPointerIndex:I

    .line 137
    .line 138
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    iget v6, p0, Lcom/haima/hmcp/widgets/TouchUtil;->secondPointerX:F

    .line 143
    .line 144
    sub-float/2addr v5, v6

    .line 145
    iget v6, p0, Lcom/haima/hmcp/widgets/TouchUtil;->secondPointerIndex:I

    .line 146
    .line 147
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    iget v7, p0, Lcom/haima/hmcp/widgets/TouchUtil;->secondPointerY:F

    .line 152
    .line 153
    sub-float/2addr v6, v7

    .line 154
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 159
    .line 160
    .line 161
    move-result v8

    .line 162
    cmpg-float v7, v7, v8

    .line 163
    .line 164
    if-gez v7, :cond_5

    .line 165
    .line 166
    const/4 v7, 0x1

    .line 167
    goto :goto_0

    .line 168
    :cond_5
    const/4 v7, 0x0

    .line 169
    :goto_0
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 174
    .line 175
    .line 176
    move-result v9

    .line 177
    cmpg-float v8, v8, v9

    .line 178
    .line 179
    if-gez v8, :cond_6

    .line 180
    .line 181
    const/4 v8, 0x1

    .line 182
    goto :goto_1

    .line 183
    :cond_6
    const/4 v8, 0x0

    .line 184
    :goto_1
    const/4 v9, -0x1

    .line 185
    const/4 v10, 0x0

    .line 186
    if-eqz v7, :cond_8

    .line 187
    .line 188
    if-eqz v8, :cond_8

    .line 189
    .line 190
    cmpl-float v1, v3, v10

    .line 191
    .line 192
    if-lez v1, :cond_7

    .line 193
    .line 194
    cmpl-float v1, v6, v10

    .line 195
    .line 196
    if-lez v1, :cond_7

    .line 197
    .line 198
    const-string v1, "doublePointerSlide===down slide"

    .line 199
    .line 200
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 204
    .line 205
    if-eqz v0, :cond_e

    .line 206
    .line 207
    invoke-direct {p0, v9}, Lcom/haima/hmcp/widgets/TouchUtil;->sendMouseWheelEvent(I)V

    .line 208
    .line 209
    .line 210
    goto/16 :goto_3

    .line 211
    .line 212
    :cond_7
    cmpg-float v1, v3, v10

    .line 213
    .line 214
    if-gez v1, :cond_e

    .line 215
    .line 216
    cmpg-float v1, v6, v10

    .line 217
    .line 218
    if-gez v1, :cond_e

    .line 219
    .line 220
    const-string v1, "doublePointerSlide===up slide"

    .line 221
    .line 222
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 226
    .line 227
    if-eqz v0, :cond_e

    .line 228
    .line 229
    invoke-direct {p0, v4}, Lcom/haima/hmcp/widgets/TouchUtil;->sendMouseWheelEvent(I)V

    .line 230
    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_8
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    const/high16 v1, 0x41200000    # 10.0f

    .line 238
    .line 239
    cmpg-float v0, v0, v1

    .line 240
    .line 241
    if-gez v0, :cond_9

    .line 242
    .line 243
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    cmpg-float v0, v0, v1

    .line 248
    .line 249
    if-gez v0, :cond_9

    .line 250
    .line 251
    const/4 v0, 0x1

    .line 252
    goto :goto_2

    .line 253
    :cond_9
    const/4 v0, 0x0

    .line 254
    :goto_2
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    cmpg-float v5, v5, v1

    .line 259
    .line 260
    if-gez v5, :cond_a

    .line 261
    .line 262
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    cmpg-float v1, v5, v1

    .line 267
    .line 268
    if-gez v1, :cond_a

    .line 269
    .line 270
    const/4 v2, 0x1

    .line 271
    :cond_a
    if-eqz v0, :cond_c

    .line 272
    .line 273
    if-eqz v8, :cond_c

    .line 274
    .line 275
    cmpl-float v0, v6, v10

    .line 276
    .line 277
    if-lez v0, :cond_b

    .line 278
    .line 279
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 280
    .line 281
    if-eqz v0, :cond_e

    .line 282
    .line 283
    invoke-direct {p0, v9}, Lcom/haima/hmcp/widgets/TouchUtil;->sendMouseWheelEvent(I)V

    .line 284
    .line 285
    .line 286
    goto :goto_3

    .line 287
    :cond_b
    cmpg-float v0, v6, v10

    .line 288
    .line 289
    if-gez v0, :cond_e

    .line 290
    .line 291
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 292
    .line 293
    if-eqz v0, :cond_e

    .line 294
    .line 295
    invoke-direct {p0, v4}, Lcom/haima/hmcp/widgets/TouchUtil;->sendMouseWheelEvent(I)V

    .line 296
    .line 297
    .line 298
    goto :goto_3

    .line 299
    :cond_c
    if-eqz v2, :cond_e

    .line 300
    .line 301
    if-eqz v7, :cond_e

    .line 302
    .line 303
    cmpl-float v0, v3, v10

    .line 304
    .line 305
    if-lez v0, :cond_d

    .line 306
    .line 307
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 308
    .line 309
    if-eqz v0, :cond_e

    .line 310
    .line 311
    invoke-direct {p0, v9}, Lcom/haima/hmcp/widgets/TouchUtil;->sendMouseWheelEvent(I)V

    .line 312
    .line 313
    .line 314
    goto :goto_3

    .line 315
    :cond_d
    cmpg-float v0, v3, v10

    .line 316
    .line 317
    if-gez v0, :cond_e

    .line 318
    .line 319
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 320
    .line 321
    if-eqz v0, :cond_e

    .line 322
    .line 323
    invoke-direct {p0, v4}, Lcom/haima/hmcp/widgets/TouchUtil;->sendMouseWheelEvent(I)V

    .line 324
    .line 325
    .line 326
    :cond_e
    :goto_3
    iget v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->firstPointerIndex:I

    .line 327
    .line 328
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    iput v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->firstPointerX:F

    .line 333
    .line 334
    iget v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->firstPointerIndex:I

    .line 335
    .line 336
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    iput v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->firstPointerY:F

    .line 341
    .line 342
    iget v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->secondPointerIndex:I

    .line 343
    .line 344
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    iput v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->secondPointerX:F

    .line 349
    .line 350
    iget v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->secondPointerIndex:I

    .line 351
    .line 352
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 353
    .line 354
    .line 355
    move-result p1

    .line 356
    iput p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->secondPointerY:F

    .line 357
    .line 358
    return v4

    .line 359
    :cond_f
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->isUsePointID(Ljava/lang/Integer;)Z

    .line 368
    .line 369
    .line 370
    move-result p1

    .line 371
    if-eqz p1, :cond_10

    .line 372
    .line 373
    return v2

    .line 374
    :cond_10
    iput-boolean v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isDoubleSliding:Z

    .line 375
    .line 376
    goto :goto_4

    .line 377
    :cond_11
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-virtual {v1, v0}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->isUsePointID(Ljava/lang/Integer;)Z

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    if-eqz v0, :cond_12

    .line 390
    .line 391
    return v2

    .line 392
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    if-ne v0, v3, :cond_13

    .line 397
    .line 398
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 399
    .line 400
    .line 401
    move-result v0

    .line 402
    iput v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->firstPointerX:F

    .line 403
    .line 404
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 405
    .line 406
    .line 407
    move-result v0

    .line 408
    iput v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->firstPointerY:F

    .line 409
    .line 410
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    iput v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->secondPointerX:F

    .line 415
    .line 416
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 417
    .line 418
    .line 419
    move-result p1

    .line 420
    iput p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->secondPointerY:F

    .line 421
    .line 422
    :cond_13
    :goto_4
    return v2
.end method

.method private processTouchModeMouseDown(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->touchConfig:Lcom/haima/hmcp/beans/X86TouchConfig;

    .line 2
    .line 3
    iget-boolean p1, p1, Lcom/haima/hmcp/beans/X86TouchConfig;->isMouseSlideModeRClickModeOn:Z

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hasMouseDown:Z

    .line 9
    .line 10
    new-instance p1, Ljava/util/Timer;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTimer:Ljava/util/Timer;

    .line 16
    .line 17
    new-instance v0, Lcom/haima/hmcp/widgets/TouchUtil$2;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/haima/hmcp/widgets/TouchUtil$2;-><init>(Lcom/haima/hmcp/widgets/TouchUtil;)V

    .line 20
    .line 21
    .line 22
    const-wide/16 v1, 0x1f4

    .line 23
    .line 24
    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iput-boolean v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hasMouseDown:Z

    .line 29
    .line 30
    new-instance p1, Ljava/util/Timer;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTimer:Ljava/util/Timer;

    .line 36
    .line 37
    new-instance v1, Lcom/haima/hmcp/widgets/TouchUtil$3;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/haima/hmcp/widgets/TouchUtil$3;-><init>(Lcom/haima/hmcp/widgets/TouchUtil;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->touchConfig:Lcom/haima/hmcp/beans/X86TouchConfig;

    .line 43
    .line 44
    iget v3, v2, Lcom/haima/hmcp/beans/X86TouchConfig;->leftDownDuration:I

    .line 45
    .line 46
    iget v2, v2, Lcom/haima/hmcp/beans/X86TouchConfig;->rightDownDuration:I

    .line 47
    .line 48
    add-int/2addr v3, v2

    .line 49
    int-to-long v2, v3

    .line 50
    invoke-virtual {p1, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Ljava/util/Timer;

    .line 54
    .line 55
    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->rightClickTimer:Ljava/util/Timer;

    .line 59
    .line 60
    iput-boolean v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hasRMouseDown:Z

    .line 61
    .line 62
    new-instance v0, Lcom/haima/hmcp/widgets/TouchUtil$4;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Lcom/haima/hmcp/widgets/TouchUtil$4;-><init>(Lcom/haima/hmcp/widgets/TouchUtil;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->touchConfig:Lcom/haima/hmcp/beans/X86TouchConfig;

    .line 68
    .line 69
    iget v1, v1, Lcom/haima/hmcp/beans/X86TouchConfig;->rightDownDuration:I

    .line 70
    .line 71
    int-to-long v1, v1

    .line 72
    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void
.end method

.method private processTouchModeMouseMove(Landroid/view/MotionEvent;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->touchConfig:Lcom/haima/hmcp/beans/X86TouchConfig;

    .line 2
    .line 3
    iget-boolean p1, p1, Lcom/haima/hmcp/beans/X86TouchConfig;->isMouseSlideModeRClickModeOn:Z

    .line 4
    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTouchMode:Lcom/haima/hmcp/enums/TouchMode;

    .line 8
    .line 9
    sget-object v0, Lcom/haima/hmcp/enums/TouchMode;->TOUCH_MODE_MOUSE:Lcom/haima/hmcp/enums/TouchMode;

    .line 10
    .line 11
    if-ne p1, v0, :cond_3

    .line 12
    .line 13
    iget-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTimer:Ljava/util/Timer;

    .line 14
    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    iget p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downX:I

    .line 18
    .line 19
    sub-int/2addr p2, p1

    .line 20
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 p2, 0x5

    .line 25
    if-gt p1, p2, :cond_0

    .line 26
    .line 27
    iget p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downY:I

    .line 28
    .line 29
    sub-int/2addr p3, p1

    .line 30
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-le p1, p2, :cond_3

    .line 35
    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->cancelLeftClickTimer()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTouchMode:Lcom/haima/hmcp/enums/TouchMode;

    .line 41
    .line 42
    sget-object v0, Lcom/haima/hmcp/enums/TouchMode;->TOUCH_MODE_MOUSE:Lcom/haima/hmcp/enums/TouchMode;

    .line 43
    .line 44
    if-ne p1, v0, :cond_3

    .line 45
    .line 46
    iget-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->rightClickTimer:Ljava/util/Timer;

    .line 47
    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    iget p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downX:I

    .line 51
    .line 52
    sub-int/2addr p2, p1

    .line 53
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iget-object p2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->touchConfig:Lcom/haima/hmcp/beans/X86TouchConfig;

    .line 58
    .line 59
    iget p2, p2, Lcom/haima/hmcp/beans/X86TouchConfig;->downMaxDistance:I

    .line 60
    .line 61
    if-gt p1, p2, :cond_2

    .line 62
    .line 63
    iget p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downY:I

    .line 64
    .line 65
    sub-int/2addr p3, p1

    .line 66
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iget-object p2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->touchConfig:Lcom/haima/hmcp/beans/X86TouchConfig;

    .line 71
    .line 72
    iget p2, p2, Lcom/haima/hmcp/beans/X86TouchConfig;->downMaxDistance:I

    .line 73
    .line 74
    if-le p1, p2, :cond_3

    .line 75
    .line 76
    :cond_2
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->cancelRightClickTimer()V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->cancelLeftClickTimer()V

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_0
    return-void
.end method

.method private processTouchModeMouseUp(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->touchConfig:Lcom/haima/hmcp/beans/X86TouchConfig;

    .line 2
    .line 3
    iget-boolean p1, p1, Lcom/haima/hmcp/beans/X86TouchConfig;->isMouseSlideModeRClickModeOn:Z

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    iget-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTimer:Ljava/util/Timer;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->cancelLeftClickTimer()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->sendDelayLMouseDownUp()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-boolean p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hasMouseDown:Z

    .line 20
    .line 21
    if-eqz p1, :cond_5

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/widgets/TouchUtil;->sendLMouseClickEvent(Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    sget-object p1, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v2, "==touchModeSlide===SystemClock.uptimeMillis() - downTime="

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    iget-wide v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downTime:J

    .line 44
    .line 45
    sub-long/2addr v2, v4

    .line 46
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v1

    .line 60
    iget-wide v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downTime:J

    .line 61
    .line 62
    sub-long/2addr v1, v3

    .line 63
    iget-object v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->touchConfig:Lcom/haima/hmcp/beans/X86TouchConfig;

    .line 64
    .line 65
    iget v3, v3, Lcom/haima/hmcp/beans/X86TouchConfig;->rightDownDuration:I

    .line 66
    .line 67
    int-to-long v3, v3

    .line 68
    cmp-long v5, v1, v3

    .line 69
    .line 70
    if-gez v5, :cond_3

    .line 71
    .line 72
    iget-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTimer:Ljava/util/Timer;

    .line 73
    .line 74
    if-eqz p1, :cond_2

    .line 75
    .line 76
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->cancelLeftClickTimer()V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->sendDelayLMouseDownUp()V

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->cancelRightClickTimer()V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v1

    .line 90
    iget-wide v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downTime:J

    .line 91
    .line 92
    sub-long/2addr v1, v3

    .line 93
    iget-object v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->touchConfig:Lcom/haima/hmcp/beans/X86TouchConfig;

    .line 94
    .line 95
    iget v4, v3, Lcom/haima/hmcp/beans/X86TouchConfig;->leftDownDuration:I

    .line 96
    .line 97
    iget v3, v3, Lcom/haima/hmcp/beans/X86TouchConfig;->rightDownDuration:I

    .line 98
    .line 99
    add-int/2addr v4, v3

    .line 100
    int-to-long v3, v4

    .line 101
    cmp-long v5, v1, v3

    .line 102
    .line 103
    if-gez v5, :cond_4

    .line 104
    .line 105
    iget-boolean v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hasRMouseDown:Z

    .line 106
    .line 107
    if-eqz v1, :cond_4

    .line 108
    .line 109
    const-string v0, "==touchModeSlide=== right Click is up"

    .line 110
    .line 111
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->cancelLeftClickTimer()V

    .line 115
    .line 116
    .line 117
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->cancelRightClickTimer()V

    .line 118
    .line 119
    .line 120
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->sendDelayRMouseDownUp()V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_4
    iget-boolean p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hasMouseDown:Z

    .line 125
    .line 126
    if-eqz p1, :cond_5

    .line 127
    .line 128
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/widgets/TouchUtil;->sendLMouseClickEvent(Z)V

    .line 129
    .line 130
    .line 131
    :cond_5
    :goto_0
    return-void
.end method

.method private reportErrorHotSpotX(Landroid/graphics/Bitmap;F)V
    .locals 2

    .line 1
    const-string v0, "cursor width = "

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p1, ", hot spot X = "

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string p2, "13285"

    .line 62
    .line 63
    invoke-static {p2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method private reportErrorHotSpotY(Landroid/graphics/Bitmap;F)V
    .locals 2

    .line 1
    const-string v0, "cursor height = "

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p1, ", hot spot Y = "

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string p2, "13285"

    .line 62
    .line 63
    invoke-static {p2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method private sendAbsMouseEventOnce(IIIIZZ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    move/from16 v5, p5

    .line 12
    .line 13
    sget-object v6, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v8, "sendAbsMouseEventOnce : absX="

    .line 21
    .line 22
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v8, ";absY="

    .line 29
    .line 30
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v8, ";offsetX="

    .line 37
    .line 38
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v8, ";offsetY="

    .line 45
    .line 46
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v8, ";realAbs="

    .line 53
    .line 54
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-static {v6, v7}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    if-eqz p6, :cond_0

    .line 68
    .line 69
    int-to-float v3, v3

    .line 70
    iget v7, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mBtnSensitivity:F

    .line 71
    .line 72
    mul-float v3, v3, v7

    .line 73
    .line 74
    float-to-int v3, v3

    .line 75
    int-to-float v4, v4

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    int-to-float v3, v3

    .line 78
    invoke-direct/range {p0 .. p0}, Lcom/haima/hmcp/widgets/TouchUtil;->getSensitivityInternal()Ljava/lang/Float;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    mul-float v3, v3, v7

    .line 87
    .line 88
    float-to-int v3, v3

    .line 89
    int-to-float v4, v4

    .line 90
    invoke-direct/range {p0 .. p0}, Lcom/haima/hmcp/widgets/TouchUtil;->getSensitivityInternal()Ljava/lang/Float;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    :goto_0
    mul-float v4, v4, v7

    .line 99
    .line 100
    float-to-int v4, v4

    .line 101
    if-nez v5, :cond_1

    .line 102
    .line 103
    add-int/2addr v1, v3

    .line 104
    add-int/2addr v2, v4

    .line 105
    :cond_1
    invoke-direct {v0, v1, v2}, Lcom/haima/hmcp/widgets/TouchUtil;->calculatePoint(II)Lcom/haima/hmcp/beans/FPoint;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    iget-object v7, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastPosition:Landroid/graphics/Point;

    .line 110
    .line 111
    iput v1, v7, Landroid/graphics/Point;->x:I

    .line 112
    .line 113
    iput v2, v7, Landroid/graphics/Point;->y:I

    .line 114
    .line 115
    iget-object v1, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastRelativePosition:Landroid/graphics/Point;

    .line 116
    .line 117
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 118
    .line 119
    add-int/2addr v2, v3

    .line 120
    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 121
    .line 122
    iget v2, v1, Landroid/graphics/Point;->y:I

    .line 123
    .line 124
    add-int/2addr v2, v4

    .line 125
    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 126
    .line 127
    iget-object v1, v0, Lcom/haima/hmcp/widgets/TouchUtil;->lastCursorPosition:Landroid/graphics/Point;

    .line 128
    .line 129
    iget v2, v5, Lcom/haima/hmcp/beans/FPoint;->x:F

    .line 130
    .line 131
    iget v7, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mScale:F

    .line 132
    .line 133
    mul-float v2, v2, v7

    .line 134
    .line 135
    float-to-int v2, v2

    .line 136
    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 137
    .line 138
    iget v2, v5, Lcom/haima/hmcp/beans/FPoint;->y:F

    .line 139
    .line 140
    mul-float v2, v2, v7

    .line 141
    .line 142
    float-to-int v2, v2

    .line 143
    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 144
    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/haima/hmcp/widgets/TouchUtil;->updateMouse()V

    .line 146
    .line 147
    .line 148
    sget-object v12, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;->ABSOLUTE_MODE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;

    .line 149
    .line 150
    iput-object v12, v0, Lcom/haima/hmcp/widgets/TouchUtil;->lastPositionMode:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;

    .line 151
    .line 152
    iget-object v7, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 153
    .line 154
    iget-object v1, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastRelativePosition:Landroid/graphics/Point;

    .line 155
    .line 156
    iget v8, v1, Landroid/graphics/Point;->x:I

    .line 157
    .line 158
    iget v9, v1, Landroid/graphics/Point;->y:I

    .line 159
    .line 160
    iget-object v1, v0, Lcom/haima/hmcp/widgets/TouchUtil;->lastCursorPosition:Landroid/graphics/Point;

    .line 161
    .line 162
    iget v10, v1, Landroid/graphics/Point;->x:I

    .line 163
    .line 164
    iget v11, v1, Landroid/graphics/Point;->y:I

    .line 165
    .line 166
    sget-object v13, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_MOV:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 167
    .line 168
    sget-object v14, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->OP_STATE_DEFAULT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 169
    .line 170
    const/4 v15, 0x0

    .line 171
    invoke-virtual/range {v7 .. v15}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendMouse(IIIILcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;Z)Z

    .line 172
    .line 173
    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v2, "sendAbsMouseEvent : mLastRelativePosition="

    .line 180
    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    iget-object v2, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastRelativePosition:Landroid/graphics/Point;

    .line 185
    .line 186
    invoke-virtual {v2}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v2, ";"

    .line 194
    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-static {v6, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    return-void
.end method

.method private sendDelayLMouseDownUp()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/widgets/TouchUtil;->sendLMouseClickEvent(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 6
    .line 7
    new-instance v1, Lcom/haima/hmcp/widgets/TouchUtil$9;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/haima/hmcp/widgets/TouchUtil$9;-><init>(Lcom/haima/hmcp/widgets/TouchUtil;)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v2, 0x14

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private sendDelayRMouseDownUp()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastRelativePosition:Landroid/graphics/Point;

    .line 2
    .line 3
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastPosition:Landroid/graphics/Point;

    .line 12
    .line 13
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 14
    .line 15
    iget v3, v0, Landroid/graphics/Point;->y:I

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x1

    .line 20
    const/4 v7, 0x0

    .line 21
    move-object v1, p0

    .line 22
    invoke-virtual/range {v1 .. v7}, Lcom/haima/hmcp/widgets/TouchUtil;->sendAbsMouseEvent(IIIIZZ)V

    .line 23
    .line 24
    .line 25
    :cond_0
    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/widgets/TouchUtil;->sendRMouseClickEvent(Z)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 30
    .line 31
    new-instance v1, Lcom/haima/hmcp/widgets/TouchUtil$10;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/haima/hmcp/widgets/TouchUtil$10;-><init>(Lcom/haima/hmcp/widgets/TouchUtil;)V

    .line 34
    .line 35
    .line 36
    const-wide/16 v2, 0x14

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private sendMouseButtonEventMapping(Landroid/view/MotionEvent;Ljava/lang/String;)Z
    .locals 8

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    sget-object v0, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "sendMouseButtonEventMapping inputEvent action:"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/4 v3, 0x1

    .line 44
    const/4 v4, 0x0

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    if-eq v1, v3, :cond_1

    .line 48
    .line 49
    const/4 v5, 0x3

    .line 50
    if-eq v1, v5, :cond_1

    .line 51
    .line 52
    const/4 v5, 0x5

    .line 53
    if-eq v1, v5, :cond_2

    .line 54
    .line 55
    const/4 v5, 0x6

    .line 56
    if-eq v1, v5, :cond_1

    .line 57
    .line 58
    const/16 v5, 0xb

    .line 59
    .line 60
    if-eq v1, v5, :cond_2

    .line 61
    .line 62
    const/16 v5, 0xc

    .line 63
    .line 64
    if-eq v1, v5, :cond_1

    .line 65
    .line 66
    move-object v5, v4

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 72
    .line 73
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v7, "sendMouseButtonEventMapping action:"

    .line 79
    .line 80
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", actionButton:"

    .line 87
    .line 88
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, ", buttonState:"

    .line 95
    .line 96
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    xor-int/2addr v0, v3

    .line 114
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 115
    .line 116
    invoke-virtual {v1, p2, p1, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendGamePadDataMappingKey(Ljava/lang/String;Landroid/view/InputEvent;I)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    return p1
.end method

.method private sendMouseButtonEventReal(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "sendMouseButtonEventReal: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    float-to-int v1, v1

    .line 17
    iput v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downX:I

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    float-to-int v4, v1

    .line 28
    iput v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downY:I

    .line 29
    .line 30
    iget v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downX:I

    .line 31
    .line 32
    iput v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastX:I

    .line 33
    .line 34
    iput v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastY:I

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x1

    .line 39
    const/4 v8, 0x0

    .line 40
    move-object v2, p0

    .line 41
    invoke-virtual/range {v2 .. v8}, Lcom/haima/hmcp/widgets/TouchUtil;->sendAbsMouseEvent(IIIIZZ)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    const-string v2, "sendMouseButtonEventReal, buttonState===: "

    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    const/4 v4, 0x0

    .line 56
    if-eqz v1, :cond_6

    .line 57
    .line 58
    if-eq v1, v3, :cond_0

    .line 59
    .line 60
    const/4 v5, 0x3

    .line 61
    if-eq v1, v5, :cond_0

    .line 62
    .line 63
    const/4 v5, 0x5

    .line 64
    if-eq v1, v5, :cond_6

    .line 65
    .line 66
    const/4 v5, 0x6

    .line 67
    if-eq v1, v5, :cond_0

    .line 68
    .line 69
    const/16 v5, 0xb

    .line 70
    .line 71
    if-eq v1, v5, :cond_6

    .line 72
    .line 73
    const/16 v5, 0xc

    .line 74
    .line 75
    if-eq v1, v5, :cond_0

    .line 76
    .line 77
    return v4

    .line 78
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    and-int/lit8 v1, p1, 0x1

    .line 97
    .line 98
    if-nez v1, :cond_1

    .line 99
    .line 100
    iget-boolean v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvLMouseDown:Z

    .line 101
    .line 102
    if-eqz v1, :cond_1

    .line 103
    .line 104
    const-string v1, "sendMouseButtonEvent:InputOP = left, up"

    .line 105
    .line 106
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    sget-object v1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_BUTTON_LEFT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 110
    .line 111
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->OP_STATE_UP:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 112
    .line 113
    invoke-virtual {p0, v1, v2}, Lcom/haima/hmcp/widgets/TouchUtil;->sendMouseButtonEvent(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    iput-boolean v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvLMouseDown:Z

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_1
    const/4 v1, 0x0

    .line 121
    :goto_0
    and-int/lit8 v2, p1, 0x2

    .line 122
    .line 123
    if-nez v2, :cond_2

    .line 124
    .line 125
    iget-boolean v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvRMouseDown:Z

    .line 126
    .line 127
    if-eqz v2, :cond_2

    .line 128
    .line 129
    const-string v2, "sendMouseButtonEvent:InputOP = right, up"

    .line 130
    .line 131
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_BUTTON_RIGHT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 135
    .line 136
    sget-object v5, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->OP_STATE_UP:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 137
    .line 138
    invoke-virtual {p0, v2, v5}, Lcom/haima/hmcp/widgets/TouchUtil;->sendMouseButtonEvent(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;)Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    iput-boolean v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvRMouseDown:Z

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_2
    const/4 v2, 0x0

    .line 146
    :goto_1
    and-int/lit8 p1, p1, 0x4

    .line 147
    .line 148
    if-nez p1, :cond_3

    .line 149
    .line 150
    iget-boolean p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvMMouseDown:Z

    .line 151
    .line 152
    if-eqz p1, :cond_3

    .line 153
    .line 154
    const-string p1, "sendMouseButtonEvent:InputOP = middle, up"

    .line 155
    .line 156
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    sget-object p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_BUTTON_MIDDLE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 160
    .line 161
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->OP_STATE_UP:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 162
    .line 163
    invoke-virtual {p0, p1, v0}, Lcom/haima/hmcp/widgets/TouchUtil;->sendMouseButtonEvent(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;)Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    iput-boolean v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvMMouseDown:Z

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_3
    const/4 p1, 0x0

    .line 171
    :goto_2
    if-nez v1, :cond_5

    .line 172
    .line 173
    if-nez v2, :cond_5

    .line 174
    .line 175
    if-eqz p1, :cond_4

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_4
    const/4 v3, 0x0

    .line 179
    :cond_5
    :goto_3
    return v3

    .line 180
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    and-int/lit8 v1, p1, 0x1

    .line 199
    .line 200
    if-eqz v1, :cond_7

    .line 201
    .line 202
    const-string v1, "sendMouseButtonEvent:InputOP = left, down"

    .line 203
    .line 204
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    sget-object v1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_BUTTON_LEFT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 208
    .line 209
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->OP_STATE_DOWN:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 210
    .line 211
    invoke-virtual {p0, v1, v2}, Lcom/haima/hmcp/widgets/TouchUtil;->sendMouseButtonEvent(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    iput-boolean v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvLMouseDown:Z

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_7
    const/4 v1, 0x0

    .line 219
    :goto_4
    and-int/lit8 v2, p1, 0x2

    .line 220
    .line 221
    if-eqz v2, :cond_8

    .line 222
    .line 223
    const-string v2, "sendMouseButtonEvent:InputOP = right, down"

    .line 224
    .line 225
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_BUTTON_RIGHT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 229
    .line 230
    sget-object v5, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->OP_STATE_DOWN:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 231
    .line 232
    invoke-virtual {p0, v2, v5}, Lcom/haima/hmcp/widgets/TouchUtil;->sendMouseButtonEvent(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;)Z

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    iput-boolean v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvRMouseDown:Z

    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_8
    const/4 v2, 0x0

    .line 240
    :goto_5
    and-int/lit8 p1, p1, 0x4

    .line 241
    .line 242
    if-eqz p1, :cond_9

    .line 243
    .line 244
    const-string p1, "sendMouseButtonEvent:InputOP = middle, down"

    .line 245
    .line 246
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    sget-object p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_BUTTON_MIDDLE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 250
    .line 251
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->OP_STATE_DOWN:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 252
    .line 253
    invoke-virtual {p0, p1, v0}, Lcom/haima/hmcp/widgets/TouchUtil;->sendMouseButtonEvent(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;)Z

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    iput-boolean v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvMMouseDown:Z

    .line 258
    .line 259
    goto :goto_6

    .line 260
    :cond_9
    const/4 p1, 0x0

    .line 261
    :goto_6
    if-nez v1, :cond_b

    .line 262
    .line 263
    if-nez v2, :cond_b

    .line 264
    .line 265
    if-eqz p1, :cond_a

    .line 266
    .line 267
    goto :goto_7

    .line 268
    :cond_a
    const/4 v3, 0x0

    .line 269
    :cond_b
    :goto_7
    return v3
.end method

.method private sendMouseMoveGyroscopeSplit(II)V
    .locals 16

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move/from16 v3, p1

    .line 4
    .line 5
    move/from16 v4, p2

    .line 6
    .line 7
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v1, 0x64

    .line 20
    .line 21
    if-gt v0, v1, :cond_0

    .line 22
    .line 23
    iget-object v0, v8, Lcom/haima/hmcp/widgets/TouchUtil;->mLastPosition:Landroid/graphics/Point;

    .line 24
    .line 25
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 26
    .line 27
    iget v2, v0, Landroid/graphics/Point;->y:I

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x0

    .line 31
    move-object/from16 v0, p0

    .line 32
    .line 33
    move/from16 v3, p1

    .line 34
    .line 35
    move/from16 v4, p2

    .line 36
    .line 37
    invoke-virtual/range {v0 .. v6}, Lcom/haima/hmcp/widgets/TouchUtil;->sendAbsMouseEvent(IIIIZZ)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    int-to-double v0, v0

    .line 42
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 43
    .line 44
    div-double/2addr v0, v5

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    double-to-int v9, v0

    .line 50
    div-int v10, v3, v9

    .line 51
    .line 52
    div-int v11, v4, v9

    .line 53
    .line 54
    mul-int v0, v10, v9

    .line 55
    .line 56
    sub-int v12, v3, v0

    .line 57
    .line 58
    mul-int v0, v11, v9

    .line 59
    .line 60
    sub-int v13, v4, v0

    .line 61
    .line 62
    sget-object v0, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 63
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v2, "sendMouseMoveGyroscopeSplit: totalOffset["

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v2, ","

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v3, "], splitCount="

    .line 86
    .line 87
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v3, ", offsetPerStep["

    .line 94
    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v3, "], remaining["

    .line 108
    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v2, "]"

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const/4 v0, 0x0

    .line 134
    const/4 v14, 0x0

    .line 135
    :goto_0
    if-ge v14, v9, :cond_1

    .line 136
    .line 137
    iget-object v15, v8, Lcom/haima/hmcp/widgets/TouchUtil;->handler:Landroid/os/Handler;

    .line 138
    .line 139
    new-instance v7, Lcom/haima/hmcp/widgets/TouchUtil$8;

    .line 140
    .line 141
    move-object v0, v7

    .line 142
    move-object/from16 v1, p0

    .line 143
    .line 144
    move v2, v10

    .line 145
    move v3, v11

    .line 146
    move v4, v14

    .line 147
    move v5, v9

    .line 148
    move v6, v12

    .line 149
    move-object v8, v7

    .line 150
    move v7, v13

    .line 151
    invoke-direct/range {v0 .. v7}, Lcom/haima/hmcp/widgets/TouchUtil$8;-><init>(Lcom/haima/hmcp/widgets/TouchUtil;IIIIII)V

    .line 152
    .line 153
    .line 154
    mul-int/lit8 v0, v14, 0x5

    .line 155
    .line 156
    int-to-long v0, v0

    .line 157
    invoke-virtual {v15, v8, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    .line 159
    .line 160
    add-int/lit8 v14, v14, 0x1

    .line 161
    .line 162
    move-object/from16 v8, p0

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_1
    return-void
.end method

.method private sendMouseWheelEvent(I)V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastEventTime:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    const-wide/16 v4, 0x64

    .line 10
    .line 11
    cmp-long v6, v2, v4

    .line 12
    .line 13
    if-ltz v6, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    neg-int p1, p1

    .line 20
    invoke-static {p1}, Lcom/haima/hmcp/utils/ProtoBufUtil;->getMouseWheelData(I)[B

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v2, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendEvent([B)Z

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->cancelLeftClickTimer()V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->cancelRightClickTimer()V

    .line 31
    .line 32
    .line 33
    :cond_0
    iput-wide v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastEventTime:J

    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method private sendTouchEvent(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;IIIIZ)V
    .locals 4

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/haima/hmcp/widgets/TouchUtil;->calculatePoint(II)Lcom/haima/hmcp/beans/FPoint;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastPosition:Landroid/graphics/Point;

    .line 6
    .line 7
    iput p2, v1, Landroid/graphics/Point;->x:I

    .line 8
    .line 9
    iput p3, v1, Landroid/graphics/Point;->y:I

    .line 10
    .line 11
    sget-object v1, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v3, "sendTouchEvent;action="

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v3, ";x="

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p2, ";y="

    .line 35
    .line 36
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p2, ";pointID="

    .line 43
    .line 44
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p2, ";count="

    .line 51
    .line 52
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p2, ";finalPoint="

    .line 59
    .line 60
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/FPoint;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p2, ";needSend="

    .line 71
    .line 72
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p2, "; scale="

    .line 79
    .line 80
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget p2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mScale:F

    .line 84
    .line 85
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-static {v1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;->newBuilder()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p2, p4}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->setId(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    .line 100
    .line 101
    .line 102
    sget-object p3, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$TouchDevice;->TOOL_TYPE_FINGER:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$TouchDevice;

    .line 103
    .line 104
    invoke-virtual {p2, p3}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->setType(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$TouchDevice;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    .line 105
    .line 106
    .line 107
    iget p3, v0, Lcom/haima/hmcp/beans/FPoint;->x:F

    .line 108
    .line 109
    iget p4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mScale:F

    .line 110
    .line 111
    mul-float p3, p3, p4

    .line 112
    .line 113
    float-to-int p3, p3

    .line 114
    invoke-virtual {p2, p3}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->setXPos(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    .line 115
    .line 116
    .line 117
    iget p3, v0, Lcom/haima/hmcp/beans/FPoint;->y:F

    .line 118
    .line 119
    iget p4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mScale:F

    .line 120
    .line 121
    mul-float p3, p3, p4

    .line 122
    .line 123
    float-to-int p3, p3

    .line 124
    invoke-virtual {p2, p3}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->setYPos(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;

    .line 125
    .line 126
    .line 127
    iget-object p3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->pointerList:Ljava/util/List;

    .line 128
    .line 129
    invoke-virtual {p2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties$Builder;->build()Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PointerProperties;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    if-eqz p6, :cond_0

    .line 137
    .line 138
    iget-object p2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 139
    .line 140
    iget-object p3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->pointerList:Ljava/util/List;

    .line 141
    .line 142
    invoke-static {p3, p1, p5}, Lcom/haima/hmcp/utils/ProtoBufUtil;->getTouchData(Ljava/util/List;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;I)[B

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p2, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendEvent([B)Z

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->pointerList:Ljava/util/List;

    .line 150
    .line 151
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 152
    .line 153
    .line 154
    :cond_0
    return-void
.end method

.method private setPCMouseStyle(ZLcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isPCMouseMode()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "setPCMouseStyle-->setSysMouseMode:"

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v3, ",mBaseRtcVideoView.isPCMouseMode():"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v3, ", mCursorStyle = "

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mCursorStyle:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    const/16 v3, 0x1a

    .line 49
    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->disablePointIconAnimate()V

    .line 53
    .line 54
    .line 55
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    .line 57
    if-lt p1, v3, :cond_0

    .line 58
    .line 59
    iget-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 60
    .line 61
    iput-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mPointerIcon:Landroid/view/PointerIcon;

    .line 62
    .line 63
    invoke-static {p1, v2}, Lcom/haima/hmcp/widgets/h0;->a(Landroid/view/View;Landroid/view/PointerIcon;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void

    .line 67
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 68
    .line 69
    if-lt v0, v3, :cond_c

    .line 70
    .line 71
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 72
    .line 73
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->getBitmap()Landroid/graphics/Bitmap;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    iget-object v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isPCMouseMode()Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    const/4 v5, 0x1

    .line 84
    const/4 v6, 0x0

    .line 85
    if-eqz v4, :cond_2

    .line 86
    .line 87
    iget-object v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 88
    .line 89
    invoke-virtual {v4}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->hasOperatePermission()Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_2

    .line 94
    .line 95
    const/4 v4, 0x1

    .line 96
    goto :goto_0

    .line 97
    :cond_2
    const/4 v4, 0x0

    .line 98
    :goto_0
    if-eqz v4, :cond_a

    .line 99
    .line 100
    if-eqz p1, :cond_3

    .line 101
    .line 102
    if-eqz v3, :cond_3

    .line 103
    .line 104
    const/4 v2, 0x1

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    const/4 v2, 0x0

    .line 107
    :goto_1
    sget-object v7, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_NONE:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 108
    .line 109
    if-ne p2, v7, :cond_4

    .line 110
    .line 111
    iget-object v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTransparentCursorBitmap:Landroid/graphics/Bitmap;

    .line 112
    .line 113
    :cond_4
    if-eqz v2, :cond_9

    .line 114
    .line 115
    invoke-direct {p0, p2}, Lcom/haima/hmcp/widgets/TouchUtil;->isWorking(Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;)Z

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    if-nez v7, :cond_8

    .line 120
    .line 121
    invoke-direct {p0, p2}, Lcom/haima/hmcp/widgets/TouchUtil;->isBusy(Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;)Z

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    if-eqz v7, :cond_5

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_5
    const-string p2, "setPCMouseStyle-->is normal"

    .line 129
    .line 130
    invoke-static {v1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->disablePointIconAnimate()V

    .line 134
    .line 135
    .line 136
    iget p2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hotSpotX:F

    .line 137
    .line 138
    invoke-direct {p0, v3, p2}, Lcom/haima/hmcp/widgets/TouchUtil;->isBadHotSpotX(Landroid/graphics/Bitmap;F)Z

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    if-eqz p2, :cond_6

    .line 143
    .line 144
    invoke-direct {p0, v3}, Lcom/haima/hmcp/widgets/TouchUtil;->getFixHotSpotX(Landroid/graphics/Bitmap;)F

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    iput p2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hotSpotX:F

    .line 149
    .line 150
    invoke-direct {p0, v3, p2}, Lcom/haima/hmcp/widgets/TouchUtil;->reportErrorHotSpotX(Landroid/graphics/Bitmap;F)V

    .line 151
    .line 152
    .line 153
    :cond_6
    iget p2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hotSpotY:F

    .line 154
    .line 155
    invoke-direct {p0, v3, p2}, Lcom/haima/hmcp/widgets/TouchUtil;->isBadHotSpotY(Landroid/graphics/Bitmap;F)Z

    .line 156
    .line 157
    .line 158
    move-result p2

    .line 159
    if-eqz p2, :cond_7

    .line 160
    .line 161
    invoke-direct {p0, v3}, Lcom/haima/hmcp/widgets/TouchUtil;->getFixHotSpotY(Landroid/graphics/Bitmap;)F

    .line 162
    .line 163
    .line 164
    move-result p2

    .line 165
    iput p2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hotSpotY:F

    .line 166
    .line 167
    invoke-direct {p0, v3, p2}, Lcom/haima/hmcp/widgets/TouchUtil;->reportErrorHotSpotY(Landroid/graphics/Bitmap;F)V

    .line 168
    .line 169
    .line 170
    :cond_7
    iget p2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hotSpotX:F

    .line 171
    .line 172
    iget v7, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hotSpotY:F

    .line 173
    .line 174
    invoke-static {v3, p2, v7}, Lcom/haima/hmcp/widgets/i0;->a(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    iput-object p2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mPointerIcon:Landroid/view/PointerIcon;

    .line 179
    .line 180
    invoke-static {v0, p2}, Lcom/haima/hmcp/widgets/h0;->a(Landroid/view/View;Landroid/view/PointerIcon;)V

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_8
    :goto_2
    const-string v3, "setPCMouseStyle-->is working or busy"

    .line 185
    .line 186
    invoke-static {v1, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, p2}, Lcom/haima/hmcp/widgets/TouchUtil;->enablePointIconAnimate(Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;)V

    .line 190
    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_9
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->disablePointIconAnimate()V

    .line 194
    .line 195
    .line 196
    iget-object p2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTransparentCursorBitmap:Landroid/graphics/Bitmap;

    .line 197
    .line 198
    const/4 v3, 0x0

    .line 199
    invoke-static {p2, v3, v3}, Lcom/haima/hmcp/widgets/i0;->a(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    iput-object p2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mPointerIcon:Landroid/view/PointerIcon;

    .line 204
    .line 205
    invoke-static {v0, p2}, Lcom/haima/hmcp/widgets/h0;->a(Landroid/view/View;Landroid/view/PointerIcon;)V

    .line 206
    .line 207
    .line 208
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    const-string v3, "setPCMouseStyle useCustomMouseIcon:"

    .line 214
    .line 215
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v3, ",isUseSysMouse:"

    .line 222
    .line 223
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string v3, ",useScaleBitmap:"

    .line 230
    .line 231
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    invoke-static {v1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_a
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->disablePointIconAnimate()V

    .line 246
    .line 247
    .line 248
    iput-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mPointerIcon:Landroid/view/PointerIcon;

    .line 249
    .line 250
    invoke-static {v0, v2}, Lcom/haima/hmcp/widgets/h0;->a(Landroid/view/View;Landroid/view/PointerIcon;)V

    .line 251
    .line 252
    .line 253
    :goto_4
    new-instance p2, Lcom/haima/hmcp/widgets/TouchUtil$11;

    .line 254
    .line 255
    invoke-direct {p2, p0, v4, p1}, Lcom/haima/hmcp/widgets/TouchUtil$11;-><init>(Lcom/haima/hmcp/widgets/TouchUtil;ZZ)V

    .line 256
    .line 257
    .line 258
    invoke-static {v0, p2}, Lcom/haima/hmcp/widgets/j0;->a(Landroid/view/View;Landroid/view/View$OnCapturedPointerListener;)V

    .line 259
    .line 260
    .line 261
    if-eqz v4, :cond_b

    .line 262
    .line 263
    if-nez p1, :cond_b

    .line 264
    .line 265
    invoke-static {v0}, Lcom/haima/hmcp/widgets/k0;->a(Landroid/view/View;)V

    .line 266
    .line 267
    .line 268
    iput-boolean v5, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hasRequestPointerCapture:Z

    .line 269
    .line 270
    goto :goto_5

    .line 271
    :cond_b
    invoke-static {v0}, Lcom/haima/hmcp/widgets/l0;->a(Landroid/view/View;)V

    .line 272
    .line 273
    .line 274
    iput-boolean v6, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hasRequestPointerCapture:Z

    .line 275
    .line 276
    :cond_c
    :goto_5
    return-void
.end method

.method private startAnimator()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHmcpHandler:Landroid/os/Handler;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Lcom/haima/hmcp/widgets/TouchUtil$5;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/haima/hmcp/widgets/TouchUtil$5;-><init>(Lcom/haima/hmcp/widgets/TouchUtil;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method private stopAnimator()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHmcpHandler:Landroid/os/Handler;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Lcom/haima/hmcp/widgets/TouchUtil$6;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/haima/hmcp/widgets/TouchUtil$6;-><init>(Lcom/haima/hmcp/widgets/TouchUtil;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method private updateSdkMouseStyle(Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, "updateSdkMouseStyle: change mouse style fail: CursorStyle is null"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCursorImageView()Lcom/haima/hmcp/widgets/view/MouseView;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    sget-object p1, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "updateSdkMouseStyle: change mouse style fail: MouseView is null"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/TouchUtil;->getMouseStyle(Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;)Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    sget-object p1, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    const-string v1, "updateSdkMouseStyle: change mouse style fail: MouseStyle is null and set normal style"

    .line 36
    .line 37
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object p1, Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;->NORMAL:Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/view/MouseView;->setMouseStyle(Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTransparentCursorBitmap:Landroid/graphics/Bitmap;

    .line 52
    .line 53
    invoke-direct {p1, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    sget-object v1, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v3, "updateSdkMouseStyle: change mouse style: "

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/view/MouseView;->setMouseStyle(Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;)V

    .line 83
    .line 84
    .line 85
    sget-object v2, Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;->NORMAL:Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;

    .line 86
    .line 87
    if-ne p1, v2, :cond_3

    .line 88
    .line 89
    iget-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mCursorBitmap:Landroid/graphics/Bitmap;

    .line 90
    .line 91
    if-eqz p1, :cond_3

    .line 92
    .line 93
    const-string p1, "updateSdkMouseStyle: set normal cursor bitmap"

    .line 94
    .line 95
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mCursorBitmap:Landroid/graphics/Bitmap;

    .line 105
    .line 106
    invoke-direct {p1, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    .line 111
    .line 112
    :cond_3
    return-void
.end method


# virtual methods
.method public changeMouseStyle(Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "changeMouseStyle: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isPCMouseMode()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isGamePadToMouse()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->hasOperatePermission()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    iget-boolean v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mCursorShowOrHide:Z

    .line 44
    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v2, 0x0

    .line 50
    :goto_0
    if-eqz v1, :cond_1

    .line 51
    .line 52
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/TouchUtil;->updateSdkMouseStyle(Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;)V

    .line 53
    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-direct {p0, v2, p1}, Lcom/haima/hmcp/widgets/TouchUtil;->setPCMouseStyle(ZLcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    if-nez v0, :cond_2

    .line 62
    .line 63
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/TouchUtil;->updateSdkMouseStyle(Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-direct {p0, v2, p1}, Lcom/haima/hmcp/widgets/TouchUtil;->setPCMouseStyle(ZLcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_1
    return-void
.end method

.method public clearDelayMessage()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public disablePointIconAnimate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mouseAnimateModel:Lcom/haima/hmcp/model/MouseAnimateModel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/model/MouseAnimateModel;->stop()V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "disablePointIconAnimate-->mouse anime stop"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public enablePointIconAnimate(Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "enablePointIconAnimate-->"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/haima/hmcp/widgets/TouchUtil$14;->$SwitchMap$com$haima$hmcp$proto$GSSDK$GameCursor$CursorStyle:[I

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    aget p1, v1, p1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-eq p1, v1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    if-eq p1, v1, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/MouseAnimateModel$MouseStyle;->BUSY:Lcom/haima/hmcp/model/MouseAnimateModel$MouseStyle;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    sget-object p1, Lcom/haima/hmcp/model/MouseAnimateModel$MouseStyle;->WORKING:Lcom/haima/hmcp/model/MouseAnimateModel$MouseStyle;

    .line 28
    .line 29
    :goto_0
    if-nez p1, :cond_3

    .line 30
    .line 31
    iget-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mouseAnimateModel:Lcom/haima/hmcp/model/MouseAnimateModel;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/haima/hmcp/model/MouseAnimateModel;->stop()V

    .line 36
    .line 37
    .line 38
    :cond_2
    const-string p1, "enablePointIconAnimate-->onMouseFrame: mouse style: null"

    .line 39
    .line 40
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v2, "enablePointIconAnimate-->onMouseFrame: mouse style: "

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mouseAnimateModel:Lcom/haima/hmcp/model/MouseAnimateModel;

    .line 65
    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/haima/hmcp/model/MouseAnimateModel;->getMouseStyle()Lcom/haima/hmcp/model/MouseAnimateModel$MouseStyle;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-ne v1, p1, :cond_4

    .line 73
    .line 74
    const-string p1, "enablePointIconAnimate-->onMouseFrame: same mouse style"

    .line 75
    .line 76
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_4
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mouseAnimateModel:Lcom/haima/hmcp/model/MouseAnimateModel;

    .line 81
    .line 82
    if-nez v1, :cond_5

    .line 83
    .line 84
    new-instance v1, Lcom/haima/hmcp/model/MouseAnimateModel;

    .line 85
    .line 86
    invoke-direct {v1}, Lcom/haima/hmcp/model/MouseAnimateModel;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mouseAnimateModel:Lcom/haima/hmcp/model/MouseAnimateModel;

    .line 90
    .line 91
    new-instance v2, Lcom/haima/hmcp/widgets/TouchUtil$12;

    .line 92
    .line 93
    invoke-direct {v2, p0}, Lcom/haima/hmcp/widgets/TouchUtil$12;-><init>(Lcom/haima/hmcp/widgets/TouchUtil;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/model/MouseAnimateModel;->setListener(Lcom/haima/hmcp/model/MouseAnimateModel$MouseAnimateListener;)V

    .line 97
    .line 98
    .line 99
    :cond_5
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mouseAnimateModel:Lcom/haima/hmcp/model/MouseAnimateModel;

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/haima/hmcp/model/MouseAnimateModel;->stop()V

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mouseAnimateModel:Lcom/haima/hmcp/model/MouseAnimateModel;

    .line 105
    .line 106
    invoke-virtual {v1, p1}, Lcom/haima/hmcp/model/MouseAnimateModel;->start(Lcom/haima/hmcp/model/MouseAnimateModel$MouseStyle;)V

    .line 107
    .line 108
    .line 109
    const-string p1, "enablePointIconAnimate-->mouse anime start"

    .line 110
    .line 111
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public followSysMouse(Landroid/view/MotionEvent;)V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->isKeyboardMapperGamepadEnable:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mJoyStickMappingConfig:Lcom/haima/hmcp/beans/JoyStickMappingConfig;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->isMouseConfigured()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/haima/hmcp/widgets/TouchUtil;->sendJoystickRockerMapping(Landroid/view/MotionEvent;Z)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    float-to-int v0, v0

    .line 29
    iput v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downX:I

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    float-to-int v2, p1

    .line 40
    iput v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downY:I

    .line 41
    .line 42
    iget v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downX:I

    .line 43
    .line 44
    iput v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastX:I

    .line 45
    .line 46
    iput v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastY:I

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    const/4 v4, 0x0

    .line 50
    const/4 v5, 0x1

    .line 51
    const/4 v6, 0x0

    .line 52
    move-object v0, p0

    .line 53
    invoke-virtual/range {v0 .. v6}, Lcom/haima/hmcp/widgets/TouchUtil;->sendAbsMouseEvent(IIIIZZ)V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    return-void
.end method

.method public getBlankTouchFinger(Landroid/view/MotionEvent;)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v1, v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {v4, v5}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->isUsePointID(Ljava/lang/Integer;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-nez v4, :cond_1

    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    if-ne v2, v4, :cond_0

    .line 31
    .line 32
    iput v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->firstPointerIndex:I

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const/4 v4, 0x2

    .line 36
    if-ne v2, v4, :cond_1

    .line 37
    .line 38
    iput v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->secondPointerIndex:I

    .line 39
    .line 40
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    sget-object p1, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v1, "doublePointerSlide===blankPointerCount"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return v2
.end method

.method public getCurPointerIcon()Landroid/view/PointerIcon;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mPointerIcon:Landroid/view/PointerIcon;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCursorStyle()Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mCursorStyle:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFunctionSensitivity()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mFunctionSensitivity:Ljava/lang/Float;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getLastPosition()Landroid/graphics/Point;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastPosition:Landroid/graphics/Point;

    .line 2
    .line 3
    return-object v0
.end method

.method getSensitivity()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mOriginSensitivity:Ljava/lang/Float;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getUsingSensitivity()F
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->getSensitivityInternal()Ljava/lang/Float;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasRequestPointerCapture()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hasRequestPointerCapture:Z

    .line 2
    .line 3
    return v0
.end method

.method public isAllowInput()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isAllowInput()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method mouseSlideTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "]"

    .line 14
    .line 15
    const-string v3, ","

    .line 16
    .line 17
    const/4 v4, -0x1

    .line 18
    const/4 v5, 0x0

    .line 19
    if-eqz v1, :cond_d

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    if-eq v1, v6, :cond_6

    .line 23
    .line 24
    const/4 v6, 0x2

    .line 25
    if-eq v1, v6, :cond_0

    .line 26
    .line 27
    const/4 v6, 0x3

    .line 28
    if-eq v1, v6, :cond_6

    .line 29
    .line 30
    const/4 v6, 0x5

    .line 31
    if-eq v1, v6, :cond_d

    .line 32
    .line 33
    const/4 v6, 0x6

    .line 34
    if-eq v1, v6, :cond_6

    .line 35
    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-ge v0, v1, :cond_12

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    float-to-int v1, v1

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    float-to-int v4, v4

    .line 55
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    invoke-virtual {v6, v7}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->isUsePointID(Ljava/lang/Integer;)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    iget v7, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mSpaceAreaPointID:I

    .line 79
    .line 80
    if-eq v6, v7, :cond_2

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    iget v6, p0, Lcom/haima/hmcp/widgets/TouchUtil;->errorPointID:I

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    if-ne v6, v7, :cond_3

    .line 90
    .line 91
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    iget p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastX:I

    .line 95
    .line 96
    sub-int v9, v1, p1

    .line 97
    .line 98
    iget p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastY:I

    .line 99
    .line 100
    sub-int v10, v4, p1

    .line 101
    .line 102
    iget p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downX:I

    .line 103
    .line 104
    sub-int p1, v1, p1

    .line 105
    .line 106
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    iget v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downY:I

    .line 111
    .line 112
    sub-int v0, v4, v0

    .line 113
    .line 114
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    sget-object v6, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 119
    .line 120
    new-instance v7, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v8, "mouse slide mode: moving ["

    .line 126
    .line 127
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-static {v6, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTimer:Ljava/util/Timer;

    .line 150
    .line 151
    if-eqz v2, :cond_5

    .line 152
    .line 153
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->touchConfig:Lcom/haima/hmcp/beans/X86TouchConfig;

    .line 154
    .line 155
    iget v2, v2, Lcom/haima/hmcp/beans/X86TouchConfig;->mouseSlideOffset:I

    .line 156
    .line 157
    if-ge p1, v2, :cond_4

    .line 158
    .line 159
    if-ge v0, v2, :cond_4

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_4
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->cancelLeftClickTimer()V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastPosition:Landroid/graphics/Point;

    .line 166
    .line 167
    iget v7, p1, Landroid/graphics/Point;->x:I

    .line 168
    .line 169
    iget v8, p1, Landroid/graphics/Point;->y:I

    .line 170
    .line 171
    const/4 v11, 0x0

    .line 172
    const/4 v12, 0x0

    .line 173
    move-object v6, p0

    .line 174
    invoke-virtual/range {v6 .. v12}, Lcom/haima/hmcp/widgets/TouchUtil;->sendAbsMouseEvent(IIIIZZ)V

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_5
    iget-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastPosition:Landroid/graphics/Point;

    .line 179
    .line 180
    iget v7, p1, Landroid/graphics/Point;->x:I

    .line 181
    .line 182
    iget v8, p1, Landroid/graphics/Point;->y:I

    .line 183
    .line 184
    const/4 v11, 0x0

    .line 185
    const/4 v12, 0x0

    .line 186
    move-object v6, p0

    .line 187
    invoke-virtual/range {v6 .. v12}, Lcom/haima/hmcp/widgets/TouchUtil;->sendAbsMouseEvent(IIIIZZ)V

    .line 188
    .line 189
    .line 190
    :goto_2
    iput v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastX:I

    .line 191
    .line 192
    iput v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastY:I

    .line 193
    .line 194
    goto/16 :goto_3

    .line 195
    .line 196
    :cond_6
    sget-object v1, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 197
    .line 198
    new-instance v6, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    const-string v7, "mouse slide mode: down up cost "

    .line 204
    .line 205
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 209
    .line 210
    .line 211
    move-result-wide v7

    .line 212
    iget-wide v9, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downTime:J

    .line 213
    .line 214
    sub-long/2addr v7, v9

    .line 215
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v7, " ms"

    .line 219
    .line 220
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    invoke-static {v1, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 231
    .line 232
    .line 233
    move-result v6

    .line 234
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    float-to-int v6, v6

    .line 239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 240
    .line 241
    .line 242
    move-result v7

    .line 243
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    float-to-int p1, p1

    .line 248
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 249
    .line 250
    .line 251
    move-result-object v7

    .line 252
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    .line 254
    .line 255
    move-result-object v8

    .line 256
    invoke-virtual {v7, v8}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->isUsePointID(Ljava/lang/Integer;)Z

    .line 257
    .line 258
    .line 259
    move-result v7

    .line 260
    if-eqz v7, :cond_7

    .line 261
    .line 262
    return v5

    .line 263
    :cond_7
    iget v7, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mSpaceAreaPointID:I

    .line 264
    .line 265
    if-ne v0, v7, :cond_c

    .line 266
    .line 267
    iput v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mSpaceAreaPointID:I

    .line 268
    .line 269
    iget v7, p0, Lcom/haima/hmcp/widgets/TouchUtil;->errorPointID:I

    .line 270
    .line 271
    if-ne v0, v7, :cond_8

    .line 272
    .line 273
    iput v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->errorPointID:I

    .line 274
    .line 275
    return v5

    .line 276
    :cond_8
    iput v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->errorPointID:I

    .line 277
    .line 278
    iget v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downX:I

    .line 279
    .line 280
    sub-int/2addr v6, v0

    .line 281
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    iget v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downY:I

    .line 286
    .line 287
    sub-int/2addr p1, v4

    .line 288
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .line 296
    .line 297
    const-string v6, "mouse slide mode: up ["

    .line 298
    .line 299
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->touchConfig:Lcom/haima/hmcp/beans/X86TouchConfig;

    .line 322
    .line 323
    iget v2, v2, Lcom/haima/hmcp/beans/X86TouchConfig;->mouseSlideOffset:I

    .line 324
    .line 325
    if-ge v0, v2, :cond_a

    .line 326
    .line 327
    if-ge p1, v2, :cond_a

    .line 328
    .line 329
    const-string p1, "mouse slide mode: up point < offset"

    .line 330
    .line 331
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    iget-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTimer:Ljava/util/Timer;

    .line 335
    .line 336
    if-eqz p1, :cond_9

    .line 337
    .line 338
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->cancelLeftClickTimer()V

    .line 339
    .line 340
    .line 341
    const-string p1, "mouse slide mode: cancel timer and no up event to send"

    .line 342
    .line 343
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    goto/16 :goto_3

    .line 347
    .line 348
    :cond_9
    iget-boolean p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hasMouseDown:Z

    .line 349
    .line 350
    if-eqz p1, :cond_12

    .line 351
    .line 352
    const-string p1, "mouse slide mode: down send already, than send up event"

    .line 353
    .line 354
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p0, v5}, Lcom/haima/hmcp/widgets/TouchUtil;->sendLMouseClickEvent(Z)V

    .line 358
    .line 359
    .line 360
    goto/16 :goto_3

    .line 361
    .line 362
    :cond_a
    const-string p1, "mouse slide: up point >= offset"

    .line 363
    .line 364
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    iget-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTimer:Ljava/util/Timer;

    .line 368
    .line 369
    if-eqz p1, :cond_b

    .line 370
    .line 371
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->cancelLeftClickTimer()V

    .line 372
    .line 373
    .line 374
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->sendDelayLMouseDownUp()V

    .line 375
    .line 376
    .line 377
    goto/16 :goto_3

    .line 378
    .line 379
    :cond_b
    iget-boolean p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hasMouseDown:Z

    .line 380
    .line 381
    if-eqz p1, :cond_12

    .line 382
    .line 383
    invoke-virtual {p0, v5}, Lcom/haima/hmcp/widgets/TouchUtil;->sendLMouseClickEvent(Z)V

    .line 384
    .line 385
    .line 386
    goto/16 :goto_3

    .line 387
    .line 388
    :cond_c
    return v5

    .line 389
    :cond_d
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 394
    .line 395
    .line 396
    move-result-object v6

    .line 397
    invoke-virtual {v1, v6}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->isUsePointID(Ljava/lang/Integer;)Z

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    if-eqz v1, :cond_e

    .line 402
    .line 403
    return v5

    .line 404
    :cond_e
    iget v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mSpaceAreaPointID:I

    .line 405
    .line 406
    if-eq v1, v4, :cond_f

    .line 407
    .line 408
    return v5

    .line 409
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 414
    .line 415
    .line 416
    move-result v1

    .line 417
    float-to-int v1, v1

    .line 418
    iput v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downX:I

    .line 419
    .line 420
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 425
    .line 426
    .line 427
    move-result p1

    .line 428
    float-to-int p1, p1

    .line 429
    iput p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downY:I

    .line 430
    .line 431
    iget v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downX:I

    .line 432
    .line 433
    iput v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastX:I

    .line 434
    .line 435
    iput p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastY:I

    .line 436
    .line 437
    iput v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mSpaceAreaPointID:I

    .line 438
    .line 439
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 440
    .line 441
    .line 442
    move-result-wide v6

    .line 443
    iput-wide v6, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downTime:J

    .line 444
    .line 445
    iget-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTimer:Ljava/util/Timer;

    .line 446
    .line 447
    if-eqz p1, :cond_10

    .line 448
    .line 449
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->cancelLeftClickTimer()V

    .line 450
    .line 451
    .line 452
    :cond_10
    iget p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downX:I

    .line 453
    .line 454
    iget v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downY:I

    .line 455
    .line 456
    invoke-direct {p0, p1, v1}, Lcom/haima/hmcp/widgets/TouchUtil;->checkPositionOk(II)Z

    .line 457
    .line 458
    .line 459
    move-result p1

    .line 460
    if-nez p1, :cond_11

    .line 461
    .line 462
    iput v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->errorPointID:I

    .line 463
    .line 464
    return v5

    .line 465
    :cond_11
    sget-object p1, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 466
    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    .line 468
    .line 469
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    .line 471
    .line 472
    const-string v1, "mouse slide mode: down ["

    .line 473
    .line 474
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    iget v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downX:I

    .line 478
    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    iget v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downY:I

    .line 486
    .line 487
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    iput-boolean v5, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hasMouseDown:Z

    .line 501
    .line 502
    new-instance p1, Ljava/util/Timer;

    .line 503
    .line 504
    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 505
    .line 506
    .line 507
    iput-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTimer:Ljava/util/Timer;

    .line 508
    .line 509
    new-instance v0, Lcom/haima/hmcp/widgets/TouchUtil$7;

    .line 510
    .line 511
    invoke-direct {v0, p0}, Lcom/haima/hmcp/widgets/TouchUtil$7;-><init>(Lcom/haima/hmcp/widgets/TouchUtil;)V

    .line 512
    .line 513
    .line 514
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->touchConfig:Lcom/haima/hmcp/beans/X86TouchConfig;

    .line 515
    .line 516
    iget-wide v1, v1, Lcom/haima/hmcp/beans/X86TouchConfig;->mouseSlideTouchTime:J

    .line 517
    .line 518
    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 519
    .line 520
    .line 521
    :cond_12
    :goto_3
    return v5
.end method

.method public moveToCursorImageView()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCursorImageView()Lcom/haima/hmcp/widgets/view/MouseView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    float-to-int v2, v0

    .line 14
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCursorImageView()Lcom/haima/hmcp/widgets/view/MouseView;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    float-to-int v3, v0

    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x1

    .line 28
    const/4 v7, 0x0

    .line 29
    move-object v1, p0

    .line 30
    invoke-virtual/range {v1 .. v7}, Lcom/haima/hmcp/widgets/TouchUtil;->sendAbsMouseEvent(IIIIZZ)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public moveToLastMousePoint()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isPCMouseMode()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastPosition:Landroid/graphics/Point;

    .line 12
    .line 13
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 14
    .line 15
    iget v3, v0, Landroid/graphics/Point;->y:I

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x1

    .line 20
    const/4 v7, 0x0

    .line 21
    move-object v1, p0

    .line 22
    invoke-virtual/range {v1 .. v7}, Lcom/haima/hmcp/widgets/TouchUtil;->sendAbsMouseEvent(IIIIZZ)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public parseDeviceData(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "parseDeviceData: jsonString is null or empty"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->capturedPointerReverseDeviceInfo:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    :try_start_0
    new-instance v0, Lcom/haima/hmcp/widgets/TouchUtil$13;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/haima/hmcp/widgets/TouchUtil$13;-><init>(Lcom/haima/hmcp/widgets/TouchUtil;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    new-array v2, v1, [Lcom/alibaba/fastjson/parser/Feature;

    .line 27
    .line 28
    invoke-static {p1, v0, v2}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/h;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    if-eqz v0, :cond_8

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    goto/16 :goto_4

    .line 43
    .line 44
    :cond_1
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->capturedPointerReverseDeviceInfo:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 47
    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-ge v2, v3, :cond_7

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Ljava/util/ArrayList;

    .line 61
    .line 62
    if-eqz v3, :cond_6

    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    if-eqz v4, :cond_2

    .line 69
    .line 70
    goto/16 :goto_2

    .line 71
    .line 72
    :cond_2
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 79
    .line 80
    .line 81
    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    const-string v6, ""

    .line 83
    .line 84
    const/4 v7, 0x1

    .line 85
    if-le v5, v7, :cond_3

    .line 86
    .line 87
    :try_start_2
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    check-cast v5, Ljava/lang/String;

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    move-object v5, v6

    .line 95
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    const/4 v8, 0x2

    .line 100
    if-le v7, v8, :cond_4

    .line 101
    .line 102
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    check-cast v6, Ljava/lang/String;

    .line 107
    .line 108
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    if-eqz v7, :cond_5

    .line 113
    .line 114
    sget-object v3, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 115
    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v5, "parseDeviceData: brand is empty at index "

    .line 122
    .line 123
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v5, ", skipping"

    .line 130
    .line 131
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-static {v3, v4}, Lcom/haima/hmcp/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_5
    new-instance v7, Lcom/haima/hmcp/widgets/TouchUtil$DeviceInfo;

    .line 143
    .line 144
    invoke-direct {v7, v4, v5, v6}, Lcom/haima/hmcp/widgets/TouchUtil$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->capturedPointerReverseDeviceInfo:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    sget-object v4, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 153
    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v6, "parseDeviceData: added device "

    .line 160
    .line 161
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v6, " - "

    .line 168
    .line 169
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v7}, Lcom/haima/hmcp/widgets/TouchUtil$DeviceInfo;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v6, " (elements: "

    .line 180
    .line 181
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v3, ")"

    .line 192
    .line 193
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-static {v4, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 201
    .line 202
    .line 203
    goto :goto_3

    .line 204
    :catch_0
    move-exception v3

    .line 205
    :try_start_3
    sget-object v4, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 206
    .line 207
    new-instance v5, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string v6, "parseDeviceData: error creating DeviceInfo at index "

    .line 213
    .line 214
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    invoke-static {v4, v5, v3}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 225
    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_6
    :goto_2
    sget-object v3, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 229
    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    const-string v5, "parseDeviceData: invalid device info at index "

    .line 236
    .line 237
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v5, ", array is null or empty"

    .line 244
    .line 245
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    invoke-static {v3, v4}, Lcom/haima/hmcp/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 256
    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    :cond_7
    sget-object v0, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 260
    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    const-string v2, "parseDeviceData: successfully parsed and set "

    .line 267
    .line 268
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->capturedPointerReverseDeviceInfo:Ljava/util/ArrayList;

    .line 272
    .line 273
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string v2, " device entries to capturedPointerReverseDeviceInfo"

    .line 281
    .line 282
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    goto :goto_5

    .line 293
    :cond_8
    :goto_4
    sget-object v0, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 294
    .line 295
    const-string v1, "parseDeviceData: parsed deviceData is null or empty"

    .line 296
    .line 297
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->capturedPointerReverseDeviceInfo:Ljava/util/ArrayList;

    .line 301
    .line 302
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 303
    .line 304
    .line 305
    return-void

    .line 306
    :catch_1
    move-exception v0

    .line 307
    sget-object v1, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 308
    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .line 313
    .line 314
    const-string v3, "parseDeviceData: error parsing JSON string: "

    .line 315
    .line 316
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    invoke-static {v1, p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 327
    .line 328
    .line 329
    iget-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->capturedPointerReverseDeviceInfo:Ljava/util/ArrayList;

    .line 330
    .line 331
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 332
    .line 333
    .line 334
    :goto_5
    return-void
.end method

.method screenSlideTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, -0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v1, :cond_8

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    if-eq v1, v4, :cond_4

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    if-eq v1, v4, :cond_0

    .line 22
    .line 23
    const/4 v4, 0x3

    .line 24
    if-eq v1, v4, :cond_4

    .line 25
    .line 26
    const/4 v4, 0x5

    .line 27
    if-eq v1, v4, :cond_8

    .line 28
    .line 29
    const/4 p1, 0x6

    .line 30
    if-eq v1, p1, :cond_4

    .line 31
    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-ge v0, v1, :cond_c

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    float-to-int v1, v1

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    float-to-int v2, v2

    .line 51
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v4, v5}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->isUsePointID(Ljava/lang/Integer;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    iget v5, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mSpaceAreaPointID:I

    .line 75
    .line 76
    if-eq v4, v5, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    iget v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->errorPointID:I

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-ne v4, v5, :cond_3

    .line 86
    .line 87
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    iget p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastX:I

    .line 91
    .line 92
    sub-int v7, v1, p1

    .line 93
    .line 94
    iget p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastY:I

    .line 95
    .line 96
    sub-int v8, v2, p1

    .line 97
    .line 98
    iget-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastPosition:Landroid/graphics/Point;

    .line 99
    .line 100
    iget v5, p1, Landroid/graphics/Point;->x:I

    .line 101
    .line 102
    iget v6, p1, Landroid/graphics/Point;->y:I

    .line 103
    .line 104
    const/4 v9, 0x0

    .line 105
    const/4 v10, 0x0

    .line 106
    move-object v4, p0

    .line 107
    invoke-virtual/range {v4 .. v10}, Lcom/haima/hmcp/widgets/TouchUtil;->sendAbsMouseEvent(IIIIZZ)V

    .line 108
    .line 109
    .line 110
    iput v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastX:I

    .line 111
    .line 112
    iput v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastY:I

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_4
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {p1, v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->isUsePointID(Ljava/lang/Integer;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_5

    .line 128
    .line 129
    return v3

    .line 130
    :cond_5
    iget p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mSpaceAreaPointID:I

    .line 131
    .line 132
    if-ne v0, p1, :cond_7

    .line 133
    .line 134
    iput v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mSpaceAreaPointID:I

    .line 135
    .line 136
    iget p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->errorPointID:I

    .line 137
    .line 138
    if-ne v0, p1, :cond_6

    .line 139
    .line 140
    iput v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->errorPointID:I

    .line 141
    .line 142
    return v3

    .line 143
    :cond_6
    iput v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->errorPointID:I

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_7
    return v3

    .line 147
    :cond_8
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/TouchUtil;->checkScreenSlideTouchInBoundary(Landroid/view/MotionEvent;)Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-nez v1, :cond_9

    .line 152
    .line 153
    return v3

    .line 154
    :cond_9
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-virtual {v1, v4}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->isUsePointID(Ljava/lang/Integer;)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_a

    .line 167
    .line 168
    return v3

    .line 169
    :cond_a
    iget v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mSpaceAreaPointID:I

    .line 170
    .line 171
    if-eq v1, v2, :cond_b

    .line 172
    .line 173
    return v3

    .line 174
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    float-to-int v1, v1

    .line 183
    iput v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downX:I

    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    float-to-int p1, p1

    .line 194
    iput p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downY:I

    .line 195
    .line 196
    iget v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downX:I

    .line 197
    .line 198
    iput v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastX:I

    .line 199
    .line 200
    iput p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastY:I

    .line 201
    .line 202
    iput v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mSpaceAreaPointID:I

    .line 203
    .line 204
    :cond_c
    :goto_2
    return v3
.end method

.method public sendAbsMouseEvent(IIIIZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTouchMode:Lcom/haima/hmcp/enums/TouchMode;

    .line 2
    .line 3
    sget-object v1, Lcom/haima/hmcp/enums/TouchMode;->TOUCH_MODE_SCREEN_SLIDE:Lcom/haima/hmcp/enums/TouchMode;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-direct/range {p0 .. p6}, Lcom/haima/hmcp/widgets/TouchUtil;->pointsAdded(IIIIZZ)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/haima/hmcp/widgets/TouchUtil;->sendAbsMouseEventOnce(IIIIZZ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public sendJoystickRockerMapping(Landroid/view/MotionEvent;Z)V
    .locals 4

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    iget-object p2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mJoystickMouseMappingHandler:Lcom/haima/hmcp/widgets/JoystickMappingHandler;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    new-instance p2, Lcom/haima/hmcp/widgets/JoystickMappingHandler;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mJoyStickMappingConfig:Lcom/haima/hmcp/beans/JoyStickMappingConfig;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTouchesMappingConfig:Lcom/haima/hmcp/beans/TouchesMappingConfig;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {p2, v0, v1, v2, v3}, Lcom/haima/hmcp/widgets/JoystickMappingHandler;-><init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/beans/JoyStickMappingConfig;Lcom/haima/hmcp/beans/TouchesMappingConfig;Z)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mJoystickMouseMappingHandler:Lcom/haima/hmcp/widgets/JoystickMappingHandler;

    .line 20
    .line 21
    :cond_0
    iget-object p2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mJoystickMouseMappingHandler:Lcom/haima/hmcp/widgets/JoystickMappingHandler;

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->handleJoystickMapping(Landroid/view/MotionEvent;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object p2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mJoystickTouchMappingHandler:Lcom/haima/hmcp/widgets/JoystickMappingHandler;

    .line 28
    .line 29
    if-nez p2, :cond_2

    .line 30
    .line 31
    new-instance p2, Lcom/haima/hmcp/widgets/JoystickMappingHandler;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mJoyStickMappingConfig:Lcom/haima/hmcp/beans/JoyStickMappingConfig;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTouchesMappingConfig:Lcom/haima/hmcp/beans/TouchesMappingConfig;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-direct {p2, v0, v1, v2, v3}, Lcom/haima/hmcp/widgets/JoystickMappingHandler;-><init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/beans/JoyStickMappingConfig;Lcom/haima/hmcp/beans/TouchesMappingConfig;Z)V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mJoystickTouchMappingHandler:Lcom/haima/hmcp/widgets/JoystickMappingHandler;

    .line 44
    .line 45
    :cond_2
    iget-object p2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mJoystickTouchMappingHandler:Lcom/haima/hmcp/widgets/JoystickMappingHandler;

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Lcom/haima/hmcp/widgets/JoystickMappingHandler;->handleJoystickMapping(Landroid/view/MotionEvent;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method public sendLMouseClickEvent(Z)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "sendLMouseClickEvent="

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iget-object v4, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 30
    .line 31
    iget-object v1, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastRelativePosition:Landroid/graphics/Point;

    .line 32
    .line 33
    iget v5, v1, Landroid/graphics/Point;->x:I

    .line 34
    .line 35
    iget v6, v1, Landroid/graphics/Point;->y:I

    .line 36
    .line 37
    iget-object v1, v0, Lcom/haima/hmcp/widgets/TouchUtil;->lastCursorPosition:Landroid/graphics/Point;

    .line 38
    .line 39
    iget v7, v1, Landroid/graphics/Point;->x:I

    .line 40
    .line 41
    iget v8, v1, Landroid/graphics/Point;->y:I

    .line 42
    .line 43
    iget-object v9, v0, Lcom/haima/hmcp/widgets/TouchUtil;->lastPositionMode:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;

    .line 44
    .line 45
    sget-object v10, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_BUTTON_LEFT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 46
    .line 47
    sget-object v11, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->OP_STATE_DOWN:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 48
    .line 49
    const/4 v12, 0x0

    .line 50
    invoke-virtual/range {v4 .. v12}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendMouse(IIIILcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;Z)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object v13, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 55
    .line 56
    iget-object v1, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastRelativePosition:Landroid/graphics/Point;

    .line 57
    .line 58
    iget v14, v1, Landroid/graphics/Point;->x:I

    .line 59
    .line 60
    iget v15, v1, Landroid/graphics/Point;->y:I

    .line 61
    .line 62
    iget-object v1, v0, Lcom/haima/hmcp/widgets/TouchUtil;->lastCursorPosition:Landroid/graphics/Point;

    .line 63
    .line 64
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 65
    .line 66
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 67
    .line 68
    iget-object v3, v0, Lcom/haima/hmcp/widgets/TouchUtil;->lastPositionMode:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;

    .line 69
    .line 70
    sget-object v19, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_BUTTON_LEFT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 71
    .line 72
    sget-object v20, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->OP_STATE_UP:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 73
    .line 74
    const/16 v21, 0x0

    .line 75
    .line 76
    move/from16 v16, v2

    .line 77
    .line 78
    move/from16 v17, v1

    .line 79
    .line 80
    move-object/from16 v18, v3

    .line 81
    .line 82
    invoke-virtual/range {v13 .. v21}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendMouse(IIIILcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;Z)Z

    .line 83
    .line 84
    .line 85
    :goto_0
    return-void
.end method

.method public sendMouseButtonEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMouseButtonEvent inputEvent action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-boolean v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->isKeyboardMapperGamepadEnable:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mJoyStickMappingConfig:Lcom/haima/hmcp/beans/JoyStickMappingConfig;

    invoke-static {p1, v0}, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->getMouseMappingButtonName(Landroid/view/MotionEvent;Lcom/haima/hmcp/beans/JoyStickMappingConfig;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/haima/hmcp/widgets/TouchUtil;->sendMouseButtonEventMapping(Landroid/view/MotionEvent;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/TouchUtil;->sendMouseButtonEventReal(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public sendMouseButtonEvent(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;)Z
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 6
    sget-object p1, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    const-string p2, "sendMouseButtonEvent fail: inputOp is null"

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    if-nez p2, :cond_1

    .line 7
    sget-object p1, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    const-string p2, "sendMouseButtonEvent fail: inputState is null"

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 8
    :cond_1
    sget-object v0, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMouseButtonEvent: PositionMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastPositionMode:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", InputOP = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", InputState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->updateMouse()V

    .line 10
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    if-eqz v2, :cond_2

    iget-boolean v0, v2, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mIsGamepadToMouse:Z

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastCursorPosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastPosition:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 12
    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastRelativePosition:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastCursorPosition:Landroid/graphics/Point;

    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastPositionMode:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;

    const/4 v10, 0x0

    move-object v8, p1

    move-object v9, p2

    invoke-virtual/range {v2 .. v10}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendMouse(IIIILcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;Z)Z

    const/4 p1, 0x1

    return p1
.end method

.method public sendMouseButtonEventForBackup(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    float-to-int v0, v0

    .line 10
    iput v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downX:I

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    float-to-int v3, v0

    .line 21
    iput v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downY:I

    .line 22
    .line 23
    iget v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downX:I

    .line 24
    .line 25
    iput v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastX:I

    .line 26
    .line 27
    iput v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastY:I

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x1

    .line 32
    const/4 v7, 0x0

    .line 33
    move-object v1, p0

    .line 34
    invoke-virtual/range {v1 .. v7}, Lcom/haima/hmcp/widgets/TouchUtil;->sendAbsMouseEvent(IIIIZZ)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/4 v2, 0x4

    .line 46
    const/4 v3, 0x2

    .line 47
    const/4 v4, 0x1

    .line 48
    const/4 v5, 0x0

    .line 49
    const/4 v6, 0x0

    .line 50
    if-eqz v0, :cond_6

    .line 51
    .line 52
    if-eq v0, v4, :cond_2

    .line 53
    .line 54
    const/4 v7, 0x3

    .line 55
    if-eq v0, v7, :cond_2

    .line 56
    .line 57
    const/4 v7, 0x5

    .line 58
    if-eq v0, v7, :cond_6

    .line 59
    .line 60
    const/4 v7, 0x6

    .line 61
    if-eq v0, v7, :cond_2

    .line 62
    .line 63
    const/16 v7, 0xb

    .line 64
    .line 65
    if-eq v0, v7, :cond_1

    .line 66
    .line 67
    const/16 v7, 0xc

    .line 68
    .line 69
    if-eq v0, v7, :cond_0

    .line 70
    .line 71
    move-object v7, v6

    .line 72
    move-object v8, v7

    .line 73
    goto/16 :goto_3

    .line 74
    .line 75
    :cond_0
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 79
    .line 80
    :goto_0
    move-object v8, v6

    .line 81
    goto/16 :goto_3

    .line 82
    .line 83
    :cond_2
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 84
    .line 85
    iget-boolean v8, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvLMouseDown:Z

    .line 86
    .line 87
    if-eqz v8, :cond_3

    .line 88
    .line 89
    sget-object v8, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_BUTTON_LEFT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    iget-boolean v8, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvRMouseDown:Z

    .line 93
    .line 94
    if-eqz v8, :cond_4

    .line 95
    .line 96
    sget-object v8, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_BUTTON_RIGHT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    iget-boolean v8, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvMMouseDown:Z

    .line 100
    .line 101
    if-eqz v8, :cond_5

    .line 102
    .line 103
    sget-object v8, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_BUTTON_MIDDLE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 104
    .line 105
    :goto_1
    iput-boolean v5, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvLMouseDown:Z

    .line 106
    .line 107
    iput-boolean v5, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvRMouseDown:Z

    .line 108
    .line 109
    iput-boolean v5, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvMMouseDown:Z

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_5
    sget-object p1, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 113
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v2, "sendMouseButtonEvent, ACTION_UP fail, buttonState is not handle, buttonState = "

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return v5

    .line 135
    :cond_6
    if-ne v1, v4, :cond_7

    .line 136
    .line 137
    iput-boolean v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvLMouseDown:Z

    .line 138
    .line 139
    iput-boolean v5, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvMMouseDown:Z

    .line 140
    .line 141
    iput-boolean v5, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvRMouseDown:Z

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_7
    if-ne v1, v3, :cond_8

    .line 145
    .line 146
    iput-boolean v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvRMouseDown:Z

    .line 147
    .line 148
    iput-boolean v5, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvMMouseDown:Z

    .line 149
    .line 150
    iput-boolean v5, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvLMouseDown:Z

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_8
    if-ne v1, v2, :cond_9

    .line 154
    .line 155
    iput-boolean v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvMMouseDown:Z

    .line 156
    .line 157
    iput-boolean v5, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvRMouseDown:Z

    .line 158
    .line 159
    iput-boolean v5, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvLMouseDown:Z

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_9
    sget-object v7, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 163
    .line 164
    new-instance v8, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string v9, "sendMouseButtonEvent, its not mouse button event action: "

    .line 170
    .line 171
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    invoke-static {v7, v8}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iput-boolean v5, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvMMouseDown:Z

    .line 185
    .line 186
    iput-boolean v5, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvRMouseDown:Z

    .line 187
    .line 188
    iput-boolean v5, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvLMouseDown:Z

    .line 189
    .line 190
    :goto_2
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 191
    .line 192
    iget-boolean v8, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvLMouseDown:Z

    .line 193
    .line 194
    if-eqz v8, :cond_a

    .line 195
    .line 196
    sget-object v8, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_BUTTON_LEFT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_a
    iget-boolean v8, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvRMouseDown:Z

    .line 200
    .line 201
    if-eqz v8, :cond_b

    .line 202
    .line 203
    sget-object v8, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_BUTTON_RIGHT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_b
    iget-boolean v8, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvMMouseDown:Z

    .line 207
    .line 208
    if-eqz v8, :cond_14

    .line 209
    .line 210
    sget-object v8, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_BUTTON_MIDDLE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 211
    .line 212
    :goto_3
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 213
    .line 214
    const/16 v10, 0x17

    .line 215
    .line 216
    if-lt v9, v10, :cond_f

    .line 217
    .line 218
    invoke-static {p1}, Lcom/haima/hmcp/business/c;->a(Landroid/view/MotionEvent;)I

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    if-eq p1, v4, :cond_e

    .line 231
    .line 232
    if-eq p1, v3, :cond_d

    .line 233
    .line 234
    if-eq p1, v2, :cond_c

    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_c
    sget-object v8, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_BUTTON_MIDDLE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_d
    sget-object v8, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_BUTTON_RIGHT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 241
    .line 242
    goto :goto_4

    .line 243
    :cond_e
    sget-object v8, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_BUTTON_LEFT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 244
    .line 245
    :cond_f
    :goto_4
    sget-object p1, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 246
    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .line 251
    .line 252
    const-string v3, "sendMouseButtonEvent action:"

    .line 253
    .line 254
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v0, ", actionButton:"

    .line 261
    .line 262
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    const-string v0, ", buttonState:"

    .line 269
    .line 270
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    if-eqz v7, :cond_12

    .line 284
    .line 285
    if-nez v8, :cond_10

    .line 286
    .line 287
    goto :goto_6

    .line 288
    :cond_10
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    if-eqz p1, :cond_11

    .line 293
    .line 294
    sget-object p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->OP_STATE_DOWN:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 295
    .line 296
    goto :goto_5

    .line 297
    :cond_11
    sget-object p1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->OP_STATE_UP:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 298
    .line 299
    :goto_5
    invoke-virtual {p0, v8, p1}, Lcom/haima/hmcp/widgets/TouchUtil;->sendMouseButtonEvent(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;)Z

    .line 300
    .line 301
    .line 302
    move-result p1

    .line 303
    return p1

    .line 304
    :cond_12
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .line 308
    .line 309
    const-string v1, "sendMouseButtonEvent fail, "

    .line 310
    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    if-nez v7, :cond_13

    .line 315
    .line 316
    const-string v1, "isButtonDown is null"

    .line 317
    .line 318
    goto :goto_7

    .line 319
    :cond_13
    const-string v1, "inputOP is null"

    .line 320
    .line 321
    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    return v5

    .line 332
    :cond_14
    sget-object p1, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 333
    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .line 338
    .line 339
    const-string v2, "sendMouseButtonEvent, ACTION_DOWN fail, buttonState is not handle, buttonState = "

    .line 340
    .line 341
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    return v5
.end method

.method public sendMouseDeviceMove(Landroid/view/MotionEvent;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    float-to-int v3, v3

    .line 11
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    float-to-int v1, v1

    .line 16
    sget-object v2, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v5, "sendMouseMove curX:"

    .line 24
    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v5, ",curY:"

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v5, ",mScale:"

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget v5, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mScale:F

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {v2, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v3, v1}, Lcom/haima/hmcp/widgets/TouchUtil;->calculatePoint(II)Lcom/haima/hmcp/beans/FPoint;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    iget-object v5, v0, Lcom/haima/hmcp/widgets/TouchUtil;->lastCursorPosition:Landroid/graphics/Point;

    .line 61
    .line 62
    iget v6, v4, Lcom/haima/hmcp/beans/FPoint;->x:F

    .line 63
    .line 64
    iget v7, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mScale:F

    .line 65
    .line 66
    mul-float v6, v6, v7

    .line 67
    .line 68
    float-to-int v6, v6

    .line 69
    iput v6, v5, Landroid/graphics/Point;->x:I

    .line 70
    .line 71
    iget v6, v4, Lcom/haima/hmcp/beans/FPoint;->y:F

    .line 72
    .line 73
    mul-float v6, v6, v7

    .line 74
    .line 75
    float-to-int v6, v6

    .line 76
    iput v6, v5, Landroid/graphics/Point;->y:I

    .line 77
    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v6, "sendMouseMove point:"

    .line 84
    .line 85
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v4, ", mLastPosition :"

    .line 92
    .line 93
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v4, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastPosition:Landroid/graphics/Point;

    .line 97
    .line 98
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v4, ",mLastRelativePosition:"

    .line 102
    .line 103
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object v4, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastRelativePosition:Landroid/graphics/Point;

    .line 107
    .line 108
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-static {v2, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget v4, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mMouseLastX:I

    .line 119
    .line 120
    sub-int v4, v3, v4

    .line 121
    .line 122
    iget v5, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mMouseLastY:I

    .line 123
    .line 124
    sub-int v5, v1, v5

    .line 125
    .line 126
    new-instance v6, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v7, "sendMouseMove offsetX:"

    .line 132
    .line 133
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v7, ",offsetY:"

    .line 140
    .line 141
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v7, ",mLastX:"

    .line 148
    .line 149
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget v7, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastX:I

    .line 153
    .line 154
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v7, ",mLastY:"

    .line 158
    .line 159
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    iget v7, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastY:I

    .line 163
    .line 164
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v7, ",mSensitivity:"

    .line 168
    .line 169
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-direct/range {p0 .. p0}, Lcom/haima/hmcp/widgets/TouchUtil;->getSensitivityInternal()Ljava/lang/Float;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    invoke-static {v2, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    int-to-float v4, v4

    .line 187
    invoke-direct/range {p0 .. p0}, Lcom/haima/hmcp/widgets/TouchUtil;->getSensitivityInternal()Ljava/lang/Float;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    mul-float v4, v4, v6

    .line 196
    .line 197
    float-to-int v4, v4

    .line 198
    int-to-float v5, v5

    .line 199
    invoke-direct/range {p0 .. p0}, Lcom/haima/hmcp/widgets/TouchUtil;->getSensitivityInternal()Ljava/lang/Float;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    mul-float v5, v5, v6

    .line 208
    .line 209
    float-to-int v5, v5

    .line 210
    iget-object v6, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mMouseLastPosition:Landroid/graphics/Point;

    .line 211
    .line 212
    iget v7, v6, Landroid/graphics/Point;->x:I

    .line 213
    .line 214
    add-int/2addr v7, v4

    .line 215
    iput v7, v6, Landroid/graphics/Point;->x:I

    .line 216
    .line 217
    iget v7, v6, Landroid/graphics/Point;->y:I

    .line 218
    .line 219
    add-int/2addr v7, v5

    .line 220
    iput v7, v6, Landroid/graphics/Point;->y:I

    .line 221
    .line 222
    iget-object v6, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastRelativePosition:Landroid/graphics/Point;

    .line 223
    .line 224
    iget v7, v6, Landroid/graphics/Point;->x:I

    .line 225
    .line 226
    add-int/2addr v7, v4

    .line 227
    iput v7, v6, Landroid/graphics/Point;->x:I

    .line 228
    .line 229
    iget v7, v6, Landroid/graphics/Point;->y:I

    .line 230
    .line 231
    add-int/2addr v7, v5

    .line 232
    iput v7, v6, Landroid/graphics/Point;->y:I

    .line 233
    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/haima/hmcp/widgets/TouchUtil;->updateMouse()V

    .line 235
    .line 236
    .line 237
    iget-object v8, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 238
    .line 239
    iget-object v6, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastRelativePosition:Landroid/graphics/Point;

    .line 240
    .line 241
    iget v9, v6, Landroid/graphics/Point;->x:I

    .line 242
    .line 243
    iget v10, v6, Landroid/graphics/Point;->y:I

    .line 244
    .line 245
    iget-object v6, v0, Lcom/haima/hmcp/widgets/TouchUtil;->lastCursorPosition:Landroid/graphics/Point;

    .line 246
    .line 247
    iget v11, v6, Landroid/graphics/Point;->x:I

    .line 248
    .line 249
    iget v12, v6, Landroid/graphics/Point;->y:I

    .line 250
    .line 251
    sget-object v13, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;->ABSOLUTE_MODE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;

    .line 252
    .line 253
    sget-object v14, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_MOV:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 254
    .line 255
    sget-object v15, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->OP_STATE_DEFAULT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 256
    .line 257
    const/16 v16, 0x1

    .line 258
    .line 259
    invoke-virtual/range {v8 .. v16}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendMouse(IIIILcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;Z)Z

    .line 260
    .line 261
    .line 262
    new-instance v6, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    const-string v7, "sendMouseMove : mMouseLastPosition="

    .line 268
    .line 269
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    iget-object v7, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastRelativePosition:Landroid/graphics/Point;

    .line 273
    .line 274
    invoke-virtual {v7}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v7

    .line 278
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string v7, ";"

    .line 282
    .line 283
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    invoke-static {v2, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    iput v3, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mMouseLastX:I

    .line 303
    .line 304
    iput v1, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mMouseLastY:I

    .line 305
    .line 306
    return-void
.end method

.method public sendMouseFromVirMouse(II)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mCursorShowOrHide:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastPosition:Landroid/graphics/Point;

    .line 6
    .line 7
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 8
    .line 9
    add-int v3, v1, p1

    .line 10
    .line 11
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 12
    .line 13
    add-int v4, v0, p2

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x1

    .line 17
    move-object v2, p0

    .line 18
    move v5, p1

    .line 19
    move v6, p2

    .line 20
    invoke-virtual/range {v2 .. v8}, Lcom/haima/hmcp/widgets/TouchUtil;->sendAbsMouseEvent(IIIIZZ)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, p1, p2, v0}, Lcom/haima/hmcp/widgets/TouchUtil;->sendRelMouseEvent(IIZ)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public sendMouseMove(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->isKeyboardMapperGamepadEnable:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mJoyStickMappingConfig:Lcom/haima/hmcp/beans/JoyStickMappingConfig;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->isMouseConfigured()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/haima/hmcp/widgets/TouchUtil;->sendJoystickRockerMapping(Landroid/view/MotionEvent;Z)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/TouchUtil;->sendMouseMoveReal(Landroid/view/MotionEvent;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method public sendMouseMoveGyroscope(IIZZ)V
    .locals 5

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "sendMouseMoveGyroscope curX:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ",curY:"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ",mScale:"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mScale:F

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mMouseLastX:I

    .line 42
    .line 43
    sub-int v1, p1, v1

    .line 44
    .line 45
    iget v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mMouseLastY:I

    .line 46
    .line 47
    sub-int v2, p2, v2

    .line 48
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v4, "sendMouseMoveGyroscope offsetX:"

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v4, ",offsetY:"

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v4, ",mSensitivity:"

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->getSensitivityInternal()Ljava/lang/Float;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    int-to-float v0, v1

    .line 90
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->getSensitivityInternal()Ljava/lang/Float;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    mul-float v0, v0, v1

    .line 99
    .line 100
    float-to-int v0, v0

    .line 101
    int-to-float v1, v2

    .line 102
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->getSensitivityInternal()Ljava/lang/Float;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    mul-float v1, v1, v2

    .line 111
    .line 112
    float-to-int v1, v1

    .line 113
    sget v2, Lcom/haima/hmcp/Constants;->CONFIG_GYROSCOPE_SENSOR_X_SENSITIVITY:I

    .line 114
    .line 115
    mul-int v0, v0, v2

    .line 116
    .line 117
    sget v2, Lcom/haima/hmcp/Constants;->CONFIG_GYROSCOPE_SENSOR_Y_SENSITIVITY:I

    .line 118
    .line 119
    mul-int v1, v1, v2

    .line 120
    .line 121
    if-eqz p3, :cond_0

    .line 122
    .line 123
    neg-int v0, v0

    .line 124
    :cond_0
    if-eqz p4, :cond_1

    .line 125
    .line 126
    neg-int v1, v1

    .line 127
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/haima/hmcp/widgets/TouchUtil;->sendMouseMoveGyroscopeSplit(II)V

    .line 128
    .line 129
    .line 130
    iput p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mMouseLastX:I

    .line 131
    .line 132
    iput p2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mMouseLastY:I

    .line 133
    .line 134
    return-void
.end method

.method public sendMouseMoveReal(Landroid/view/MotionEvent;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    float-to-int v3, v3

    .line 11
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    float-to-int v1, v1

    .line 16
    sget-object v2, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v5, "sendMouseMove curX:"

    .line 24
    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v5, ",curY:"

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v5, ",mScale:"

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget v5, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mScale:F

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {v2, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v3, v1}, Lcom/haima/hmcp/widgets/TouchUtil;->calculatePoint(II)Lcom/haima/hmcp/beans/FPoint;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    iget-object v5, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastPosition:Landroid/graphics/Point;

    .line 61
    .line 62
    iput v3, v5, Landroid/graphics/Point;->x:I

    .line 63
    .line 64
    iput v1, v5, Landroid/graphics/Point;->y:I

    .line 65
    .line 66
    iget-object v5, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastCursorPosition:Landroid/graphics/Point;

    .line 67
    .line 68
    iget v6, v4, Lcom/haima/hmcp/beans/FPoint;->x:F

    .line 69
    .line 70
    iget v7, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mScale:F

    .line 71
    .line 72
    mul-float v6, v6, v7

    .line 73
    .line 74
    float-to-int v6, v6

    .line 75
    iput v6, v5, Landroid/graphics/Point;->x:I

    .line 76
    .line 77
    iget v6, v4, Lcom/haima/hmcp/beans/FPoint;->y:F

    .line 78
    .line 79
    mul-float v6, v6, v7

    .line 80
    .line 81
    float-to-int v6, v6

    .line 82
    iput v6, v5, Landroid/graphics/Point;->y:I

    .line 83
    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v6, "sendMouseMove point:"

    .line 90
    .line 91
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v4, ", mLastPosition :"

    .line 98
    .line 99
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-object v4, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastPosition:Landroid/graphics/Point;

    .line 103
    .line 104
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v4, ",mLastRelativePosition:"

    .line 108
    .line 109
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-object v4, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastRelativePosition:Landroid/graphics/Point;

    .line 113
    .line 114
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-static {v2, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget v4, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mMouseLastX:I

    .line 125
    .line 126
    sub-int v4, v3, v4

    .line 127
    .line 128
    iget v5, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mMouseLastY:I

    .line 129
    .line 130
    sub-int v5, v1, v5

    .line 131
    .line 132
    new-instance v6, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v7, "sendMouseMove offsetX:"

    .line 138
    .line 139
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v7, ",offsetY:"

    .line 146
    .line 147
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v7, ",mLastX:"

    .line 154
    .line 155
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget v7, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastX:I

    .line 159
    .line 160
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v7, ",mLastY:"

    .line 164
    .line 165
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget v7, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastY:I

    .line 169
    .line 170
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v7, ",mSensitivity:"

    .line 174
    .line 175
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-direct/range {p0 .. p0}, Lcom/haima/hmcp/widgets/TouchUtil;->getSensitivityInternal()Ljava/lang/Float;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    invoke-static {v2, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    int-to-float v4, v4

    .line 193
    invoke-direct/range {p0 .. p0}, Lcom/haima/hmcp/widgets/TouchUtil;->getSensitivityInternal()Ljava/lang/Float;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    mul-float v4, v4, v6

    .line 202
    .line 203
    float-to-int v4, v4

    .line 204
    int-to-float v5, v5

    .line 205
    invoke-direct/range {p0 .. p0}, Lcom/haima/hmcp/widgets/TouchUtil;->getSensitivityInternal()Ljava/lang/Float;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    mul-float v5, v5, v6

    .line 214
    .line 215
    float-to-int v5, v5

    .line 216
    iget-object v6, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mMouseLastPosition:Landroid/graphics/Point;

    .line 217
    .line 218
    iget v7, v6, Landroid/graphics/Point;->x:I

    .line 219
    .line 220
    add-int/2addr v7, v4

    .line 221
    iput v7, v6, Landroid/graphics/Point;->x:I

    .line 222
    .line 223
    iget v7, v6, Landroid/graphics/Point;->y:I

    .line 224
    .line 225
    add-int/2addr v7, v5

    .line 226
    iput v7, v6, Landroid/graphics/Point;->y:I

    .line 227
    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/haima/hmcp/widgets/TouchUtil;->updateMouse()V

    .line 229
    .line 230
    .line 231
    sget-object v13, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;->ABSOLUTE_MODE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;

    .line 232
    .line 233
    iput-object v13, v0, Lcom/haima/hmcp/widgets/TouchUtil;->lastPositionMode:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;

    .line 234
    .line 235
    iget-object v8, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 236
    .line 237
    iget-object v6, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mMouseLastPosition:Landroid/graphics/Point;

    .line 238
    .line 239
    iget v9, v6, Landroid/graphics/Point;->x:I

    .line 240
    .line 241
    iget v10, v6, Landroid/graphics/Point;->y:I

    .line 242
    .line 243
    iget-object v6, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastCursorPosition:Landroid/graphics/Point;

    .line 244
    .line 245
    iget v11, v6, Landroid/graphics/Point;->x:I

    .line 246
    .line 247
    iget v12, v6, Landroid/graphics/Point;->y:I

    .line 248
    .line 249
    sget-object v14, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_MOV:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 250
    .line 251
    sget-object v15, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->OP_STATE_DEFAULT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 252
    .line 253
    const/16 v16, 0x1

    .line 254
    .line 255
    invoke-virtual/range {v8 .. v16}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendMouse(IIIILcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;Z)Z

    .line 256
    .line 257
    .line 258
    new-instance v6, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    const-string v7, "sendMouseMove : mMouseLastPosition="

    .line 264
    .line 265
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    iget-object v7, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mMouseLastPosition:Landroid/graphics/Point;

    .line 269
    .line 270
    invoke-virtual {v7}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v7

    .line 274
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string v7, ";"

    .line 278
    .line 279
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    invoke-static {v2, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    iput v3, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mMouseLastX:I

    .line 299
    .line 300
    iput v1, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mMouseLastY:I

    .line 301
    .line 302
    return-void
.end method

.method public sendPhysicalMouseMove(II)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mCursorShowOrHide:Z

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvLMouseDown:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    iget v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastX:I

    .line 11
    .line 12
    const/16 v1, -0x3e8

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    const/4 v1, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    sub-int v0, p1, v0

    .line 21
    .line 22
    iget v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastY:I

    .line 23
    .line 24
    sub-int v1, p2, v1

    .line 25
    .line 26
    :goto_0
    if-gtz p1, :cond_2

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    div-int/lit8 v0, v0, 0x28

    .line 37
    .line 38
    neg-int v0, v0

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    iget-object v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    add-int/lit8 v3, v3, -0x1

    .line 47
    .line 48
    if-lt p1, v3, :cond_3

    .line 49
    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    div-int/lit8 v0, v0, 0x28

    .line 59
    .line 60
    :cond_3
    :goto_1
    sget-object v3, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v5, "sendPhysicalMouseMove  "

    .line 68
    .line 69
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v5, "; "

    .line 76
    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-static {v3, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v0, v1, v2}, Lcom/haima/hmcp/widgets/TouchUtil;->sendRelMouseEvent(IIZ)V

    .line 91
    .line 92
    .line 93
    iput p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastX:I

    .line 94
    .line 95
    iput p2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastY:I

    .line 96
    .line 97
    :cond_4
    :goto_2
    return-void
.end method

.method public sendRMouseClickEvent(Z)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "sendRMouseClickEvent="

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iget-object v4, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 30
    .line 31
    iget-object v1, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastRelativePosition:Landroid/graphics/Point;

    .line 32
    .line 33
    iget v5, v1, Landroid/graphics/Point;->x:I

    .line 34
    .line 35
    iget v6, v1, Landroid/graphics/Point;->y:I

    .line 36
    .line 37
    iget-object v1, v0, Lcom/haima/hmcp/widgets/TouchUtil;->lastCursorPosition:Landroid/graphics/Point;

    .line 38
    .line 39
    iget v7, v1, Landroid/graphics/Point;->x:I

    .line 40
    .line 41
    iget v8, v1, Landroid/graphics/Point;->y:I

    .line 42
    .line 43
    iget-object v9, v0, Lcom/haima/hmcp/widgets/TouchUtil;->lastPositionMode:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;

    .line 44
    .line 45
    sget-object v10, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_BUTTON_RIGHT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 46
    .line 47
    sget-object v11, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->OP_STATE_DOWN:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 48
    .line 49
    const/4 v12, 0x0

    .line 50
    invoke-virtual/range {v4 .. v12}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendMouse(IIIILcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;Z)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object v13, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 55
    .line 56
    iget-object v1, v0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastRelativePosition:Landroid/graphics/Point;

    .line 57
    .line 58
    iget v14, v1, Landroid/graphics/Point;->x:I

    .line 59
    .line 60
    iget v15, v1, Landroid/graphics/Point;->y:I

    .line 61
    .line 62
    iget-object v1, v0, Lcom/haima/hmcp/widgets/TouchUtil;->lastCursorPosition:Landroid/graphics/Point;

    .line 63
    .line 64
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 65
    .line 66
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 67
    .line 68
    iget-object v3, v0, Lcom/haima/hmcp/widgets/TouchUtil;->lastPositionMode:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;

    .line 69
    .line 70
    sget-object v19, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_BUTTON_RIGHT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 71
    .line 72
    sget-object v20, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->OP_STATE_UP:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 73
    .line 74
    const/16 v21, 0x0

    .line 75
    .line 76
    move/from16 v16, v2

    .line 77
    .line 78
    move/from16 v17, v1

    .line 79
    .line 80
    move-object/from16 v18, v3

    .line 81
    .line 82
    invoke-virtual/range {v13 .. v21}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendMouse(IIIILcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;Z)Z

    .line 83
    .line 84
    .line 85
    :goto_0
    return-void
.end method

.method public sendRelMouseEvent(IIZ)V
    .locals 10

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    int-to-float p1, p1

    .line 4
    iget p3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBtnSensitivity:F

    .line 5
    .line 6
    mul-float p1, p1, p3

    .line 7
    .line 8
    float-to-int p1, p1

    .line 9
    int-to-float p2, p2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    int-to-float p1, p1

    .line 12
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->getSensitivityInternal()Ljava/lang/Float;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    mul-float p1, p1, p3

    .line 21
    .line 22
    float-to-int p1, p1

    .line 23
    int-to-float p2, p2

    .line 24
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->getSensitivityInternal()Ljava/lang/Float;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    :goto_0
    mul-float p2, p2, p3

    .line 33
    .line 34
    float-to-int p2, p2

    .line 35
    iget-object p3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastRelativePosition:Landroid/graphics/Point;

    .line 36
    .line 37
    iget v0, p3, Landroid/graphics/Point;->x:I

    .line 38
    .line 39
    add-int/2addr v0, p1

    .line 40
    iput v0, p3, Landroid/graphics/Point;->x:I

    .line 41
    .line 42
    iget p1, p3, Landroid/graphics/Point;->y:I

    .line 43
    .line 44
    add-int/2addr p1, p2

    .line 45
    iput p1, p3, Landroid/graphics/Point;->y:I

    .line 46
    .line 47
    iget-object p2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastCursorPosition:Landroid/graphics/Point;

    .line 48
    .line 49
    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 50
    .line 51
    iput p1, p2, Landroid/graphics/Point;->y:I

    .line 52
    .line 53
    sget-object v6, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;->RELATIVE_MODE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;

    .line 54
    .line 55
    iput-object v6, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastPositionMode:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 58
    .line 59
    iget v4, p3, Landroid/graphics/Point;->x:I

    .line 60
    .line 61
    iget v5, p3, Landroid/graphics/Point;->y:I

    .line 62
    .line 63
    sget-object v7, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_MOV:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 64
    .line 65
    sget-object v8, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->OP_STATE_DEFAULT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 66
    .line 67
    const/4 v9, 0x1

    .line 68
    move v2, v4

    .line 69
    move v3, v5

    .line 70
    invoke-virtual/range {v1 .. v9}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendMouse(IIIILcom/haima/hmcp/proto/GSSDK$OneInputOPData$PositionMode;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;Z)Z

    .line 71
    .line 72
    .line 73
    sget-object p1, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 74
    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string p3, "sendRelMouseEvent : mLastRelativePosition="

    .line 81
    .line 82
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object p3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastRelativePosition:Landroid/graphics/Point;

    .line 86
    .line 87
    invoke-virtual {p3}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public setBtnSensitivity(F)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "setBtnSensitivity"

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
    const/4 v0, 0x0

    .line 24
    cmpg-float v1, p1, v0

    .line 25
    .line 26
    if-gez v1, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 30
    .line 31
    cmpl-float v1, p1, v0

    .line 32
    .line 33
    if-lez v1, :cond_1

    .line 34
    .line 35
    const/high16 p1, 0x40000000    # 2.0f

    .line 36
    .line 37
    :cond_1
    iput p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBtnSensitivity:F

    .line 38
    .line 39
    return-void
.end method

.method setConfig(Lcom/haima/hmcp/beans/X86TouchConfig;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Lcom/haima/hmcp/beans/X86TouchConfig;

    .line 4
    .line 5
    invoke-direct {p1}, Lcom/haima/hmcp/beans/X86TouchConfig;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->touchConfig:Lcom/haima/hmcp/beans/X86TouchConfig;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iput-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->touchConfig:Lcom/haima/hmcp/beans/X86TouchConfig;

    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method public setCursorBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "setCursorBitmap"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mCursorBitmap:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->updateMouse()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setCursorStyle(Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "cursorStyle = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/TouchUtil;->changeMouseStyle(Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mCursorStyle:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->updateMouse()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method setGamepadMappingConfig(Lcom/haima/hmcp/beans/JoyStickMappingConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mJoyStickMappingConfig:Lcom/haima/hmcp/beans/JoyStickMappingConfig;

    .line 2
    .line 3
    return-void
.end method

.method public setInitPoint(Landroid/graphics/Point;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "point = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 28
    .line 29
    int-to-float v0, v0

    .line 30
    iget v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mScale:F

    .line 31
    .line 32
    div-float/2addr v0, v1

    .line 33
    float-to-int v0, v0

    .line 34
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 35
    .line 36
    int-to-float p1, p1

    .line 37
    div-float/2addr p1, v1

    .line 38
    float-to-int p1, p1

    .line 39
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 40
    .line 41
    iget-object v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    .line 42
    .line 43
    invoke-interface {v1}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    float-to-int v1, v1

    .line 52
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    .line 55
    .line 56
    invoke-interface {v2}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    float-to-int v2, v2

    .line 65
    new-instance v3, Landroid/graphics/Point;

    .line 66
    .line 67
    add-int/2addr v0, v1

    .line 68
    add-int/2addr p1, v2

    .line 69
    invoke-direct {v3, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 70
    .line 71
    .line 72
    iput-object v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastPosition:Landroid/graphics/Point;

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->updateMouse()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public setIsShowMouse(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "isShowMouse:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
    iput-boolean p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mCursorShowOrHide:Z

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->updateMouse()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public setMouseMode(Lcom/haima/hmcp/enums/TouchMode;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "setTouchMode: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    if-nez p1, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTouchMode:Lcom/haima/hmcp/enums/TouchMode;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->updateMouse()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public setPhysicalMouseViewOnSensitivity(F)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "setPhysicalMouseViewOnSensitivity"

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
    const/4 v0, 0x0

    .line 24
    cmpg-float v1, p1, v0

    .line 25
    .line 26
    if-gez v1, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    :cond_0
    iput p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mPhysicalMouseViewOnSensitivity:F

    .line 30
    .line 31
    return-void
.end method

.method public setScale(F)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "scale:"

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
    iput p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mScale:F

    .line 24
    .line 25
    return-void
.end method

.method public setSensitivity(F)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "setSensitivity "

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
    const/4 v0, 0x0

    .line 24
    cmpg-float v1, p1, v0

    .line 25
    .line 26
    if-gez v1, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mOriginSensitivity:Ljava/lang/Float;

    .line 34
    .line 35
    return-void
.end method

.method public setSpecificSensitivity(F)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 3
    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mFunctionSensitivity:Ljava/lang/Float;

    .line 11
    .line 12
    sget-object p1, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "setSpecificSensitivity :"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mFunctionSensitivity:Ljava/lang/Float;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    sget-object v0, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v2, "setSpecificSensitivity failed :"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method setTouchesMappingConfig(Lcom/haima/hmcp/beans/TouchesMappingConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTouchesMappingConfig:Lcom/haima/hmcp/beans/TouchesMappingConfig;

    .line 2
    .line 3
    return-void
.end method

.method public setView(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    return-void
.end method

.method public shouldUseReversePointerCapture()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->capturedPointerReverseDeviceInfo:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->capturedPointerReverseDeviceInfo:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/haima/hmcp/widgets/TouchUtil$DeviceInfo;

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/TouchUtil$DeviceInfo;->matchesCurrentDevice()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    sget-object v0, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v3, "shouldUseReversePointerCapture: current device matches "

    .line 47
    .line 48
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/TouchUtil$DeviceInfo;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/4 v0, 0x1

    .line 66
    return v0

    .line 67
    :cond_2
    :goto_0
    return v1
.end method

.method touchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    sget-object v8, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "onHmTouchEvent event mouseMode="

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTouchMode:Lcom/haima/hmcp/enums/TouchMode;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "; showCursor "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mCursorShowOrHide:Z

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, ";action = "

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, "; pointCount = "

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, "; x="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, "; y="

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v8, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTouchMode:Lcom/haima/hmcp/enums/TouchMode;

    .line 96
    .line 97
    sget-object v1, Lcom/haima/hmcp/enums/TouchMode;->TOUCH_MODE_NONE:Lcom/haima/hmcp/enums/TouchMode;

    .line 98
    .line 99
    const/4 v9, 0x0

    .line 100
    if-eq v0, v1, :cond_1e

    .line 101
    .line 102
    sget-boolean v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->editMode:Z

    .line 103
    .line 104
    if-eqz v1, :cond_0

    .line 105
    .line 106
    goto/16 :goto_4

    .line 107
    .line 108
    :cond_0
    sget-object v1, Lcom/haima/hmcp/enums/TouchMode;->TOUCH_MODE_SCREEN_SLIDE:Lcom/haima/hmcp/enums/TouchMode;

    .line 109
    .line 110
    if-ne v0, v1, :cond_1

    .line 111
    .line 112
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/TouchUtil;->screenSlideTouchEvent(Landroid/view/MotionEvent;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    return v0

    .line 117
    :cond_1
    sget-object v1, Lcom/haima/hmcp/enums/TouchMode;->TOUCH_MODE_MOUSE_SLIDE:Lcom/haima/hmcp/enums/TouchMode;

    .line 118
    .line 119
    if-ne v0, v1, :cond_2

    .line 120
    .line 121
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/TouchUtil;->mouseSlideTouchEvent(Landroid/view/MotionEvent;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    return v0

    .line 126
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/TouchUtil;->processDoublePointerSlide(Landroid/view/MotionEvent;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    const/4 v10, 0x1

    .line 143
    if-eqz v1, :cond_3

    .line 144
    .line 145
    return v10

    .line 146
    :cond_3
    const-string v11, "mouse down delay send normal in TOUCH_MODE_SCREEN"

    .line 147
    .line 148
    const/4 v1, -0x1

    .line 149
    if-eqz v0, :cond_16

    .line 150
    .line 151
    const/4 v2, 0x5

    .line 152
    if-eq v0, v10, :cond_e

    .line 153
    .line 154
    const/4 v3, 0x2

    .line 155
    if-eq v0, v3, :cond_4

    .line 156
    .line 157
    const/4 v3, 0x3

    .line 158
    if-eq v0, v3, :cond_e

    .line 159
    .line 160
    if-eq v0, v2, :cond_16

    .line 161
    .line 162
    const/4 v3, 0x6

    .line 163
    if-eq v0, v3, :cond_e

    .line 164
    .line 165
    goto/16 :goto_4

    .line 166
    .line 167
    :cond_4
    const/4 v8, 0x0

    .line 168
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-ge v8, v0, :cond_1e

    .line 173
    .line 174
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    float-to-int v2, v0

    .line 179
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    float-to-int v3, v0

    .line 184
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTouchMode:Lcom/haima/hmcp/enums/TouchMode;

    .line 185
    .line 186
    sget-object v1, Lcom/haima/hmcp/enums/TouchMode;->TOUCH_MODE_MULTIPLE:Lcom/haima/hmcp/enums/TouchMode;

    .line 187
    .line 188
    if-ne v0, v1, :cond_6

    .line 189
    .line 190
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    sget-object v1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_TOUCH_MOVE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 195
    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    sub-int/2addr v0, v10

    .line 205
    if-ne v8, v0, :cond_5

    .line 206
    .line 207
    const/4 v6, 0x1

    .line 208
    goto :goto_1

    .line 209
    :cond_5
    const/4 v6, 0x0

    .line 210
    :goto_1
    move-object v0, p0

    .line 211
    invoke-direct/range {v0 .. v6}, Lcom/haima/hmcp/widgets/TouchUtil;->sendTouchEvent(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;IIIIZ)V

    .line 212
    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_6
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->isUsePointID(Ljava/lang/Integer;)Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-eqz v0, :cond_7

    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_7
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    iget v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mSpaceAreaPointID:I

    .line 239
    .line 240
    if-eq v0, v1, :cond_8

    .line 241
    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-le v0, v10, :cond_8

    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_8
    iget v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->errorPointID:I

    .line 250
    .line 251
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-ne v0, v1, :cond_9

    .line 256
    .line 257
    :goto_2
    add-int/lit8 v8, v8, 0x1

    .line 258
    .line 259
    goto :goto_0

    .line 260
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    if-ne v0, v10, :cond_a

    .line 265
    .line 266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    float-to-int v2, v0

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    float-to-int v3, v0

    .line 276
    :cond_a
    move v8, v2

    .line 277
    move v10, v3

    .line 278
    iget v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastX:I

    .line 279
    .line 280
    sub-int v3, v8, v0

    .line 281
    .line 282
    iget v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastY:I

    .line 283
    .line 284
    sub-int v4, v10, v0

    .line 285
    .line 286
    invoke-direct {p0, p1, v8, v10}, Lcom/haima/hmcp/widgets/TouchUtil;->processTouchModeMouseMove(Landroid/view/MotionEvent;II)V

    .line 287
    .line 288
    .line 289
    iget-boolean v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mCursorShowOrHide:Z

    .line 290
    .line 291
    if-eqz v0, :cond_c

    .line 292
    .line 293
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTouchMode:Lcom/haima/hmcp/enums/TouchMode;

    .line 294
    .line 295
    sget-object v1, Lcom/haima/hmcp/enums/TouchMode;->TOUCH_MODE_MOUSE:Lcom/haima/hmcp/enums/TouchMode;

    .line 296
    .line 297
    if-ne v0, v1, :cond_b

    .line 298
    .line 299
    iget-boolean v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isDoubleSliding:Z

    .line 300
    .line 301
    if-nez v0, :cond_d

    .line 302
    .line 303
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastPosition:Landroid/graphics/Point;

    .line 304
    .line 305
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 306
    .line 307
    iget v2, v0, Landroid/graphics/Point;->y:I

    .line 308
    .line 309
    const/4 v5, 0x0

    .line 310
    const/4 v6, 0x0

    .line 311
    move-object v0, p0

    .line 312
    invoke-virtual/range {v0 .. v6}, Lcom/haima/hmcp/widgets/TouchUtil;->sendAbsMouseEvent(IIIIZZ)V

    .line 313
    .line 314
    .line 315
    goto :goto_3

    .line 316
    :cond_b
    const/4 v5, 0x1

    .line 317
    const/4 v6, 0x0

    .line 318
    move-object v0, p0

    .line 319
    move v1, v8

    .line 320
    move v2, v10

    .line 321
    invoke-virtual/range {v0 .. v6}, Lcom/haima/hmcp/widgets/TouchUtil;->sendAbsMouseEvent(IIIIZZ)V

    .line 322
    .line 323
    .line 324
    goto :goto_3

    .line 325
    :cond_c
    iget v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastX:I

    .line 326
    .line 327
    sub-int v0, v8, v0

    .line 328
    .line 329
    iget v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastY:I

    .line 330
    .line 331
    sub-int v1, v10, v1

    .line 332
    .line 333
    invoke-virtual {p0, v0, v1, v9}, Lcom/haima/hmcp/widgets/TouchUtil;->sendRelMouseEvent(IIZ)V

    .line 334
    .line 335
    .line 336
    :cond_d
    :goto_3
    iput v8, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastX:I

    .line 337
    .line 338
    iput v10, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastY:I

    .line 339
    .line 340
    goto/16 :goto_4

    .line 341
    .line 342
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    float-to-int v3, v0

    .line 351
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    float-to-int v5, v0

    .line 360
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTouchMode:Lcom/haima/hmcp/enums/TouchMode;

    .line 361
    .line 362
    sget-object v6, Lcom/haima/hmcp/enums/TouchMode;->TOUCH_MODE_MULTIPLE:Lcom/haima/hmcp/enums/TouchMode;

    .line 363
    .line 364
    if-ne v0, v6, :cond_f

    .line 365
    .line 366
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 371
    .line 372
    .line 373
    move-result v4

    .line 374
    sget-object v1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_TOUCH_CANCEL:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 375
    .line 376
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 377
    .line 378
    .line 379
    move-result v6

    .line 380
    const/4 v7, 0x1

    .line 381
    move-object v0, p0

    .line 382
    move v2, v3

    .line 383
    move v3, v5

    .line 384
    move v5, v6

    .line 385
    move v6, v7

    .line 386
    invoke-direct/range {v0 .. v6}, Lcom/haima/hmcp/widgets/TouchUtil;->sendTouchEvent(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;IIIIZ)V

    .line 387
    .line 388
    .line 389
    goto/16 :goto_4

    .line 390
    .line 391
    :cond_f
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 396
    .line 397
    .line 398
    move-result-object v6

    .line 399
    invoke-virtual {v0, v6}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->isUsePointID(Ljava/lang/Integer;)Z

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    if-eqz v0, :cond_10

    .line 404
    .line 405
    return v9

    .line 406
    :cond_10
    iget v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mSpaceAreaPointID:I

    .line 407
    .line 408
    if-ne v4, v0, :cond_15

    .line 409
    .line 410
    iput v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mSpaceAreaPointID:I

    .line 411
    .line 412
    iget v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->errorPointID:I

    .line 413
    .line 414
    if-ne v4, v0, :cond_11

    .line 415
    .line 416
    iput v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->errorPointID:I

    .line 417
    .line 418
    return v9

    .line 419
    :cond_11
    iput v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->errorPointID:I

    .line 420
    .line 421
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTouchMode:Lcom/haima/hmcp/enums/TouchMode;

    .line 422
    .line 423
    sget-object v1, Lcom/haima/hmcp/enums/TouchMode;->TOUCH_MODE_SCREEN:Lcom/haima/hmcp/enums/TouchMode;

    .line 424
    .line 425
    if-ne v0, v1, :cond_14

    .line 426
    .line 427
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/TouchUtil;->isRMouseClickEvent(Landroid/view/MotionEvent;)Z

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    if-nez v0, :cond_14

    .line 432
    .line 433
    iget-boolean v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mCursorShowOrHide:Z

    .line 434
    .line 435
    if-eqz v0, :cond_13

    .line 436
    .line 437
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->touchConfig:Lcom/haima/hmcp/beans/X86TouchConfig;

    .line 438
    .line 439
    if-eqz v0, :cond_12

    .line 440
    .line 441
    iget v0, v0, Lcom/haima/hmcp/beans/X86TouchConfig;->touchScreenModeClickDelayTime:I

    .line 442
    .line 443
    if-lez v0, :cond_12

    .line 444
    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    .line 449
    .line 450
    const-string v1, "mouse up event send delay in TOUCH_MODE_SCREEN, delay: "

    .line 451
    .line 452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->touchConfig:Lcom/haima/hmcp/beans/X86TouchConfig;

    .line 456
    .line 457
    iget v1, v1, Lcom/haima/hmcp/beans/X86TouchConfig;->touchScreenModeClickDelayTime:I

    .line 458
    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    invoke-static {v8, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->handler:Landroid/os/Handler;

    .line 470
    .line 471
    new-instance v1, Lcom/haima/hmcp/widgets/n0;

    .line 472
    .line 473
    invoke-direct {v1, p0}, Lcom/haima/hmcp/widgets/n0;-><init>(Lcom/haima/hmcp/widgets/TouchUtil;)V

    .line 474
    .line 475
    .line 476
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->touchConfig:Lcom/haima/hmcp/beans/X86TouchConfig;

    .line 477
    .line 478
    iget v2, v2, Lcom/haima/hmcp/beans/X86TouchConfig;->touchScreenModeClickDelayTime:I

    .line 479
    .line 480
    int-to-long v2, v2

    .line 481
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 482
    .line 483
    .line 484
    goto/16 :goto_4

    .line 485
    .line 486
    :cond_12
    invoke-static {v8, v11}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {p0, v9}, Lcom/haima/hmcp/widgets/TouchUtil;->sendLMouseClickEvent(Z)V

    .line 490
    .line 491
    .line 492
    goto/16 :goto_4

    .line 493
    .line 494
    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 495
    .line 496
    .line 497
    move-result-wide v0

    .line 498
    iget-wide v7, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downTime:J

    .line 499
    .line 500
    sub-long/2addr v0, v7

    .line 501
    const-wide/16 v7, 0xc8

    .line 502
    .line 503
    cmp-long v4, v0, v7

    .line 504
    .line 505
    if-gez v4, :cond_1e

    .line 506
    .line 507
    iget v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downX:I

    .line 508
    .line 509
    sub-int/2addr v3, v0

    .line 510
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 511
    .line 512
    .line 513
    move-result v0

    .line 514
    if-ge v0, v2, :cond_1e

    .line 515
    .line 516
    iget v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downY:I

    .line 517
    .line 518
    sub-int/2addr v5, v0

    .line 519
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 520
    .line 521
    .line 522
    move-result v0

    .line 523
    if-ge v0, v2, :cond_1e

    .line 524
    .line 525
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->sendDelayLMouseDownUp()V

    .line 526
    .line 527
    .line 528
    goto/16 :goto_4

    .line 529
    .line 530
    :cond_14
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTouchMode:Lcom/haima/hmcp/enums/TouchMode;

    .line 531
    .line 532
    sget-object v1, Lcom/haima/hmcp/enums/TouchMode;->TOUCH_MODE_MOUSE:Lcom/haima/hmcp/enums/TouchMode;

    .line 533
    .line 534
    if-ne v0, v1, :cond_1e

    .line 535
    .line 536
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/TouchUtil;->processTouchModeMouseUp(Landroid/view/MotionEvent;)V

    .line 537
    .line 538
    .line 539
    goto/16 :goto_4

    .line 540
    .line 541
    :cond_15
    return v9

    .line 542
    :cond_16
    invoke-static {}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->get()Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 547
    .line 548
    .line 549
    move-result-object v2

    .line 550
    invoke-virtual {v0, v2}, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->isUsePointID(Ljava/lang/Integer;)Z

    .line 551
    .line 552
    .line 553
    move-result v0

    .line 554
    if-eqz v0, :cond_17

    .line 555
    .line 556
    return v9

    .line 557
    :cond_17
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTouchMode:Lcom/haima/hmcp/enums/TouchMode;

    .line 558
    .line 559
    sget-object v2, Lcom/haima/hmcp/enums/TouchMode;->TOUCH_MODE_MULTIPLE:Lcom/haima/hmcp/enums/TouchMode;

    .line 560
    .line 561
    if-ne v0, v2, :cond_18

    .line 562
    .line 563
    sget-object v1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_TOUCH_POINT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 564
    .line 565
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 566
    .line 567
    .line 568
    move-result v0

    .line 569
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 570
    .line 571
    .line 572
    move-result v0

    .line 573
    float-to-int v2, v0

    .line 574
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 575
    .line 576
    .line 577
    move-result v0

    .line 578
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 579
    .line 580
    .line 581
    move-result v0

    .line 582
    float-to-int v3, v0

    .line 583
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 584
    .line 585
    .line 586
    move-result v5

    .line 587
    const/4 v6, 0x1

    .line 588
    move-object v0, p0

    .line 589
    invoke-direct/range {v0 .. v6}, Lcom/haima/hmcp/widgets/TouchUtil;->sendTouchEvent(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;IIIIZ)V

    .line 590
    .line 591
    .line 592
    return v9

    .line 593
    :cond_18
    iget v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mSpaceAreaPointID:I

    .line 594
    .line 595
    if-eq v0, v1, :cond_19

    .line 596
    .line 597
    return v9

    .line 598
    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 599
    .line 600
    .line 601
    move-result v0

    .line 602
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 603
    .line 604
    .line 605
    move-result v0

    .line 606
    float-to-int v0, v0

    .line 607
    iput v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downX:I

    .line 608
    .line 609
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 610
    .line 611
    .line 612
    move-result v0

    .line 613
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 614
    .line 615
    .line 616
    move-result v0

    .line 617
    float-to-int v0, v0

    .line 618
    iput v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downY:I

    .line 619
    .line 620
    iget v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downX:I

    .line 621
    .line 622
    iput v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastX:I

    .line 623
    .line 624
    iput v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastY:I

    .line 625
    .line 626
    iput v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mSpaceAreaPointID:I

    .line 627
    .line 628
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 629
    .line 630
    .line 631
    move-result-wide v0

    .line 632
    iput-wide v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downTime:J

    .line 633
    .line 634
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTimer:Ljava/util/Timer;

    .line 635
    .line 636
    if-eqz v0, :cond_1a

    .line 637
    .line 638
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->cancelLeftClickTimer()V

    .line 639
    .line 640
    .line 641
    :cond_1a
    iget v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downX:I

    .line 642
    .line 643
    iget v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downY:I

    .line 644
    .line 645
    invoke-direct {p0, v0, v1}, Lcom/haima/hmcp/widgets/TouchUtil;->checkPositionOk(II)Z

    .line 646
    .line 647
    .line 648
    move-result v0

    .line 649
    if-nez v0, :cond_1b

    .line 650
    .line 651
    iput v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->errorPointID:I

    .line 652
    .line 653
    return v9

    .line 654
    :cond_1b
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTouchMode:Lcom/haima/hmcp/enums/TouchMode;

    .line 655
    .line 656
    sget-object v1, Lcom/haima/hmcp/enums/TouchMode;->TOUCH_MODE_SCREEN:Lcom/haima/hmcp/enums/TouchMode;

    .line 657
    .line 658
    if-ne v0, v1, :cond_1d

    .line 659
    .line 660
    iget-boolean v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mCursorShowOrHide:Z

    .line 661
    .line 662
    if-eqz v1, :cond_1d

    .line 663
    .line 664
    iget v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downX:I

    .line 665
    .line 666
    iget v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downY:I

    .line 667
    .line 668
    const/4 v3, 0x0

    .line 669
    const/4 v4, 0x0

    .line 670
    const/4 v5, 0x1

    .line 671
    const/4 v6, 0x0

    .line 672
    move-object v0, p0

    .line 673
    invoke-virtual/range {v0 .. v6}, Lcom/haima/hmcp/widgets/TouchUtil;->sendAbsMouseEvent(IIIIZZ)V

    .line 674
    .line 675
    .line 676
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/TouchUtil;->isRMouseClickEvent(Landroid/view/MotionEvent;)Z

    .line 677
    .line 678
    .line 679
    move-result v0

    .line 680
    if-nez v0, :cond_1e

    .line 681
    .line 682
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->touchConfig:Lcom/haima/hmcp/beans/X86TouchConfig;

    .line 683
    .line 684
    if-eqz v0, :cond_1c

    .line 685
    .line 686
    iget v0, v0, Lcom/haima/hmcp/beans/X86TouchConfig;->touchScreenModeClickDelayTime:I

    .line 687
    .line 688
    if-lez v0, :cond_1c

    .line 689
    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    .line 691
    .line 692
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 693
    .line 694
    .line 695
    const-string v1, "mouse down event send delay in TOUCH_MODE_SCREEN, delay: "

    .line 696
    .line 697
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->touchConfig:Lcom/haima/hmcp/beans/X86TouchConfig;

    .line 701
    .line 702
    iget v1, v1, Lcom/haima/hmcp/beans/X86TouchConfig;->touchScreenModeClickDelayTime:I

    .line 703
    .line 704
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 705
    .line 706
    .line 707
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object v0

    .line 711
    invoke-static {v8, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->handler:Landroid/os/Handler;

    .line 715
    .line 716
    new-instance v1, Lcom/haima/hmcp/widgets/m0;

    .line 717
    .line 718
    invoke-direct {v1, p0}, Lcom/haima/hmcp/widgets/m0;-><init>(Lcom/haima/hmcp/widgets/TouchUtil;)V

    .line 719
    .line 720
    .line 721
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->touchConfig:Lcom/haima/hmcp/beans/X86TouchConfig;

    .line 722
    .line 723
    iget v2, v2, Lcom/haima/hmcp/beans/X86TouchConfig;->touchScreenModeClickDelayTime:I

    .line 724
    .line 725
    int-to-long v2, v2

    .line 726
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 727
    .line 728
    .line 729
    goto :goto_4

    .line 730
    :cond_1c
    invoke-static {v8, v11}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    .line 732
    .line 733
    invoke-virtual {p0, v10}, Lcom/haima/hmcp/widgets/TouchUtil;->sendLMouseClickEvent(Z)V

    .line 734
    .line 735
    .line 736
    goto :goto_4

    .line 737
    :cond_1d
    sget-object v1, Lcom/haima/hmcp/enums/TouchMode;->TOUCH_MODE_MOUSE:Lcom/haima/hmcp/enums/TouchMode;

    .line 738
    .line 739
    if-ne v0, v1, :cond_1e

    .line 740
    .line 741
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/TouchUtil;->processTouchModeMouseDown(Landroid/view/MotionEvent;)V

    .line 742
    .line 743
    .line 744
    :cond_1e
    :goto_4
    return v9
.end method

.method public tvTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    if-eq v0, v3, :cond_0

    .line 13
    .line 14
    const/4 v3, 0x5

    .line 15
    if-eq v0, v3, :cond_3

    .line 16
    .line 17
    const/4 p1, 0x6

    .line 18
    if-eq v0, p1, :cond_2

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    float-to-int v0, v0

    .line 26
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    float-to-int p1, p1

    .line 31
    iget v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastX:I

    .line 32
    .line 33
    sub-int v6, v0, v1

    .line 34
    .line 35
    iget v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastY:I

    .line 36
    .line 37
    sub-int v7, p1, v3

    .line 38
    .line 39
    iget-boolean v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mCursorShowOrHide:Z

    .line 40
    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    const/4 v8, 0x1

    .line 44
    const/4 v9, 0x0

    .line 45
    move-object v3, p0

    .line 46
    move v4, v0

    .line 47
    move v5, p1

    .line 48
    invoke-virtual/range {v3 .. v9}, Lcom/haima/hmcp/widgets/TouchUtil;->sendAbsMouseEvent(IIIIZZ)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    sub-int v1, v0, v1

    .line 53
    .line 54
    sub-int v3, p1, v3

    .line 55
    .line 56
    invoke-virtual {p0, v1, v3, v2}, Lcom/haima/hmcp/widgets/TouchUtil;->sendRelMouseEvent(IIZ)V

    .line 57
    .line 58
    .line 59
    :goto_0
    iput v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastX:I

    .line 60
    .line 61
    iput p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastY:I

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    iput-boolean v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvLMouseDown:Z

    .line 65
    .line 66
    invoke-virtual {p0, v2}, Lcom/haima/hmcp/widgets/TouchUtil;->sendLMouseClickEvent(Z)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    iput-boolean v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->isTvLMouseDown:Z

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    float-to-int v0, v0

    .line 81
    iput v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downX:I

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    float-to-int p1, p1

    .line 92
    iput p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downY:I

    .line 93
    .line 94
    iget v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downX:I

    .line 95
    .line 96
    iput v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastX:I

    .line 97
    .line 98
    iput p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastY:I

    .line 99
    .line 100
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 101
    .line 102
    .line 103
    move-result-wide v3

    .line 104
    iput-wide v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downTime:J

    .line 105
    .line 106
    iget v6, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downX:I

    .line 107
    .line 108
    iget v7, p0, Lcom/haima/hmcp/widgets/TouchUtil;->downY:I

    .line 109
    .line 110
    const/4 v8, 0x0

    .line 111
    const/4 v9, 0x0

    .line 112
    const/4 v10, 0x1

    .line 113
    const/4 v11, 0x0

    .line 114
    move-object v5, p0

    .line 115
    invoke-virtual/range {v5 .. v11}, Lcom/haima/hmcp/widgets/TouchUtil;->sendAbsMouseEvent(IIIIZZ)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v1}, Lcom/haima/hmcp/widgets/TouchUtil;->sendLMouseClickEvent(Z)V

    .line 119
    .line 120
    .line 121
    :goto_1
    return v2
.end method

.method public updateCurGamePackageName(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "updateCurGamePackageName :"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    iput-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->curGamePackageName:Ljava/lang/String;

    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public updateHotSpot(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hotSpotX:F

    .line 2
    .line 3
    iput p2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hotSpotY:F

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->updateMouse()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public updateHotSpotScale(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hotSpotX:F

    .line 2
    .line 3
    mul-float v0, v0, p1

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hotSpotX:F

    .line 6
    .line 7
    iget v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hotSpotY:F

    .line 8
    .line 9
    mul-float v0, v0, p1

    .line 10
    .line 11
    iput v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hotSpotY:F

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->updateMouse()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public updateMouse()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/TouchUtil;->checkCursorPosition()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCursorImageView()Lcom/haima/hmcp/widgets/view/MouseView;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isPCMouseMode()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->hasOperatePermission()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const/4 v3, 0x0

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    iget-boolean v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mCursorShowOrHide:Z

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v2, 0x0

    .line 35
    :goto_0
    iget-object v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mCursorStyle:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 36
    .line 37
    sget-object v5, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_NONE:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 38
    .line 39
    const/16 v6, 0x8

    .line 40
    .line 41
    if-eq v4, v5, :cond_7

    .line 42
    .line 43
    iget-object v4, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mTouchMode:Lcom/haima/hmcp/enums/TouchMode;

    .line 44
    .line 45
    sget-object v5, Lcom/haima/hmcp/enums/TouchMode;->TOUCH_MODE_MULTIPLE:Lcom/haima/hmcp/enums/TouchMode;

    .line 46
    .line 47
    if-ne v4, v5, :cond_2

    .line 48
    .line 49
    goto/16 :goto_2

    .line 50
    .line 51
    :cond_2
    if-nez v2, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-ne v6, v4, :cond_3

    .line 58
    .line 59
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mCursorStyle:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 60
    .line 61
    invoke-direct {p0, v2, v0}, Lcom/haima/hmcp/widgets/TouchUtil;->setPCMouseStyle(ZLcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    if-eqz v2, :cond_4

    .line 66
    .line 67
    if-eqz v1, :cond_5

    .line 68
    .line 69
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isGamePadToMouse()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    const/16 v3, 0x8

    .line 79
    .line 80
    :cond_5
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mCursorStyle:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 84
    .line 85
    invoke-direct {p0, v2, v1}, Lcom/haima/hmcp/widgets/TouchUtil;->setPCMouseStyle(ZLcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;)V

    .line 86
    .line 87
    .line 88
    sget-object v1, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 89
    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v3, "lastPosition: "

    .line 96
    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-object v3, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastPosition:Landroid/graphics/Point;

    .line 101
    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastPosition:Landroid/graphics/Point;

    .line 113
    .line 114
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 115
    .line 116
    int-to-float v1, v1

    .line 117
    iget v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hotSpotX:F

    .line 118
    .line 119
    sub-float/2addr v1, v2

    .line 120
    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastPosition:Landroid/graphics/Point;

    .line 124
    .line 125
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 126
    .line 127
    int-to-float v1, v1

    .line 128
    iget v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hotSpotY:F

    .line 129
    .line 130
    sub-float/2addr v1, v2

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mBaseRtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCursorOverLay()Lcom/haima/hmcp/widgets/view/CircularProgressIndicatorView;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    if-nez v1, :cond_6

    .line 141
    .line 142
    return-void

    .line 143
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    int-to-float v2, v2

    .line 148
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    int-to-float v0, v0

    .line 153
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    int-to-float v3, v3

    .line 158
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    int-to-float v4, v4

    .line 163
    iget-object v5, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastPosition:Landroid/graphics/Point;

    .line 164
    .line 165
    iget v6, v5, Landroid/graphics/Point;->x:I

    .line 166
    .line 167
    int-to-float v6, v6

    .line 168
    iget v7, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hotSpotX:F

    .line 169
    .line 170
    sub-float/2addr v6, v7

    .line 171
    sub-float/2addr v3, v2

    .line 172
    const/high16 v2, 0x40000000    # 2.0f

    .line 173
    .line 174
    div-float/2addr v3, v2

    .line 175
    sub-float/2addr v6, v3

    .line 176
    iget v3, v5, Landroid/graphics/Point;->y:I

    .line 177
    .line 178
    int-to-float v3, v3

    .line 179
    iget v5, p0, Lcom/haima/hmcp/widgets/TouchUtil;->hotSpotY:F

    .line 180
    .line 181
    sub-float/2addr v3, v5

    .line 182
    sub-float/2addr v4, v0

    .line 183
    div-float/2addr v4, v2

    .line 184
    sub-float/2addr v3, v4

    .line 185
    invoke-virtual {v1, v6}, Landroid/view/View;->setX(F)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v3}, Landroid/view/View;->setY(F)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :cond_7
    :goto_2
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mCursorStyle:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 196
    .line 197
    invoke-direct {p0, v2, v0}, Lcom/haima/hmcp/widgets/TouchUtil;->setPCMouseStyle(ZLcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;)V

    .line 198
    .line 199
    .line 200
    return-void
.end method

.method public useSpecificSensitivity(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mUseSpecificSensitivity:Z

    .line 5
    .line 6
    sget-object p1, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "useSpecificSensitivity isChecked is true :"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mFunctionSensitivity:Ljava/lang/Float;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mUseSpecificSensitivity:Z

    .line 33
    .line 34
    sget-object p1, Lcom/haima/hmcp/widgets/TouchUtil;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v1, "useSpecificSensitivity isChecked is false,resume :"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mOriginSensitivity:Ljava/lang/Float;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method public wrapCustomInputOPData(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

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
    sget-object v0, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "wrapCustomInputOPData :mLastRelativePosition.x="

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastRelativePosition:Landroid/graphics/Point;

    .line 24
    .line 25
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, ";mLastRelativePosition.y="

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastRelativePosition:Landroid/graphics/Point;

    .line 36
    .line 37
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, ";lastCursorPosition.x="

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastCursorPosition:Landroid/graphics/Point;

    .line 48
    .line 49
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, ";lastCursorPosition.y="

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastCursorPosition:Landroid/graphics/Point;

    .line 60
    .line 61
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;

    .line 88
    .line 89
    if-nez v0, :cond_2

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    sget-object v1, Lcom/haima/hmcp/widgets/TouchUtil$14;->$SwitchMap$com$haima$hmcp$beans$HMInputOpData$HMOneInputOPData_InputOP:[I

    .line 93
    .line 94
    iget-object v2, v0, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;->inputOp:Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData_InputOP;

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    aget v1, v1, v2

    .line 101
    .line 102
    const/4 v2, 0x1

    .line 103
    if-eq v1, v2, :cond_3

    .line 104
    .line 105
    const/4 v2, 0x2

    .line 106
    if-eq v1, v2, :cond_3

    .line 107
    .line 108
    const/4 v2, 0x3

    .line 109
    if-eq v1, v2, :cond_3

    .line 110
    .line 111
    const/4 v2, 0x4

    .line 112
    if-eq v1, v2, :cond_3

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_3
    iget-object v1, v0, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;->mousePosition:Landroid/graphics/Point;

    .line 116
    .line 117
    if-nez v1, :cond_4

    .line 118
    .line 119
    new-instance v1, Landroid/graphics/Point;

    .line 120
    .line 121
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 122
    .line 123
    .line 124
    iput-object v1, v0, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;->mousePosition:Landroid/graphics/Point;

    .line 125
    .line 126
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil;->mLastRelativePosition:Landroid/graphics/Point;

    .line 127
    .line 128
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 129
    .line 130
    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 131
    .line 132
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 133
    .line 134
    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 135
    .line 136
    :cond_4
    iget-object v1, v0, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;->cursorPosition:Landroid/graphics/Point;

    .line 137
    .line 138
    if-nez v1, :cond_1

    .line 139
    .line 140
    new-instance v1, Landroid/graphics/Point;

    .line 141
    .line 142
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 143
    .line 144
    .line 145
    iput-object v1, v0, Lcom/haima/hmcp/beans/HMInputOpData$HMOneInputOPData;->cursorPosition:Landroid/graphics/Point;

    .line 146
    .line 147
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil;->lastCursorPosition:Landroid/graphics/Point;

    .line 148
    .line 149
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 150
    .line 151
    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 152
    .line 153
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 154
    .line 155
    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_5
    :goto_1
    return-void
.end method

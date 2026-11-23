.class public Lcom/haima/hmcp/model/TvModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ROM_ORIENTATION_HANDSTAND:I = 0x2

.field public static final ROM_ORIENTATION_LANDSCAPE:I = 0x0

.field public static final ROM_ORIENTATION_PORTRAIT:I = 0x3

.field public static final ROM_ORIENTATION_PORTRAIT_NAGTIVE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TvModel"


# instance fields
.field private listener:Lcom/haima/hmcp/listeners/TvModelListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getRenderView()Lcom/haima/hmcp/listeners/IRenderViewBase;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/TvModel;->listener:Lcom/haima/hmcp/listeners/TvModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/TvModelListener;->onGetRenderView()Lcom/haima/hmcp/listeners/IRenderViewBase;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/TvModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "rotateMouseView fail"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0
.end method

.method private getScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/TvModel;->listener:Lcom/haima/hmcp/listeners/TvModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/TvModelListener;->onScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/TvModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "getScreenOrientation fail"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lcom/haima/hmcp/enums/ScreenOrientation;->LANDSCAPE:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 18
    .line 19
    return-object v0
.end method

.method private getSwitchOrientationTargetView()Landroid/widget/FrameLayout;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/TvModel;->listener:Lcom/haima/hmcp/listeners/TvModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/TvModelListener;->onGetSwitchOrientationTargetView()Landroid/widget/FrameLayout;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/TvModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "getSwitchOrientationTargetView fail"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0
.end method

.method private isSupportRotate()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/TvModel;->listener:Lcom/haima/hmcp/listeners/TvModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/TvModelListener;->isSupportRotate()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/TvModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "isSupportRotate: listener is null and return default true"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0
.end method

.method private returnToInitialState()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/model/TvModel;->getSwitchOrientationTargetView()Landroid/widget/FrameLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/haima/hmcp/model/TvModel;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "returnToInitialState fail, target view is null"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    sput-boolean v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->TV_ROTATE:Z

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    new-array v3, v2, [F

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    aput v4, v3, v1

    .line 23
    .line 24
    const-string v4, "rotation"

    .line 25
    .line 26
    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    new-array v4, v2, [F

    .line 31
    .line 32
    const/high16 v5, 0x3f800000    # 1.0f

    .line 33
    .line 34
    aput v5, v4, v1

    .line 35
    .line 36
    const-string v6, "scaleX"

    .line 37
    .line 38
    invoke-static {v0, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    new-array v2, v2, [F

    .line 43
    .line 44
    aput v5, v2, v1

    .line 45
    .line 46
    const-string v1, "scaleY"

    .line 47
    .line 48
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 53
    .line 54
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 66
    .line 67
    .line 68
    const-wide/16 v2, 0x104

    .line 69
    .line 70
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method private rotateMouseView(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/TvModel;->listener:Lcom/haima/hmcp/listeners/TvModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/TvModelListener;->onMouseRotate(Z)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/TvModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "rotateMouseView fail"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private switchOrientation(I)V
    .locals 3

    .line 5
    sget-object v0, Lcom/haima/hmcp/model/TvModel;->TAG:Ljava/lang/String;

    const-string v1, "====switchOrientation====="

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/haima/hmcp/model/TvModel;->isSupportRotate()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "====switchOrientation=====, is not support rotate"

    .line 7
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/haima/hmcp/model/TvModel;->getScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;

    move-result-object v0

    sget-object v1, Lcom/haima/hmcp/enums/ScreenOrientation;->LANDSCAPE:Lcom/haima/hmcp/enums/ScreenOrientation;

    const/4 v2, 0x3

    if-ne v0, v1, :cond_3

    if-ne p1, v2, :cond_2

    .line 9
    sget-boolean p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->TV_ROTATE:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 10
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/TvModel;->rotateMouseView(Z)V

    .line 11
    invoke-direct {p0}, Lcom/haima/hmcp/model/TvModel;->switchOrientationInternal()V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/TvModel;->rotateMouseView(Z)V

    .line 13
    invoke-direct {p0}, Lcom/haima/hmcp/model/TvModel;->returnToInitialState()V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_5

    .line 14
    sget-boolean p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->TV_ROTATE:Z

    if-eqz p1, :cond_4

    return-void

    .line 15
    :cond_4
    invoke-direct {p0}, Lcom/haima/hmcp/model/TvModel;->switchOrientationInternal()V

    goto :goto_0

    :cond_5
    if-ne p1, v2, :cond_6

    .line 16
    invoke-direct {p0}, Lcom/haima/hmcp/model/TvModel;->returnToInitialState()V

    :cond_6
    :goto_0
    return-void
.end method

.method private switchOrientationInternal()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/model/TvModel;->getRenderView()Lcom/haima/hmcp/listeners/IRenderViewBase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/haima/hmcp/model/TvModel;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "switchOrientationInternal fail, mRenderView is null"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    int-to-float v1, v1

    .line 24
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    int-to-float v0, v0

    .line 33
    div-float v2, v0, v1

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    cmpl-float v1, v1, v3

    .line 37
    .line 38
    if-eqz v1, :cond_4

    .line 39
    .line 40
    cmpl-float v0, v0, v3

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-direct {p0}, Lcom/haima/hmcp/model/TvModel;->getSwitchOrientationTargetView()Landroid/widget/FrameLayout;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    sget-object v0, Lcom/haima/hmcp/model/TvModel;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    const-string v1, "switchOrientationInternal fail, target view is null"

    .line 54
    .line 55
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    const/4 v1, 0x1

    .line 60
    sput-boolean v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->TV_ROTATE:Z

    .line 61
    .line 62
    new-array v3, v1, [F

    .line 63
    .line 64
    invoke-direct {p0}, Lcom/haima/hmcp/model/TvModel;->getScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    sget-object v5, Lcom/haima/hmcp/enums/ScreenOrientation;->LANDSCAPE:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 69
    .line 70
    if-ne v4, v5, :cond_3

    .line 71
    .line 72
    const/high16 v4, 0x42b40000    # 90.0f

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    const/high16 v4, -0x3d4c0000    # -90.0f

    .line 76
    .line 77
    :goto_0
    const/4 v5, 0x0

    .line 78
    aput v4, v3, v5

    .line 79
    .line 80
    const-string v4, "rotation"

    .line 81
    .line 82
    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    new-array v4, v1, [F

    .line 87
    .line 88
    aput v2, v4, v5

    .line 89
    .line 90
    const-string v6, "scaleX"

    .line 91
    .line 92
    invoke-static {v0, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    new-array v1, v1, [F

    .line 97
    .line 98
    aput v2, v1, v5

    .line 99
    .line 100
    const-string v2, "scaleY"

    .line 101
    .line 102
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 107
    .line 108
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 120
    .line 121
    .line 122
    const-wide/16 v2, 0x104

    .line 123
    .line 124
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_4
    :goto_1
    sget-object v0, Lcom/haima/hmcp/model/TvModel;->TAG:Ljava/lang/String;

    .line 132
    .line 133
    const-string v1, "View width or height is 0"

    .line 134
    .line 135
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    return-void
.end method


# virtual methods
.method public setListener(Lcom/haima/hmcp/listeners/TvModelListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/TvModel;->listener:Lcom/haima/hmcp/listeners/TvModelListener;

    .line 2
    .line 3
    return-void
.end method

.method public switchOrientation(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "orientation"

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 3
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/TvModel;->switchOrientation(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.class public Lcom/join/mgps/Util/e;
.super Ljava/lang/Object;
.source "SourceFile"


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

.method public static a(Landroid/view/View;)Landroid/animation/Animator;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramView"
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0xc8

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v0, v1, v2}, Lcom/join/mgps/Util/e;->b(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public static b(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "paramView",
            "paramLong",
            "paramAnimatorListener"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    const-string v1, "alpha"

    .line 8
    .line 9
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 14
    .line 15
    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static c(Landroid/view/View;)Landroid/animation/Animator;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramView"
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0xc8

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v0, v1, v2}, Lcom/join/mgps/Util/e;->d(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public static d(Landroid/view/View;JLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "paramView",
            "paramLong",
            "paramAnimatorListener"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    const-string v1, "alpha"

    .line 8
    .line 9
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 14
    .line 15
    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static e(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0100b0

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 17
    .line 18
    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 22
    .line 23
    .line 24
    const-wide/16 v1, 0x1f4

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static f(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0100b1

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 17
    .line 18
    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 22
    .line 23
    .line 24
    const-wide/16 v1, 0x1f4

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static g(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    const/high16 v0, 0x40a00000    # 5.0f

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/join/mgps/Util/e;->m(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-wide/16 v0, 0x2bc

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static h(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/e;->j(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-wide/16 v0, 0x2bc

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static i(Landroid/view/View;IIIZ)Landroid/animation/Animator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "toX",
            "time",
            "delayTime",
            "isStart"
        }
    .end annotation

    .line 1
    const-string v0, "scrollX"

    .line 2
    .line 3
    filled-new-array {p1}, [I

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    int-to-long p1, p2

    .line 12
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 13
    .line 14
    .line 15
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 16
    .line 17
    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 21
    .line 22
    .line 23
    int-to-long p1, p3

    .line 24
    invoke-virtual {p0, p1, p2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 25
    .line 26
    .line 27
    if-eqz p4, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-object p0
.end method

.method public static j(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f071133

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 13
    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    new-array v2, v2, [Landroid/animation/Keyframe;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static {v3, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/4 v5, 0x0

    .line 24
    aput-object v4, v2, v5

    .line 25
    .line 26
    neg-int v4, v0

    .line 27
    int-to-float v4, v4

    .line 28
    const v6, 0x3dcccccd    # 0.1f

    .line 29
    .line 30
    .line 31
    invoke-static {v6, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    const/4 v7, 0x1

    .line 36
    aput-object v6, v2, v7

    .line 37
    .line 38
    int-to-float v0, v0

    .line 39
    const v6, 0x3e851eb8    # 0.26f

    .line 40
    .line 41
    .line 42
    invoke-static {v6, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    const/4 v8, 0x2

    .line 47
    aput-object v6, v2, v8

    .line 48
    .line 49
    const v6, 0x3ed70a3d    # 0.42f

    .line 50
    .line 51
    .line 52
    invoke-static {v6, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    const/4 v8, 0x3

    .line 57
    aput-object v6, v2, v8

    .line 58
    .line 59
    const v6, 0x3f147ae1    # 0.58f

    .line 60
    .line 61
    .line 62
    invoke-static {v6, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    const/4 v8, 0x4

    .line 67
    aput-object v6, v2, v8

    .line 68
    .line 69
    const v6, 0x3f3d70a4    # 0.74f

    .line 70
    .line 71
    .line 72
    invoke-static {v6, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    const/4 v6, 0x5

    .line 77
    aput-object v4, v2, v6

    .line 78
    .line 79
    const v4, 0x3f666666    # 0.9f

    .line 80
    .line 81
    .line 82
    invoke-static {v4, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const/4 v4, 0x6

    .line 87
    aput-object v0, v2, v4

    .line 88
    .line 89
    const/high16 v0, 0x3f800000    # 1.0f

    .line 90
    .line 91
    invoke-static {v0, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const/4 v3, 0x7

    .line 96
    aput-object v0, v2, v3

    .line 97
    .line 98
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    new-array v1, v7, [Landroid/animation/PropertyValuesHolder;

    .line 103
    .line 104
    aput-object v0, v1, v5

    .line 105
    .line 106
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    const-wide/16 v0, 0x1f4

    .line 111
    .line 112
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    return-object p0
.end method

.method public static k(Landroid/view/View;III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "preColor",
            "currColor",
            "duration"
        }
    .end annotation

    .line 1
    const-string v0, "backgroundColor"

    .line 2
    .line 3
    filled-new-array {p1, p2}, [I

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    int-to-long p1, p3

    .line 12
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 13
    .line 14
    .line 15
    new-instance p1, Landroid/animation/ArgbEvaluator;

    .line 16
    .line 17
    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static l(Landroid/view/View;IIZZ)Landroid/animation/Animator;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "translationY",
            "animatorTime",
            "isStartAnimator",
            "isStartInterpolator"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    int-to-float p1, p1

    .line 6
    aput p1, v0, v1

    .line 7
    .line 8
    const-string p1, "translationY"

    .line 9
    .line 10
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p4, :cond_0

    .line 15
    .line 16
    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    .line 17
    .line 18
    invoke-direct {p1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    int-to-long p1, p2

    .line 25
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 26
    .line 27
    .line 28
    if-eqz p3, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-object p0
.end method

.method public static m(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "shakeFactor"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    new-array v2, v1, [Landroid/animation/Keyframe;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/high16 v4, 0x3f800000    # 1.0f

    .line 9
    .line 10
    invoke-static {v3, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    const/4 v6, 0x0

    .line 15
    aput-object v5, v2, v6

    .line 16
    .line 17
    const v5, 0x3dcccccd    # 0.1f

    .line 18
    .line 19
    .line 20
    const v7, 0x3f4ccccd    # 0.8f

    .line 21
    .line 22
    .line 23
    invoke-static {v5, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    const/4 v9, 0x1

    .line 28
    aput-object v8, v2, v9

    .line 29
    .line 30
    const v8, 0x3e4ccccd    # 0.2f

    .line 31
    .line 32
    .line 33
    invoke-static {v8, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 34
    .line 35
    .line 36
    move-result-object v10

    .line 37
    const/4 v11, 0x2

    .line 38
    aput-object v10, v2, v11

    .line 39
    .line 40
    const v10, 0x3e99999a    # 0.3f

    .line 41
    .line 42
    .line 43
    const v12, 0x3f8ccccd    # 1.1f

    .line 44
    .line 45
    .line 46
    invoke-static {v10, v12}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 47
    .line 48
    .line 49
    move-result-object v13

    .line 50
    const/4 v14, 0x3

    .line 51
    aput-object v13, v2, v14

    .line 52
    .line 53
    const v13, 0x3ecccccd    # 0.4f

    .line 54
    .line 55
    .line 56
    const v15, 0x3f99999a    # 1.2f

    .line 57
    .line 58
    .line 59
    invoke-static {v13, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 60
    .line 61
    .line 62
    move-result-object v16

    .line 63
    const/16 v17, 0x4

    .line 64
    .line 65
    aput-object v16, v2, v17

    .line 66
    .line 67
    const/high16 v13, 0x3f000000    # 0.5f

    .line 68
    .line 69
    invoke-static {v13, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 70
    .line 71
    .line 72
    move-result-object v18

    .line 73
    const/16 v19, 0x5

    .line 74
    .line 75
    aput-object v18, v2, v19

    .line 76
    .line 77
    const v13, 0x3f19999a    # 0.6f

    .line 78
    .line 79
    .line 80
    invoke-static {v13, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 81
    .line 82
    .line 83
    move-result-object v20

    .line 84
    const/16 v21, 0x6

    .line 85
    .line 86
    aput-object v20, v2, v21

    .line 87
    .line 88
    const v13, 0x3f333333    # 0.7f

    .line 89
    .line 90
    .line 91
    invoke-static {v13, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 92
    .line 93
    .line 94
    move-result-object v22

    .line 95
    const/16 v23, 0x7

    .line 96
    .line 97
    aput-object v22, v2, v23

    .line 98
    .line 99
    invoke-static {v7, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 100
    .line 101
    .line 102
    move-result-object v22

    .line 103
    const/16 v24, 0x8

    .line 104
    .line 105
    aput-object v22, v2, v24

    .line 106
    .line 107
    const v13, 0x3f666666    # 0.9f

    .line 108
    .line 109
    .line 110
    invoke-static {v13, v12}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 111
    .line 112
    .line 113
    move-result-object v13

    .line 114
    const/16 v25, 0x9

    .line 115
    .line 116
    aput-object v13, v2, v25

    .line 117
    .line 118
    const/16 v13, 0xa

    .line 119
    .line 120
    invoke-static {v4, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 121
    .line 122
    .line 123
    move-result-object v25

    .line 124
    aput-object v25, v2, v13

    .line 125
    .line 126
    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 131
    .line 132
    new-array v13, v1, [Landroid/animation/Keyframe;

    .line 133
    .line 134
    invoke-static {v3, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 135
    .line 136
    .line 137
    move-result-object v25

    .line 138
    aput-object v25, v13, v6

    .line 139
    .line 140
    invoke-static {v5, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 141
    .line 142
    .line 143
    move-result-object v25

    .line 144
    aput-object v25, v13, v9

    .line 145
    .line 146
    invoke-static {v8, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 147
    .line 148
    .line 149
    move-result-object v25

    .line 150
    aput-object v25, v13, v11

    .line 151
    .line 152
    invoke-static {v10, v12}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 153
    .line 154
    .line 155
    move-result-object v25

    .line 156
    aput-object v25, v13, v14

    .line 157
    .line 158
    const v14, 0x3ecccccd    # 0.4f

    .line 159
    .line 160
    .line 161
    invoke-static {v14, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 162
    .line 163
    .line 164
    move-result-object v26

    .line 165
    aput-object v26, v13, v17

    .line 166
    .line 167
    const/high16 v14, 0x3f000000    # 0.5f

    .line 168
    .line 169
    invoke-static {v14, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 170
    .line 171
    .line 172
    move-result-object v26

    .line 173
    aput-object v26, v13, v19

    .line 174
    .line 175
    const v14, 0x3f19999a    # 0.6f

    .line 176
    .line 177
    .line 178
    invoke-static {v14, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 179
    .line 180
    .line 181
    move-result-object v26

    .line 182
    aput-object v26, v13, v21

    .line 183
    .line 184
    const v14, 0x3f333333    # 0.7f

    .line 185
    .line 186
    .line 187
    invoke-static {v14, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 188
    .line 189
    .line 190
    move-result-object v26

    .line 191
    aput-object v26, v13, v23

    .line 192
    .line 193
    invoke-static {v7, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 194
    .line 195
    .line 196
    move-result-object v14

    .line 197
    aput-object v14, v13, v24

    .line 198
    .line 199
    const v14, 0x3f666666    # 0.9f

    .line 200
    .line 201
    .line 202
    invoke-static {v14, v12}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 203
    .line 204
    .line 205
    move-result-object v12

    .line 206
    const/16 v14, 0x9

    .line 207
    .line 208
    aput-object v12, v13, v14

    .line 209
    .line 210
    const/16 v12, 0xa

    .line 211
    .line 212
    invoke-static {v4, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 213
    .line 214
    .line 215
    move-result-object v14

    .line 216
    aput-object v14, v13, v12

    .line 217
    .line 218
    invoke-static {v2, v13}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    sget-object v12, Landroid/view/View;->ROTATION:Landroid/util/Property;

    .line 223
    .line 224
    new-array v1, v1, [Landroid/animation/Keyframe;

    .line 225
    .line 226
    invoke-static {v3, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 227
    .line 228
    .line 229
    move-result-object v13

    .line 230
    aput-object v13, v1, v6

    .line 231
    .line 232
    const/high16 v13, -0x3fc00000    # -3.0f

    .line 233
    .line 234
    mul-float v13, v13, p1

    .line 235
    .line 236
    invoke-static {v5, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    aput-object v5, v1, v9

    .line 241
    .line 242
    invoke-static {v8, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    aput-object v5, v1, v11

    .line 247
    .line 248
    const/high16 v5, 0x40400000    # 3.0f

    .line 249
    .line 250
    mul-float v5, v5, p1

    .line 251
    .line 252
    invoke-static {v10, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 253
    .line 254
    .line 255
    move-result-object v8

    .line 256
    const/4 v10, 0x3

    .line 257
    aput-object v8, v1, v10

    .line 258
    .line 259
    const v8, 0x3ecccccd    # 0.4f

    .line 260
    .line 261
    .line 262
    invoke-static {v8, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 263
    .line 264
    .line 265
    move-result-object v8

    .line 266
    aput-object v8, v1, v17

    .line 267
    .line 268
    const/high16 v8, 0x3f000000    # 0.5f

    .line 269
    .line 270
    invoke-static {v8, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    aput-object v8, v1, v19

    .line 275
    .line 276
    const v8, 0x3f19999a    # 0.6f

    .line 277
    .line 278
    .line 279
    invoke-static {v8, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 280
    .line 281
    .line 282
    move-result-object v8

    .line 283
    aput-object v8, v1, v21

    .line 284
    .line 285
    const v8, 0x3f333333    # 0.7f

    .line 286
    .line 287
    .line 288
    invoke-static {v8, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 289
    .line 290
    .line 291
    move-result-object v8

    .line 292
    aput-object v8, v1, v23

    .line 293
    .line 294
    invoke-static {v7, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 295
    .line 296
    .line 297
    move-result-object v7

    .line 298
    aput-object v7, v1, v24

    .line 299
    .line 300
    const v7, 0x3f666666    # 0.9f

    .line 301
    .line 302
    .line 303
    invoke-static {v7, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 304
    .line 305
    .line 306
    move-result-object v5

    .line 307
    const/16 v7, 0x9

    .line 308
    .line 309
    aput-object v5, v1, v7

    .line 310
    .line 311
    const/16 v5, 0xa

    .line 312
    .line 313
    invoke-static {v4, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    aput-object v3, v1, v5

    .line 318
    .line 319
    invoke-static {v12, v1}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    const/4 v3, 0x3

    .line 324
    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    .line 325
    .line 326
    aput-object v0, v3, v6

    .line 327
    .line 328
    aput-object v2, v3, v9

    .line 329
    .line 330
    aput-object v1, v3, v11

    .line 331
    .line 332
    move-object/from16 v0, p0

    .line 333
    .line 334
    invoke-static {v0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    const-wide/16 v1, 0x2bc

    .line 339
    .line 340
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    return-object v0
.end method

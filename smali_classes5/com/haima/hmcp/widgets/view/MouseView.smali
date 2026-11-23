.class public Lcom/haima/hmcp/widgets/view/MouseView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;
    }
.end annotation


# static fields
.field private static final BUSY_DURATION:I = 0x32

.field public static final BUSY_FRAMES:[I

.field private static final BUSY_RES:I = 0x2

.field private static final WORKING_DURATION:I = 0x32

.field public static final WORKING_FRAMES:[I

.field private static final WORKING_RES:I = 0x1


# instance fields
.field private busyAnim:Landroid/graphics/drawable/AnimationDrawable;

.field private currentStyle:Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;

.field private workingAnim:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    sget v2, Lcom/haima/hmcp/R$drawable;->hm_working_frame_01:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    aput v2, v1, v3

    .line 9
    .line 10
    sget v2, Lcom/haima/hmcp/R$drawable;->hm_working_frame_02:I

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    aput v2, v1, v4

    .line 14
    .line 15
    sget v2, Lcom/haima/hmcp/R$drawable;->hm_working_frame_03:I

    .line 16
    .line 17
    const/4 v5, 0x2

    .line 18
    aput v2, v1, v5

    .line 19
    .line 20
    sget v2, Lcom/haima/hmcp/R$drawable;->hm_working_frame_04:I

    .line 21
    .line 22
    const/4 v6, 0x3

    .line 23
    aput v2, v1, v6

    .line 24
    .line 25
    sget v2, Lcom/haima/hmcp/R$drawable;->hm_working_frame_05:I

    .line 26
    .line 27
    const/4 v7, 0x4

    .line 28
    aput v2, v1, v7

    .line 29
    .line 30
    sget v2, Lcom/haima/hmcp/R$drawable;->hm_working_frame_06:I

    .line 31
    .line 32
    const/4 v8, 0x5

    .line 33
    aput v2, v1, v8

    .line 34
    .line 35
    sget v2, Lcom/haima/hmcp/R$drawable;->hm_working_frame_07:I

    .line 36
    .line 37
    const/4 v9, 0x6

    .line 38
    aput v2, v1, v9

    .line 39
    .line 40
    sget v2, Lcom/haima/hmcp/R$drawable;->hm_working_frame_08:I

    .line 41
    .line 42
    const/4 v10, 0x7

    .line 43
    aput v2, v1, v10

    .line 44
    .line 45
    sget v2, Lcom/haima/hmcp/R$drawable;->hm_working_frame_09:I

    .line 46
    .line 47
    const/16 v11, 0x8

    .line 48
    .line 49
    aput v2, v1, v11

    .line 50
    .line 51
    sget v2, Lcom/haima/hmcp/R$drawable;->hm_working_frame_10:I

    .line 52
    .line 53
    const/16 v12, 0x9

    .line 54
    .line 55
    aput v2, v1, v12

    .line 56
    .line 57
    sget v2, Lcom/haima/hmcp/R$drawable;->hm_working_frame_11:I

    .line 58
    .line 59
    const/16 v13, 0xa

    .line 60
    .line 61
    aput v2, v1, v13

    .line 62
    .line 63
    sget v2, Lcom/haima/hmcp/R$drawable;->hm_working_frame_12:I

    .line 64
    .line 65
    const/16 v14, 0xb

    .line 66
    .line 67
    aput v2, v1, v14

    .line 68
    .line 69
    sget v2, Lcom/haima/hmcp/R$drawable;->hm_working_frame_13:I

    .line 70
    .line 71
    const/16 v15, 0xc

    .line 72
    .line 73
    aput v2, v1, v15

    .line 74
    .line 75
    sget v2, Lcom/haima/hmcp/R$drawable;->hm_working_frame_14:I

    .line 76
    .line 77
    const/16 v16, 0xd

    .line 78
    .line 79
    aput v2, v1, v16

    .line 80
    .line 81
    sput-object v1, Lcom/haima/hmcp/widgets/view/MouseView;->WORKING_FRAMES:[I

    .line 82
    .line 83
    new-array v0, v0, [I

    .line 84
    .line 85
    sget v1, Lcom/haima/hmcp/R$drawable;->hm_busy_frame_01:I

    .line 86
    .line 87
    aput v1, v0, v3

    .line 88
    .line 89
    sget v1, Lcom/haima/hmcp/R$drawable;->hm_busy_frame_02:I

    .line 90
    .line 91
    aput v1, v0, v4

    .line 92
    .line 93
    sget v1, Lcom/haima/hmcp/R$drawable;->hm_busy_frame_03:I

    .line 94
    .line 95
    aput v1, v0, v5

    .line 96
    .line 97
    sget v1, Lcom/haima/hmcp/R$drawable;->hm_busy_frame_04:I

    .line 98
    .line 99
    aput v1, v0, v6

    .line 100
    .line 101
    sget v1, Lcom/haima/hmcp/R$drawable;->hm_busy_frame_05:I

    .line 102
    .line 103
    aput v1, v0, v7

    .line 104
    .line 105
    sget v1, Lcom/haima/hmcp/R$drawable;->hm_busy_frame_06:I

    .line 106
    .line 107
    aput v1, v0, v8

    .line 108
    .line 109
    sget v1, Lcom/haima/hmcp/R$drawable;->hm_busy_frame_07:I

    .line 110
    .line 111
    aput v1, v0, v9

    .line 112
    .line 113
    sget v1, Lcom/haima/hmcp/R$drawable;->hm_busy_frame_08:I

    .line 114
    .line 115
    aput v1, v0, v10

    .line 116
    .line 117
    sget v1, Lcom/haima/hmcp/R$drawable;->hm_busy_frame_09:I

    .line 118
    .line 119
    aput v1, v0, v11

    .line 120
    .line 121
    sget v1, Lcom/haima/hmcp/R$drawable;->hm_busy_frame_10:I

    .line 122
    .line 123
    aput v1, v0, v12

    .line 124
    .line 125
    sget v1, Lcom/haima/hmcp/R$drawable;->hm_busy_frame_11:I

    .line 126
    .line 127
    aput v1, v0, v13

    .line 128
    .line 129
    sget v1, Lcom/haima/hmcp/R$drawable;->hm_busy_frame_12:I

    .line 130
    .line 131
    aput v1, v0, v14

    .line 132
    .line 133
    sget v1, Lcom/haima/hmcp/R$drawable;->hm_busy_frame_13:I

    .line 134
    .line 135
    aput v1, v0, v15

    .line 136
    .line 137
    sget v1, Lcom/haima/hmcp/R$drawable;->hm_busy_frame_14:I

    .line 138
    .line 139
    aput v1, v0, v16

    .line 140
    .line 141
    sput-object v0, Lcom/haima/hmcp/widgets/view/MouseView;->BUSY_FRAMES:[I

    .line 142
    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;->NORMAL:Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;

    iput-object p1, p0, Lcom/haima/hmcp/widgets/view/MouseView;->currentStyle:Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;

    .line 3
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/view/MouseView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    sget-object p1, Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;->NORMAL:Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;

    iput-object p1, p0, Lcom/haima/hmcp/widgets/view/MouseView;->currentStyle:Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;

    .line 6
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/view/MouseView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    sget-object p1, Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;->NORMAL:Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;

    iput-object p1, p0, Lcom/haima/hmcp/widgets/view/MouseView;->currentStyle:Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;

    .line 9
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/view/MouseView;->init()V

    return-void
.end method

.method private getAnimDrawable(I)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/widgets/view/MouseView;->busyAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/widgets/view/MouseView;->workingAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 13
    .line 14
    return-object p1
.end method

.method private getResourcesObj()Landroid/content/res/Resources;
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/business/ResourceManager;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/haima/hmcp/business/ResourceManager;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method

.method private init()V
    .locals 8

    .line 1
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/widgets/view/MouseView;->workingAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 7
    .line 8
    sget-object v0, Lcom/haima/hmcp/widgets/view/MouseView;->WORKING_FRAMES:[I

    .line 9
    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    const/16 v4, 0x32

    .line 14
    .line 15
    if-ge v3, v1, :cond_0

    .line 16
    .line 17
    aget v5, v0, v3

    .line 18
    .line 19
    iget-object v6, p0, Lcom/haima/hmcp/widgets/view/MouseView;->workingAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/view/MouseView;->getResourcesObj()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {v6, v5, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/view/MouseView;->workingAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 41
    .line 42
    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/haima/hmcp/widgets/view/MouseView;->busyAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 46
    .line 47
    sget-object v0, Lcom/haima/hmcp/widgets/view/MouseView;->BUSY_FRAMES:[I

    .line 48
    .line 49
    array-length v1, v0

    .line 50
    const/4 v3, 0x0

    .line 51
    :goto_1
    if-ge v3, v1, :cond_1

    .line 52
    .line 53
    aget v5, v0, v3

    .line 54
    .line 55
    iget-object v6, p0, Lcom/haima/hmcp/widgets/view/MouseView;->busyAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 56
    .line 57
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/view/MouseView;->getResourcesObj()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v6, v5, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 66
    .line 67
    .line 68
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/view/MouseView;->busyAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method private setResId(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/view/MouseView;->getAnimDrawable(I)Landroid/graphics/drawable/AnimationDrawable;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private stop()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public getMouseStyle()Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/view/MouseView;->currentStyle:Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;

    .line 2
    .line 3
    return-object v0
.end method

.method public onScreenStateChanged(I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onScreenStateChanged(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setMouseStyle(Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/widgets/view/MouseView;->currentStyle:Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;

    .line 4
    .line 5
    if-eq v0, p1, :cond_3

    .line 6
    .line 7
    iput-object p1, p0, Lcom/haima/hmcp/widgets/view/MouseView;->currentStyle:Lcom/haima/hmcp/widgets/view/MouseView$MouseStyle;

    .line 8
    .line 9
    sget-object v0, Lcom/haima/hmcp/widgets/view/MouseView$1;->$SwitchMap$com$haima$hmcp$widgets$view$MouseView$MouseStyle:[I

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    aget p1, v0, p1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    if-eq p1, v0, :cond_2

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    if-eq p1, v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    if-eq p1, v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/view/MouseView;->stop()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-direct {p0, v0}, Lcom/haima/hmcp/widgets/view/MouseView;->setResId(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-direct {p0, v0}, Lcom/haima/hmcp/widgets/view/MouseView;->setResId(I)V

    .line 36
    .line 37
    .line 38
    :cond_3
    :goto_0
    return-void
.end method

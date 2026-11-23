.class public Lcom/papa91/arc/view/MenuView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field alert:Landroid/widget/ImageView;

.field animationResult:Lcom/airbnb/lottie/LottieAnimationView;

.field animationResult2:Lcom/airbnb/lottie/LottieAnimationView;

.field animationResult3:Lcom/airbnb/lottie/LottieAnimationView;

.field btnBorderReward:Landroid/widget/ImageView;

.field btnExit:Landroid/widget/ImageView;

.field changeDisk:Landroid/view/View;

.field cheating:Landroid/view/View;

.field clFailed:Landroidx/constraintlayout/widget/ConstraintLayout;

.field clReward:Landroidx/constraintlayout/widget/ConstraintLayout;

.field clStart:Landroidx/constraintlayout/widget/ConstraintLayout;

.field clSuccess:Landroidx/constraintlayout/widget/ConstraintLayout;

.field clSuccess2:Landroidx/constraintlayout/widget/ConstraintLayout;

.field countDownTimer:Landroid/os/CountDownTimer;

.field dialog:Landroid/app/Dialog;

.field private endGameCountDownTimer:Landroid/os/CountDownTimer;

.field exit:Landroid/view/View;

.field fAchievement:Lcom/papa91/arc/widget/view/MImageView;

.field fCheating:Lcom/papa91/arc/widget/view/MImageView;

.field fGate:Lcom/papa91/arc/widget/view/MImageView;

.field fHide:Lcom/papa91/arc/widget/view/MImageView;

.field fOneKey:Lcom/papa91/arc/widget/view/MImageView;

.field fQuickSlot:Lcom/papa91/arc/widget/view/MImageView;

.field fScreenShot:Lcom/papa91/arc/widget/view/MImageView;

.field fShow:Lcom/papa91/arc/widget/view/MImageView;

.field failedSubTitle:Landroid/widget/ImageView;

.field flCountDown:Landroid/widget/FrameLayout;

.field flStart:Landroidx/constraintlayout/widget/ConstraintLayout;

.field forum:Landroid/view/View;

.field private hasGetAward:Z

.field private hiding:Z

.field isRankTimeStop:Z

.field isSound:Z

.field isVibrate:Z

.field ivBtn:Landroid/widget/ImageView;

.field ivBtnReward:Landroid/widget/ImageView;

.field ivCountDown:Landroid/widget/ImageView;

.field ivEndlessPoint:Landroid/widget/ImageView;

.field ivEndlessPointFailed:Landroid/widget/ImageView;

.field iv_timer:Landroid/widget/ImageView;

.field llAgain:Landroidx/constraintlayout/widget/ConstraintLayout;

.field llQuest:Landroid/widget/LinearLayout;

.field ll_menu_left:Landroid/widget/LinearLayout;

.field ll_menu_right:Landroid/widget/LinearLayout;

.field ll_play_time:Landroid/widget/LinearLayout;

.field loadingView:Lcom/papa91/arc/widget/LoadingImageView;

.field menuBar:Landroid/view/View;

.field menuBarOutSide:Landroid/view/View;

.field menuBarStatue:I

.field menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

.field millisUntilFinish:J

.field pause:Landroid/view/View;

.field pauseBar:Landroid/view/View;

.field performance:Landroid/view/View;

.field quickSlot:Landroid/view/View;

.field rankTime:I

.field reload:Landroid/view/View;

.field resume:Landroid/view/View;

.field rl_menu_left:Landroid/view/View;

.field scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private showAdImage:Z

.field private showChangeDisk:Z

.field slot:Landroid/view/View;

.field stickKeys:Landroid/view/View;

.field timer:Landroid/widget/TextView;

.field timerBg:Landroid/view/View;

.field timerContainer:Landroid/view/View;

.field tip:Landroid/widget/TextView;

.field tvCloseTips:Landroid/widget/TextView;

.field tvCloseTips2:Landroid/widget/TextView;

.field tvDesc:Landroid/widget/TextView;

.field tvPointCount:Landroid/widget/TextView;

.field tvPointCountFailed:Landroid/widget/TextView;

.field tvQuest:Landroid/widget/TextView;

.field tvRewardCount:Landroid/widget/TextView;

.field tvRewardCountDouble:Landroid/widget/TextView;

.field tvRewardTips1:Landroid/widget/TextView;

.field tvRewardTips2:Landroid/widget/TextView;

.field tvTime:Landroid/widget/TextView;

.field tvTimeCost:Landroid/widget/TextView;

.field tvTimeCost2:Landroid/widget/TextView;

.field tv_game_pass:Landroid/widget/TextView;

.field tv_time:Landroid/widget/TextView;

.field v_line:Landroid/view/View;

.field vibrate:Landroid/view/View;

.field voice:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/arc/view/MenuView;->TAG:Ljava/lang/String;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isSound:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isVibrate:Z

    .line 5
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->hiding:Z

    .line 6
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->showAdImage:Z

    .line 7
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->showChangeDisk:Z

    .line 8
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isRankTimeStop:Z

    .line 9
    iput p1, p0, Lcom/papa91/arc/view/MenuView;->rankTime:I

    .line 10
    iput p1, p0, Lcom/papa91/arc/view/MenuView;->menuBarStatue:I

    .line 11
    invoke-direct {p0}, Lcom/papa91/arc/view/MenuView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/arc/view/MenuView;->TAG:Ljava/lang/String;

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isSound:Z

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isVibrate:Z

    .line 16
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->hiding:Z

    .line 17
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->showAdImage:Z

    .line 18
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->showChangeDisk:Z

    .line 19
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isRankTimeStop:Z

    .line 20
    iput p1, p0, Lcom/papa91/arc/view/MenuView;->rankTime:I

    .line 21
    iput p1, p0, Lcom/papa91/arc/view/MenuView;->menuBarStatue:I

    .line 22
    invoke-direct {p0}, Lcom/papa91/arc/view/MenuView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/arc/view/MenuView;->TAG:Ljava/lang/String;

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isSound:Z

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isVibrate:Z

    .line 27
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->hiding:Z

    .line 28
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->showAdImage:Z

    .line 29
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->showChangeDisk:Z

    .line 30
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isRankTimeStop:Z

    .line 31
    iput p1, p0, Lcom/papa91/arc/view/MenuView;->rankTime:I

    .line 32
    iput p1, p0, Lcom/papa91/arc/view/MenuView;->menuBarStatue:I

    .line 33
    invoke-direct {p0}, Lcom/papa91/arc/view/MenuView;->initView()V

    return-void
.end method

.method public static synthetic a(Lcom/papa91/arc/view/MenuView;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/papa91/arc/view/MenuView;->lambda$updateTime$0(IIII)V

    return-void
.end method

.method static synthetic access$002(Lcom/papa91/arc/view/MenuView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->hiding:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$100(Lcom/papa91/arc/view/MenuView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa91/arc/view/MenuView;->hasGetAward:Z

    .line 2
    .line 3
    return p0
.end method

.method private formatEndGameTime(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-gtz p1, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    div-int/lit8 v1, p1, 0x3c

    .line 7
    .line 8
    rem-int/lit8 p1, p1, 0x3c

    .line 9
    .line 10
    if-lez v1, :cond_1

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, "\u5206\u949f"

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_1
    if-lez p1, :cond_2

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, "\u79d2"

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v0, "\u5185,"

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    return-object p1
.end method

.method private initView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lorg/ppsspp/ppsspp/R$layout;->menu_view:I

    .line 10
    .line 11
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget v1, Lorg/ppsspp/ppsspp/R$id;->fCheating:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/papa91/arc/widget/view/MImageView;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->fCheating:Lcom/papa91/arc/widget/view/MImageView;

    .line 24
    .line 25
    sget v1, Lorg/ppsspp/ppsspp/R$id;->fQuickSlot:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/papa91/arc/widget/view/MImageView;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->fQuickSlot:Lcom/papa91/arc/widget/view/MImageView;

    .line 34
    .line 35
    sget v1, Lorg/ppsspp/ppsspp/R$id;->fHide:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/papa91/arc/widget/view/MImageView;

    .line 42
    .line 43
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->fHide:Lcom/papa91/arc/widget/view/MImageView;

    .line 44
    .line 45
    sget v1, Lorg/ppsspp/ppsspp/R$id;->fShow:I

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/papa91/arc/widget/view/MImageView;

    .line 52
    .line 53
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->fShow:Lcom/papa91/arc/widget/view/MImageView;

    .line 54
    .line 55
    sget v1, Lorg/ppsspp/ppsspp/R$id;->fScreenShot:I

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/papa91/arc/widget/view/MImageView;

    .line 62
    .line 63
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->fScreenShot:Lcom/papa91/arc/widget/view/MImageView;

    .line 64
    .line 65
    sget v1, Lorg/ppsspp/ppsspp/R$id;->fGate:I

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lcom/papa91/arc/widget/view/MImageView;

    .line 72
    .line 73
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->fGate:Lcom/papa91/arc/widget/view/MImageView;

    .line 74
    .line 75
    sget v1, Lorg/ppsspp/ppsspp/R$id;->fOneKey:I

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Lcom/papa91/arc/widget/view/MImageView;

    .line 82
    .line 83
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->fOneKey:Lcom/papa91/arc/widget/view/MImageView;

    .line 84
    .line 85
    sget v1, Lorg/ppsspp/ppsspp/R$id;->fAchievement:I

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Lcom/papa91/arc/widget/view/MImageView;

    .line 92
    .line 93
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->fAchievement:Lcom/papa91/arc/widget/view/MImageView;

    .line 94
    .line 95
    sget v1, Lorg/ppsspp/ppsspp/R$id;->pause:I

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->pause:Landroid/view/View;

    .line 102
    .line 103
    sget v1, Lorg/ppsspp/ppsspp/R$id;->pauseBar:I

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    .line 110
    .line 111
    sget v1, Lorg/ppsspp/ppsspp/R$id;->resume:I

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->resume:Landroid/view/View;

    .line 118
    .line 119
    sget v1, Lorg/ppsspp/ppsspp/R$id;->menuBarOutSide:I

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->menuBarOutSide:Landroid/view/View;

    .line 126
    .line 127
    sget v1, Lorg/ppsspp/ppsspp/R$id;->menuBar:I

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->menuBar:Landroid/view/View;

    .line 134
    .line 135
    sget v1, Lorg/ppsspp/ppsspp/R$id;->exit:I

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->exit:Landroid/view/View;

    .line 142
    .line 143
    sget v1, Lorg/ppsspp/ppsspp/R$id;->reload:I

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->reload:Landroid/view/View;

    .line 150
    .line 151
    sget v1, Lorg/ppsspp/ppsspp/R$id;->voice:I

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->voice:Landroid/view/View;

    .line 158
    .line 159
    sget v1, Lorg/ppsspp/ppsspp/R$id;->vibrate:I

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->vibrate:Landroid/view/View;

    .line 166
    .line 167
    sget v1, Lorg/ppsspp/ppsspp/R$id;->quickSlot:I

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->quickSlot:Landroid/view/View;

    .line 174
    .line 175
    sget v1, Lorg/ppsspp/ppsspp/R$id;->forum:I

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->forum:Landroid/view/View;

    .line 182
    .line 183
    sget v1, Lorg/ppsspp/ppsspp/R$id;->changeDisk:I

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->changeDisk:Landroid/view/View;

    .line 190
    .line 191
    sget v1, Lorg/ppsspp/ppsspp/R$id;->slot:I

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->slot:Landroid/view/View;

    .line 198
    .line 199
    sget v1, Lorg/ppsspp/ppsspp/R$id;->cheating:I

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->cheating:Landroid/view/View;

    .line 206
    .line 207
    sget v1, Lorg/ppsspp/ppsspp/R$id;->performance:I

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->performance:Landroid/view/View;

    .line 214
    .line 215
    sget v1, Lorg/ppsspp/ppsspp/R$id;->stickKeys:I

    .line 216
    .line 217
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->stickKeys:Landroid/view/View;

    .line 222
    .line 223
    sget v1, Lorg/ppsspp/ppsspp/R$id;->timerContainer:I

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->timerContainer:Landroid/view/View;

    .line 230
    .line 231
    sget v1, Lorg/ppsspp/ppsspp/R$id;->timerBg:I

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->timerBg:Landroid/view/View;

    .line 238
    .line 239
    sget v1, Lorg/ppsspp/ppsspp/R$id;->timer:I

    .line 240
    .line 241
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    check-cast v1, Landroid/widget/TextView;

    .line 246
    .line 247
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->timer:Landroid/widget/TextView;

    .line 248
    .line 249
    sget v1, Lorg/ppsspp/ppsspp/R$id;->alert:I

    .line 250
    .line 251
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    check-cast v1, Landroid/widget/ImageView;

    .line 256
    .line 257
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->alert:Landroid/widget/ImageView;

    .line 258
    .line 259
    sget v1, Lorg/ppsspp/ppsspp/R$id;->btnBorderReward:I

    .line 260
    .line 261
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    check-cast v1, Landroid/widget/ImageView;

    .line 266
    .line 267
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->btnBorderReward:Landroid/widget/ImageView;

    .line 268
    .line 269
    sget v1, Lorg/ppsspp/ppsspp/R$id;->ivBtnReward:I

    .line 270
    .line 271
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    check-cast v1, Landroid/widget/ImageView;

    .line 276
    .line 277
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->ivBtnReward:Landroid/widget/ImageView;

    .line 278
    .line 279
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tvRewardCount:I

    .line 280
    .line 281
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    check-cast v1, Landroid/widget/TextView;

    .line 286
    .line 287
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->tvRewardCount:Landroid/widget/TextView;

    .line 288
    .line 289
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tvRewardCountDouble:I

    .line 290
    .line 291
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    check-cast v1, Landroid/widget/TextView;

    .line 296
    .line 297
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->tvRewardCountDouble:Landroid/widget/TextView;

    .line 298
    .line 299
    sget v1, Lorg/ppsspp/ppsspp/R$id;->ll_play_time:I

    .line 300
    .line 301
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    check-cast v1, Landroid/widget/LinearLayout;

    .line 306
    .line 307
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->ll_play_time:Landroid/widget/LinearLayout;

    .line 308
    .line 309
    sget v1, Lorg/ppsspp/ppsspp/R$id;->iv_timer:I

    .line 310
    .line 311
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    check-cast v1, Landroid/widget/ImageView;

    .line 316
    .line 317
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->iv_timer:Landroid/widget/ImageView;

    .line 318
    .line 319
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tv_time:I

    .line 320
    .line 321
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    check-cast v1, Landroid/widget/TextView;

    .line 326
    .line 327
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->tv_time:Landroid/widget/TextView;

    .line 328
    .line 329
    sget v1, Lorg/ppsspp/ppsspp/R$id;->v_line:I

    .line 330
    .line 331
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->v_line:Landroid/view/View;

    .line 336
    .line 337
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tv_game_pass:I

    .line 338
    .line 339
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    check-cast v1, Landroid/widget/TextView;

    .line 344
    .line 345
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->tv_game_pass:Landroid/widget/TextView;

    .line 346
    .line 347
    sget v1, Lorg/ppsspp/ppsspp/R$id;->animationResult:I

    .line 348
    .line 349
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    .line 354
    .line 355
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->animationResult:Lcom/airbnb/lottie/LottieAnimationView;

    .line 356
    .line 357
    sget v1, Lorg/ppsspp/ppsspp/R$id;->animationResult2:I

    .line 358
    .line 359
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    .line 364
    .line 365
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->animationResult2:Lcom/airbnb/lottie/LottieAnimationView;

    .line 366
    .line 367
    sget v1, Lorg/ppsspp/ppsspp/R$id;->animationResult3:I

    .line 368
    .line 369
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    .line 374
    .line 375
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->animationResult3:Lcom/airbnb/lottie/LottieAnimationView;

    .line 376
    .line 377
    sget v1, Lorg/ppsspp/ppsspp/R$id;->ll_menu_left:I

    .line 378
    .line 379
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    check-cast v1, Landroid/widget/LinearLayout;

    .line 384
    .line 385
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->ll_menu_left:Landroid/widget/LinearLayout;

    .line 386
    .line 387
    sget v1, Lorg/ppsspp/ppsspp/R$id;->ll_menu_right:I

    .line 388
    .line 389
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    check-cast v1, Landroid/widget/LinearLayout;

    .line 394
    .line 395
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->ll_menu_right:Landroid/widget/LinearLayout;

    .line 396
    .line 397
    sget v1, Lorg/ppsspp/ppsspp/R$id;->clStart:I

    .line 398
    .line 399
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 404
    .line 405
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->clStart:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 406
    .line 407
    sget v1, Lorg/ppsspp/ppsspp/R$id;->flStart:I

    .line 408
    .line 409
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 414
    .line 415
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->flStart:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 416
    .line 417
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tvPointCount:I

    .line 418
    .line 419
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    check-cast v1, Landroid/widget/TextView;

    .line 424
    .line 425
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->tvPointCount:Landroid/widget/TextView;

    .line 426
    .line 427
    sget v1, Lorg/ppsspp/ppsspp/R$id;->ivEndlessPoint:I

    .line 428
    .line 429
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    check-cast v1, Landroid/widget/ImageView;

    .line 434
    .line 435
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->ivEndlessPoint:Landroid/widget/ImageView;

    .line 436
    .line 437
    sget v1, Lorg/ppsspp/ppsspp/R$id;->llAgain:I

    .line 438
    .line 439
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 444
    .line 445
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->llAgain:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 446
    .line 447
    sget v1, Lorg/ppsspp/ppsspp/R$id;->ivCountDown:I

    .line 448
    .line 449
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    check-cast v1, Landroid/widget/ImageView;

    .line 454
    .line 455
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->ivCountDown:Landroid/widget/ImageView;

    .line 456
    .line 457
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tvPointCountFailed:I

    .line 458
    .line 459
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    check-cast v1, Landroid/widget/TextView;

    .line 464
    .line 465
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->tvPointCountFailed:Landroid/widget/TextView;

    .line 466
    .line 467
    sget v1, Lorg/ppsspp/ppsspp/R$id;->ivEndlessPointFailed:I

    .line 468
    .line 469
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    check-cast v1, Landroid/widget/ImageView;

    .line 474
    .line 475
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->ivEndlessPointFailed:Landroid/widget/ImageView;

    .line 476
    .line 477
    sget v1, Lorg/ppsspp/ppsspp/R$id;->failedSubTitle:I

    .line 478
    .line 479
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    check-cast v1, Landroid/widget/ImageView;

    .line 484
    .line 485
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->failedSubTitle:Landroid/widget/ImageView;

    .line 486
    .line 487
    sget v1, Lorg/ppsspp/ppsspp/R$id;->clFailed:I

    .line 488
    .line 489
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 494
    .line 495
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->clFailed:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 496
    .line 497
    sget v1, Lorg/ppsspp/ppsspp/R$id;->flCountDown:I

    .line 498
    .line 499
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    check-cast v1, Landroid/widget/FrameLayout;

    .line 504
    .line 505
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->flCountDown:Landroid/widget/FrameLayout;

    .line 506
    .line 507
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tvQuest:I

    .line 508
    .line 509
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    check-cast v1, Landroid/widget/TextView;

    .line 514
    .line 515
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->tvQuest:Landroid/widget/TextView;

    .line 516
    .line 517
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tvTime:I

    .line 518
    .line 519
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    check-cast v1, Landroid/widget/TextView;

    .line 524
    .line 525
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->tvTime:Landroid/widget/TextView;

    .line 526
    .line 527
    sget v1, Lorg/ppsspp/ppsspp/R$id;->llQuest:I

    .line 528
    .line 529
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    check-cast v1, Landroid/widget/LinearLayout;

    .line 534
    .line 535
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->llQuest:Landroid/widget/LinearLayout;

    .line 536
    .line 537
    sget v1, Lorg/ppsspp/ppsspp/R$id;->clSuccess:I

    .line 538
    .line 539
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 544
    .line 545
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->clSuccess:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 546
    .line 547
    sget v1, Lorg/ppsspp/ppsspp/R$id;->clSuccess2:I

    .line 548
    .line 549
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 554
    .line 555
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->clSuccess2:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 556
    .line 557
    sget v1, Lorg/ppsspp/ppsspp/R$id;->btnExit:I

    .line 558
    .line 559
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 560
    .line 561
    .line 562
    move-result-object v1

    .line 563
    check-cast v1, Landroid/widget/ImageView;

    .line 564
    .line 565
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->btnExit:Landroid/widget/ImageView;

    .line 566
    .line 567
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tvDesc:I

    .line 568
    .line 569
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    check-cast v1, Landroid/widget/TextView;

    .line 574
    .line 575
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->tvDesc:Landroid/widget/TextView;

    .line 576
    .line 577
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tvCloseTips:I

    .line 578
    .line 579
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 580
    .line 581
    .line 582
    move-result-object v1

    .line 583
    check-cast v1, Landroid/widget/TextView;

    .line 584
    .line 585
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->tvCloseTips:Landroid/widget/TextView;

    .line 586
    .line 587
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tvCloseTips2:I

    .line 588
    .line 589
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 590
    .line 591
    .line 592
    move-result-object v1

    .line 593
    check-cast v1, Landroid/widget/TextView;

    .line 594
    .line 595
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->tvCloseTips2:Landroid/widget/TextView;

    .line 596
    .line 597
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tvTimeCost:I

    .line 598
    .line 599
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 600
    .line 601
    .line 602
    move-result-object v1

    .line 603
    check-cast v1, Landroid/widget/TextView;

    .line 604
    .line 605
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->tvTimeCost:Landroid/widget/TextView;

    .line 606
    .line 607
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tvTimeCost2:I

    .line 608
    .line 609
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 610
    .line 611
    .line 612
    move-result-object v1

    .line 613
    check-cast v1, Landroid/widget/TextView;

    .line 614
    .line 615
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->tvTimeCost2:Landroid/widget/TextView;

    .line 616
    .line 617
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tvRewardTips1:I

    .line 618
    .line 619
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 620
    .line 621
    .line 622
    move-result-object v1

    .line 623
    check-cast v1, Landroid/widget/TextView;

    .line 624
    .line 625
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->tvRewardTips1:Landroid/widget/TextView;

    .line 626
    .line 627
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tvRewardTips2:I

    .line 628
    .line 629
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 630
    .line 631
    .line 632
    move-result-object v1

    .line 633
    check-cast v1, Landroid/widget/TextView;

    .line 634
    .line 635
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->tvRewardTips2:Landroid/widget/TextView;

    .line 636
    .line 637
    sget v1, Lorg/ppsspp/ppsspp/R$id;->clReward:I

    .line 638
    .line 639
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 640
    .line 641
    .line 642
    move-result-object v1

    .line 643
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 644
    .line 645
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->clReward:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 646
    .line 647
    sget v1, Lorg/ppsspp/ppsspp/R$id;->loadingView:I

    .line 648
    .line 649
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    check-cast v1, Lcom/papa91/arc/widget/LoadingImageView;

    .line 654
    .line 655
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->loadingView:Lcom/papa91/arc/widget/LoadingImageView;

    .line 656
    .line 657
    sget v1, Lorg/ppsspp/ppsspp/R$id;->ivBtn:I

    .line 658
    .line 659
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    check-cast v1, Landroid/widget/ImageView;

    .line 664
    .line 665
    iput-object v1, p0, Lcom/papa91/arc/view/MenuView;->ivBtn:Landroid/widget/ImageView;

    .line 666
    .line 667
    sget v1, Lorg/ppsspp/ppsspp/R$id;->rl_menu_left:I

    .line 668
    .line 669
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    iput-object v0, p0, Lcom/papa91/arc/view/MenuView;->rl_menu_left:Landroid/view/View;

    .line 674
    .line 675
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->fCheating:Lcom/papa91/arc/widget/view/MImageView;

    .line 676
    .line 677
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 678
    .line 679
    .line 680
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->fQuickSlot:Lcom/papa91/arc/widget/view/MImageView;

    .line 681
    .line 682
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 683
    .line 684
    .line 685
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->fHide:Lcom/papa91/arc/widget/view/MImageView;

    .line 686
    .line 687
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    .line 689
    .line 690
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->fShow:Lcom/papa91/arc/widget/view/MImageView;

    .line 691
    .line 692
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 693
    .line 694
    .line 695
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->fScreenShot:Lcom/papa91/arc/widget/view/MImageView;

    .line 696
    .line 697
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 698
    .line 699
    .line 700
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->fGate:Lcom/papa91/arc/widget/view/MImageView;

    .line 701
    .line 702
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    .line 704
    .line 705
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->fOneKey:Lcom/papa91/arc/widget/view/MImageView;

    .line 706
    .line 707
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 708
    .line 709
    .line 710
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->fAchievement:Lcom/papa91/arc/widget/view/MImageView;

    .line 711
    .line 712
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    .line 714
    .line 715
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->pause:Landroid/view/View;

    .line 716
    .line 717
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 718
    .line 719
    .line 720
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->resume:Landroid/view/View;

    .line 721
    .line 722
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 723
    .line 724
    .line 725
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuBar:Landroid/view/View;

    .line 726
    .line 727
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    .line 729
    .line 730
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->exit:Landroid/view/View;

    .line 731
    .line 732
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 733
    .line 734
    .line 735
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->reload:Landroid/view/View;

    .line 736
    .line 737
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 738
    .line 739
    .line 740
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->voice:Landroid/view/View;

    .line 741
    .line 742
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 743
    .line 744
    .line 745
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->vibrate:Landroid/view/View;

    .line 746
    .line 747
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 748
    .line 749
    .line 750
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->quickSlot:Landroid/view/View;

    .line 751
    .line 752
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 753
    .line 754
    .line 755
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->forum:Landroid/view/View;

    .line 756
    .line 757
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 758
    .line 759
    .line 760
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->slot:Landroid/view/View;

    .line 761
    .line 762
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 763
    .line 764
    .line 765
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->cheating:Landroid/view/View;

    .line 766
    .line 767
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 768
    .line 769
    .line 770
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->performance:Landroid/view/View;

    .line 771
    .line 772
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 773
    .line 774
    .line 775
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->stickKeys:Landroid/view/View;

    .line 776
    .line 777
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 778
    .line 779
    .line 780
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->timerBg:Landroid/view/View;

    .line 781
    .line 782
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 783
    .line 784
    .line 785
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->timer:Landroid/widget/TextView;

    .line 786
    .line 787
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 788
    .line 789
    .line 790
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->changeDisk:Landroid/view/View;

    .line 791
    .line 792
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 793
    .line 794
    .line 795
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->tv_game_pass:Landroid/widget/TextView;

    .line 796
    .line 797
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 798
    .line 799
    .line 800
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->flStart:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 801
    .line 802
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 803
    .line 804
    .line 805
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->llAgain:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 806
    .line 807
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 808
    .line 809
    .line 810
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->btnExit:Landroid/widget/ImageView;

    .line 811
    .line 812
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 813
    .line 814
    .line 815
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->clSuccess:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 816
    .line 817
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 818
    .line 819
    .line 820
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->clStart:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 821
    .line 822
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 823
    .line 824
    .line 825
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->clFailed:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 826
    .line 827
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 828
    .line 829
    .line 830
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->flCountDown:Landroid/widget/FrameLayout;

    .line 831
    .line 832
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 833
    .line 834
    .line 835
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->ivBtnReward:Landroid/widget/ImageView;

    .line 836
    .line 837
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 838
    .line 839
    .line 840
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->btnBorderReward:Landroid/widget/ImageView;

    .line 841
    .line 842
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 843
    .line 844
    .line 845
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuBar:Landroid/view/View;

    .line 846
    .line 847
    new-instance v1, Lcom/papa91/arc/view/MenuView$1;

    .line 848
    .line 849
    invoke-direct {v1, p0}, Lcom/papa91/arc/view/MenuView$1;-><init>(Lcom/papa91/arc/view/MenuView;)V

    .line 850
    .line 851
    .line 852
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 853
    .line 854
    .line 855
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuBarOutSide:Landroid/view/View;

    .line 856
    .line 857
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 858
    .line 859
    .line 860
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->changeDisk:Landroid/view/View;

    .line 861
    .line 862
    const/16 v1, 0x8

    .line 863
    .line 864
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 865
    .line 866
    .line 867
    return-void
.end method

.method private synthetic lambda$updateTime$0(IIII)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->getMiniRankTime()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lt p1, v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->tv_game_pass:Landroid/widget/TextView;

    .line 12
    .line 13
    const-string v0, "#A7E0FF"

    .line 14
    .line 15
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->tv_game_pass:Landroid/widget/TextView;

    .line 24
    .line 25
    const-string v0, "#6F7989"

    .line 26
    .line 27
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->tv_time:Landroid/widget/TextView;

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v1, "0"

    .line 42
    .line 43
    const/16 v2, 0x9

    .line 44
    .line 45
    if-le p2, v2, :cond_2

    .line 46
    .line 47
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p2, ":"

    .line 71
    .line 72
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    if-le p3, v2, :cond_3

    .line 76
    .line 77
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    goto :goto_2

    .line 82
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    :goto_2
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    if-le p4, v2, :cond_4

    .line 104
    .line 105
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    goto :goto_3

    .line 110
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    :goto_3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method


# virtual methods
.method alertRing()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/papa91/arc/view/MenuView;->millisUntilFinish:J

    .line 2
    .line 3
    const-wide/16 v2, 0x3e8

    .line 4
    .line 5
    div-long/2addr v0, v2

    .line 6
    const-wide/16 v2, 0xa

    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-gez v4, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->alert:Landroid/widget/ImageView;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->alert:Landroid/widget/ImageView;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method alertStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->alert:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->alert:Landroid/widget/ImageView;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public amplification()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->menuShowing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x4

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    new-array v2, v2, [F

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    aput v4, v2, v3

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    int-to-float v0, v0

    .line 34
    aput v0, v2, v3

    .line 35
    .line 36
    const-string v0, "translationY"

    .line 37
    .line 38
    invoke-static {v1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-wide/16 v1, 0xa0

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v1, Lcom/papa91/arc/view/MenuView$8;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/papa91/arc/view/MenuView$8;-><init>(Lcom/papa91/arc/view/MenuView;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_0
    return-void
.end method

.method public dismissMenu()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuBar:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/papa91/arc/view/MenuView;->hiding:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lcom/papa91/arc/view/MenuView;->hiding:Z

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v2, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    sub-int/2addr v0, v2

    .line 28
    iget-object v2, p0, Lcom/papa91/arc/view/MenuView;->menuBar:Landroid/view/View;

    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    new-array v4, v3, [F

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    int-to-float v6, v5

    .line 35
    aput v6, v4, v5

    .line 36
    .line 37
    int-to-float v0, v0

    .line 38
    aput v0, v4, v1

    .line 39
    .line 40
    const-string v0, "translationY"

    .line 41
    .line 42
    invoke-static {v2, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-wide/16 v1, 0xa0

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v1, Lcom/papa91/arc/view/MenuView$4;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/papa91/arc/view/MenuView$4;-><init>(Lcom/papa91/arc/view/MenuView;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->needShowBottomBar()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    .line 74
    .line 75
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    .line 79
    .line 80
    new-array v1, v3, [F

    .line 81
    .line 82
    fill-array-data v1, :array_0

    .line 83
    .line 84
    .line 85
    const-string v2, "alpha"

    .line 86
    .line 87
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    new-instance v1, Lcom/papa91/arc/view/MenuView$5;

    .line 92
    .line 93
    invoke-direct {v1, p0}, Lcom/papa91/arc/view/MenuView$5;-><init>(Lcom/papa91/arc/view/MenuView;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 97
    .line 98
    .line 99
    const-wide/16 v1, 0xb4

    .line 100
    .line 101
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->changeDisk:Landroid/view/View;

    .line 108
    .line 109
    const/16 v1, 0x8

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    :cond_2
    :goto_0
    return-void

    .line 115
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public endGameFailed(IZI)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->hideAllEndGameView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->clFailed:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->btnExit:Landroid/widget/ImageView;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    const/16 v0, 0x8

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->ivEndlessPointFailed:Landroid/widget/ImageView;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->tvPointCountFailed:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p2, p0, Lcom/papa91/arc/view/MenuView;->ivEndlessPointFailed:Landroid/widget/ImageView;

    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Lcom/papa91/arc/view/MenuView;->tvPointCountFailed:Landroid/widget/TextView;

    .line 36
    .line 37
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lcom/papa91/arc/view/MenuView;->tvPointCountFailed:Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    const/4 p1, 0x1

    .line 50
    if-eq p3, p1, :cond_3

    .line 51
    .line 52
    const/4 p1, 0x2

    .line 53
    if-eq p3, p1, :cond_2

    .line 54
    .line 55
    const/4 p1, 0x3

    .line 56
    if-eq p3, p1, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->failedSubTitle:Landroid/widget/ImageView;

    .line 60
    .line 61
    sget p2, Lorg/ppsspp/ppsspp/R$drawable;->failed_player_harmed:I

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->failedSubTitle:Landroid/widget/ImageView;

    .line 68
    .line 69
    sget p2, Lorg/ppsspp/ppsspp/R$drawable;->failed_player_dead:I

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->failedSubTitle:Landroid/widget/ImageView;

    .line 76
    .line 77
    sget p2, Lorg/ppsspp/ppsspp/R$drawable;->failed_time_out:I

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    .line 81
    .line 82
    :goto_1
    return-void
.end method

.method public endGameSuccess(ILcom/papa91/arc/bean/EndGameAllowBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->clSuccess:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->hideAllEndGameView()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->clSuccess:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/papa91/arc/bean/EndGameAllowBean;->isWelfareSwitch()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/papa91/arc/view/MenuView;->showResultAnimationRedPackage(ILcom/papa91/arc/bean/EndGameAllowBean;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/papa91/arc/view/MenuView;->showAnimationResult(ILcom/papa91/arc/bean/EndGameAllowBean;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public getRankTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/MenuView;->rankTime:I

    .line 2
    .line 3
    return v0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/papa91/arc/view/MenuView;->hide(I)V

    return-void
.end method

.method public hide(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuBar:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/papa91/arc/view/MenuView;->menuBarStatue:I

    :cond_1
    const/4 p1, 0x4

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hide2Float()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuBar:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

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
    iput v0, p0, Lcom/papa91/arc/view/MenuView;->menuBarStatue:I

    .line 15
    .line 16
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->fShow:Lcom/papa91/arc/widget/view/MImageView;

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    new-array v3, v3, [F

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    neg-int v4, v4

    .line 26
    int-to-float v4, v4

    .line 27
    aput v4, v3, v1

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    aput v1, v3, v2

    .line 31
    .line 32
    const-string v1, "translationX"

    .line 33
    .line 34
    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-wide/16 v3, 0xb4

    .line 39
    .line 40
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Lcom/papa91/arc/view/MenuView$3;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lcom/papa91/arc/view/MenuView$3;-><init>(Lcom/papa91/arc/view/MenuView;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->fHide:Lcom/papa91/arc/widget/view/MImageView;

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Lcom/papa91/arc/widget/view/MImageView;->hide(Z)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->fScreenShot:Lcom/papa91/arc/widget/view/MImageView;

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Lcom/papa91/arc/widget/view/MImageView;->hide(Z)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 66
    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->isShowAchievementIcon()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->fAchievement:Lcom/papa91/arc/widget/view/MImageView;

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Lcom/papa91/arc/widget/view/MImageView;->hide(Z)V

    .line 78
    .line 79
    .line 80
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 81
    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->isShowGate()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->fGate:Lcom/papa91/arc/widget/view/MImageView;

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Lcom/papa91/arc/widget/view/MImageView;->hide(Z)V

    .line 93
    .line 94
    .line 95
    :cond_2
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 96
    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->isShowOnekey()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_3

    .line 104
    .line 105
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->fOneKey:Lcom/papa91/arc/widget/view/MImageView;

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Lcom/papa91/arc/widget/view/MImageView;->hide(Z)V

    .line 108
    .line 109
    .line 110
    :cond_3
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 111
    .line 112
    if-eqz v0, :cond_4

    .line 113
    .line 114
    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->isShowCheating()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_4

    .line 119
    .line 120
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->fCheating:Lcom/papa91/arc/widget/view/MImageView;

    .line 121
    .line 122
    invoke-virtual {v0, v2}, Lcom/papa91/arc/widget/view/MImageView;->hide(Z)V

    .line 123
    .line 124
    .line 125
    :cond_4
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 126
    .line 127
    if-eqz v0, :cond_5

    .line 128
    .line 129
    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->isShowQuickSlot()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_5

    .line 134
    .line 135
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->fQuickSlot:Lcom/papa91/arc/widget/view/MImageView;

    .line 136
    .line 137
    invoke-virtual {v0, v2}, Lcom/papa91/arc/widget/view/MImageView;->hide(Z)V

    .line 138
    .line 139
    .line 140
    :cond_5
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 141
    .line 142
    const/16 v1, 0x8

    .line 143
    .line 144
    if-eqz v0, :cond_6

    .line 145
    .line 146
    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->isRankGame()Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_6

    .line 151
    .line 152
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->ll_play_time:Landroid/widget/LinearLayout;

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    :cond_6
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->pause:Landroid/view/View;

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuBar:Landroid/view/View;

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 170
    .line 171
    .line 172
    return-void
.end method

.method public hideAllEndGameView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->clStart:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->clFailed:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->clSuccess:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->flCountDown:Landroid/widget/FrameLayout;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->btnExit:Landroid/widget/ImageView;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->llQuest:Landroid/widget/LinearLayout;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->clSuccess:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public hideTimer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->isRankGame()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->ll_play_time:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->timerContainer:Landroid/view/View;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public isTimerShowing()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->timerContainer:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/papa91/arc/view/MenuView;->millisUntilFinish:J

    .line 10
    .line 11
    const-wide/16 v2, 0x3e8

    .line 12
    .line 13
    div-long/2addr v0, v2

    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v4, v0, v2

    .line 17
    .line 18
    if-lez v4, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method public menuShowing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuBar:Landroid/view/View;

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

.method public narrow()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    new-array v2, v2, [F

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    int-to-float v0, v0

    .line 23
    aput v0, v2, v3

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    const/4 v3, 0x0

    .line 27
    aput v3, v2, v0

    .line 28
    .line 29
    const-string v0, "translationY"

    .line 30
    .line 31
    invoke-static {v1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-wide/16 v1, 0xa0

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Lcom/papa91/arc/view/MenuView$9;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/papa91/arc/view/MenuView$9;-><init>(Lcom/papa91/arc/view/MenuView;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget v0, Lorg/ppsspp/ppsspp/R$id;->pause:I

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->popupMenu()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 13
    .line 14
    if-eqz p1, :cond_2c

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->gameOnPause()V

    .line 17
    .line 18
    .line 19
    goto/16 :goto_3

    .line 20
    .line 21
    :cond_0
    sget v0, Lorg/ppsspp/ppsspp/R$id;->resume:I

    .line 22
    .line 23
    if-ne p1, v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->dismissMenu()V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 29
    .line 30
    if-eqz p1, :cond_2c

    .line 31
    .line 32
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->gameOnResume()V

    .line 33
    .line 34
    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :cond_1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->menuBarOutSide:I

    .line 38
    .line 39
    if-ne p1, v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->menuShowing()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_2c

    .line 46
    .line 47
    iget-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->hiding:Z

    .line 48
    .line 49
    if-nez p1, :cond_2c

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->dismissMenu()V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 55
    .line 56
    if-eqz p1, :cond_2c

    .line 57
    .line 58
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->gameOnResume()V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    :cond_2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->menuBar:I

    .line 64
    .line 65
    if-ne p1, v0, :cond_3

    .line 66
    .line 67
    goto/16 :goto_3

    .line 68
    .line 69
    :cond_3
    sget v0, Lorg/ppsspp/ppsspp/R$id;->fHide:I

    .line 70
    .line 71
    if-ne p1, v0, :cond_4

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->hide2Float()V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 77
    .line 78
    if-eqz p1, :cond_2c

    .line 79
    .line 80
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->onHideMenu()V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_3

    .line 84
    .line 85
    :cond_4
    sget v0, Lorg/ppsspp/ppsspp/R$id;->fShow:I

    .line 86
    .line 87
    if-ne p1, v0, :cond_5

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->show()V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_3

    .line 93
    .line 94
    :cond_5
    sget v0, Lorg/ppsspp/ppsspp/R$id;->slot:I

    .line 95
    .line 96
    if-eq p1, v0, :cond_2a

    .line 97
    .line 98
    sget v0, Lorg/ppsspp/ppsspp/R$id;->fQuickSlot:I

    .line 99
    .line 100
    if-ne p1, v0, :cond_6

    .line 101
    .line 102
    goto/16 :goto_2

    .line 103
    .line 104
    :cond_6
    sget v0, Lorg/ppsspp/ppsspp/R$id;->cheating:I

    .line 105
    .line 106
    if-eq p1, v0, :cond_28

    .line 107
    .line 108
    sget v0, Lorg/ppsspp/ppsspp/R$id;->fCheating:I

    .line 109
    .line 110
    if-ne p1, v0, :cond_7

    .line 111
    .line 112
    goto/16 :goto_1

    .line 113
    .line 114
    :cond_7
    sget v0, Lorg/ppsspp/ppsspp/R$id;->performance:I

    .line 115
    .line 116
    if-ne p1, v0, :cond_9

    .line 117
    .line 118
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 119
    .line 120
    if-eqz p1, :cond_8

    .line 121
    .line 122
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->showMenuPerformance()V

    .line 123
    .line 124
    .line 125
    :cond_8
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->dismissMenu()V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_3

    .line 129
    .line 130
    :cond_9
    sget v0, Lorg/ppsspp/ppsspp/R$id;->exit:I

    .line 131
    .line 132
    if-ne p1, v0, :cond_a

    .line 133
    .line 134
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 135
    .line 136
    if-eqz p1, :cond_2c

    .line 137
    .line 138
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->exit()V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_3

    .line 142
    .line 143
    :cond_a
    sget v0, Lorg/ppsspp/ppsspp/R$id;->reload:I

    .line 144
    .line 145
    if-ne p1, v0, :cond_b

    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->showReloadPrompt()V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_3

    .line 151
    .line 152
    :cond_b
    sget v0, Lorg/ppsspp/ppsspp/R$id;->voice:I

    .line 153
    .line 154
    const/4 v1, 0x1

    .line 155
    if-ne p1, v0, :cond_e

    .line 156
    .line 157
    iget-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isSound:Z

    .line 158
    .line 159
    xor-int/2addr p1, v1

    .line 160
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isSound:Z

    .line 161
    .line 162
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 163
    .line 164
    if-eqz v0, :cond_c

    .line 165
    .line 166
    invoke-interface {v0, p1}, Lcom/papa91/arc/view/MenuViewListener;->voice(Z)V

    .line 167
    .line 168
    .line 169
    :cond_c
    iget-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isSound:Z

    .line 170
    .line 171
    if-eqz p1, :cond_d

    .line 172
    .line 173
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->voice:Landroid/view/View;

    .line 174
    .line 175
    sget v0, Lorg/ppsspp/ppsspp/R$drawable;->voice:I

    .line 176
    .line 177
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_3

    .line 181
    .line 182
    :cond_d
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->voice:Landroid/view/View;

    .line 183
    .line 184
    sget v0, Lorg/ppsspp/ppsspp/R$drawable;->voice_mute:I

    .line 185
    .line 186
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 187
    .line 188
    .line 189
    goto/16 :goto_3

    .line 190
    .line 191
    :cond_e
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vibrate:I

    .line 192
    .line 193
    if-ne p1, v0, :cond_11

    .line 194
    .line 195
    iget-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isVibrate:Z

    .line 196
    .line 197
    xor-int/2addr p1, v1

    .line 198
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isVibrate:Z

    .line 199
    .line 200
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 201
    .line 202
    if-eqz v0, :cond_f

    .line 203
    .line 204
    invoke-interface {v0, p1}, Lcom/papa91/arc/view/MenuViewListener;->vibrate(Z)V

    .line 205
    .line 206
    .line 207
    :cond_f
    iget-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isVibrate:Z

    .line 208
    .line 209
    if-eqz p1, :cond_10

    .line 210
    .line 211
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->vibrate:Landroid/view/View;

    .line 212
    .line 213
    sget v0, Lorg/ppsspp/ppsspp/R$drawable;->vibrate:I

    .line 214
    .line 215
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_3

    .line 219
    .line 220
    :cond_10
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->vibrate:Landroid/view/View;

    .line 221
    .line 222
    sget v0, Lorg/ppsspp/ppsspp/R$drawable;->vibrate_off:I

    .line 223
    .line 224
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_3

    .line 228
    .line 229
    :cond_11
    sget v0, Lorg/ppsspp/ppsspp/R$id;->quickSlot:I

    .line 230
    .line 231
    if-ne p1, v0, :cond_12

    .line 232
    .line 233
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 234
    .line 235
    if-eqz p1, :cond_2c

    .line 236
    .line 237
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->quickSlot()V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_3

    .line 241
    .line 242
    :cond_12
    sget v0, Lorg/ppsspp/ppsspp/R$id;->forum:I

    .line 243
    .line 244
    if-ne p1, v0, :cond_13

    .line 245
    .line 246
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 247
    .line 248
    if-eqz p1, :cond_2c

    .line 249
    .line 250
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->forum()V

    .line 251
    .line 252
    .line 253
    goto/16 :goto_3

    .line 254
    .line 255
    :cond_13
    sget v0, Lorg/ppsspp/ppsspp/R$id;->stickKeys:I

    .line 256
    .line 257
    if-ne p1, v0, :cond_14

    .line 258
    .line 259
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 260
    .line 261
    if-eqz p1, :cond_2c

    .line 262
    .line 263
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->keysSetting()V

    .line 264
    .line 265
    .line 266
    goto/16 :goto_3

    .line 267
    .line 268
    :cond_14
    sget v0, Lorg/ppsspp/ppsspp/R$id;->timerBg:I

    .line 269
    .line 270
    if-eq p1, v0, :cond_26

    .line 271
    .line 272
    sget v0, Lorg/ppsspp/ppsspp/R$id;->timer:I

    .line 273
    .line 274
    if-ne p1, v0, :cond_15

    .line 275
    .line 276
    goto/16 :goto_0

    .line 277
    .line 278
    :cond_15
    sget v0, Lorg/ppsspp/ppsspp/R$id;->fGate:I

    .line 279
    .line 280
    if-ne p1, v0, :cond_16

    .line 281
    .line 282
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 283
    .line 284
    if-eqz p1, :cond_2c

    .line 285
    .line 286
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->showMenuGate()V

    .line 287
    .line 288
    .line 289
    goto/16 :goto_3

    .line 290
    .line 291
    :cond_16
    sget v0, Lorg/ppsspp/ppsspp/R$id;->fOneKey:I

    .line 292
    .line 293
    if-ne p1, v0, :cond_17

    .line 294
    .line 295
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 296
    .line 297
    if-eqz p1, :cond_2c

    .line 298
    .line 299
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->showMenuOnekey()V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_3

    .line 303
    .line 304
    :cond_17
    sget v0, Lorg/ppsspp/ppsspp/R$id;->fScreenShot:I

    .line 305
    .line 306
    if-ne p1, v0, :cond_19

    .line 307
    .line 308
    iget-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->showAdImage:Z

    .line 309
    .line 310
    if-eqz p1, :cond_18

    .line 311
    .line 312
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 313
    .line 314
    if-eqz p1, :cond_2c

    .line 315
    .line 316
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->onAdImageClick()V

    .line 317
    .line 318
    .line 319
    goto/16 :goto_3

    .line 320
    .line 321
    :cond_18
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 322
    .line 323
    if-eqz p1, :cond_2c

    .line 324
    .line 325
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->onScreenShot()V

    .line 326
    .line 327
    .line 328
    goto/16 :goto_3

    .line 329
    .line 330
    :cond_19
    sget v0, Lorg/ppsspp/ppsspp/R$id;->changeDisk:I

    .line 331
    .line 332
    if-ne p1, v0, :cond_1b

    .line 333
    .line 334
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->dismissMenu()V

    .line 335
    .line 336
    .line 337
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 338
    .line 339
    if-eqz p1, :cond_1a

    .line 340
    .line 341
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->onChangeDisk()V

    .line 342
    .line 343
    .line 344
    :cond_1a
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 345
    .line 346
    if-eqz p1, :cond_2c

    .line 347
    .line 348
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->gameOnResume()V

    .line 349
    .line 350
    .line 351
    goto/16 :goto_3

    .line 352
    .line 353
    :cond_1b
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_game_pass:I

    .line 354
    .line 355
    if-ne p1, v0, :cond_1c

    .line 356
    .line 357
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 358
    .line 359
    if-eqz p1, :cond_2c

    .line 360
    .line 361
    iget v0, p0, Lcom/papa91/arc/view/MenuView;->rankTime:I

    .line 362
    .line 363
    invoke-interface {p1, v0}, Lcom/papa91/arc/view/MenuViewListener;->onRankFinish(I)V

    .line 364
    .line 365
    .line 366
    goto/16 :goto_3

    .line 367
    .line 368
    :cond_1c
    sget v0, Lorg/ppsspp/ppsspp/R$id;->flStart:I

    .line 369
    .line 370
    if-ne p1, v0, :cond_1d

    .line 371
    .line 372
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 373
    .line 374
    if-eqz p1, :cond_2c

    .line 375
    .line 376
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->startEndGame()V

    .line 377
    .line 378
    .line 379
    goto/16 :goto_3

    .line 380
    .line 381
    :cond_1d
    sget v0, Lorg/ppsspp/ppsspp/R$id;->llAgain:I

    .line 382
    .line 383
    if-ne p1, v0, :cond_1e

    .line 384
    .line 385
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 386
    .line 387
    if-eqz p1, :cond_2c

    .line 388
    .line 389
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->restartEndGame()V

    .line 390
    .line 391
    .line 392
    goto/16 :goto_3

    .line 393
    .line 394
    :cond_1e
    sget v0, Lorg/ppsspp/ppsspp/R$id;->btnExit:I

    .line 395
    .line 396
    if-ne p1, v0, :cond_1f

    .line 397
    .line 398
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 399
    .line 400
    if-eqz p1, :cond_2c

    .line 401
    .line 402
    invoke-interface {p1, v1}, Lcom/papa91/arc/view/MenuViewListener;->exitEndGame(Z)V

    .line 403
    .line 404
    .line 405
    goto/16 :goto_3

    .line 406
    .line 407
    :cond_1f
    sget v0, Lorg/ppsspp/ppsspp/R$id;->clSuccess:I

    .line 408
    .line 409
    if-ne p1, v0, :cond_20

    .line 410
    .line 411
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 412
    .line 413
    if-eqz p1, :cond_2c

    .line 414
    .line 415
    const/4 v0, 0x0

    .line 416
    invoke-interface {p1, v0}, Lcom/papa91/arc/view/MenuViewListener;->exitEndGame(Z)V

    .line 417
    .line 418
    .line 419
    goto :goto_3

    .line 420
    :cond_20
    sget v0, Lorg/ppsspp/ppsspp/R$id;->clStart:I

    .line 421
    .line 422
    if-ne p1, v0, :cond_21

    .line 423
    .line 424
    goto :goto_3

    .line 425
    :cond_21
    sget v0, Lorg/ppsspp/ppsspp/R$id;->clFailed:I

    .line 426
    .line 427
    if-ne p1, v0, :cond_22

    .line 428
    .line 429
    goto :goto_3

    .line 430
    :cond_22
    sget v0, Lorg/ppsspp/ppsspp/R$id;->flCountDown:I

    .line 431
    .line 432
    if-ne p1, v0, :cond_23

    .line 433
    .line 434
    goto :goto_3

    .line 435
    :cond_23
    sget v0, Lorg/ppsspp/ppsspp/R$id;->btnBorderReward:I

    .line 436
    .line 437
    if-ne p1, v0, :cond_24

    .line 438
    .line 439
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 440
    .line 441
    if-eqz p1, :cond_2c

    .line 442
    .line 443
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->getPassRewardPoint()V

    .line 444
    .line 445
    .line 446
    iput-boolean v1, p0, Lcom/papa91/arc/view/MenuView;->hasGetAward:Z

    .line 447
    .line 448
    goto :goto_3

    .line 449
    :cond_24
    sget v0, Lorg/ppsspp/ppsspp/R$id;->ivBtnReward:I

    .line 450
    .line 451
    if-ne p1, v0, :cond_25

    .line 452
    .line 453
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 454
    .line 455
    if-eqz p1, :cond_2c

    .line 456
    .line 457
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->playVideoForReward()V

    .line 458
    .line 459
    .line 460
    iput-boolean v1, p0, Lcom/papa91/arc/view/MenuView;->hasGetAward:Z

    .line 461
    .line 462
    goto :goto_3

    .line 463
    :cond_25
    sget v0, Lorg/ppsspp/ppsspp/R$id;->fAchievement:I

    .line 464
    .line 465
    if-ne p1, v0, :cond_2c

    .line 466
    .line 467
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 468
    .line 469
    if-eqz p1, :cond_2c

    .line 470
    .line 471
    invoke-interface {p1, v1}, Lcom/papa91/arc/view/MenuViewListener;->showAchievementDialog(I)V

    .line 472
    .line 473
    .line 474
    goto :goto_3

    .line 475
    :cond_26
    :goto_0
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 476
    .line 477
    if-eqz p1, :cond_27

    .line 478
    .line 479
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->showTimeLimitedDialog1()V

    .line 480
    .line 481
    .line 482
    :cond_27
    const-string p1, "OnClickPSPCutDown"

    .line 483
    .line 484
    invoke-static {p1}, Lcom/papa91/arc/EmuActivity_psp;->sendLimitStat(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    goto :goto_3

    .line 488
    :cond_28
    :goto_1
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 489
    .line 490
    if-eqz p1, :cond_29

    .line 491
    .line 492
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->showMenuCheating()V

    .line 493
    .line 494
    .line 495
    :cond_29
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->dismissMenu()V

    .line 496
    .line 497
    .line 498
    goto :goto_3

    .line 499
    :cond_2a
    :goto_2
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 500
    .line 501
    if-eqz p1, :cond_2b

    .line 502
    .line 503
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->showMenuSlot()V

    .line 504
    .line 505
    .line 506
    :cond_2b
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->dismissMenu()V

    .line 507
    .line 508
    .line 509
    :cond_2c
    :goto_3
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->releaseTimer()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->menuShowing()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->dismissMenu()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->gameOnResume()V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public pauseTimer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->isRankGame()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/papa91/arc/view/MenuView;->isRankTimeStop:Z

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->releaseTimer()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->alertStop()V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public popupMenu()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuBar:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    const/16 v1, 0x8

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuBar:Landroid/view/View;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuBar:Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v3, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    sub-int/2addr v0, v3

    .line 35
    const/4 v3, 0x1

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const/high16 v4, 0x42d40000    # 106.0f

    .line 47
    .line 48
    invoke-static {v3, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    float-to-int v0, v0

    .line 53
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v5, "pop start="

    .line 59
    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v5, ", end="

    .line 67
    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v4, p0, Lcom/papa91/arc/view/MenuView;->menuBar:Landroid/view/View;

    .line 75
    .line 76
    const/4 v5, 0x2

    .line 77
    new-array v5, v5, [F

    .line 78
    .line 79
    int-to-float v0, v0

    .line 80
    aput v0, v5, v2

    .line 81
    .line 82
    int-to-float v0, v2

    .line 83
    aput v0, v5, v3

    .line 84
    .line 85
    const-string v0, "translationY"

    .line 86
    .line 87
    invoke-static {v4, v0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-wide/16 v3, 0xb4

    .line 92
    .line 93
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 101
    .line 102
    if-eqz v0, :cond_2

    .line 103
    .line 104
    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->IsSoundEnable()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    iput-boolean v0, p0, Lcom/papa91/arc/view/MenuView;->isSound:Z

    .line 109
    .line 110
    :cond_2
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 111
    .line 112
    if-eqz v0, :cond_3

    .line 113
    .line 114
    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->IsHapticFeedbackEnable()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    iput-boolean v0, p0, Lcom/papa91/arc/view/MenuView;->isVibrate:Z

    .line 119
    .line 120
    :cond_3
    iget-boolean v0, p0, Lcom/papa91/arc/view/MenuView;->isSound:Z

    .line 121
    .line 122
    if-eqz v0, :cond_4

    .line 123
    .line 124
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->voice:Landroid/view/View;

    .line 125
    .line 126
    sget v3, Lorg/ppsspp/ppsspp/R$drawable;->voice:I

    .line 127
    .line 128
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_4
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->voice:Landroid/view/View;

    .line 133
    .line 134
    sget v3, Lorg/ppsspp/ppsspp/R$drawable;->voice_mute:I

    .line 135
    .line 136
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 137
    .line 138
    .line 139
    :goto_0
    iget-boolean v0, p0, Lcom/papa91/arc/view/MenuView;->isVibrate:Z

    .line 140
    .line 141
    if-eqz v0, :cond_5

    .line 142
    .line 143
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->vibrate:Landroid/view/View;

    .line 144
    .line 145
    sget v3, Lorg/ppsspp/ppsspp/R$drawable;->vibrate:I

    .line 146
    .line 147
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_5
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->vibrate:Landroid/view/View;

    .line 152
    .line 153
    sget v3, Lorg/ppsspp/ppsspp/R$drawable;->vibrate_off:I

    .line 154
    .line 155
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 156
    .line 157
    .line 158
    :goto_1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 159
    .line 160
    if-eqz v0, :cond_7

    .line 161
    .line 162
    iget-object v3, p0, Lcom/papa91/arc/view/MenuView;->changeDisk:Landroid/view/View;

    .line 163
    .line 164
    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->getChangeDiskState()Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_6

    .line 169
    .line 170
    const/4 v1, 0x0

    .line 171
    :cond_6
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    .line 173
    .line 174
    :cond_7
    :goto_2
    return-void
.end method

.method public releaseTimer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->isRankGame()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lcom/papa91/arc/view/MenuView;->isRankTimeStop:Z

    .line 17
    .line 18
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->alertStop()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->countDownTimer:Landroid/os/CountDownTimer;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/papa91/arc/view/MenuView;->countDownTimer:Landroid/os/CountDownTimer;

    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method public resumeTimer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->isRankGame()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/papa91/arc/view/MenuView;->isRankTimeStop:Z

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-wide v0, p0, Lcom/papa91/arc/view/MenuView;->millisUntilFinish:J

    .line 16
    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/papa91/arc/view/MenuView;->startTimer(J)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public setDirection(I)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, -0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    if-ne p1, v0, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->rl_menu_left:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 14
    .line 15
    iput v2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 16
    .line 17
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 18
    .line 19
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->rl_menu_left:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->rl_menu_left:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->rl_menu_left:Landroid/view/View;

    .line 30
    .line 31
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->rl_menu_left:Landroid/view/View;

    .line 35
    .line 36
    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->ll_menu_right:Landroid/widget/LinearLayout;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 48
    .line 49
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 50
    .line 51
    iput v2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 52
    .line 53
    iput v2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 54
    .line 55
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->ll_menu_right:Landroid/widget/LinearLayout;

    .line 56
    .line 57
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->ll_menu_right:Landroid/widget/LinearLayout;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    int-to-float p1, p1

    .line 67
    cmpl-float v1, p1, v3

    .line 68
    .line 69
    if-nez v1, :cond_0

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    sget v1, Lorg/ppsspp/ppsspp/R$dimen;->wdp98:I

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->ll_menu_right:Landroid/widget/LinearLayout;

    .line 82
    .line 83
    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->ll_menu_right:Landroid/widget/LinearLayout;

    .line 87
    .line 88
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->ll_menu_right:Landroid/widget/LinearLayout;

    .line 92
    .line 93
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->ll_menu_right:Landroid/widget/LinearLayout;

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->rl_menu_left:Landroid/view/View;

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 109
    .line 110
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 111
    .line 112
    sget v0, Lorg/ppsspp/ppsspp/R$id;->guide:I

    .line 113
    .line 114
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 115
    .line 116
    iput v2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 117
    .line 118
    iget-object v4, p0, Lcom/papa91/arc/view/MenuView;->rl_menu_left:Landroid/view/View;

    .line 119
    .line 120
    invoke-virtual {v4, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->rl_menu_left:Landroid/view/View;

    .line 124
    .line 125
    invoke-virtual {p1, v3}, Landroid/view/View;->setRotation(F)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->ll_menu_right:Landroid/widget/LinearLayout;

    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 135
    .line 136
    iput v2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 137
    .line 138
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 139
    .line 140
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 141
    .line 142
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->ll_menu_right:Landroid/widget/LinearLayout;

    .line 143
    .line 144
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->ll_menu_right:Landroid/widget/LinearLayout;

    .line 148
    .line 149
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->ll_menu_right:Landroid/widget/LinearLayout;

    .line 153
    .line 154
    invoke-virtual {p1, v3}, Landroid/view/View;->setRotation(F)V

    .line 155
    .line 156
    .line 157
    :goto_0
    return-void
.end method

.method public setMenuViewListener(Lcom/papa91/arc/view/MenuViewListener;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->isShowAchievementIcon()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->fAchievement:Lcom/papa91/arc/widget/view/MImageView;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->fAchievement:Lcom/papa91/arc/widget/view/MImageView;

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 24
    .line 25
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->isShowGate()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->fGate:Lcom/papa91/arc/widget/view/MImageView;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->fGate:Lcom/papa91/arc/widget/view/MImageView;

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    :goto_1
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 43
    .line 44
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->isShowOnekey()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->fOneKey:Lcom/papa91/arc/widget/view/MImageView;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->fOneKey:Lcom/papa91/arc/widget/view/MImageView;

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    :goto_2
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 62
    .line 63
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->isShowCheating()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->fCheating:Lcom/papa91/arc/widget/view/MImageView;

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->fCheating:Lcom/papa91/arc/widget/view/MImageView;

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    :goto_3
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 81
    .line 82
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->isShowQuickSlot()Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_4

    .line 87
    .line 88
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->fQuickSlot:Lcom/papa91/arc/widget/view/MImageView;

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_4
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->fQuickSlot:Lcom/papa91/arc/widget/view/MImageView;

    .line 95
    .line 96
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    :goto_4
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 100
    .line 101
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->needShowTimer()Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_5

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->showTimer()V

    .line 108
    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_5
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->hideTimer()V

    .line 112
    .line 113
    .line 114
    :goto_5
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 115
    .line 116
    if-eqz p1, :cond_6

    .line 117
    .line 118
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->needShowBottomBar()Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-eqz p1, :cond_6

    .line 123
    .line 124
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    goto :goto_6

    .line 130
    :cond_6
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    .line 131
    .line 132
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    :goto_6
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 136
    .line 137
    if-eqz p1, :cond_7

    .line 138
    .line 139
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->isRankAutoUpload()Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-eqz p1, :cond_7

    .line 144
    .line 145
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->tv_game_pass:Landroid/widget/TextView;

    .line 146
    .line 147
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->v_line:Landroid/view/View;

    .line 151
    .line 152
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    goto :goto_7

    .line 156
    :cond_7
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->tv_game_pass:Landroid/widget/TextView;

    .line 157
    .line 158
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->v_line:Landroid/view/View;

    .line 162
    .line 163
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    :goto_7
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 167
    .line 168
    if-eqz p1, :cond_8

    .line 169
    .line 170
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->isEndGame()Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-eqz p1, :cond_8

    .line 175
    .line 176
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->ll_menu_left:Landroid/widget/LinearLayout;

    .line 177
    .line 178
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->ll_menu_right:Landroid/widget/LinearLayout;

    .line 182
    .line 183
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    .line 185
    .line 186
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->pause:Landroid/view/View;

    .line 187
    .line 188
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    .line 190
    .line 191
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    .line 192
    .line 193
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    .line 195
    .line 196
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuBar:Landroid/view/View;

    .line 197
    .line 198
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    .line 200
    .line 201
    :cond_8
    return-void
.end method

.method public setRankTimeStop(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->isRankTimeStop:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTime(J)V
    .locals 4

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-wide/16 v2, 0x3e8

    .line 12
    .line 13
    div-long/2addr p1, v2

    .line 14
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p1, " "

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 27
    .line 28
    .line 29
    new-instance p1, Landroid/text/SpannableString;

    .line 30
    .line 31
    const-string p2, "\u8fdb\u5165\u5e7f\u544a"

    .line 32
    .line 33
    invoke-direct {p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    .line 37
    .line 38
    const-string v1, "#9C7140"

    .line 39
    .line 40
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-direct {p2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/16 v2, 0x21

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    invoke-virtual {p1, p2, v3, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->timer:Landroid/widget/TextView;

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public show()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->fShow:Lcom/papa91/arc/widget/view/MImageView;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    new-array v2, v2, [F

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aput v3, v2, v0

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    neg-int v3, v3

    .line 18
    int-to-float v3, v3

    .line 19
    const/4 v4, 0x1

    .line 20
    aput v3, v2, v4

    .line 21
    .line 22
    const-string v3, "translationX"

    .line 23
    .line 24
    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-wide/16 v2, 0xb4

    .line 29
    .line 30
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v2, Lcom/papa91/arc/view/MenuView$2;

    .line 35
    .line 36
    invoke-direct {v2, p0}, Lcom/papa91/arc/view/MenuView$2;-><init>(Lcom/papa91/arc/view/MenuView;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->fHide:Lcom/papa91/arc/widget/view/MImageView;

    .line 46
    .line 47
    invoke-virtual {v1, v4}, Lcom/papa91/arc/widget/view/MImageView;->show(Z)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->fScreenShot:Lcom/papa91/arc/widget/view/MImageView;

    .line 51
    .line 52
    invoke-virtual {v1, v4}, Lcom/papa91/arc/widget/view/MImageView;->show(Z)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 56
    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    invoke-interface {v1}, Lcom/papa91/arc/view/MenuViewListener;->isShowOnekey()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_0

    .line 64
    .line 65
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->fOneKey:Lcom/papa91/arc/widget/view/MImageView;

    .line 66
    .line 67
    invoke-virtual {v1, v4}, Lcom/papa91/arc/widget/view/MImageView;->show(Z)V

    .line 68
    .line 69
    .line 70
    :cond_0
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 71
    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    invoke-interface {v1}, Lcom/papa91/arc/view/MenuViewListener;->isShowGate()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->fGate:Lcom/papa91/arc/widget/view/MImageView;

    .line 81
    .line 82
    invoke-virtual {v1, v4}, Lcom/papa91/arc/widget/view/MImageView;->show(Z)V

    .line 83
    .line 84
    .line 85
    :cond_1
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 86
    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    invoke-interface {v1}, Lcom/papa91/arc/view/MenuViewListener;->isShowCheating()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_2

    .line 94
    .line 95
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->fCheating:Lcom/papa91/arc/widget/view/MImageView;

    .line 96
    .line 97
    invoke-virtual {v1, v4}, Lcom/papa91/arc/widget/view/MImageView;->show(Z)V

    .line 98
    .line 99
    .line 100
    :cond_2
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 101
    .line 102
    if-eqz v1, :cond_3

    .line 103
    .line 104
    invoke-interface {v1}, Lcom/papa91/arc/view/MenuViewListener;->isShowQuickSlot()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_3

    .line 109
    .line 110
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->fQuickSlot:Lcom/papa91/arc/widget/view/MImageView;

    .line 111
    .line 112
    invoke-virtual {v1, v4}, Lcom/papa91/arc/widget/view/MImageView;->show(Z)V

    .line 113
    .line 114
    .line 115
    :cond_3
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 116
    .line 117
    if-eqz v1, :cond_4

    .line 118
    .line 119
    invoke-interface {v1}, Lcom/papa91/arc/view/MenuViewListener;->isShowAchievementIcon()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_4

    .line 124
    .line 125
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->fAchievement:Lcom/papa91/arc/widget/view/MImageView;

    .line 126
    .line 127
    invoke-virtual {v1, v4}, Lcom/papa91/arc/widget/view/MImageView;->show(Z)V

    .line 128
    .line 129
    .line 130
    :cond_4
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 131
    .line 132
    const/16 v2, 0x8

    .line 133
    .line 134
    if-eqz v1, :cond_5

    .line 135
    .line 136
    invoke-interface {v1}, Lcom/papa91/arc/view/MenuViewListener;->needShowBottomBar()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_5

    .line 141
    .line 142
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    .line 143
    .line 144
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 145
    .line 146
    .line 147
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->pause:Landroid/view/View;

    .line 148
    .line 149
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_5
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->pauseBar:Landroid/view/View;

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->pause:Landroid/view/View;

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 161
    .line 162
    .line 163
    :goto_0
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 164
    .line 165
    if-eqz v1, :cond_6

    .line 166
    .line 167
    invoke-interface {v1}, Lcom/papa91/arc/view/MenuViewListener;->isRankGame()Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_6

    .line 172
    .line 173
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->ll_play_time:Landroid/widget/LinearLayout;

    .line 174
    .line 175
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_6
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->ll_play_time:Landroid/widget/LinearLayout;

    .line 180
    .line 181
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 182
    .line 183
    .line 184
    :goto_1
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->menuBar:Landroid/view/View;

    .line 185
    .line 186
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    .line 188
    .line 189
    iget v1, p0, Lcom/papa91/arc/view/MenuView;->menuBarStatue:I

    .line 190
    .line 191
    if-ne v1, v4, :cond_7

    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->popupMenu()V

    .line 194
    .line 195
    .line 196
    iput v0, p0, Lcom/papa91/arc/view/MenuView;->menuBarStatue:I

    .line 197
    .line 198
    :cond_7
    return-void
.end method

.method public showAdImage(ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/arc/view/MenuView;->showAdImage:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2, p1}, Lcom/facebook/drawee/backends/pipeline/e;->e0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/e;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 p2, 0x1

    .line 18
    invoke-virtual {p1, p2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->F(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/facebook/drawee/backends/pipeline/e;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object p2, p0, Lcom/papa91/arc/view/MenuView;->fScreenShot:Lcom/papa91/arc/widget/view/MImageView;

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Lcom/facebook/drawee/view/DraweeView;->setController(Ls3/a;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->fScreenShot:Lcom/papa91/arc/widget/view/MImageView;

    .line 35
    .line 36
    sget p2, Lorg/ppsspp/ppsspp/R$drawable;->f_screen_shot:I

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public showAnimationResult(ILcom/papa91/arc/bean/EndGameAllowBean;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->clSuccess:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->clSuccess2:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 15
    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lcom/papa91/arc/view/MenuViewListener;->getEndGameScore(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, -0x1

    .line 30
    sparse-switch v2, :sswitch_data_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :sswitch_0
    const-string v2, "S"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v3, 0x3

    .line 44
    goto :goto_0

    .line 45
    :sswitch_1
    const-string v2, "C"

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 v3, 0x2

    .line 55
    goto :goto_0

    .line 56
    :sswitch_2
    const-string v2, "B"

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 v3, 0x1

    .line 66
    goto :goto_0

    .line 67
    :sswitch_3
    const-string v2, "A"

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_3

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    const/4 v3, 0x0

    .line 77
    :goto_0
    const-string v0, "C.json"

    .line 78
    .line 79
    packed-switch v3, :pswitch_data_0

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :pswitch_0
    const-string v0, "S.json"

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :pswitch_1
    const-string v0, "B.json"

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :pswitch_2
    const-string v0, "A.json"

    .line 90
    .line 91
    :goto_1
    :pswitch_3
    iget-object v2, p0, Lcom/papa91/arc/view/MenuView;->animationResult:Lcom/airbnb/lottie/LottieAnimationView;

    .line 92
    .line 93
    const-string v3, "animation_png/"

    .line 94
    .line 95
    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v2, p0, Lcom/papa91/arc/view/MenuView;->animationResult:Lcom/airbnb/lottie/LottieAnimationView;

    .line 99
    .line 100
    invoke-virtual {v2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->animationResult:Lcom/airbnb/lottie/LottieAnimationView;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->animationResult:Lcom/airbnb/lottie/LottieAnimationView;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->E()V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->animationResult:Lcom/airbnb/lottie/LottieAnimationView;

    .line 114
    .line 115
    new-instance v1, Lcom/papa91/arc/view/MenuView$12;

    .line 116
    .line 117
    invoke-direct {v1, p0, p1, p2}, Lcom/papa91/arc/view/MenuView$12;-><init>(Lcom/papa91/arc/view/MenuView;ILcom/papa91/arc/bean/EndGameAllowBean;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->g(Landroid/animation/Animator$AnimatorListener;)V

    .line 121
    .line 122
    .line 123
    :cond_4
    return-void

    .line 124
    nop

    .line 125
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_3
        0x42 -> :sswitch_2
        0x43 -> :sswitch_1
        0x53 -> :sswitch_0
    .end sparse-switch

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public showEndGameCountdown()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->hideAllEndGameView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->flCountDown:Landroid/widget/FrameLayout;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->ivCountDown:Landroid/widget/ImageView;

    .line 11
    .line 12
    sget v1, Lorg/ppsspp/ppsspp/R$drawable;->count_down_3:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/papa91/arc/view/MenuView$14;

    .line 18
    .line 19
    const-wide/16 v4, 0xc80

    .line 20
    .line 21
    const-wide/16 v6, 0x3e8

    .line 22
    .line 23
    move-object v2, v0

    .line 24
    move-object v3, p0

    .line 25
    invoke-direct/range {v2 .. v7}, Lcom/papa91/arc/view/MenuView$14;-><init>(Lcom/papa91/arc/view/MenuView;JJ)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public showEndGameStart(ZIZ)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->hideAllEndGameView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->clStart:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->btnExit:Landroid/widget/ImageView;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->loadingView:Lcom/papa91/arc/widget/LoadingImageView;

    .line 16
    .line 17
    const/4 v2, 0x4

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v3, 0x4

    .line 23
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->ivBtn:Landroid/widget/ImageView;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    const/4 v3, 0x4

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v3, 0x0

    .line 33
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->tvDesc:Landroid/widget/TextView;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    const/4 v3, 0x4

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    const/4 v3, 0x0

    .line 43
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->flStart:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 47
    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_3
    const/4 v2, 0x0

    .line 52
    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    const/16 p1, 0x8

    .line 56
    .line 57
    if-eqz p3, :cond_4

    .line 58
    .line 59
    iget-object p2, p0, Lcom/papa91/arc/view/MenuView;->ivEndlessPoint:Landroid/widget/ImageView;

    .line 60
    .line 61
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    iget-object p2, p0, Lcom/papa91/arc/view/MenuView;->tvPointCount:Landroid/widget/TextView;

    .line 65
    .line 66
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_4
    iget-object p3, p0, Lcom/papa91/arc/view/MenuView;->ivEndlessPoint:Landroid/widget/ImageView;

    .line 71
    .line 72
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->tvPointCount:Landroid/widget/TextView;

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->tvPointCount:Landroid/widget/TextView;

    .line 81
    .line 82
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    :goto_4
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 90
    .line 91
    if-eqz p1, :cond_5

    .line 92
    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string p2, "<font color=\'#FFA600\'>"

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object p2, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 104
    .line 105
    invoke-interface {p2}, Lcom/papa91/arc/view/MenuViewListener;->getEndGameLimitTime()I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    invoke-direct {p0, p2}, Lcom/papa91/arc/view/MenuView;->formatEndGameTime(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string p2, "</font>"

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object p2, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 122
    .line 123
    invoke-interface {p2}, Lcom/papa91/arc/view/MenuViewListener;->getEndGameDesc()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iget-object p2, p0, Lcom/papa91/arc/view/MenuView;->tvDesc:Landroid/widget/TextView;

    .line 135
    .line 136
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    :cond_5
    return-void
.end method

.method public showQuestAndTime()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/papa91/arc/view/MenuView;->hideAllEndGameView()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->llQuest:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->tvQuest:Landroid/widget/TextView;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 17
    .line 18
    invoke-interface {v1}, Lcom/papa91/arc/view/MenuViewListener;->getEndGameDesc()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->getEndGameLimitTime()I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->endGameCountDownTimer:Landroid/os/CountDownTimer;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 36
    .line 37
    .line 38
    :cond_0
    new-instance v0, Lcom/papa91/arc/view/MenuView$15;

    .line 39
    .line 40
    const-wide/32 v3, 0x7fffffff

    .line 41
    .line 42
    .line 43
    const-wide/16 v5, 0x3e8

    .line 44
    .line 45
    move-object v1, v0

    .line 46
    move-object v2, p0

    .line 47
    invoke-direct/range {v1 .. v7}, Lcom/papa91/arc/view/MenuView$15;-><init>(Lcom/papa91/arc/view/MenuView;JJI)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/papa91/arc/view/MenuView;->endGameCountDownTimer:Landroid/os/CountDownTimer;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method public showReloadPrompt()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->dialog:Landroid/app/Dialog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/app/Dialog;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget v2, Lorg/ppsspp/ppsspp/R$style;->PspDialog:I

    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/papa91/arc/view/MenuView;->dialog:Landroid/app/Dialog;

    .line 17
    .line 18
    sget v1, Lorg/ppsspp/ppsspp/R$layout;->dialog_exit:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->dialog:Landroid/app/Dialog;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->dialog:Landroid/app/Dialog;

    .line 30
    .line 31
    sget v1, Lorg/ppsspp/ppsspp/R$id;->textView2:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/TextView;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/papa91/arc/view/MenuView;->tip:Landroid/widget/TextView;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->dialog:Landroid/app/Dialog;

    .line 42
    .line 43
    sget v1, Lorg/ppsspp/ppsspp/R$id;->cancel:I

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Lcom/papa91/arc/view/MenuView$6;

    .line 50
    .line 51
    invoke-direct {v1, p0}, Lcom/papa91/arc/view/MenuView$6;-><init>(Lcom/papa91/arc/view/MenuView;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->dialog:Landroid/app/Dialog;

    .line 58
    .line 59
    sget v1, Lorg/ppsspp/ppsspp/R$id;->ok:I

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Lcom/papa91/arc/view/MenuView$7;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Lcom/papa91/arc/view/MenuView$7;-><init>(Lcom/papa91/arc/view/MenuView;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->tip:Landroid/widget/TextView;

    .line 74
    .line 75
    const-string v1, "\u662f\u5426\u8981\u91cd\u65b0\u542f\u52a8\u6e38\u620f\uff1f"

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->dialog:Landroid/app/Dialog;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_1

    .line 87
    .line 88
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->dialog:Landroid/app/Dialog;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 91
    .line 92
    .line 93
    :cond_1
    return-void
.end method

.method public showResultAnimationRedPackage(ILcom/papa91/arc/bean/EndGameAllowBean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->clSuccess2:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->clSuccess:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->animationResult2:Lcom/airbnb/lottie/LottieAnimationView;

    .line 15
    .line 16
    const-string v2, "light_png/"

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->animationResult2:Lcom/airbnb/lottie/LottieAnimationView;

    .line 22
    .line 23
    const-string v2, "light.json"

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->animationResult2:Lcom/airbnb/lottie/LottieAnimationView;

    .line 29
    .line 30
    const/4 v2, -0x1

    .line 31
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->animationResult2:Lcom/airbnb/lottie/LottieAnimationView;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->E()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->animationResult3:Lcom/airbnb/lottie/LottieAnimationView;

    .line 40
    .line 41
    const-string v2, "red_package_png/"

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->animationResult3:Lcom/airbnb/lottie/LottieAnimationView;

    .line 47
    .line 48
    const-string v2, "red_package.json"

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->animationResult3:Lcom/airbnb/lottie/LottieAnimationView;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->animationResult3:Lcom/airbnb/lottie/LottieAnimationView;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->E()V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->animationResult3:Lcom/airbnb/lottie/LottieAnimationView;

    .line 64
    .line 65
    new-instance v1, Lcom/papa91/arc/view/MenuView$13;

    .line 66
    .line 67
    invoke-direct {v1, p0, p1, p2}, Lcom/papa91/arc/view/MenuView$13;-><init>(Lcom/papa91/arc/view/MenuView;ILcom/papa91/arc/bean/EndGameAllowBean;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->g(Landroid/animation/Animator$AnimatorListener;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public showTimer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->isRankGame()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->ll_play_time:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->timerContainer:Landroid/view/View;

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->timerContainer:Landroid/view/View;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public startTimer(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->isRankGame()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/papa91/arc/view/MenuView;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 21
    .line 22
    new-instance v1, Lcom/papa91/arc/view/MenuView$10;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/papa91/arc/view/MenuView$10;-><init>(Lcom/papa91/arc/view/MenuView;)V

    .line 25
    .line 26
    .line 27
    const-wide/16 v2, 0x1

    .line 28
    .line 29
    const-wide/16 v4, 0x1

    .line 30
    .line 31
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 32
    .line 33
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView;->countDownTimer:Landroid/os/CountDownTimer;

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    iput-wide p1, p0, Lcom/papa91/arc/view/MenuView;->millisUntilFinish:J

    .line 42
    .line 43
    new-instance v0, Lcom/papa91/arc/view/MenuView$11;

    .line 44
    .line 45
    const-wide/16 v5, 0x3e8

    .line 46
    .line 47
    move-object v1, v0

    .line 48
    move-object v2, p0

    .line 49
    move-wide v3, p1

    .line 50
    invoke-direct/range {v1 .. v6}, Lcom/papa91/arc/view/MenuView$11;-><init>(Lcom/papa91/arc/view/MenuView;JJ)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/papa91/arc/view/MenuView;->countDownTimer:Landroid/os/CountDownTimer;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    return-void
.end method

.method public updateTime(I)V
    .locals 7

    .line 1
    div-int/lit16 v3, p1, 0xe10

    .line 2
    .line 3
    mul-int/lit16 v0, v3, 0xe10

    .line 4
    .line 5
    sub-int v0, p1, v0

    .line 6
    .line 7
    div-int/lit8 v4, v0, 0x3c

    .line 8
    .line 9
    mul-int/lit8 v1, v4, 0x3c

    .line 10
    .line 11
    sub-int v5, v0, v1

    .line 12
    .line 13
    new-instance v6, Lcom/papa91/arc/view/a;

    .line 14
    .line 15
    move-object v0, v6

    .line 16
    move-object v1, p0

    .line 17
    move v2, p1

    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/papa91/arc/view/a;-><init>(Lcom/papa91/arc/view/MenuView;IIII)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

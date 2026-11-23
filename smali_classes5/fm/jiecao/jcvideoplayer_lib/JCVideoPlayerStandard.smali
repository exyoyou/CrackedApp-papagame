.class public Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;
.super Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;
    }
.end annotation


# static fields
.field protected static F2:Ljava/util/Timer;


# instance fields
.field protected A2:Landroid/widget/TextView;

.field protected B2:Landroid/widget/ImageView;

.field protected C2:Landroid/app/Dialog;

.field protected D2:Landroid/widget/ProgressBar;

.field protected E2:Landroid/widget/TextView;

.field public e2:Landroid/widget/ImageView;

.field public f2:Landroid/widget/ProgressBar;

.field public g2:Landroid/widget/ProgressBar;

.field public h2:Landroid/widget/TextView;

.field public i2:Landroid/widget/ImageView;

.field public j2:Landroid/widget/ImageView;

.field public k2:Landroid/widget/LinearLayout;

.field public l2:Landroid/widget/ImageView;

.field public m2:Landroid/widget/TextView;

.field public n2:Landroid/widget/TextView;

.field public o2:Landroid/widget/TextView;

.field public p2:Landroid/widget/PopupWindow;

.field protected q2:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;

.field private r2:Z

.field private s2:Landroid/content/BroadcastReceiver;

.field protected t2:Landroid/app/Dialog;

.field protected u2:Landroid/widget/ProgressBar;

.field protected v2:Landroid/widget/TextView;

.field protected w2:Landroid/widget/TextView;

.field protected x2:Landroid/widget/ImageView;

.field protected y2:Landroid/app/Dialog;

.field protected z2:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->r2:Z

    .line 3
    new-instance p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$5;

    invoke-direct {p1, p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$5;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;)V

    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->s2:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->r2:Z

    .line 6
    new-instance p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$5;

    invoke-direct {p1, p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$5;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;)V

    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->s2:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic V(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 1
    iget-object p0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->s2:Landroid/content/BroadcastReceiver;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic W(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->r2:Z

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public A()V
    .locals 0

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->A()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->i0()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->o0()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public B()V
    .locals 0

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->B()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->k0()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->o0()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public C(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->C(II)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->g2:Landroid/widget/ProgressBar;

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->i:Landroid/widget/ImageView;

    .line 11
    .line 12
    const/4 p2, 0x4

    .line 13
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public D()V
    .locals 8

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->D()V

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x4

    .line 6
    const/4 v3, 0x4

    .line 7
    const/4 v4, 0x4

    .line 8
    const/4 v5, 0x4

    .line 9
    const/4 v6, 0x4

    .line 10
    const/4 v7, 0x0

    .line 11
    move-object v0, p0

    .line 12
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->o0()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public J()V
    .locals 2

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->J()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->f2:Landroid/widget/ProgressBar;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->f2:Landroid/widget/ProgressBar;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public K(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->K(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->C2:Landroid/app/Dialog;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$layout;->jc_dialog_brightness:I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$id;->tv_brightness:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/widget/TextView;

    .line 30
    .line 31
    iput-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->E2:Landroid/widget/TextView;

    .line 32
    .line 33
    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$id;->brightness_progressbar:I

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroid/widget/ProgressBar;

    .line 40
    .line 41
    iput-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->D2:Landroid/widget/ProgressBar;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->l0(Landroid/view/View;)Landroid/app/Dialog;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->C2:Landroid/app/Dialog;

    .line 48
    .line 49
    :cond_0
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->C2:Landroid/app/Dialog;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->C2:Landroid/app/Dialog;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 60
    .line 61
    .line 62
    :cond_1
    const/16 v0, 0x64

    .line 63
    .line 64
    if-le p1, v0, :cond_2

    .line 65
    .line 66
    const/16 p1, 0x64

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    if-gez p1, :cond_3

    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    :cond_3
    :goto_0
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->E2:Landroid/widget/TextView;

    .line 73
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v2, "%"

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->D2:Landroid/widget/ProgressBar;

    .line 95
    .line 96
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->m0()V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public L(FLjava/lang/String;ILjava/lang/String;I)V
    .locals 3

    .line 1
    invoke-super/range {p0 .. p5}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->L(FLjava/lang/String;ILjava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->t2:Landroid/app/Dialog;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$layout;->jc_dialog_progress:I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$id;->duration_progressbar:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/widget/ProgressBar;

    .line 30
    .line 31
    iput-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->u2:Landroid/widget/ProgressBar;

    .line 32
    .line 33
    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$id;->tv_current:I

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroid/widget/TextView;

    .line 40
    .line 41
    iput-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->v2:Landroid/widget/TextView;

    .line 42
    .line 43
    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$id;->tv_duration:I

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/widget/TextView;

    .line 50
    .line 51
    iput-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->w2:Landroid/widget/TextView;

    .line 52
    .line 53
    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$id;->duration_image_tip:I

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Landroid/widget/ImageView;

    .line 60
    .line 61
    iput-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->x2:Landroid/widget/ImageView;

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->l0(Landroid/view/View;)Landroid/app/Dialog;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->t2:Landroid/app/Dialog;

    .line 68
    .line 69
    :cond_0
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->t2:Landroid/app/Dialog;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_1

    .line 76
    .line 77
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->t2:Landroid/app/Dialog;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 80
    .line 81
    .line 82
    :cond_1
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->v2:Landroid/widget/TextView;

    .line 83
    .line 84
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    iget-object p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->w2:Landroid/widget/TextView;

    .line 88
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v1, " / "

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p4

    .line 106
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    iget-object p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->u2:Landroid/widget/ProgressBar;

    .line 110
    .line 111
    if-gtz p5, :cond_2

    .line 112
    .line 113
    const/4 p3, 0x0

    .line 114
    goto :goto_0

    .line 115
    :cond_2
    mul-int/lit8 p3, p3, 0x64

    .line 116
    .line 117
    div-int/2addr p3, p5

    .line 118
    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 119
    .line 120
    .line 121
    const/4 p2, 0x0

    .line 122
    cmpl-float p1, p1, p2

    .line 123
    .line 124
    if-lez p1, :cond_3

    .line 125
    .line 126
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->x2:Landroid/widget/ImageView;

    .line 127
    .line 128
    sget p2, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_forward_icon:I

    .line 129
    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_3
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->x2:Landroid/widget/ImageView;

    .line 135
    .line 136
    sget p2, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_backward_icon:I

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 139
    .line 140
    .line 141
    :goto_1
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->m0()V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public N(FI)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->N(FI)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->y2:Landroid/app/Dialog;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$layout;->jc_dialog_volume:I

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->volume_image_tip:I

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/ImageView;

    .line 30
    .line 31
    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->B2:Landroid/widget/ImageView;

    .line 32
    .line 33
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->tv_volume:I

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/widget/TextView;

    .line 40
    .line 41
    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->A2:Landroid/widget/TextView;

    .line 42
    .line 43
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->volume_progressbar:I

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/widget/ProgressBar;

    .line 50
    .line 51
    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->z2:Landroid/widget/ProgressBar;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->l0(Landroid/view/View;)Landroid/app/Dialog;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->y2:Landroid/app/Dialog;

    .line 58
    .line 59
    :cond_0
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->y2:Landroid/app/Dialog;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_1

    .line 66
    .line 67
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->y2:Landroid/app/Dialog;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 70
    .line 71
    .line 72
    :cond_1
    if-gtz p2, :cond_2

    .line 73
    .line 74
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->B2:Landroid/widget/ImageView;

    .line 75
    .line 76
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_close_volume:I

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->B2:Landroid/widget/ImageView;

    .line 83
    .line 84
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_add_volume:I

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 87
    .line 88
    .line 89
    :goto_0
    const/16 p1, 0x64

    .line 90
    .line 91
    if-le p2, p1, :cond_3

    .line 92
    .line 93
    const/16 p2, 0x64

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    if-gez p2, :cond_4

    .line 97
    .line 98
    const/4 p2, 0x0

    .line 99
    :cond_4
    :goto_1
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->A2:Landroid/widget/TextView;

    .line 100
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v1, "%"

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->z2:Landroid/widget/ProgressBar;

    .line 122
    .line 123
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->m0()V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public O(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->O(I)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$string;->tips_not_wifi:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$string;->tips_not_wifi_confirm:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$b;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$b;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$string;->tips_not_wifi_cancel:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$c;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$c;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 60
    .line 61
    .line 62
    new-instance v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$d;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$d;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public X()V
    .locals 1

    .line 1
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->F2:Ljava/util/Timer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->q2:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public Y(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->i:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8
    .line 9
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 10
    .line 11
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->g2:Landroid/widget/ProgressBar;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 18
    .line 19
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 20
    .line 21
    return-void
.end method

.method public Z()V
    .locals 8

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x4

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x4

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x4

    .line 18
    const/4 v7, 0x4

    .line 19
    move-object v0, p0

    .line 20
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p0()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x4

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x4

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x4

    .line 33
    const/4 v7, 0x4

    .line 34
    move-object v0, p0

    .line 35
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p0()V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public a0()V
    .locals 8

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x4

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x4

    .line 18
    const/4 v7, 0x4

    .line 19
    move-object v0, p0

    .line 20
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p0()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x4

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x4

    .line 33
    const/4 v7, 0x4

    .line 34
    move-object v0, p0

    .line 35
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p0()V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public b0()V
    .locals 8

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x4

    .line 13
    const/4 v2, 0x4

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x4

    .line 16
    const/4 v5, 0x4

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x4

    .line 19
    move-object v0, p0

    .line 20
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p0()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v1, 0x4

    .line 28
    const/4 v2, 0x4

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x4

    .line 31
    const/4 v5, 0x4

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v7, 0x4

    .line 34
    move-object v0, p0

    .line 35
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p0()V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public c0()V
    .locals 8

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x4

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x4

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x4

    .line 19
    move-object v0, p0

    .line 20
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p0()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x4

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x4

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v7, 0x4

    .line 34
    move-object v0, p0

    .line 35
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p0()V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public d0()V
    .locals 8

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x4

    .line 13
    const/4 v2, 0x4

    .line 14
    const/4 v3, 0x4

    .line 15
    const/4 v4, 0x4

    .line 16
    const/4 v5, 0x4

    .line 17
    const/4 v6, 0x4

    .line 18
    const/4 v7, 0x4

    .line 19
    move-object v0, p0

    .line 20
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x4

    .line 25
    const/4 v2, 0x4

    .line 26
    const/4 v3, 0x4

    .line 27
    const/4 v4, 0x4

    .line 28
    const/4 v5, 0x4

    .line 29
    const/4 v6, 0x4

    .line 30
    const/4 v7, 0x4

    .line 31
    move-object v0, p0

    .line 32
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public e0()V
    .locals 8

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x4

    .line 16
    const/4 v5, 0x4

    .line 17
    const/4 v6, 0x4

    .line 18
    const/4 v7, 0x4

    .line 19
    move-object v0, p0

    .line 20
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p0()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x4

    .line 31
    const/4 v5, 0x4

    .line 32
    const/4 v6, 0x4

    .line 33
    const/4 v7, 0x4

    .line 34
    move-object v0, p0

    .line 35
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p0()V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public f0()V
    .locals 8

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x4

    .line 13
    const/4 v2, 0x4

    .line 14
    const/4 v3, 0x4

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x4

    .line 17
    const/4 v6, 0x4

    .line 18
    const/4 v7, 0x0

    .line 19
    move-object v0, p0

    .line 20
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p0()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v1, 0x4

    .line 28
    const/4 v2, 0x4

    .line 29
    const/4 v3, 0x4

    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x4

    .line 32
    const/4 v6, 0x4

    .line 33
    const/4 v7, 0x0

    .line 34
    move-object v0, p0

    .line 35
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p0()V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public g0()V
    .locals 8

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x4

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x4

    .line 17
    const/4 v6, 0x4

    .line 18
    const/4 v7, 0x4

    .line 19
    move-object v0, p0

    .line 20
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x4

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x4

    .line 29
    const/4 v6, 0x4

    .line 30
    const/4 v7, 0x4

    .line 31
    move-object v0, p0

    .line 32
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$layout;->jc_layout_standard:I

    .line 2
    .line 3
    return v0
.end method

.method public h0()V
    .locals 8

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x4

    .line 13
    const/4 v2, 0x4

    .line 14
    const/4 v3, 0x4

    .line 15
    const/4 v4, 0x4

    .line 16
    const/4 v5, 0x4

    .line 17
    const/4 v6, 0x4

    .line 18
    const/4 v7, 0x0

    .line 19
    move-object v0, p0

    .line 20
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x4

    .line 25
    const/4 v2, 0x4

    .line 26
    const/4 v3, 0x4

    .line 27
    const/4 v4, 0x4

    .line 28
    const/4 v5, 0x4

    .line 29
    const/4 v6, 0x4

    .line 30
    const/4 v7, 0x0

    .line 31
    move-object v0, p0

    .line 32
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->i()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->C2:Landroid/app/Dialog;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public i0()V
    .locals 8

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x4

    .line 16
    const/4 v5, 0x4

    .line 17
    const/4 v6, 0x4

    .line 18
    const/4 v7, 0x4

    .line 19
    move-object v0, p0

    .line 20
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p0()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x4

    .line 31
    const/4 v5, 0x4

    .line 32
    const/4 v6, 0x4

    .line 33
    const/4 v7, 0x4

    .line 34
    move-object v0, p0

    .line 35
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p0()V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->j()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->t2:Landroid/app/Dialog;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public j0()V
    .locals 8

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x4

    .line 14
    const/4 v3, 0x4

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x4

    .line 19
    move-object v0, p0

    .line 20
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x4

    .line 26
    const/4 v3, 0x4

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x4

    .line 31
    move-object v0, p0

    .line 32
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->k()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->y2:Landroid/app/Dialog;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public k0()V
    .locals 8

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x4

    .line 14
    const/4 v3, 0x4

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x4

    .line 19
    move-object v0, p0

    .line 20
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x4

    .line 26
    const/4 v3, 0x4

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x4

    .line 31
    move-object v0, p0

    .line 32
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public l0(Landroid/view/View;)Landroid/app/Dialog;
    .locals 3

    .line 1
    new-instance v0, Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget v2, Lfm/jiecao/jcvideoplayer_lib/R$style;->jc_style_dialog_progress:I

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 22
    .line 23
    .line 24
    const/16 v1, 0x20

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 27
    .line 28
    .line 29
    const/16 v1, 0x10

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 32
    .line 33
    .line 34
    const/4 v1, -0x2

    .line 35
    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/16 v2, 0x11

    .line 43
    .line 44
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

.method public m(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->m(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lfm/jiecao/jcvideoplayer_lib/R$id;->battery_time_layout:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/widget/LinearLayout;

    .line 11
    .line 12
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->k2:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    sget p1, Lfm/jiecao/jcvideoplayer_lib/R$id;->bottom_progress:I

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/widget/ProgressBar;

    .line 21
    .line 22
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->f2:Landroid/widget/ProgressBar;

    .line 23
    .line 24
    sget p1, Lfm/jiecao/jcvideoplayer_lib/R$id;->title:I

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/widget/TextView;

    .line 31
    .line 32
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->h2:Landroid/widget/TextView;

    .line 33
    .line 34
    sget p1, Lfm/jiecao/jcvideoplayer_lib/R$id;->back:I

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroid/widget/ImageView;

    .line 41
    .line 42
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->e2:Landroid/widget/ImageView;

    .line 43
    .line 44
    sget p1, Lfm/jiecao/jcvideoplayer_lib/R$id;->thumb:I

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroid/widget/ImageView;

    .line 51
    .line 52
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->i2:Landroid/widget/ImageView;

    .line 53
    .line 54
    sget p1, Lfm/jiecao/jcvideoplayer_lib/R$id;->loading:I

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Landroid/widget/ProgressBar;

    .line 61
    .line 62
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->g2:Landroid/widget/ProgressBar;

    .line 63
    .line 64
    sget p1, Lfm/jiecao/jcvideoplayer_lib/R$id;->back_tiny:I

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Landroid/widget/ImageView;

    .line 71
    .line 72
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->j2:Landroid/widget/ImageView;

    .line 73
    .line 74
    sget p1, Lfm/jiecao/jcvideoplayer_lib/R$id;->battery_level:I

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Landroid/widget/ImageView;

    .line 81
    .line 82
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->l2:Landroid/widget/ImageView;

    .line 83
    .line 84
    sget p1, Lfm/jiecao/jcvideoplayer_lib/R$id;->video_current_time:I

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Landroid/widget/TextView;

    .line 91
    .line 92
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->m2:Landroid/widget/TextView;

    .line 93
    .line 94
    sget p1, Lfm/jiecao/jcvideoplayer_lib/R$id;->retry_text:I

    .line 95
    .line 96
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Landroid/widget/TextView;

    .line 101
    .line 102
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->n2:Landroid/widget/TextView;

    .line 103
    .line 104
    sget p1, Lfm/jiecao/jcvideoplayer_lib/R$id;->clarity:I

    .line 105
    .line 106
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Landroid/widget/TextView;

    .line 111
    .line 112
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->o2:Landroid/widget/TextView;

    .line 113
    .line 114
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->i2:Landroid/widget/ImageView;

    .line 115
    .line 116
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->e2:Landroid/widget/ImageView;

    .line 120
    .line 121
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->j2:Landroid/widget/ImageView;

    .line 125
    .line 126
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->o2:Landroid/widget/TextView;

    .line 130
    .line 131
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public m0()V
    .locals 2

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->p:Landroid/view/ViewGroup;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_4

    .line 13
    .line 14
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->j0()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x3

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->p:Landroid/view/ViewGroup;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_4

    .line 28
    .line 29
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->h0()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v1, 0x5

    .line 34
    if-ne v0, v1, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->p:Landroid/view/ViewGroup;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->d0()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 v1, 0x6

    .line 49
    if-ne v0, v1, :cond_3

    .line 50
    .line 51
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->p:Landroid/view/ViewGroup;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_4

    .line 58
    .line 59
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->Z()V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const/4 v1, 0x4

    .line 64
    if-ne v0, v1, :cond_4

    .line 65
    .line 66
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->p:Landroid/view/ViewGroup;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_4

    .line 73
    .line 74
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->f0()V

    .line 75
    .line 76
    .line 77
    :cond_4
    :goto_0
    return-void
.end method

.method public n0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->p:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setSystemTimeAndBattery()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->o2:Landroid/widget/TextView;

    .line 13
    .line 14
    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->F:Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    iget v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->G:I

    .line 17
    .line 18
    invoke-static {v1, v2}, Lfm/jiecao/jcvideoplayer_lib/e;->e(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    if-ne v0, v1, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->p:Landroid/view/ViewGroup;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->j0()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->k0()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setSystemTimeAndBattery()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v1, 0x3

    .line 50
    if-ne v0, v1, :cond_4

    .line 51
    .line 52
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->p:Landroid/view/ViewGroup;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->h0()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->i0()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    const/4 v1, 0x5

    .line 69
    if-ne v0, v1, :cond_6

    .line 70
    .line 71
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->p:Landroid/view/ViewGroup;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_5

    .line 78
    .line 79
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->d0()V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->e0()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_6
    const/4 v1, 0x4

    .line 88
    if-ne v0, v1, :cond_8

    .line 89
    .line 90
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->p:Landroid/view/ViewGroup;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_7

    .line 97
    .line 98
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->f0()V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_7
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->g0()V

    .line 103
    .line 104
    .line 105
    :cond_8
    :goto_0
    return-void
.end method

.method public o0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->X()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Timer;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->F2:Ljava/util/Timer;

    .line 10
    .line 11
    new-instance v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->q2:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;

    .line 17
    .line 18
    sget-object v1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->F2:Ljava/util/Timer;

    .line 19
    .line 20
    const-wide/16 v2, 0x9c4

    .line 21
    .line 22
    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onClick(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->thumb:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-ne p1, v0, :cond_3

    .line 12
    .line 13
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->F:Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->G:I

    .line 16
    .line 17
    invoke-static {p1, v0}, Lfm/jiecao/jcvideoplayer_lib/e;->d(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget v2, Lfm/jiecao/jcvideoplayer_lib/R$string;->no_url:I

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    iget p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 50
    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->F:Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->G:I

    .line 56
    .line 57
    invoke-static {p1, v0}, Lfm/jiecao/jcvideoplayer_lib/e;->d(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string v0, "file"

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    const/16 v0, 0x65

    .line 68
    .line 69
    if-nez p1, :cond_1

    .line 70
    .line 71
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->F:Ljava/util/LinkedHashMap;

    .line 72
    .line 73
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->G:I

    .line 74
    .line 75
    invoke-static {p1, v1}, Lfm/jiecao/jcvideoplayer_lib/e;->d(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const-string v1, "/"

    .line 80
    .line 81
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_1

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p1}, Lfm/jiecao/jcvideoplayer_lib/e;->h(Landroid/content/Context;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_1

    .line 96
    .line 97
    sget-boolean p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->P:Z

    .line 98
    .line 99
    if-nez p1, :cond_1

    .line 100
    .line 101
    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->O(I)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_1
    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->s(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->S()V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_1

    .line 112
    .line 113
    :cond_2
    const/4 v0, 0x6

    .line 114
    if-ne p1, v0, :cond_9

    .line 115
    .line 116
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->n0()V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_1

    .line 120
    .line 121
    :cond_3
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->surface_container:I

    .line 122
    .line 123
    if-ne p1, v0, :cond_4

    .line 124
    .line 125
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->o0()V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_1

    .line 129
    .line 130
    :cond_4
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->back:I

    .line 131
    .line 132
    if-ne p1, v0, :cond_5

    .line 133
    .line 134
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d()Z

    .line 135
    .line 136
    .line 137
    goto/16 :goto_1

    .line 138
    .line 139
    :cond_5
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->back_tiny:I

    .line 140
    .line 141
    if-ne p1, v0, :cond_6

    .line 142
    .line 143
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d()Z

    .line 144
    .line 145
    .line 146
    goto/16 :goto_1

    .line 147
    .line 148
    :cond_6
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->clarity:I

    .line 149
    .line 150
    if-ne p1, v0, :cond_9

    .line 151
    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    const-string v0, "layout_inflater"

    .line 157
    .line 158
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    check-cast p1, Landroid/view/LayoutInflater;

    .line 163
    .line 164
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$layout;->jc_layout_clarity:I

    .line 165
    .line 166
    const/4 v2, 0x0

    .line 167
    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    check-cast p1, Landroid/widget/LinearLayout;

    .line 172
    .line 173
    new-instance v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$a;

    .line 174
    .line 175
    invoke-direct {v0, p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$a;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;Landroid/widget/LinearLayout;)V

    .line 176
    .line 177
    .line 178
    const/4 v3, 0x0

    .line 179
    :goto_0
    iget-object v4, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->F:Ljava/util/LinkedHashMap;

    .line 180
    .line 181
    invoke-virtual {v4}, Ljava/util/AbstractMap;->size()I

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    if-ge v3, v4, :cond_8

    .line 186
    .line 187
    iget-object v4, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->F:Ljava/util/LinkedHashMap;

    .line 188
    .line 189
    invoke-static {v4, v3}, Lfm/jiecao/jcvideoplayer_lib/e;->e(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    sget v6, Lfm/jiecao/jcvideoplayer_lib/R$layout;->jc_layout_clarity_item:I

    .line 198
    .line 199
    invoke-static {v5, v6, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    check-cast v5, Landroid/widget/TextView;

    .line 204
    .line 205
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    .line 207
    .line 208
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    .line 220
    .line 221
    iget v4, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->G:I

    .line 222
    .line 223
    if-ne v3, v4, :cond_7

    .line 224
    .line 225
    const-string v4, "#fff85959"

    .line 226
    .line 227
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    .line 233
    .line 234
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 235
    .line 236
    goto :goto_0

    .line 237
    :cond_8
    new-instance v0, Landroid/widget/PopupWindow;

    .line 238
    .line 239
    const/4 v2, -0x2

    .line 240
    const/4 v3, 0x1

    .line 241
    invoke-direct {v0, p1, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 242
    .line 243
    .line 244
    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p2:Landroid/widget/PopupWindow;

    .line 245
    .line 246
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 247
    .line 248
    .line 249
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p2:Landroid/widget/PopupWindow;

    .line 250
    .line 251
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->o2:Landroid/widget/TextView;

    .line 252
    .line 253
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1, v1, v1}, Landroid/view/View;->measure(II)V

    .line 257
    .line 258
    .line 259
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p2:Landroid/widget/PopupWindow;

    .line 260
    .line 261
    iget-object v4, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->o2:Landroid/widget/TextView;

    .line 262
    .line 263
    const/16 v5, -0x28

    .line 264
    .line 265
    const/16 v6, 0x2e

    .line 266
    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    mul-int/lit8 v0, v0, 0x2

    .line 272
    .line 273
    int-to-float v0, v0

    .line 274
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 275
    .line 276
    .line 277
    move-result v7

    .line 278
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 279
    .line 280
    .line 281
    move-result v8

    .line 282
    invoke-virtual/range {v3 .. v8}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 283
    .line 284
    .line 285
    :cond_9
    :goto_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->X()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->o0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$id;->surface_container:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v0, v1, :cond_3

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eq v0, v2, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->o0()V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->z:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getDuration()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->E:I

    .line 29
    .line 30
    mul-int/lit8 v1, v1, 0x64

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v2, v0

    .line 36
    :goto_0
    div-int/2addr v1, v2

    .line 37
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->f2:Landroid/widget/ProgressBar;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-boolean v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->z:Z

    .line 43
    .line 44
    if-nez v0, :cond_6

    .line 45
    .line 46
    iget-boolean v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->y:Z

    .line 47
    .line 48
    if-nez v0, :cond_6

    .line 49
    .line 50
    const/16 v0, 0x66

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->s(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->n0()V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$id;->bottom_seek_progress:I

    .line 60
    .line 61
    if-ne v0, v1, :cond_6

    .line 62
    .line 63
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    if-eq v0, v2, :cond_4

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->o0()V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_5
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->X()V

    .line 77
    .line 78
    .line 79
    :cond_6
    :goto_1
    invoke-super {p0, p1, p2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    return p1
.end method

.method public p()V
    .locals 0

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->p()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->X()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public p0()V
    .locals 3

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x4

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->i:Landroid/widget/ImageView;

    .line 8
    .line 9
    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_click_pause_selector:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->n2:Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x7

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->i:Landroid/widget/ImageView;

    .line 24
    .line 25
    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_click_error_selector:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->n2:Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x6

    .line 37
    if-ne v0, v1, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->i:Landroid/widget/ImageView;

    .line 40
    .line 41
    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_click_replay_selector:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->n2:Landroid/widget/TextView;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->i:Landroid/widget/ImageView;

    .line 54
    .line 55
    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_click_play_selector:I

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->n2:Landroid/widget/TextView;

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->q()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->X()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p2:Landroid/widget/PopupWindow;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setAllControlsVisible(IIIIIII)V
    .locals 1

    .line 1
    iget-boolean p6, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->b:Z

    .line 2
    .line 3
    if-nez p6, :cond_0

    .line 4
    .line 5
    iget p6, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-eq p6, v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    if-eq p6, v0, :cond_0

    .line 12
    .line 13
    const/4 p5, 0x0

    .line 14
    :cond_0
    iget-object p6, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o:Landroid/view/ViewGroup;

    .line 15
    .line 16
    invoke-virtual {p6, p1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->p:Landroid/view/ViewGroup;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->i:Landroid/widget/ImageView;

    .line 25
    .line 26
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->g2:Landroid/widget/ProgressBar;

    .line 30
    .line 31
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->i2:Landroid/widget/ImageView;

    .line 35
    .line 36
    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->f2:Landroid/widget/ProgressBar;

    .line 40
    .line 41
    invoke-virtual {p1, p7}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public setBufferProgress(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setBufferProgress(I)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->f2:Landroid/widget/ProgressBar;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setProgressAndText(III)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setProgressAndText(III)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->f2:Landroid/widget/ProgressBar;

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setSystemTimeAndBattery()V
    .locals 4

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "HH:mm"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/Date;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->m2:Landroid/widget/TextView;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->r2:Z

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->s2:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    new-instance v2, Landroid/content/IntentFilter;

    .line 33
    .line 34
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    .line 35
    .line 36
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public varargs setUp(Ljava/util/LinkedHashMap;II[Ljava/lang/Object;)V
    .locals 11

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setUp(Ljava/util/LinkedHashMap;II[Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    array-length p2, p4

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->h2:Landroid/widget/TextView;

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    aget-object p4, p4, p3

    .line 12
    .line 13
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p4

    .line 17
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    iget p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 21
    .line 22
    const/4 p4, 0x2

    .line 23
    const/4 v0, 0x1

    .line 24
    const/4 v1, 0x4

    .line 25
    const/16 v2, 0x8

    .line 26
    .line 27
    if-ne p2, p4, :cond_2

    .line 28
    .line 29
    iget-object p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->k:Landroid/widget/ImageView;

    .line 30
    .line 31
    sget p4, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_shrink:I

    .line 32
    .line 33
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->e2:Landroid/widget/ImageView;

    .line 37
    .line 38
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->j2:Landroid/widget/ImageView;

    .line 42
    .line 43
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->k2:Landroid/widget/LinearLayout;

    .line 47
    .line 48
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-ne p2, v0, :cond_1

    .line 56
    .line 57
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->o2:Landroid/widget/TextView;

    .line 58
    .line 59
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->o2:Landroid/widget/TextView;

    .line 64
    .line 65
    iget p4, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->G:I

    .line 66
    .line 67
    invoke-static {p1, p4}, Lfm/jiecao/jcvideoplayer_lib/e;->e(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->o2:Landroid/widget/TextView;

    .line 75
    .line 76
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    sget p2, Lfm/jiecao/jcvideoplayer_lib/R$dimen;->jc_start_button_w_h_fullscreen:I

    .line 84
    .line 85
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    float-to-int p1, p1

    .line 90
    invoke-virtual {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->Y(I)V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    if-eqz p2, :cond_4

    .line 95
    .line 96
    if-ne p2, v0, :cond_3

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    const/4 p1, 0x3

    .line 100
    if-ne p2, p1, :cond_5

    .line 101
    .line 102
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->j2:Landroid/widget/ImageView;

    .line 103
    .line 104
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    const/4 v4, 0x4

    .line 108
    const/4 v5, 0x4

    .line 109
    const/4 v6, 0x4

    .line 110
    const/4 v7, 0x4

    .line 111
    const/4 v8, 0x4

    .line 112
    const/4 v9, 0x4

    .line 113
    const/4 v10, 0x4

    .line 114
    move-object v3, p0

    .line 115
    invoke-virtual/range {v3 .. v10}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->k2:Landroid/widget/LinearLayout;

    .line 119
    .line 120
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->o2:Landroid/widget/TextView;

    .line 124
    .line 125
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_4
    :goto_1
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->k:Landroid/widget/ImageView;

    .line 130
    .line 131
    sget p2, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_enlarge:I

    .line 132
    .line 133
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->e2:Landroid/widget/ImageView;

    .line 137
    .line 138
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->j2:Landroid/widget/ImageView;

    .line 142
    .line 143
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    sget p2, Lfm/jiecao/jcvideoplayer_lib/R$dimen;->jc_start_button_w_h_normal:I

    .line 151
    .line 152
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    float-to-int p1, p1

    .line 157
    invoke-virtual {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->Y(I)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->k2:Landroid/widget/LinearLayout;

    .line 161
    .line 162
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->o2:Landroid/widget/TextView;

    .line 166
    .line 167
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 168
    .line 169
    .line 170
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setSystemTimeAndBattery()V

    .line 171
    .line 172
    .line 173
    return-void
.end method

.method public v()V
    .locals 2

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->v()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->Z()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->X()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->f2:Landroid/widget/ProgressBar;

    .line 11
    .line 12
    const/16 v1, 0x64

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public w()V
    .locals 0

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->w()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->b0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public x()V
    .locals 0

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->x()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->c0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public y()V
    .locals 0

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->y()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->e0()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->X()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public z()V
    .locals 0

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->z()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->g0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

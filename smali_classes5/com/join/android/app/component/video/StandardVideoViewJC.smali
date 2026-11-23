.class public Lcom/join/android/app/component/video/StandardVideoViewJC;
.super Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/component/video/StandardVideoViewJC$e;
    }
.end annotation


# static fields
.field protected static T2:Ljava/util/Timer; = null

.field public static U2:Z = true

.field private static V2:Z = true


# instance fields
.field protected A2:Landroid/app/Dialog;

.field protected B2:Landroid/widget/ProgressBar;

.field protected C2:Landroid/widget/TextView;

.field private D2:Z

.field private E2:Landroid/content/BroadcastReceiver;

.field F2:Lcom/facebook/drawee/view/SimpleDraweeView;

.field G2:Landroid/view/View;

.field H2:Landroid/view/View;

.field I2:Landroid/widget/TextView;

.field J2:I

.field K2:J

.field public L2:Landroid/widget/ImageView;

.field protected M2:Landroid/widget/ImageView;

.field protected N2:Z

.field private O2:Z

.field private P2:Landroid/os/Handler;

.field Q2:Lcom/join/mgps/customview/t;

.field private final R2:I

.field public S2:Ljava/lang/String;

.field public e2:Landroid/widget/ImageView;

.field public f2:Landroid/widget/ProgressBar;

.field public g2:Landroid/widget/ProgressBar;

.field public h2:Landroid/widget/TextView;

.field public i2:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public j2:Landroid/widget/ImageView;

.field public k2:Landroid/widget/LinearLayout;

.field public l2:Landroid/widget/ImageView;

.field public m2:Landroid/widget/TextView;

.field public n2:Landroid/widget/TextView;

.field public o2:Landroid/widget/TextView;

.field public p2:Landroid/widget/PopupWindow;

.field protected q2:Lcom/join/android/app/component/video/StandardVideoViewJC$e;

.field protected r2:Landroid/app/Dialog;

.field protected s2:Landroid/widget/ProgressBar;

.field protected t2:Landroid/widget/TextView;

.field protected u2:Landroid/widget/TextView;

.field protected v2:Landroid/widget/ImageView;

.field protected w2:Landroid/app/Dialog;

.field protected x2:Landroid/widget/ProgressBar;

.field protected y2:Landroid/widget/TextView;

.field protected z2:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->D2:Z

    .line 3
    new-instance v0, Lcom/join/android/app/component/video/StandardVideoViewJC$1;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/StandardVideoViewJC$1;-><init>(Lcom/join/android/app/component/video/StandardVideoViewJC;)V

    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->E2:Landroid/content/BroadcastReceiver;

    .line 4
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->N2:Z

    .line 5
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->O2:Z

    .line 6
    new-instance p1, Lcom/join/android/app/component/video/StandardVideoViewJC$b;

    invoke-direct {p1, p0}, Lcom/join/android/app/component/video/StandardVideoViewJC$b;-><init>(Lcom/join/android/app/component/video/StandardVideoViewJC;)V

    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->P2:Landroid/os/Handler;

    const/16 p1, 0xd

    .line 7
    iput p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->R2:I

    const-string p1, ""

    .line 8
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->S2:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->D2:Z

    .line 11
    new-instance p2, Lcom/join/android/app/component/video/StandardVideoViewJC$1;

    invoke-direct {p2, p0}, Lcom/join/android/app/component/video/StandardVideoViewJC$1;-><init>(Lcom/join/android/app/component/video/StandardVideoViewJC;)V

    iput-object p2, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->E2:Landroid/content/BroadcastReceiver;

    .line 12
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->N2:Z

    .line 13
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->O2:Z

    .line 14
    new-instance p1, Lcom/join/android/app/component/video/StandardVideoViewJC$b;

    invoke-direct {p1, p0}, Lcom/join/android/app/component/video/StandardVideoViewJC$b;-><init>(Lcom/join/android/app/component/video/StandardVideoViewJC;)V

    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->P2:Landroid/os/Handler;

    const/16 p1, 0xd

    .line 15
    iput p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->R2:I

    const-string p1, ""

    .line 16
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->S2:Ljava/lang/String;

    return-void
.end method

.method static synthetic V(Lcom/join/android/app/component/video/StandardVideoViewJC;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->E2:Landroid/content/BroadcastReceiver;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic W(Lcom/join/android/app/component/video/StandardVideoViewJC;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->D2:Z

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public A()V
    .locals 2

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->A()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->j0()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->r0()V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->O2:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v0, "JieCaoVideoPlayer,setUiWitStateAndScreen--> currentState=3"

    .line 15
    .line 16
    filled-new-array {v0}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setMute(Z)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->O2:Z

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v1, "JieCaoVideoPlayer,setUiWitStateAndScreen--> currentState=3, mute="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    sget-boolean v1, Lcom/join/android/app/component/video/StandardVideoViewJC;->U2:Z

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    filled-new-array {v0}, [Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sget-boolean v0, Lcom/join/android/app/component/video/StandardVideoViewJC;->U2:Z

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setMute(Z)V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method

.method public B()V
    .locals 0

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->B()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->l0()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->r0()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public C(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "urlMapIndex",
            "seekToInAdvance"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->C(II)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->g2:Landroid/widget/ProgressBar;

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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->r0()V

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
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->f2:Landroid/widget/ProgressBar;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->f2:Landroid/widget/ProgressBar;

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightnessPercent"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->K(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->A2:Landroid/app/Dialog;

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
    const v1, 0x7f0d04c0

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const v1, 0x7f0a192c

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/widget/TextView;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->C2:Landroid/widget/TextView;

    .line 34
    .line 35
    const v1, 0x7f0a0246

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/widget/ProgressBar;

    .line 43
    .line 44
    iput-object v1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->B2:Landroid/widget/ProgressBar;

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->m0(Landroid/view/View;)Landroid/app/Dialog;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->A2:Landroid/app/Dialog;

    .line 51
    .line 52
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->A2:Landroid/app/Dialog;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->A2:Landroid/app/Dialog;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 63
    .line 64
    .line 65
    :cond_1
    const/16 v0, 0x64

    .line 66
    .line 67
    if-le p1, v0, :cond_2

    .line 68
    .line 69
    const/16 p1, 0x64

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    if-gez p1, :cond_3

    .line 73
    .line 74
    const/4 p1, 0x0

    .line 75
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->C2:Landroid/widget/TextView;

    .line 76
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v2, "%"

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->B2:Landroid/widget/ProgressBar;

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->o0()V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public L(FLjava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "deltaX",
            "seekTime",
            "seekTimePosition",
            "totalTime",
            "totalTimeDuration"
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p5}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->L(FLjava/lang/String;ILjava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->r2:Landroid/app/Dialog;

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
    const v1, 0x7f0d04c1

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const v1, 0x7f0a054b

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/widget/ProgressBar;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->s2:Landroid/widget/ProgressBar;

    .line 34
    .line 35
    const v1, 0x7f0a1948

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/widget/TextView;

    .line 43
    .line 44
    iput-object v1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->t2:Landroid/widget/TextView;

    .line 45
    .line 46
    const v1, 0x7f0a1960

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroid/widget/TextView;

    .line 54
    .line 55
    iput-object v1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->u2:Landroid/widget/TextView;

    .line 56
    .line 57
    const v1, 0x7f0a054a

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Landroid/widget/ImageView;

    .line 65
    .line 66
    iput-object v1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->v2:Landroid/widget/ImageView;

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->m0(Landroid/view/View;)Landroid/app/Dialog;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->r2:Landroid/app/Dialog;

    .line 73
    .line 74
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->r2:Landroid/app/Dialog;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_1

    .line 81
    .line 82
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->r2:Landroid/app/Dialog;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 85
    .line 86
    .line 87
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->t2:Landroid/widget/TextView;

    .line 88
    .line 89
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    iget-object p2, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->u2:Landroid/widget/TextView;

    .line 93
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v1, " / "

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p4

    .line 111
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    iget-object p2, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->s2:Landroid/widget/ProgressBar;

    .line 115
    .line 116
    if-gtz p5, :cond_2

    .line 117
    .line 118
    const/4 p3, 0x0

    .line 119
    goto :goto_0

    .line 120
    :cond_2
    mul-int/lit8 p3, p3, 0x64

    .line 121
    .line 122
    div-int/2addr p3, p5

    .line 123
    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 124
    .line 125
    .line 126
    const/4 p2, 0x0

    .line 127
    cmpl-float p1, p1, p2

    .line 128
    .line 129
    if-lez p1, :cond_3

    .line 130
    .line 131
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->v2:Landroid/widget/ImageView;

    .line 132
    .line 133
    const p2, 0x7f080b30

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_3
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->v2:Landroid/widget/ImageView;

    .line 141
    .line 142
    const p2, 0x7f080b16

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 146
    .line 147
    .line 148
    :goto_1
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->o0()V

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method public N(FI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "deltaY",
            "volumePercent"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->N(FI)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->w2:Landroid/app/Dialog;

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
    const v0, 0x7f0d04c2

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const v0, 0x7f0a1bc1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/ImageView;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->z2:Landroid/widget/ImageView;

    .line 34
    .line 35
    const v0, 0x7f0a1a6d

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/TextView;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->y2:Landroid/widget/TextView;

    .line 45
    .line 46
    const v0, 0x7f0a1bc2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/widget/ProgressBar;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->x2:Landroid/widget/ProgressBar;

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/StandardVideoViewJC;->m0(Landroid/view/View;)Landroid/app/Dialog;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->w2:Landroid/app/Dialog;

    .line 62
    .line 63
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->w2:Landroid/app/Dialog;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_1

    .line 70
    .line 71
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->w2:Landroid/app/Dialog;

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 74
    .line 75
    .line 76
    :cond_1
    if-gtz p2, :cond_2

    .line 77
    .line 78
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->z2:Landroid/widget/ImageView;

    .line 79
    .line 80
    const v0, 0x7f080b2a

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->z2:Landroid/widget/ImageView;

    .line 88
    .line 89
    const v0, 0x7f080b11

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 93
    .line 94
    .line 95
    :goto_0
    const/16 p1, 0x64

    .line 96
    .line 97
    if-le p2, p1, :cond_3

    .line 98
    .line 99
    const/16 p2, 0x64

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    if-gez p2, :cond_4

    .line 103
    .line 104
    const/4 p2, 0x0

    .line 105
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->y2:Landroid/widget/TextView;

    .line 106
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v1, "%"

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->x2:Landroid/widget/ProgressBar;

    .line 128
    .line 129
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->o0()V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method public O(I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    iget p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/b;->b()Lfm/jiecao/jcvideoplayer_lib/b;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->y()V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->Q2:Lcom/join/mgps/customview/t;

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    new-instance p1, Lcom/join/mgps/customview/t;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const v1, 0x7f1301b0

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, v0, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->Q2:Lcom/join/mgps/customview/t;

    .line 38
    .line 39
    const v0, 0x7f0d00fc

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->Q2:Lcom/join/mgps/customview/t;

    .line 46
    .line 47
    const v0, 0x7f0a04b1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Landroid/widget/Button;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->Q2:Lcom/join/mgps/customview/t;

    .line 57
    .line 58
    const v1, 0x7f0a04b8

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Landroid/widget/Button;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->Q2:Lcom/join/mgps/customview/t;

    .line 68
    .line 69
    const v2, 0x7f0a1762

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Landroid/widget/TextView;

    .line 77
    .line 78
    iget-object v2, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->Q2:Lcom/join/mgps/customview/t;

    .line 79
    .line 80
    const v3, 0x7f0a04e1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    iget-object v3, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->Q2:Lcom/join/mgps/customview/t;

    .line 88
    .line 89
    const v4, 0x7f0a04bb

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Landroid/widget/TextView;

    .line 97
    .line 98
    iget-object v4, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->Q2:Lcom/join/mgps/customview/t;

    .line 99
    .line 100
    const v5, 0x7f0a04bd

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    check-cast v4, Landroid/widget/TextView;

    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    const v6, 0x7f1204e1

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    const v6, 0x7f1204e0

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    const v6, 0x7f1204df

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-static {v5}, Lcom/join/mgps/Util/s1;->b(Landroid/content/Context;)I

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    const/16 v6, 0x8

    .line 148
    .line 149
    if-nez v5, :cond_2

    .line 150
    .line 151
    const/4 v7, 0x0

    .line 152
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_2
    const/4 v7, 0x1

    .line 160
    if-ne v5, v7, :cond_3

    .line 161
    .line 162
    :goto_0
    const-string v2, "\u7ee7\u7eed\u89c2\u770b"

    .line 163
    .line 164
    const-string v7, "\u60a8\u5df2\u5207\u6362\u5230\u6570\u636e\u7f51\u7edc\uff0c\u662f\u5426\u7ee7\u7eed\u89c2\u770b\u89c6\u9891\uff1f"

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_3
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    const v7, 0x7f12033f

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    const-string v2, "\u5173\u95ed"

    .line 185
    .line 186
    :goto_1
    const-string v8, "\u7f51\u7edc\u63d0\u793a"

    .line 187
    .line 188
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    .line 199
    .line 200
    const-string v1, "\u53d6\u6d88"

    .line 201
    .line 202
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    .line 204
    .line 205
    new-instance v1, Lcom/join/android/app/component/video/StandardVideoViewJC$c;

    .line 206
    .line 207
    invoke-direct {v1, p0, v5}, Lcom/join/android/app/component/video/StandardVideoViewJC$c;-><init>(Lcom/join/android/app/component/video/StandardVideoViewJC;I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    .line 212
    .line 213
    new-instance v0, Lcom/join/android/app/component/video/StandardVideoViewJC$d;

    .line 214
    .line 215
    invoke-direct {v0, p0, v5}, Lcom/join/android/app/component/video/StandardVideoViewJC$d;-><init>(Lcom/join/android/app/component/video/StandardVideoViewJC;I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    .line 220
    .line 221
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->Q2:Lcom/join/mgps/customview/t;

    .line 222
    .line 223
    if-eqz p1, :cond_4

    .line 224
    .line 225
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    if-nez p1, :cond_4

    .line 230
    .line 231
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->Q2:Lcom/join/mgps/customview/t;

    .line 232
    .line 233
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 234
    .line 235
    .line 236
    :cond_4
    return-void
.end method

.method public T()V
    .locals 1

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->T()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->p:Landroid/view/ViewGroup;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->i0()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public X()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->e()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eq v0, v2, :cond_1

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    if-eq v0, v3, :cond_0

    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    return v1

    .line 22
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/k;->i(Landroid/content/Context;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    return v2

    .line 33
    :cond_2
    return v1
.end method

.method public Y()V
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/component/video/StandardVideoViewJC;->T2:Ljava/util/Timer;

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
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->q2:Lcom/join/android/app/component/video/StandardVideoViewJC$e;

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

.method public Z(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

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
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->g2:Landroid/widget/ProgressBar;

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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s0()V

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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s0()V

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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s0()V

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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s0()V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->G2:Landroid/view/View;

    .line 42
    .line 43
    const/4 v1, 0x4

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s0()V

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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s0()V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public d0()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->r0()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x4

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x4

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x4

    .line 22
    move-object v0, p0

    .line 23
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s0()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    const/4 v2, 0x4

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x4

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x4

    .line 37
    move-object v0, p0

    .line 38
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s0()V

    .line 42
    .line 43
    .line 44
    :goto_0
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->H2:Landroid/view/View;

    .line 45
    .line 46
    const/4 v1, 0x4

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->G2:Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 33
    .line 34
    .line 35
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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s0()V

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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s0()V

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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s0()V

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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s0()V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->S2:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    :goto_0
    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0863

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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

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
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->A2:Landroid/app/Dialog;

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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 33
    .line 34
    .line 35
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
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->r2:Landroid/app/Dialog;

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
    .locals 10

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
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x4

    .line 14
    const/4 v5, 0x4

    .line 15
    const/4 v6, 0x4

    .line 16
    const/4 v7, 0x4

    .line 17
    const/4 v8, 0x4

    .line 18
    const/4 v9, 0x4

    .line 19
    move-object v2, p0

    .line 20
    invoke-virtual/range {v2 .. v9}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s0()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->G2:Landroid/view/View;

    .line 27
    .line 28
    const/4 v1, 0x4

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->i:Landroid/widget/ImageView;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v3, 0x0

    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    const/4 v6, 0x4

    .line 42
    const/4 v7, 0x4

    .line 43
    const/4 v8, 0x4

    .line 44
    const/4 v9, 0x4

    .line 45
    move-object v2, p0

    .line 46
    invoke-virtual/range {v2 .. v9}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s0()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->G2:Landroid/view/View;

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->i2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 59
    .line 60
    const/16 v1, 0x8

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
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
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->w2:Landroid/app/Dialog;

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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public l0()V
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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->H2:Landroid/view/View;

    .line 36
    .line 37
    const/4 v1, 0x4

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public m(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->m(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x6

    .line 5
    sput p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->M:I

    .line 6
    .line 7
    const p1, 0x7f0a0166

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/widget/LinearLayout;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->k2:Landroid/widget/LinearLayout;

    .line 17
    .line 18
    const p1, 0x7f0a0220

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/widget/ProgressBar;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->f2:Landroid/widget/ProgressBar;

    .line 28
    .line 29
    const p1, 0x7f0a1767

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroid/widget/TextView;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->h2:Landroid/widget/TextView;

    .line 39
    .line 40
    const p1, 0x7f0a013b

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroid/widget/ImageView;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->e2:Landroid/widget/ImageView;

    .line 50
    .line 51
    const p1, 0x7f0a1746

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 59
    .line 60
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->i2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 61
    .line 62
    const p1, 0x7f0a0f64

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Landroid/widget/ProgressBar;

    .line 70
    .line 71
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->g2:Landroid/widget/ProgressBar;

    .line 72
    .line 73
    const p1, 0x7f0a0151

    .line 74
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
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->j2:Landroid/widget/ImageView;

    .line 83
    .line 84
    const p1, 0x7f0a0165

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Landroid/widget/ImageView;

    .line 92
    .line 93
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->l2:Landroid/widget/ImageView;

    .line 94
    .line 95
    const p1, 0x7f0a1b6e

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Landroid/widget/TextView;

    .line 103
    .line 104
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->m2:Landroid/widget/TextView;

    .line 105
    .line 106
    const p1, 0x7f0a1384

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Landroid/widget/TextView;

    .line 114
    .line 115
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->n2:Landroid/widget/TextView;

    .line 116
    .line 117
    const p1, 0x7f0a0394

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Landroid/widget/TextView;

    .line 125
    .line 126
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->o2:Landroid/widget/TextView;

    .line 127
    .line 128
    const p1, 0x7f0a0f67

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 136
    .line 137
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->F2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 138
    .line 139
    const p1, 0x7f0a12ac

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    check-cast p1, Landroid/widget/TextView;

    .line 147
    .line 148
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->I2:Landroid/widget/TextView;

    .line 149
    .line 150
    const/4 p1, 0x1

    .line 151
    sput-boolean p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->P:Z

    .line 152
    .line 153
    const p1, 0x7f0a058f

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    check-cast p1, Lcom/join/mgps/customview/EqualizerView;

    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/join/mgps/customview/EqualizerView;->a()V

    .line 163
    .line 164
    .line 165
    const p1, 0x7f0a0e1e

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->G2:Landroid/view/View;

    .line 173
    .line 174
    const p1, 0x7f0a125b

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->H2:Landroid/view/View;

    .line 182
    .line 183
    new-instance v0, Lcom/join/android/app/component/video/StandardVideoViewJC$a;

    .line 184
    .line 185
    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/StandardVideoViewJC$a;-><init>(Lcom/join/android/app/component/video/StandardVideoViewJC;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    .line 190
    .line 191
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->F2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 192
    .line 193
    const-string v0, "res:///2131235672"

    .line 194
    .line 195
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/l;->n(Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/net/Uri;)V

    .line 200
    .line 201
    .line 202
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->i2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 203
    .line 204
    if-eqz p1, :cond_0

    .line 205
    .line 206
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    .line 208
    .line 209
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->e2:Landroid/widget/ImageView;

    .line 210
    .line 211
    if-eqz p1, :cond_1

    .line 212
    .line 213
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    .line 215
    .line 216
    :cond_1
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->j2:Landroid/widget/ImageView;

    .line 217
    .line 218
    if-eqz p1, :cond_2

    .line 219
    .line 220
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    .line 222
    .line 223
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->o2:Landroid/widget/TextView;

    .line 224
    .line 225
    if-eqz p1, :cond_3

    .line 226
    .line 227
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    .line 229
    .line 230
    :cond_3
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->n0()V

    .line 231
    .line 232
    .line 233
    return-void
.end method

.method public m0(Landroid/view/View;)Landroid/app/Dialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localView"
        }
    .end annotation

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
    const v2, 0x7f13056e

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x20

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 28
    .line 29
    .line 30
    const/16 v1, 0x10

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 33
    .line 34
    .line 35
    const/4 v1, -0x2

    .line 36
    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/16 v2, 0x11

    .line 44
    .line 45
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 48
    .line 49
    .line 50
    return-object v0
.end method

.method n0()V
    .locals 2

    .line 1
    const v0, 0x7f0a10c6

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/ImageView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->L2:Landroid/widget/ImageView;

    .line 11
    .line 12
    const v0, 0x7f0a0130

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/ImageView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->M2:Landroid/widget/ImageView;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->L2:Landroid/widget/ImageView;

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->M2:Landroid/widget/ImageView;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    sget-boolean v0, Lcom/join/android/app/component/video/StandardVideoViewJC;->U2:Z

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setMuteView(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->M2:Landroid/widget/ImageView;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/join/mgps/pref/h;->a()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public o0()V
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
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->k0()V

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
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->i0()V

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
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->e0()V

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
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->a0()V

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
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->g0()V

    .line 75
    .line 76
    .line 77
    :cond_4
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7f0a06d5

    .line 6
    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    const/4 v4, 0x1

    .line 12
    const/16 v5, 0xa

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 17
    .line 18
    if-ne v1, v3, :cond_0

    .line 19
    .line 20
    const/16 v6, 0x8

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/16 v6, 0xa

    .line 24
    .line 25
    :goto_0
    sget-object v7, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->V1:Lfm/jiecao/jcvideoplayer_lib/c;

    .line 26
    .line 27
    if-eqz v7, :cond_3

    .line 28
    .line 29
    iget-object v8, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->S2:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v9, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->g:[Ljava/lang/Object;

    .line 32
    .line 33
    invoke-interface {v7, v6, v8, v1, v9}, Lfm/jiecao/jcvideoplayer_lib/c;->a(ILjava/lang/String;I[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    const v1, 0x7f0a0130

    .line 38
    .line 39
    .line 40
    if-ne v0, v1, :cond_3

    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->M2:Landroid/widget/ImageView;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    xor-int/2addr v1, v4

    .line 49
    iget-object v6, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->M2:Landroid/widget/ImageView;

    .line 50
    .line 51
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-static {v6}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v6, v1}, Lcom/join/mgps/pref/h;->P(Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-static {v6}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    const-string v1, "\u5df2\u5f00\u542fWiFi\u4e0b\u81ea\u52a8\u64ad\u653e"

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    const-string v1, "\u5df2\u5173\u95edWiFi\u4e0b\u81ea\u52a8\u64ad\u653e"

    .line 79
    .line 80
    :goto_1
    invoke-virtual {v6, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    :goto_2
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onClick(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    const p1, 0x7f0a1746

    .line 87
    .line 88
    .line 89
    if-ne v0, p1, :cond_7

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->getCurrentUrl()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_4

    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const v1, 0x7f120357

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const/4 v1, 0x0

    .line 117
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_4
    iget p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 126
    .line 127
    if-nez p1, :cond_5

    .line 128
    .line 129
    const/16 p1, 0x65

    .line 130
    .line 131
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->S()V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_4

    .line 138
    .line 139
    :cond_5
    const/4 v0, 0x6

    .line 140
    if-ne p1, v0, :cond_6

    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->p0()V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_4

    .line 146
    .line 147
    :cond_6
    if-ne p1, v4, :cond_f

    .line 148
    .line 149
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->i2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 150
    .line 151
    const/4 v0, 0x4

    .line 152
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->k:Landroid/widget/ImageView;

    .line 156
    .line 157
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 158
    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_7
    const p1, 0x7f0a164e

    .line 162
    .line 163
    .line 164
    if-ne v0, p1, :cond_8

    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->r0()V

    .line 167
    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_8
    const p1, 0x7f0a013b

    .line 171
    .line 172
    .line 173
    if-ne v0, p1, :cond_b

    .line 174
    .line 175
    iget p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 176
    .line 177
    if-ne p1, v3, :cond_9

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_9
    const/16 v2, 0xa

    .line 181
    .line 182
    :goto_3
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->V1:Lfm/jiecao/jcvideoplayer_lib/c;

    .line 183
    .line 184
    if-eqz v0, :cond_a

    .line 185
    .line 186
    iget-object v1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->S2:Ljava/lang/String;

    .line 187
    .line 188
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->g:[Ljava/lang/Object;

    .line 189
    .line 190
    invoke-interface {v0, v2, v1, p1, v3}, Lfm/jiecao/jcvideoplayer_lib/c;->a(ILjava/lang/String;I[Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_a
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d()Z

    .line 194
    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_b
    const p1, 0x7f0a0151

    .line 198
    .line 199
    .line 200
    if-ne v0, p1, :cond_d

    .line 201
    .line 202
    sget-object p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->V1:Lfm/jiecao/jcvideoplayer_lib/c;

    .line 203
    .line 204
    if-eqz p1, :cond_c

    .line 205
    .line 206
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->S2:Ljava/lang/String;

    .line 207
    .line 208
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 209
    .line 210
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->g:[Ljava/lang/Object;

    .line 211
    .line 212
    invoke-interface {p1, v5, v0, v1, v2}, Lfm/jiecao/jcvideoplayer_lib/c;->a(ILjava/lang/String;I[Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    :cond_c
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d()Z

    .line 216
    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_d
    const p1, 0x7f0a0394

    .line 220
    .line 221
    .line 222
    if-ne v0, p1, :cond_e

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_e
    const p1, 0x7f0a10c6

    .line 226
    .line 227
    .line 228
    if-ne v0, p1, :cond_f

    .line 229
    .line 230
    new-instance p1, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    const-string v0, "JieCaoVideoPlayer,onClick-mute--> mute="

    .line 236
    .line 237
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    sget-boolean v0, Lcom/join/android/app/component/video/StandardVideoViewJC;->U2:Z

    .line 241
    .line 242
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    filled-new-array {p1}, [Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    sget-boolean p1, Lcom/join/android/app/component/video/StandardVideoViewJC;->U2:Z

    .line 257
    .line 258
    xor-int/2addr p1, v4

    .line 259
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setMute(Z)V

    .line 260
    .line 261
    .line 262
    :cond_f
    :goto_4
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekBar"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->Y()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekBar"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->r0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7f0a164e

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v1, :cond_3

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eq v0, v2, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->r0()V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->z:Z

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getDuration()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->E:I

    .line 30
    .line 31
    mul-int/lit8 v1, v1, 0x64

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v2, v0

    .line 37
    :goto_0
    div-int/2addr v1, v2

    .line 38
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->f2:Landroid/widget/ProgressBar;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-boolean v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->z:Z

    .line 44
    .line 45
    if-nez v0, :cond_6

    .line 46
    .line 47
    iget-boolean v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->y:Z

    .line 48
    .line 49
    if-nez v0, :cond_6

    .line 50
    .line 51
    const/16 v0, 0x66

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->p0()V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    const v1, 0x7f0a0222

    .line 61
    .line 62
    .line 63
    if-ne v0, v1, :cond_6

    .line 64
    .line 65
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    if-eq v0, v2, :cond_4

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->r0()V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->Y()V

    .line 79
    .line 80
    .line 81
    :cond_6
    :goto_1
    invoke-super {p0, p1, p2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    return p1
.end method

.method public p()V
    .locals 0

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->p()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->Y()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public p0()V
    .locals 12

    .line 1
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->p:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->p:Landroid/view/ViewGroup;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->k0()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->l0()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setSystemTimeAndBattery()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v2, 0x3

    .line 31
    const/4 v3, 0x4

    .line 32
    if-ne v0, v2, :cond_5

    .line 33
    .line 34
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->p:Landroid/view/ViewGroup;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->i0()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    if-eq v0, v1, :cond_4

    .line 51
    .line 52
    const/4 v1, 0x2

    .line 53
    if-eq v0, v1, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const/4 v5, 0x0

    .line 57
    const/4 v6, 0x0

    .line 58
    const/4 v7, 0x0

    .line 59
    const/4 v8, 0x4

    .line 60
    const/4 v9, 0x4

    .line 61
    const/4 v10, 0x4

    .line 62
    const/4 v11, 0x4

    .line 63
    move-object v4, p0

    .line 64
    invoke-virtual/range {v4 .. v11}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s0()V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->G2:Landroid/view/View;

    .line 71
    .line 72
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->k:Landroid/widget/ImageView;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    const/4 v1, 0x5

    .line 83
    if-ne v0, v1, :cond_7

    .line 84
    .line 85
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->p:Landroid/view/ViewGroup;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_6

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->e0()V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_6
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->f0()V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_7
    if-ne v0, v3, :cond_9

    .line 102
    .line 103
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->p:Landroid/view/ViewGroup;

    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_8

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->g0()V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_8
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->h0()V

    .line 116
    .line 117
    .line 118
    :cond_9
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
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->Y()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->p2:Landroid/widget/PopupWindow;

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

.method public q0(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 1
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->V1:Lfm/jiecao/jcvideoplayer_lib/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->V1:Lfm/jiecao/jcvideoplayer_lib/c;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->S2:Ljava/lang/String;

    .line 14
    .line 15
    iget v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    new-array v3, v3, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    aput-object p1, v3, v4

    .line 26
    .line 27
    const/16 p1, 0xd

    .line 28
    .line 29
    invoke-interface {v0, p1, v1, v2, v3}, Lfm/jiecao/jcvideoplayer_lib/c;->a(ILjava/lang/String;I[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public r0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->Y()V

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
    sput-object v0, Lcom/join/android/app/component/video/StandardVideoViewJC;->T2:Ljava/util/Timer;

    .line 10
    .line 11
    new-instance v0, Lcom/join/android/app/component/video/StandardVideoViewJC$e;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/StandardVideoViewJC$e;-><init>(Lcom/join/android/app/component/video/StandardVideoViewJC;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->q2:Lcom/join/android/app/component/video/StandardVideoViewJC$e;

    .line 17
    .line 18
    sget-object v1, Lcom/join/android/app/component/video/StandardVideoViewJC;->T2:Ljava/util/Timer;

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

.method public s(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->s(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eq p1, v0, :cond_2

    .line 7
    .line 8
    const/16 v0, 0xa

    .line 9
    .line 10
    const/16 v2, 0x8

    .line 11
    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x7

    .line 15
    if-eq p1, v0, :cond_0

    .line 16
    .line 17
    if-eq p1, v2, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v0, "JieCaoVideoPlayer,onEvent-ON_ENTER_FULLSCREEN--> mute="

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    sget-boolean v0, Lcom/join/android/app/component/video/StandardVideoViewJC;->U2:Z

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    filled-new-array {p1}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-boolean p1, Lcom/join/android/app/component/video/StandardVideoViewJC;->U2:Z

    .line 47
    .line 48
    sput-boolean p1, Lcom/join/android/app/component/video/StandardVideoViewJC;->V2:Z

    .line 49
    .line 50
    invoke-virtual {p0, v1}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setMute(Z)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v0, "JieCaoVideoPlayer,onEvent-ON_QUIT_FULLSCREEN--> mute="

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    sget-boolean v0, Lcom/join/android/app/component/video/StandardVideoViewJC;->U2:Z

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    filled-new-array {p1}, [Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    sget-boolean p1, Lcom/join/android/app/component/video/StandardVideoViewJC;->V2:Z

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setMute(Z)V

    .line 83
    .line 84
    .line 85
    iget p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 86
    .line 87
    const/4 v0, 0x3

    .line 88
    if-ne p1, v0, :cond_3

    .line 89
    .line 90
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->i2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 91
    .line 92
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    iget-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->O2:Z

    .line 97
    .line 98
    if-eqz p1, :cond_3

    .line 99
    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v0, "JieCaoVideoPlayer,onEvent-ON_CLICK_RESUME--> mute="

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    sget-boolean v0, Lcom/join/android/app/component/video/StandardVideoViewJC;->U2:Z

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    filled-new-array {p1}, [Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const/4 p1, 0x1

    .line 127
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setMute(Z)V

    .line 128
    .line 129
    .line 130
    iput-boolean v1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->O2:Z

    .line 131
    .line 132
    :cond_3
    :goto_0
    return-void
.end method

.method public s0()V
    .locals 6

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x7

    .line 6
    const/4 v4, 0x3

    .line 7
    if-ne v0, v4, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-ne v0, v3, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v5, 0x6

    .line 14
    if-ne v0, v5, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->i:Landroid/widget/ImageView;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->H2:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    :cond_2
    :goto_0
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->i:Landroid/widget/ImageView;

    .line 27
    .line 28
    iget v5, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    .line 29
    .line 30
    if-ne v5, v4, :cond_3

    .line 31
    .line 32
    const v3, 0x7f08135b

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    if-ne v5, v3, :cond_4

    .line 40
    .line 41
    const v3, 0x7f08134c

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_4
    const v3, 0x7f08135e

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    .line 53
    .line 54
    :goto_1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 55
    .line 56
    if-eqz v0, :cond_6

    .line 57
    .line 58
    const/4 v3, 0x1

    .line 59
    if-eq v0, v3, :cond_6

    .line 60
    .line 61
    const/4 v2, 0x2

    .line 62
    if-eq v0, v2, :cond_5

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_5
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->i:Landroid/widget/ImageView;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_6
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->i:Landroid/widget/ImageView;

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    :goto_2
    return-void
.end method

.method public setAllControlsVisible(IIIIIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "topCon",
            "bottomCon",
            "startBtn",
            "loadingPro",
            "thumbImg",
            "coverImg",
            "bottomPro"
        }
    .end annotation

    .line 1
    iget-boolean p6, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->b:Z

    .line 2
    .line 3
    const/4 p7, 0x2

    .line 4
    if-nez p6, :cond_0

    .line 5
    .line 6
    iget p6, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 7
    .line 8
    if-eq p6, p7, :cond_0

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
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->g2:Landroid/widget/ProgressBar;

    .line 30
    .line 31
    const/4 p3, 0x4

    .line 32
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->F2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 36
    .line 37
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->i2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 41
    .line 42
    invoke-virtual {p1, p5}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    iget p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    .line 46
    .line 47
    if-ne p1, p7, :cond_1

    .line 48
    .line 49
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->p:Landroid/view/ViewGroup;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->p:Landroid/view/ViewGroup;

    .line 56
    .line 57
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {p0, p2}, Lcom/join/android/app/component/video/StandardVideoViewJC;->q0(I)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public setBufferProgress(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferProgress"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setBufferProgress(I)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->f2:Landroid/widget/ProgressBar;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "JieCaoVideoPlayer,setMute--> mute="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    filled-new-array {v0}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setMuteOnly(Z)V

    .line 26
    .line 27
    .line 28
    sput-boolean p1, Lcom/join/android/app/component/video/StandardVideoView;->E:Z

    .line 29
    .line 30
    sput-boolean p1, Lcom/join/android/app/component/video/StandardVideoViewJC;->U2:Z

    .line 31
    .line 32
    return-void
.end method

.method public setMuteOnly(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "JieCaoVideoPlayer,setMuteOnly--> mute="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    filled-new-array {v0}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/b;->b()Lfm/jiecao/jcvideoplayer_lib/b;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 30
    .line 31
    const/4 v1, 0x3

    .line 32
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 33
    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/b;->b()Lfm/jiecao/jcvideoplayer_lib/b;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/b;->b()Lfm/jiecao/jcvideoplayer_lib/b;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 53
    .line 54
    const/high16 v1, 0x3f800000    # 1.0f

    .line 55
    .line 56
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setMuteView(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    :goto_1
    return-void
.end method

.method public setMuteView(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->L2:Landroid/widget/ImageView;

    .line 4
    .line 5
    const v0, 0x7f080d9d

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->L2:Landroid/widget/ImageView;

    .line 13
    .line 14
    const v0, 0x7f080d9e

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public setMuteWhenPlay(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "muteWhenPlay"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->O2:Z

    .line 2
    .line 3
    return-void
.end method

.method public setNoneNetFinishActivity(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "noneNetFinishActivity"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->N2:Z

    .line 2
    .line 3
    return-void
.end method

.method public setProgressAndText(III)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "progress",
            "position",
            "duration"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setProgressAndText(III)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->f2:Landroid/widget/ProgressBar;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iput p2, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->J2:I

    .line 12
    .line 13
    if-lez p2, :cond_1

    .line 14
    .line 15
    sub-int p1, p3, p2

    .line 16
    .line 17
    int-to-long v0, p1

    .line 18
    iput-wide v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->K2:J

    .line 19
    .line 20
    sub-int/2addr p3, p2

    .line 21
    invoke-static {p3}, Lcom/papa/gsyvideoplayer/utils/b;->r(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p2, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->I2:Landroid/widget/TextView;

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    :cond_1
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
    iget-object v2, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->m2:Landroid/widget/TextView;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-boolean v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->D2:Z

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->E2:Landroid/content/BroadcastReceiver;

    .line 33
    .line 34
    new-instance v2, Landroid/content/IntentFilter;

    .line 35
    .line 36
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    .line 37
    .line 38
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public varargs setUp(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "screen",
            "objects"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->S2:Ljava/lang/String;

    .line 2
    invoke-super {p0, p1, p2, p3}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs setUp(Ljava/util/LinkedHashMap;II[Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "urlMap",
            "defaultUrlMapIndex",
            "screen",
            "objects"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setUp(Ljava/util/LinkedHashMap;II[Ljava/lang/Object;)V

    .line 4
    array-length p2, p4

    if-nez p2, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->h2:Landroid/widget/TextView;

    const/4 p3, 0x0

    aget-object p4, p4, p3

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d:I

    const/4 p4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/16 v2, 0x8

    if-ne p2, p4, :cond_4

    .line 7
    iget-object p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->k:Landroid/widget/ImageView;

    const p4, 0x7f080cc5

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    iget-object p2, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->e2:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object p2, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->j2:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object p2, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->k2:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :cond_1
    iget-object p2, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->o2:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 12
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->o2:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->o2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->getCurrentUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->o2:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 15
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070be7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/StandardVideoViewJC;->Z(I)V

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_7

    if-ne p2, v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 p1, 0x3

    if-ne p2, p1, :cond_9

    .line 16
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->j2:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    const/4 v8, 0x4

    const/4 v9, 0x4

    const/4 v10, 0x4

    move-object v3, p0

    .line 17
    invoke-virtual/range {v3 .. v10}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 18
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->k2:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    :cond_6
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->o2:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 20
    :cond_7
    :goto_1
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->k:Landroid/widget/ImageView;

    const p2, 0x7f080cc4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->e2:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->j2:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070be8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/StandardVideoViewJC;->Z(I)V

    .line 24
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->k2:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    :cond_8
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->o2:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setSystemTimeAndBattery()V

    return-void
.end method

.method public v()V
    .locals 2

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->v()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->a0()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->Y()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->f2:Landroid/widget/ProgressBar;

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
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->c0()V

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
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->d0()V

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
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->f0()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->Y()V

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
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->h0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

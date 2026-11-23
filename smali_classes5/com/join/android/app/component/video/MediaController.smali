.class public Lcom/join/android/app/component/video/MediaController;
.super Landroid/widget/MediaController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/component/video/MediaController$e;,
        Lcom/join/android/app/component/video/MediaController$g;,
        Lcom/join/android/app/component/video/MediaController$f;
    }
.end annotation


# static fields
.field private static final A:I = 0xbb8

.field private static final B:I = 0x1

.field private static final C:I = 0x2


# instance fields
.field private b:Lcom/join/android/app/component/video/MediaController$e;

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/PopupWindow;

.field private e:I

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/SeekBar;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ImageButton;

.field private l:Lcom/join/android/app/component/video/OutlineTextView;

.field private m:J

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Landroid/widget/ImageButton;

.field private t:Landroid/media/AudioManager;

.field private u:Lcom/join/android/app/component/video/MediaController$g;

.field private v:Lcom/join/android/app/component/video/MediaController$f;

.field private w:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private x:Landroid/view/View$OnClickListener;

.field private y:Landroid/view/View$OnClickListener;

.field private z:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
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

    .line 11
    invoke-direct {p0, p1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/join/android/app/component/video/MediaController;->q:Z

    .line 13
    iput-boolean v0, p0, Lcom/join/android/app/component/video/MediaController;->r:Z

    .line 14
    new-instance v0, Lcom/join/android/app/component/video/MediaController$a;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/MediaController$a;-><init>(Lcom/join/android/app/component/video/MediaController;)V

    iput-object v0, p0, Lcom/join/android/app/component/video/MediaController;->w:Landroid/os/Handler;

    .line 15
    new-instance v0, Lcom/join/android/app/component/video/MediaController$b;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/MediaController$b;-><init>(Lcom/join/android/app/component/video/MediaController;)V

    iput-object v0, p0, Lcom/join/android/app/component/video/MediaController;->x:Landroid/view/View$OnClickListener;

    .line 16
    new-instance v0, Lcom/join/android/app/component/video/MediaController$c;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/MediaController$c;-><init>(Lcom/join/android/app/component/video/MediaController;)V

    iput-object v0, p0, Lcom/join/android/app/component/video/MediaController;->y:Landroid/view/View$OnClickListener;

    .line 17
    new-instance v0, Lcom/join/android/app/component/video/MediaController$d;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/MediaController$d;-><init>(Lcom/join/android/app/component/video/MediaController;)V

    iput-object v0, p0, Lcom/join/android/app/component/video/MediaController;->z:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 18
    iget-boolean v0, p0, Lcom/join/android/app/component/video/MediaController;->r:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/join/android/app/component/video/MediaController;->r(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/join/android/app/component/video/MediaController;->t()V

    :cond_0
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

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/join/android/app/component/video/MediaController;->q:Z

    .line 3
    iput-boolean p2, p0, Lcom/join/android/app/component/video/MediaController;->r:Z

    .line 4
    new-instance p2, Lcom/join/android/app/component/video/MediaController$a;

    invoke-direct {p2, p0}, Lcom/join/android/app/component/video/MediaController$a;-><init>(Lcom/join/android/app/component/video/MediaController;)V

    iput-object p2, p0, Lcom/join/android/app/component/video/MediaController;->w:Landroid/os/Handler;

    .line 5
    new-instance p2, Lcom/join/android/app/component/video/MediaController$b;

    invoke-direct {p2, p0}, Lcom/join/android/app/component/video/MediaController$b;-><init>(Lcom/join/android/app/component/video/MediaController;)V

    iput-object p2, p0, Lcom/join/android/app/component/video/MediaController;->x:Landroid/view/View$OnClickListener;

    .line 6
    new-instance p2, Lcom/join/android/app/component/video/MediaController$c;

    invoke-direct {p2, p0}, Lcom/join/android/app/component/video/MediaController$c;-><init>(Lcom/join/android/app/component/video/MediaController;)V

    iput-object p2, p0, Lcom/join/android/app/component/video/MediaController;->y:Landroid/view/View$OnClickListener;

    .line 7
    new-instance p2, Lcom/join/android/app/component/video/MediaController$d;

    invoke-direct {p2, p0}, Lcom/join/android/app/component/video/MediaController$d;-><init>(Lcom/join/android/app/component/video/MediaController;)V

    iput-object p2, p0, Lcom/join/android/app/component/video/MediaController;->z:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 8
    iput-object p0, p0, Lcom/join/android/app/component/video/MediaController;->g:Landroid/view/View;

    const/4 p2, 0x1

    .line 9
    iput-boolean p2, p0, Lcom/join/android/app/component/video/MediaController;->r:Z

    .line 10
    invoke-direct {p0, p1}, Lcom/join/android/app/component/video/MediaController;->r(Landroid/content/Context;)Z

    return-void
.end method

.method static synthetic a(Lcom/join/android/app/component/video/MediaController;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/component/video/MediaController;->w()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method static synthetic b(Lcom/join/android/app/component/video/MediaController;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/android/app/component/video/MediaController;->o:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lcom/join/android/app/component/video/MediaController;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/android/app/component/video/MediaController;->m:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic d(Lcom/join/android/app/component/video/MediaController;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/video/MediaController;->o:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic e(Lcom/join/android/app/component/video/MediaController;)Lcom/join/android/app/component/video/MediaController$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/video/MediaController;->b:Lcom/join/android/app/component/video/MediaController$e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/join/android/app/component/video/MediaController;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/video/MediaController;->j:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/join/android/app/component/video/MediaController;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/android/app/component/video/MediaController;->n:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic h(Lcom/join/android/app/component/video/MediaController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/component/video/MediaController;->y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i(Lcom/join/android/app/component/video/MediaController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/component/video/MediaController;->p()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic j(Lcom/join/android/app/component/video/MediaController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/component/video/MediaController;->o()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic k(Lcom/join/android/app/component/video/MediaController;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/video/MediaController;->w:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l(Lcom/join/android/app/component/video/MediaController;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/android/app/component/video/MediaController;->q:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic m(Lcom/join/android/app/component/video/MediaController;)Landroid/media/AudioManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/video/MediaController;->t:Landroid/media/AudioManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic n(Lcom/join/android/app/component/video/MediaController;)Lcom/join/android/app/component/video/OutlineTextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/video/MediaController;->l:Lcom/join/android/app/component/video/OutlineTextView;

    .line 2
    .line 3
    return-object p0
.end method

.method private o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->b:Lcom/join/android/app/component/video/MediaController$e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/join/android/app/component/video/MediaController;->p:Z

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/join/android/app/component/video/MediaController;->b:Lcom/join/android/app/component/video/MediaController$e;

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/join/android/app/component/video/MediaController;->p:Z

    .line 15
    .line 16
    invoke-interface {v1, v2}, Lcom/join/android/app/component/video/MediaController$e;->a(Z)V

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MediaController;->x()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->b:Lcom/join/android/app/component/video/MediaController$e;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/join/android/app/component/video/MediaController$e;->isPlaying()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->b:Lcom/join/android/app/component/video/MediaController$e;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/join/android/app/component/video/MediaController$e;->pause()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->b:Lcom/join/android/app/component/video/MediaController$e;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/join/android/app/component/video/MediaController$e;->start()V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-direct {p0}, Lcom/join/android/app/component/video/MediaController;->y()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private r(Landroid/content/Context;)Z
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
    iput-object p1, p0, Lcom/join/android/app/component/video/MediaController;->c:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "audio"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroid/media/AudioManager;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/join/android/app/component/video/MediaController;->t:Landroid/media/AudioManager;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1
.end method

.method private s(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/android/app/component/video/MediaController;->c:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "mediacontroller_play_pause"

    .line 12
    .line 13
    const-string v3, "id"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/ImageButton;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/android/app/component/video/MediaController;->s:Landroid/widget/ImageButton;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->s:Landroid/widget/ImageButton;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/join/android/app/component/video/MediaController;->x:Landroid/view/View$OnClickListener;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/join/android/app/component/video/MediaController;->c:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "mediacontroller_seekbar"

    .line 50
    .line 51
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Landroid/widget/SeekBar;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/join/android/app/component/video/MediaController;->h:Landroid/widget/SeekBar;

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    instance-of v1, v0, Landroid/widget/SeekBar;

    .line 66
    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    iget-object v1, p0, Lcom/join/android/app/component/video/MediaController;->z:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->h:Landroid/widget/SeekBar;

    .line 75
    .line 76
    const/16 v1, 0x3e8

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/join/android/app/component/video/MediaController;->c:Landroid/content/Context;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const-string v2, "mediacontroller_time_total"

    .line 92
    .line 93
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Landroid/widget/TextView;

    .line 102
    .line 103
    iput-object v0, p0, Lcom/join/android/app/component/video/MediaController;->i:Landroid/widget/TextView;

    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/join/android/app/component/video/MediaController;->c:Landroid/content/Context;

    .line 110
    .line 111
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const-string v2, "mediacontroller_time_current"

    .line 116
    .line 117
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Landroid/widget/TextView;

    .line 126
    .line 127
    iput-object v0, p0, Lcom/join/android/app/component/video/MediaController;->j:Landroid/widget/TextView;

    .line 128
    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/join/android/app/component/video/MediaController;->c:Landroid/content/Context;

    .line 134
    .line 135
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    const-string v2, "mediacontroller_full_screen"

    .line 140
    .line 141
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, Landroid/widget/ImageButton;

    .line 150
    .line 151
    iput-object p1, p0, Lcom/join/android/app/component/video/MediaController;->k:Landroid/widget/ImageButton;

    .line 152
    .line 153
    if-eqz p1, :cond_3

    .line 154
    .line 155
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->y:Landroid/view/View$OnClickListener;

    .line 156
    .line 157
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    .line 159
    .line 160
    :cond_3
    return-void
.end method

.method private t()V
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/PopupWindow;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/android/app/component/video/MediaController;->c:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/join/android/app/component/video/MediaController;->d:Landroid/widget/PopupWindow;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->d:Landroid/widget/PopupWindow;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->d:Landroid/widget/PopupWindow;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 24
    .line 25
    .line 26
    const/high16 v0, 0x1030000

    .line 27
    .line 28
    iput v0, p0, Lcom/join/android/app/component/video/MediaController;->e:I

    .line 29
    .line 30
    return-void
.end method

.method private w()J
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->b:Lcom/join/android/app/component/video/MediaController$e;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/join/android/app/component/video/MediaController;->o:Z

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {v0}, Lcom/join/android/app/component/video/MediaController$e;->getCurrentPosition()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    int-to-long v3, v0

    .line 17
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->b:Lcom/join/android/app/component/video/MediaController$e;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/join/android/app/component/video/MediaController$e;->getDuration()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    int-to-long v5, v0

    .line 24
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->h:Landroid/widget/SeekBar;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    cmp-long v7, v5, v1

    .line 29
    .line 30
    if-lez v7, :cond_1

    .line 31
    .line 32
    const-wide/16 v1, 0x3e8

    .line 33
    .line 34
    mul-long v1, v1, v3

    .line 35
    .line 36
    div-long/2addr v1, v5

    .line 37
    long-to-int v2, v1

    .line 38
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->b:Lcom/join/android/app/component/video/MediaController$e;

    .line 42
    .line 43
    invoke-interface {v0}, Lcom/join/android/app/component/video/MediaController$e;->getBufferPercentage()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget-object v1, p0, Lcom/join/android/app/component/video/MediaController;->h:Landroid/widget/SeekBar;

    .line 48
    .line 49
    mul-int/lit8 v0, v0, 0xa

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 52
    .line 53
    .line 54
    :cond_2
    iput-wide v5, p0, Lcom/join/android/app/component/video/MediaController;->m:J

    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->i:Landroid/widget/TextView;

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    invoke-static {v5, v6}, Lcom/join/android/app/common/utils/i;->f(J)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->j:Landroid/widget/TextView;

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    invoke-static {v3, v4}, Lcom/join/android/app/common/utils/i;->f(J)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    :cond_4
    return-wide v3

    .line 79
    :cond_5
    :goto_0
    return-wide v1
.end method

.method private y()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->g:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->s:Landroid/widget/ImageButton;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->b:Lcom/join/android/app/component/video/MediaController$e;

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/join/android/app/component/video/MediaController$e;->isPlaying()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const-string v1, "drawable"

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->s:Landroid/widget/ImageButton;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v3, p0, Lcom/join/android/app/component/video/MediaController;->c:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const-string v4, "mediacontroller_pause"

    .line 33
    .line 34
    invoke-virtual {v2, v4, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->s:Landroid/widget/ImageButton;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget-object v3, p0, Lcom/join/android/app/component/video/MediaController;->c:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const-string v4, "mediacontroller_play"

    .line 55
    .line 56
    invoke-virtual {v2, v4, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0xbb8

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-nez v1, :cond_2

    .line 13
    .line 14
    const/16 v1, 0x4f

    .line 15
    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    const/16 v1, 0x55

    .line 19
    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    const/16 v1, 0x3e

    .line 23
    .line 24
    if-ne v0, v1, :cond_2

    .line 25
    .line 26
    :cond_0
    invoke-direct {p0}, Lcom/join/android/app/component/video/MediaController;->p()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v2}, Lcom/join/android/app/component/video/MediaController;->show(I)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController;->s:Landroid/widget/ImageButton;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 37
    .line 38
    .line 39
    :cond_1
    return v3

    .line 40
    :cond_2
    const/16 v1, 0x56

    .line 41
    .line 42
    if-ne v0, v1, :cond_4

    .line 43
    .line 44
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController;->b:Lcom/join/android/app/component/video/MediaController$e;

    .line 45
    .line 46
    invoke-interface {p1}, Lcom/join/android/app/component/video/MediaController$e;->isPlaying()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController;->b:Lcom/join/android/app/component/video/MediaController$e;

    .line 53
    .line 54
    invoke-interface {p1}, Lcom/join/android/app/component/video/MediaController$e;->pause()V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Lcom/join/android/app/component/video/MediaController;->y()V

    .line 58
    .line 59
    .line 60
    :cond_3
    return v3

    .line 61
    :cond_4
    const/4 v1, 0x4

    .line 62
    if-eq v0, v1, :cond_6

    .line 63
    .line 64
    const/16 v1, 0x52

    .line 65
    .line 66
    if-ne v0, v1, :cond_5

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_5
    invoke-virtual {p0, v2}, Lcom/join/android/app/component/video/MediaController;->show(I)V

    .line 70
    .line 71
    .line 72
    invoke-super {p0, p1}, Landroid/widget/MediaController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    return p1

    .line 77
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MediaController;->hide()V

    .line 78
    .line 79
    .line 80
    return v3
.end method

.method public hide()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->f:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/join/android/app/component/video/MediaController;->n:Z

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/join/android/app/component/video/MediaController;->w:Landroid/os/Handler;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    .line 16
    .line 17
    iget-boolean v1, p0, Lcom/join/android/app/component/video/MediaController;->r:Z

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const/16 v1, 0x8

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/join/android/app/component/video/MediaController;->d:Landroid/widget/PopupWindow;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    const-string v1, "MediaController already removed"

    .line 34
    .line 35
    new-array v2, v0, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {v1, v2}, Lcom/join/mgps/Util/h1;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    iput-boolean v0, p0, Lcom/join/android/app/component/video/MediaController;->n:Z

    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->v:Lcom/join/android/app/component/video/MediaController$f;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-interface {v0}, Lcom/join/android/app/component/video/MediaController$f;->onHidden()V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/component/video/MediaController;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->g:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/join/android/app/component/video/MediaController;->s(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Landroid/widget/MediaController;->onFinishInflate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    const/16 p1, 0xbb8

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/MediaController;->show(I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    const/16 p1, 0xbb8

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/MediaController;->show(I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1
.end method

.method public q()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/android/app/component/video/MediaController;->r:Z

    .line 3
    .line 4
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/MediaController;->f:Landroid/view/View;

    .line 2
    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v0, "mFromXml="

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/join/android/app/component/video/MediaController;->r:Z

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "setAnchorView"

    .line 23
    .line 24
    filled-new-array {v0, p1}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-boolean p1, p0, Lcom/join/android/app/component/video/MediaController;->r:Z

    .line 32
    .line 33
    const/4 v0, -0x1

    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MediaController;->v()Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/join/android/app/component/video/MediaController;->g:Landroid/view/View;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/join/android/app/component/video/MediaController;->d:Landroid/widget/PopupWindow;

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController;->d:Landroid/widget/PopupWindow;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController;->d:Landroid/widget/PopupWindow;

    .line 56
    .line 57
    const/4 v1, -0x2

    .line 58
    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController;->g:Landroid/view/View;

    .line 62
    .line 63
    if-nez p1, :cond_1

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MediaController;->v()Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lcom/join/android/app/component/video/MediaController;->g:Landroid/view/View;

    .line 70
    .line 71
    :cond_1
    iget-boolean p1, p0, Lcom/join/android/app/component/video/MediaController;->r:Z

    .line 72
    .line 73
    if-eqz p1, :cond_5

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Landroid/view/ViewGroup;

    .line 80
    .line 81
    if-eqz p1, :cond_2

    .line 82
    .line 83
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController;->f:Landroid/view/View;

    .line 87
    .line 88
    instance-of v1, p1, Landroid/widget/RelativeLayout;

    .line 89
    .line 90
    const v2, 0x7f070ea3

    .line 91
    .line 92
    .line 93
    if-eqz v1, :cond_3

    .line 94
    .line 95
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 96
    .line 97
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 105
    .line 106
    if-eqz p1, :cond_5

    .line 107
    .line 108
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 119
    .line 120
    const/16 v1, 0xc

    .line 121
    .line 122
    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_3
    instance-of v1, p1, Landroid/widget/LinearLayout;

    .line 127
    .line 128
    const/16 v3, 0x50

    .line 129
    .line 130
    if-eqz v1, :cond_4

    .line 131
    .line 132
    check-cast p1, Landroid/widget/LinearLayout;

    .line 133
    .line 134
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 142
    .line 143
    if-eqz p1, :cond_5

    .line 144
    .line 145
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 146
    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 156
    .line 157
    iput v3, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_4
    instance-of v1, p1, Landroid/widget/FrameLayout;

    .line 161
    .line 162
    if-eqz v1, :cond_5

    .line 163
    .line 164
    check-cast p1, Landroid/widget/FrameLayout;

    .line 165
    .line 166
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 174
    .line 175
    if-eqz p1, :cond_5

    .line 176
    .line 177
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 178
    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 188
    .line 189
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 190
    .line 191
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController;->g:Landroid/view/View;

    .line 192
    .line 193
    invoke-direct {p0, p1}, Lcom/join/android/app/component/video/MediaController;->s(Landroid/view/View;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 197
    .line 198
    .line 199
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animationStyle"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/android/app/component/video/MediaController;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->s:Landroid/widget/ImageButton;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->h:Landroid/widget/SeekBar;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mFullScreen"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/video/MediaController;->p:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MediaController;->x()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setInfoView(Lcom/join/android/app/component/video/OutlineTextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/MediaController;->l:Lcom/join/android/app/component/video/OutlineTextView;

    .line 2
    .line 3
    return-void
.end method

.method public setInstantSeeking(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekWhenDragging"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/video/MediaController;->q:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMediaPlayer(Lcom/join/android/app/component/video/MediaController$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "player"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/MediaController;->b:Lcom/join/android/app/component/video/MediaController$e;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/android/app/component/video/MediaController;->y()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MediaController;->x()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setOnHiddenListener(Lcom/join/android/app/component/video/MediaController$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/MediaController;->v:Lcom/join/android/app/component/video/MediaController$f;

    .line 2
    .line 3
    return-void
.end method

.method public setOnShownListener(Lcom/join/android/app/component/video/MediaController$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/MediaController;->u:Lcom/join/android/app/component/video/MediaController$g;

    .line 2
    .line 3
    return-void
.end method

.method public setWindowLayoutType()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->f:Landroid/view/View;

    .line 2
    .line 3
    const/16 v1, 0x200

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 6
    .line 7
    .line 8
    const-class v0, Landroid/widget/PopupWindow;

    .line 9
    .line 10
    const-string v1, "setWindowLayoutType"

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    new-array v3, v2, [Ljava/lang/Class;

    .line 14
    .line 15
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    aput-object v4, v3, v5

    .line 19
    .line 20
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/join/android/app/component/video/MediaController;->d:Landroid/widget/PopupWindow;

    .line 25
    .line 26
    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    .line 28
    const/16 v3, 0x3eb

    .line 29
    .line 30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    aput-object v3, v2, v5

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const-string v1, "setWindowLayoutType"

    .line 42
    .line 43
    invoke-static {v1, v0}, Lcom/join/mgps/Util/h1;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public show()V
    .locals 1

    const/16 v0, 0xbb8

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/MediaController;->show(I)V

    return-void
.end method

.method public show(I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeout"
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lcom/join/android/app/component/video/MediaController;->n:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->f:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->s:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/join/android/app/component/video/MediaController;->r:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    new-array v0, v1, [I

    .line 7
    iget-object v4, p0, Lcom/join/android/app/component/video/MediaController;->f:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 8
    new-instance v4, Landroid/graphics/Rect;

    aget v5, v0, v3

    aget v6, v0, v2

    iget-object v7, p0, Lcom/join/android/app/component/video/MediaController;->f:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v5

    aget v0, v0, v2

    iget-object v8, p0, Lcom/join/android/app/component/video/MediaController;->f:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v0, v8

    invoke-direct {v4, v5, v6, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->d:Landroid/widget/PopupWindow;

    iget v5, p0, Lcom/join/android/app/component/video/MediaController;->e:I

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 10
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MediaController;->setWindowLayoutType()V

    .line 11
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->d:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/join/android/app/component/video/MediaController;->f:Landroid/view/View;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v5, v3, v6, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 12
    :goto_0
    iput-boolean v2, p0, Lcom/join/android/app/component/video/MediaController;->n:Z

    .line 13
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->u:Lcom/join/android/app/component/video/MediaController$g;

    if-eqz v0, :cond_2

    .line 14
    invoke-interface {v0}, Lcom/join/android/app/component/video/MediaController$g;->onShown()V

    .line 15
    :cond_2
    invoke-direct {p0}, Lcom/join/android/app/component/video/MediaController;->y()V

    .line 16
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MediaController;->x()V

    .line 17
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->w:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    if-eqz p1, :cond_3

    .line 18
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->w:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->w:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    return-void
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/component/video/MediaController;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method protected v()Landroid/view/View;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->c:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "layout_inflater"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/LayoutInflater;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/join/android/app/component/video/MediaController;->c:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "mediacontroller"

    .line 22
    .line 23
    const-string v4, "layout"

    .line 24
    .line 25
    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method x()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->g:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->k:Landroid/widget/ImageButton;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v1, p0, Lcom/join/android/app/component/video/MediaController;->p:Z

    .line 11
    .line 12
    const-string v2, "drawable"

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v3, p0, Lcom/join/android/app/component/video/MediaController;->c:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const-string v4, "mediacontroller_fullscreen_out"

    .line 27
    .line 28
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v3, p0, Lcom/join/android/app/component/video/MediaController;->c:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const-string v4, "mediacontroller_fullscreen_in"

    .line 47
    .line 48
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    return-void
.end method

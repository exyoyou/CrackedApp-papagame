.class public Lcom/join/android/app/component/video/MyVideoView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/component/video/MediaController$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/component/video/MyVideoView$g;,
        Lcom/join/android/app/component/video/MyVideoView$h;
    }
.end annotation


# instance fields
.field private A:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field B:Landroid/view/SurfaceHolder$Callback;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Landroid/net/Uri;

.field private e:I

.field private f:Landroid/view/SurfaceHolder;

.field public g:Landroid/media/MediaPlayer;

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Lcom/join/android/app/component/video/MediaController;

.field private n:Landroid/media/MediaPlayer$OnCompletionListener;

.field private o:Landroid/media/MediaPlayer$OnPreparedListener;

.field private p:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private q:I

.field private r:Landroid/media/MediaPlayer$OnErrorListener;

.field private s:Z

.field private t:I

.field private u:Lcom/join/android/app/component/video/MyVideoView$g;

.field private v:Lcom/join/android/app/component/video/MyVideoView$h;

.field w:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field x:Landroid/media/MediaPlayer$OnPreparedListener;

.field private y:Landroid/media/MediaPlayer$OnCompletionListener;

.field private z:Landroid/media/MediaPlayer$OnErrorListener;


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

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/view/SurfaceHolder;

    .line 4
    iput-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 5
    new-instance v0, Lcom/join/android/app/component/video/MyVideoView$a;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/MyVideoView$a;-><init>(Lcom/join/android/app/component/video/MyVideoView;)V

    iput-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->w:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 6
    new-instance v0, Lcom/join/android/app/component/video/MyVideoView$b;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/MyVideoView$b;-><init>(Lcom/join/android/app/component/video/MyVideoView;)V

    iput-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->x:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 7
    new-instance v0, Lcom/join/android/app/component/video/MyVideoView$c;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/MyVideoView$c;-><init>(Lcom/join/android/app/component/video/MyVideoView;)V

    iput-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->y:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 8
    new-instance v0, Lcom/join/android/app/component/video/MyVideoView$d;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/MyVideoView$d;-><init>(Lcom/join/android/app/component/video/MyVideoView;)V

    iput-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->z:Landroid/media/MediaPlayer$OnErrorListener;

    .line 9
    new-instance v0, Lcom/join/android/app/component/video/MyVideoView$e;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/MyVideoView$e;-><init>(Lcom/join/android/app/component/video/MyVideoView;)V

    iput-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->A:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 10
    new-instance v0, Lcom/join/android/app/component/video/MyVideoView$f;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/MyVideoView$f;-><init>(Lcom/join/android/app/component/video/MyVideoView;)V

    iput-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->B:Landroid/view/SurfaceHolder$Callback;

    .line 11
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->c:Landroid/content/Context;

    .line 12
    invoke-direct {p0}, Lcom/join/android/app/component/video/MyVideoView;->C()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
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

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/component/video/MyVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->c:Landroid/content/Context;

    .line 15
    invoke-direct {p0}, Lcom/join/android/app/component/video/MyVideoView;->C()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/join/android/app/component/video/MyVideoView;->b:Ljava/lang/String;

    const/4 p2, 0x0

    .line 18
    iput-object p2, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/view/SurfaceHolder;

    .line 19
    iput-object p2, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 20
    new-instance p2, Lcom/join/android/app/component/video/MyVideoView$a;

    invoke-direct {p2, p0}, Lcom/join/android/app/component/video/MyVideoView$a;-><init>(Lcom/join/android/app/component/video/MyVideoView;)V

    iput-object p2, p0, Lcom/join/android/app/component/video/MyVideoView;->w:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 21
    new-instance p2, Lcom/join/android/app/component/video/MyVideoView$b;

    invoke-direct {p2, p0}, Lcom/join/android/app/component/video/MyVideoView$b;-><init>(Lcom/join/android/app/component/video/MyVideoView;)V

    iput-object p2, p0, Lcom/join/android/app/component/video/MyVideoView;->x:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 22
    new-instance p2, Lcom/join/android/app/component/video/MyVideoView$c;

    invoke-direct {p2, p0}, Lcom/join/android/app/component/video/MyVideoView$c;-><init>(Lcom/join/android/app/component/video/MyVideoView;)V

    iput-object p2, p0, Lcom/join/android/app/component/video/MyVideoView;->y:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 23
    new-instance p2, Lcom/join/android/app/component/video/MyVideoView$d;

    invoke-direct {p2, p0}, Lcom/join/android/app/component/video/MyVideoView$d;-><init>(Lcom/join/android/app/component/video/MyVideoView;)V

    iput-object p2, p0, Lcom/join/android/app/component/video/MyVideoView;->z:Landroid/media/MediaPlayer$OnErrorListener;

    .line 24
    new-instance p2, Lcom/join/android/app/component/video/MyVideoView$e;

    invoke-direct {p2, p0}, Lcom/join/android/app/component/video/MyVideoView$e;-><init>(Lcom/join/android/app/component/video/MyVideoView;)V

    iput-object p2, p0, Lcom/join/android/app/component/video/MyVideoView;->A:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 25
    new-instance p2, Lcom/join/android/app/component/video/MyVideoView$f;

    invoke-direct {p2, p0}, Lcom/join/android/app/component/video/MyVideoView$f;-><init>(Lcom/join/android/app/component/video/MyVideoView;)V

    iput-object p2, p0, Lcom/join/android/app/component/video/MyVideoView;->B:Landroid/view/SurfaceHolder$Callback;

    .line 26
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->c:Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Lcom/join/android/app/component/video/MyVideoView;->C()V

    return-void
.end method

.method private A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->m:Lcom/join/android/app/component/video/MediaController;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/join/android/app/component/video/MediaController;->setMediaPlayer(Lcom/join/android/app/component/video/MediaController$e;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    instance-of v0, v0, Landroid/view/View;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/view/View;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v0, p0

    .line 28
    :goto_0
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->m:Lcom/join/android/app/component/video/MediaController;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lcom/join/android/app/component/video/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->m:Lcom/join/android/app/component/video/MediaController;

    .line 34
    .line 35
    iget-boolean v1, p0, Lcom/join/android/app/component/video/MyVideoView;->h:Z

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MediaController;->setEnabled(Z)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method private C()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/android/app/component/video/MyVideoView;->i:I

    .line 3
    .line 4
    iput v0, p0, Lcom/join/android/app/component/video/MyVideoView;->j:I

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, -0x2

    .line 11
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->B:Landroid/view/SurfaceHolder$Callback;

    .line 19
    .line 20
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private F()V
    .locals 4

    .line 1
    const-string v0, "Unable to open content: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->d:Landroid/net/Uri;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/view/SurfaceHolder;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 14
    .line 15
    const-string v2, "com.android.music.musicservicecommand"

    .line 16
    .line 17
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v2, "command"

    .line 21
    .line 22
    const-string v3, "pause"

    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/join/android/app/component/video/MyVideoView;->c:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 46
    .line 47
    :cond_1
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    .line 48
    .line 49
    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 53
    .line 54
    iget-object v2, p0, Lcom/join/android/app/component/video/MyVideoView;->x:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/join/android/app/component/video/MyVideoView;->w:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 64
    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    iput-boolean v1, p0, Lcom/join/android/app/component/video/MyVideoView;->h:Z

    .line 68
    .line 69
    const/4 v2, -0x1

    .line 70
    iput v2, p0, Lcom/join/android/app/component/video/MyVideoView;->e:I

    .line 71
    .line 72
    iget-object v2, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 73
    .line 74
    iget-object v3, p0, Lcom/join/android/app/component/video/MyVideoView;->y:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 80
    .line 81
    iget-object v3, p0, Lcom/join/android/app/component/video/MyVideoView;->z:Landroid/media/MediaPlayer$OnErrorListener;

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 84
    .line 85
    .line 86
    iget-object v2, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 87
    .line 88
    iget-object v3, p0, Lcom/join/android/app/component/video/MyVideoView;->A:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 89
    .line 90
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 91
    .line 92
    .line 93
    iput v1, p0, Lcom/join/android/app/component/video/MyVideoView;->q:I

    .line 94
    .line 95
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->c:Landroid/content/Context;

    .line 96
    .line 97
    if-eqz v1, :cond_2

    .line 98
    .line 99
    iget-object v2, p0, Lcom/join/android/app/component/video/MyVideoView;->d:Landroid/net/Uri;

    .line 100
    .line 101
    if-eqz v2, :cond_2

    .line 102
    .line 103
    iget-object v3, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 104
    .line 105
    invoke-virtual {v3, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 109
    .line 110
    iget-object v2, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/view/SurfaceHolder;

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 116
    .line 117
    const/4 v2, 0x3

    .line 118
    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 122
    .line 123
    const/4 v2, 0x1

    .line 124
    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 128
    .line 129
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 130
    .line 131
    .line 132
    invoke-direct {p0}, Lcom/join/android/app/component/video/MyVideoView;->A()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->d:Landroid/net/Uri;

    .line 148
    .line 149
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->d:Landroid/net/Uri;

    .line 162
    .line 163
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    :cond_3
    :goto_0
    return-void
.end method

.method private J()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->m:Lcom/join/android/app/component/video/MediaController;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MediaController;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->m:Lcom/join/android/app/component/video/MediaController;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MediaController;->hide()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->m:Lcom/join/android/app/component/video/MediaController;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MediaController;->show()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/join/android/app/component/video/MyVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/android/app/component/video/MyVideoView;->i:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lcom/join/android/app/component/video/MyVideoView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/component/video/MyVideoView;->i:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic d(Lcom/join/android/app/component/video/MyVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/android/app/component/video/MyVideoView;->j:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Lcom/join/android/app/component/video/MyVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/video/MyVideoView;->n:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/join/android/app/component/video/MyVideoView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/component/video/MyVideoView;->j:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic g(Lcom/join/android/app/component/video/MyVideoView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/video/MyVideoView;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/join/android/app/component/video/MyVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/video/MyVideoView;->r:Landroid/media/MediaPlayer$OnErrorListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/join/android/app/component/video/MyVideoView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/video/MyVideoView;->c:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/join/android/app/component/video/MyVideoView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/component/video/MyVideoView;->q:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic k(Lcom/join/android/app/component/video/MyVideoView;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/video/MyVideoView;->p:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l(Lcom/join/android/app/component/video/MyVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/view/SurfaceHolder;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic m(Lcom/join/android/app/component/video/MyVideoView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/component/video/MyVideoView;->F()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic n(Lcom/join/android/app/component/video/MyVideoView;)Lcom/join/android/app/component/video/MyVideoView$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/video/MyVideoView;->u:Lcom/join/android/app/component/video/MyVideoView$g;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic o(Lcom/join/android/app/component/video/MyVideoView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/android/app/component/video/MyVideoView;->h:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic p(Lcom/join/android/app/component/video/MyVideoView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/video/MyVideoView;->h:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic q(Lcom/join/android/app/component/video/MyVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/video/MyVideoView;->o:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic r(Lcom/join/android/app/component/video/MyVideoView;)Lcom/join/android/app/component/video/MediaController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/video/MyVideoView;->m:Lcom/join/android/app/component/video/MediaController;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic s(Lcom/join/android/app/component/video/MyVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/android/app/component/video/MyVideoView;->k:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic t(Lcom/join/android/app/component/video/MyVideoView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/component/video/MyVideoView;->k:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic u(Lcom/join/android/app/component/video/MyVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/android/app/component/video/MyVideoView;->l:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic v(Lcom/join/android/app/component/video/MyVideoView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/component/video/MyVideoView;->l:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic w(Lcom/join/android/app/component/video/MyVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/android/app/component/video/MyVideoView;->t:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic x(Lcom/join/android/app/component/video/MyVideoView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/component/video/MyVideoView;->t:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic y(Lcom/join/android/app/component/video/MyVideoView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/android/app/component/video/MyVideoView;->s:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic z(Lcom/join/android/app/component/video/MyVideoView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/video/MyVideoView;->s:Z

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public B()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->c:Landroid/content/Context;

    .line 2
    .line 3
    check-cast v0, Landroid/app/Activity;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x1

    .line 17
    if-ne v1, v3, :cond_2

    .line 18
    .line 19
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->v:Lcom/join/android/app/component/video/MyVideoView$h;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {v1, v3}, Lcom/join/android/app/component/video/MyVideoView$h;->a(Z)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->m:Lcom/join/android/app/component/video/MediaController;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Lcom/join/android/app/component/video/MediaController;->setFullScreen(Z)V

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/16 v1, 0x400

    .line 45
    .line 46
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->v:Lcom/join/android/app/component/video/MyVideoView$h;

    .line 51
    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    invoke-interface {v1, v2}, Lcom/join/android/app/component/video/MyVideoView$h;->a(Z)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    return-void

    .line 61
    :cond_3
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->m:Lcom/join/android/app/component/video/MediaController;

    .line 62
    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lcom/join/android/app/component/video/MediaController;->setFullScreen(Z)V

    .line 66
    .line 67
    .line 68
    :cond_4
    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 80
    .line 81
    and-int/lit16 v2, v2, -0x401

    .line 82
    .line 83
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const/16 v1, 0x200

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 99
    .line 100
    .line 101
    :goto_0
    return-void
.end method

.method public D()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->m:Lcom/join/android/app/component/video/MediaController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MediaController;->u()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method public E()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/component/video/MyVideoView;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public G()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    :cond_0
    :goto_0
    return-void
.end method

.method public H(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "desiredSize",
            "measureSpec"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/high16 v1, -0x80000000

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/high16 v1, 0x40000000    # 2.0f

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move p1, p2

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    :goto_0
    return p1
.end method

.method public I()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Lcom/join/android/app/component/video/MyVideoView;->h:Z

    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->d:Landroid/net/Uri;

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentFlag"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MyVideoView;->B()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->m:Lcom/join/android/app/component/video/MediaController;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MyVideoView;->D()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/join/android/app/component/video/MediaController;->setFullScreen(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public canPause()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/join/android/app/component/video/MyVideoView;->q:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/join/android/app/component/video/MyVideoView;->h:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public getDuration()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/join/android/app/component/video/MyVideoView;->h:Z

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget v1, p0, Lcom/join/android/app/component/video/MyVideoView;->e:I

    .line 10
    .line 11
    if-lez v1, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/join/android/app/component/video/MyVideoView;->e:I

    .line 19
    .line 20
    return v0

    .line 21
    :cond_1
    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/join/android/app/component/video/MyVideoView;->e:I

    .line 23
    .line 24
    return v0
.end method

.method public getMediaController()Lcom/join/android/app/component/video/MediaController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->m:Lcom/join/android/app/component/video/MediaController;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/component/video/MyVideoView;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/component/video/MyVideoView;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/join/android/app/component/video/MyVideoView;->h:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/component/video/MyVideoView;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    if-eq p1, v0, :cond_4

    .line 7
    .line 8
    const/16 v0, 0x18

    .line 9
    .line 10
    if-eq p1, v0, :cond_4

    .line 11
    .line 12
    const/16 v0, 0x19

    .line 13
    .line 14
    if-eq p1, v0, :cond_4

    .line 15
    .line 16
    const/16 v0, 0x52

    .line 17
    .line 18
    if-eq p1, v0, :cond_4

    .line 19
    .line 20
    const/4 v0, 0x5

    .line 21
    if-eq p1, v0, :cond_4

    .line 22
    .line 23
    const/4 v0, 0x6

    .line 24
    if-eq p1, v0, :cond_4

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 27
    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->m:Lcom/join/android/app/component/video/MediaController;

    .line 31
    .line 32
    if-eqz v1, :cond_4

    .line 33
    .line 34
    const/16 v1, 0x4f

    .line 35
    .line 36
    if-eq p1, v1, :cond_2

    .line 37
    .line 38
    const/16 v1, 0x55

    .line 39
    .line 40
    if-ne p1, v1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/16 v1, 0x56

    .line 44
    .line 45
    if-ne p1, v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MyVideoView;->pause()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->m:Lcom/join/android/app/component/video/MediaController;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MediaController;->show()V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_1
    invoke-direct {p0}, Lcom/join/android/app/component/video/MyVideoView;->J()V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MyVideoView;->pause()V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->m:Lcom/join/android/app/component/video/MediaController;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/join/android/app/component/video/MediaController;->show()V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MyVideoView;->start()V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->m:Lcom/join/android/app/component/video/MediaController;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/join/android/app/component/video/MediaController;->hide()V

    .line 87
    .line 88
    .line 89
    :goto_1
    const/4 p1, 0x1

    .line 90
    return p1

    .line 91
    :cond_4
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    return p1
.end method

.method protected onMeasure(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/android/app/component/video/MyVideoView;->i:I

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget v0, p0, Lcom/join/android/app/component/video/MyVideoView;->j:I

    .line 8
    .line 9
    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
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
    iget-boolean p1, p0, Lcom/join/android/app/component/video/MyVideoView;->h:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->m:Lcom/join/android/app/component/video/MediaController;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/join/android/app/component/video/MyVideoView;->J()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
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
    iget-boolean p1, p0, Lcom/join/android/app/component/video/MyVideoView;->h:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->m:Lcom/join/android/app/component/video/MediaController;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/join/android/app/component/video/MyVideoView;->J()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/join/android/app/component/video/MyVideoView;->h:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/join/android/app/component/video/MyVideoView;->s:Z

    .line 22
    .line 23
    return-void
.end method

.method public seekTo(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msec"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/join/android/app/component/video/MyVideoView;->h:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput p1, p0, Lcom/join/android/app/component/video/MyVideoView;->t:I

    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fullScreen"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MyVideoView;->D()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/MyVideoView;->a(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setMediaController(Lcom/join/android/app/component/video/MediaController;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->m:Lcom/join/android/app/component/video/MediaController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MediaController;->hide()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->m:Lcom/join/android/app/component/video/MediaController;

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/join/android/app/component/video/MyVideoView;->A()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setMediaPlayer(Landroid/media/MediaPlayer;)V
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
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    return-void
.end method

.method public setMySizeChangeLinstener(Lcom/join/android/app/component/video/MyVideoView$g;)V
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
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->u:Lcom/join/android/app/component/video/MyVideoView$g;

    .line 2
    .line 3
    return-void
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mOnBufferingUpdateListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->p:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
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
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->n:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
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
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->r:Landroid/media/MediaPlayer$OnErrorListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
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
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->o:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 2
    .line 3
    return-void
.end method

.method public setScreenChangedListener(Lcom/join/android/app/component/video/MyVideoView$h;)V
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
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->v:Lcom/join/android/app/component/video/MyVideoView$h;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/MyVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setVideoScale(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    .line 7
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->d:Landroid/net/Uri;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/join/android/app/component/video/MyVideoView;->s:Z

    .line 5
    .line 6
    iput p1, p0, Lcom/join/android/app/component/video/MyVideoView;->t:I

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/join/android/app/component/video/MyVideoView;->F()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/join/android/app/component/video/MyVideoView;->h:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/join/android/app/component/video/MyVideoView;->s:Z

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/join/android/app/component/video/MyVideoView;->s:Z

    .line 18
    .line 19
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

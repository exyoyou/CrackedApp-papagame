.class public Lfm/jiecao/jcvideoplayer_lib/b$g;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfm/jiecao/jcvideoplayer_lib/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lfm/jiecao/jcvideoplayer_lib/b;


# direct methods
.method public constructor <init>(Lfm/jiecao/jcvideoplayer_lib/b;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget p1, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    .line 14
    .line 15
    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 18
    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :cond_1
    :try_start_0
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput v1, p1, Lfm/jiecao/jcvideoplayer_lib/b;->c:I

    .line 26
    .line 27
    iput v1, p1, Lfm/jiecao/jcvideoplayer_lib/b;->d:I

    .line 28
    .line 29
    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    .line 35
    .line 36
    new-instance v2, Landroid/media/MediaPlayer;

    .line 37
    .line 38
    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v2, p1, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 42
    .line 43
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    .line 44
    .line 45
    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 46
    .line 47
    const/4 v2, 0x3

    .line 48
    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    .line 52
    .line 53
    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 54
    .line 55
    sget-boolean v2, Lfm/jiecao/jcvideoplayer_lib/b;->m:Z

    .line 56
    .line 57
    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    .line 61
    .line 62
    iget-object v2, p1, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 63
    .line 64
    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    .line 68
    .line 69
    iget-object v2, p1, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 70
    .line 71
    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    .line 75
    .line 76
    iget-object v2, p1, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 77
    .line 78
    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    .line 82
    .line 83
    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 84
    .line 85
    const/4 v2, 0x1

    .line 86
    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    .line 90
    .line 91
    iget-object v3, p1, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 92
    .line 93
    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    .line 97
    .line 98
    iget-object v3, p1, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 99
    .line 100
    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    .line 104
    .line 105
    iget-object v3, p1, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 106
    .line 107
    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    .line 111
    .line 112
    iget-object v3, p1, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 113
    .line 114
    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    .line 118
    .line 119
    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 120
    .line 121
    const/4 v3, 0x0

    .line 122
    invoke-virtual {p1, v3, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 123
    .line 124
    .line 125
    const-class p1, Landroid/media/MediaPlayer;

    .line 126
    .line 127
    const-string v3, "setDataSource"

    .line 128
    .line 129
    new-array v4, v0, [Ljava/lang/Class;

    .line 130
    .line 131
    const-class v5, Ljava/lang/String;

    .line 132
    .line 133
    aput-object v5, v4, v1

    .line 134
    .line 135
    const-class v5, Ljava/util/Map;

    .line 136
    .line 137
    aput-object v5, v4, v2

    .line 138
    .line 139
    invoke-virtual {p1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    .line 144
    .line 145
    iget-object v3, v3, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 146
    .line 147
    new-array v0, v0, [Ljava/lang/Object;

    .line 148
    .line 149
    sget-object v4, Lfm/jiecao/jcvideoplayer_lib/b;->l:Ljava/lang/String;

    .line 150
    .line 151
    aput-object v4, v0, v1

    .line 152
    .line 153
    sget-object v1, Lfm/jiecao/jcvideoplayer_lib/b;->n:Ljava/util/Map;

    .line 154
    .line 155
    aput-object v1, v0, v2

    .line 156
    .line 157
    invoke-virtual {p1, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    .line 161
    .line 162
    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 163
    .line 164
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/b$g;->a:Lfm/jiecao/jcvideoplayer_lib/b;

    .line 168
    .line 169
    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/b;->b:Landroid/media/MediaPlayer;

    .line 170
    .line 171
    new-instance v0, Landroid/view/Surface;

    .line 172
    .line 173
    sget-object v1, Lfm/jiecao/jcvideoplayer_lib/b;->k:Landroid/graphics/SurfaceTexture;

    .line 174
    .line 175
    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .line 180
    .line 181
    goto :goto_0

    .line 182
    :catch_0
    move-exception p1

    .line 183
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 184
    .line 185
    .line 186
    :goto_0
    return-void
.end method

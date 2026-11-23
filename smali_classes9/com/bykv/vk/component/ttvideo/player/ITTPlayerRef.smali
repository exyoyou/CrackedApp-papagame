.class public abstract Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;
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

.method public static declared-synchronized create(Landroid/content/Context;Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;Ljava/util/HashMap;)Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/bykv/vk/component/ttvideo/utils/HardWareInfo;->getCpuFamily()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    invoke-static {p1, p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;->create(Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;Landroid/content/Context;)Lcom/bykv/vk/component/ttvideo/player/TTPlayerRef;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    invoke-static {}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->isPrintInfo()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const-string p1, "ttplayer"

    .line 24
    .line 25
    const-string v1, "---------->ttplayer on<------------"

    .line 26
    .line 27
    invoke-static {p1, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    :cond_1
    :goto_0
    if-nez p0, :cond_3

    .line 33
    .line 34
    const-string p1, "ttplayer"

    .line 35
    .line 36
    const-string v1, "not find start service info."

    .line 37
    .line 38
    const/16 v3, 0x10

    .line 39
    .line 40
    invoke-static {v3, v1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getValue(ILjava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {p1, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x3

    .line 48
    const/16 v1, 0xa

    .line 49
    .line 50
    const/4 v3, 0x7

    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    const/16 v4, 0x64

    .line 54
    .line 55
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Ljava/lang/Integer;

    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-ne v4, v2, :cond_2

    .line 70
    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    check-cast v4, Ljava/lang/Integer;

    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-nez v4, :cond_3

    .line 86
    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Ljava/lang/Integer;

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-ge v1, p1, :cond_3

    .line 102
    .line 103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    const/4 p2, 0x0

    .line 116
    invoke-static {v3, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getValue(IZ)Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-nez v4, :cond_3

    .line 121
    .line 122
    invoke-static {v1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getValue(II)I

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    if-ge p2, p1, :cond_3

    .line 127
    .line 128
    invoke-static {v3, v2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->setValue(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .line 130
    .line 131
    :cond_3
    :goto_1
    monitor-exit v0

    .line 132
    return-object p0

    .line 133
    :catchall_0
    move-exception p0

    .line 134
    monitor-exit v0

    .line 135
    throw p0
.end method


# virtual methods
.method protected abstract close()V
.end method

.method protected abstract getContext()Landroid/content/Context;
.end method

.method protected abstract getDoubleOption(ID)D
.end method

.method protected abstract getFloatOption(IF)F
.end method

.method protected abstract getIntOption(II)I
.end method

.method protected abstract getLifeId()I
.end method

.method protected abstract getLongOption(IJ)J
.end method

.method protected abstract getObjectOption(I)Ljava/lang/Object;
.end method

.method protected abstract getStringOption(I)Ljava/lang/String;
.end method

.method protected abstract getType()I
.end method

.method protected invalid()V
    .locals 0

    return-void
.end method

.method protected abstract isValid()Z
.end method

.method protected abstract mouseEvent(III)V
.end method

.method protected abstract pause()V
.end method

.method protected abstract prepare()V
.end method

.method protected abstract prevClose()V
.end method

.method protected abstract release()V
.end method

.method protected abstract reset()V
.end method

.method protected abstract rotateCamera(FF)V
.end method

.method protected abstract seekTo(I)V
.end method

.method protected abstract setAudioProcessor(Lcom/bykv/vk/component/ttvideo/player/AudioProcessor;)V
.end method

.method protected abstract setCacheFile(Ljava/lang/String;I)V
.end method

.method protected abstract setDataSource(Lcom/bykv/vk/component/ttvideo/player/IMediaDataSource;)V
.end method

.method protected abstract setDataSource(Ljava/lang/String;)V
.end method

.method protected abstract setDataSourceFd(I)V
.end method

.method protected abstract setDoubleOption(ID)I
.end method

.method protected abstract setFloatOption(IF)I
.end method

.method protected abstract setFrameMetadataListener(Lcom/bykv/vk/component/ttvideo/player/FrameMetadataListener;)V
.end method

.method protected abstract setIntOption(II)I
.end method

.method protected abstract setLoadControl(Lcom/bykv/vk/component/ttvideo/player/LoadControl;)V
.end method

.method protected abstract setLongOption(IJ)I
.end method

.method protected abstract setLooping(I)V
.end method

.method protected abstract setMaskInfo(Lcom/bykv/vk/component/ttvideo/player/MaskInfo;)V
.end method

.method protected abstract setMediaTransport(Lcom/bykv/vk/component/ttvideo/player/MediaTransport;)V
.end method

.method protected abstract setNotifyState(J)V
.end method

.method protected abstract setOnScreenshotListener(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnScreenshotListener;)V
.end method

.method protected abstract setStringOption(ILjava/lang/String;)I
.end method

.method protected abstract setSubInfo(Lcom/bykv/vk/component/ttvideo/player/SubInfo;)V
.end method

.method protected abstract setSurface(Landroid/view/Surface;)V
.end method

.method protected abstract setVolume(FF)V
.end method

.method protected abstract start()V
.end method

.method protected abstract stop()V
.end method

.method protected abstract switchStream(II)V
.end method

.method protected abstract takeScreenshot()V
.end method

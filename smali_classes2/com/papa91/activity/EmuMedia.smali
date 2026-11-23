.class public Lcom/papa91/activity/EmuMedia;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static RectSrc:Landroid/graphics/Rect;

.field private static holder:Landroid/view/SurfaceHolder;

.field private static region:Landroid/graphics/Rect;

.field private static track:Landroid/media/AudioTrack;

.field private static volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/papa91/activity/EmuMedia;->RectSrc:Landroid/graphics/Rect;

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/papa91/activity/EmuMedia;->region:Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sput v0, Lcom/papa91/activity/EmuMedia;->volume:F

    .line 20
    .line 21
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

.method static audioCreate(III)Z
    .locals 10

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x2

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    const/4 v7, 0x2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v7, 0x3

    .line 10
    :goto_0
    if-ne p2, v2, :cond_1

    .line 11
    .line 12
    const/4 v6, 0x3

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    const/4 v6, 0x2

    .line 15
    :goto_1
    sget-object p1, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-ne p1, p0, :cond_2

    .line 25
    .line 26
    sget-object p1, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getAudioFormat()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-ne p1, v7, :cond_2

    .line 33
    .line 34
    sget-object p1, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getChannelCount()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-ne p1, p2, :cond_2

    .line 41
    .line 42
    return v0

    .line 43
    :cond_2
    invoke-static {p0, v6, v7}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    mul-int/lit8 p1, p1, 0x2

    .line 48
    .line 49
    const/16 p2, 0x5dc

    .line 50
    .line 51
    if-ge p1, p2, :cond_3

    .line 52
    .line 53
    const/16 v8, 0x5dc

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    move v8, p1

    .line 57
    :goto_2
    const/4 p1, 0x0

    .line 58
    :try_start_0
    new-instance p2, Landroid/media/AudioTrack;

    .line 59
    .line 60
    const/4 v4, 0x3

    .line 61
    const/4 v9, 0x1

    .line 62
    move-object v3, p2

    .line 63
    move v5, p0

    .line 64
    invoke-direct/range {v3 .. v9}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 65
    .line 66
    .line 67
    sput-object p2, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/media/AudioTrack;->getState()I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-nez p0, :cond_4

    .line 74
    .line 75
    sput-object p1, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :catch_0
    sput-object p1, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    .line 79
    .line 80
    :cond_4
    :goto_3
    sget-object p0, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    .line 81
    .line 82
    if-nez p0, :cond_5

    .line 83
    .line 84
    const/4 p0, 0x0

    .line 85
    return p0

    .line 86
    :cond_5
    sget p1, Lcom/papa91/activity/EmuMedia;->volume:F

    .line 87
    .line 88
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 89
    .line 90
    .line 91
    return v0
.end method

.method static audioDestroy()V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-object v0, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method static audioPause()V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method static audioPlay([BI)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p0, v1, p1}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    return-void
.end method

.method static audioSetVolume(I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-float/2addr v1, v0

    .line 10
    int-to-float p0, p0

    .line 11
    mul-float v1, v1, p0

    .line 12
    .line 13
    const/high16 p0, 0x42c80000    # 100.0f

    .line 14
    .line 15
    div-float/2addr v1, p0

    .line 16
    add-float/2addr v0, v1

    .line 17
    sput v0, Lcom/papa91/activity/EmuMedia;->volume:F

    .line 18
    .line 19
    sget-object p0, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, v0, v0}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method static audioStart()V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method static audioStop()V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method static destroy()V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-object v0, Lcom/papa91/activity/EmuMedia;->track:Landroid/media/AudioTrack;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method static setSrcRegion(IIII)V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuMedia;->RectSrc:Landroid/graphics/Rect;

    .line 2
    .line 3
    add-int/2addr p2, p0

    .line 4
    add-int/2addr p3, p1

    .line 5
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method static setSurface(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/papa91/activity/EmuMedia;->holder:Landroid/view/SurfaceHolder;

    .line 2
    .line 3
    return-void
.end method

.method static setSurfaceRegion(IIII)V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuMedia;->region:Landroid/graphics/Rect;

    add-int/2addr p2, p0

    add-int/2addr p3, p1

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method static setSurfaceRegion(Landroid/graphics/Rect;)V
    .locals 0

    .line 2
    sput-object p0, Lcom/papa91/activity/EmuMedia;->region:Landroid/graphics/Rect;

    return-void
.end method

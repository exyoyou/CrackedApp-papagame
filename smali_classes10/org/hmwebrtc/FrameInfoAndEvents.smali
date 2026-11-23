.class public Lorg/hmwebrtc/FrameInfoAndEvents;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FrameInfoAndEvents"


# instance fields
.field private frameRotation:I

.field private isFirstFrameRendered:Z

.field private rendererEvents:Lorg/hmwebrtc/RendererCommon$RendererEvents;

.field private rotatedFrameHeight:I

.field private rotatedFrameWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/hmwebrtc/FrameInfoAndEvents;->rendererEvents:Lorg/hmwebrtc/RendererCommon$RendererEvents;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lorg/hmwebrtc/FrameInfoAndEvents;->isFirstFrameRendered:Z

    .line 9
    .line 10
    iput v0, p0, Lorg/hmwebrtc/FrameInfoAndEvents;->rotatedFrameWidth:I

    .line 11
    .line 12
    iput v0, p0, Lorg/hmwebrtc/FrameInfoAndEvents;->rotatedFrameHeight:I

    .line 13
    .line 14
    iput v0, p0, Lorg/hmwebrtc/FrameInfoAndEvents;->frameRotation:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public setRendererEvents(Lorg/hmwebrtc/RendererCommon$RendererEvents;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/FrameInfoAndEvents;->rendererEvents:Lorg/hmwebrtc/RendererCommon$RendererEvents;

    .line 2
    .line 3
    return-void
.end method

.method public updateFrameDimensionsAndReportEvents(Lorg/hmwebrtc/VideoFrame;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/FrameInfoAndEvents;->isFirstFrameRendered:Z

    .line 2
    .line 3
    const-string v1, "FrameInfoAndEvents"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lorg/hmwebrtc/FrameInfoAndEvents;->isFirstFrameRendered:Z

    .line 9
    .line 10
    const-string v0, "Reporting first rendered frame."

    .line 11
    .line 12
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lorg/hmwebrtc/FrameInfoAndEvents;->rendererEvents:Lorg/hmwebrtc/RendererCommon$RendererEvents;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Lorg/hmwebrtc/RendererCommon$RendererEvents;->onFirstFrameRendered()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget v0, p0, Lorg/hmwebrtc/FrameInfoAndEvents;->rotatedFrameWidth:I

    .line 23
    .line 24
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotatedWidth()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-ne v0, v2, :cond_1

    .line 29
    .line 30
    iget v0, p0, Lorg/hmwebrtc/FrameInfoAndEvents;->rotatedFrameHeight:I

    .line 31
    .line 32
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotatedHeight()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-ne v0, v2, :cond_1

    .line 37
    .line 38
    iget v0, p0, Lorg/hmwebrtc/FrameInfoAndEvents;->frameRotation:I

    .line 39
    .line 40
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotation()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eq v0, v2, :cond_3

    .line 45
    .line 46
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "Reporting frame resolution changed to "

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-interface {v2}, Lorg/hmwebrtc/VideoFrame$Buffer;->getWidth()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, "x"

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-interface {v2}, Lorg/hmwebrtc/VideoFrame$Buffer;->getHeight()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v2, " with rotation "

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotation()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lorg/hmwebrtc/FrameInfoAndEvents;->rendererEvents:Lorg/hmwebrtc/RendererCommon$RendererEvents;

    .line 103
    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-interface {v1}, Lorg/hmwebrtc/VideoFrame$Buffer;->getWidth()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-interface {v2}, Lorg/hmwebrtc/VideoFrame$Buffer;->getHeight()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotation()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    invoke-interface {v0, v1, v2, v3}, Lorg/hmwebrtc/RendererCommon$RendererEvents;->onFrameResolutionChanged(III)V

    .line 127
    .line 128
    .line 129
    :cond_2
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotatedWidth()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    iput v0, p0, Lorg/hmwebrtc/FrameInfoAndEvents;->rotatedFrameWidth:I

    .line 134
    .line 135
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotatedHeight()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    iput v0, p0, Lorg/hmwebrtc/FrameInfoAndEvents;->rotatedFrameHeight:I

    .line 140
    .line 141
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getRotation()I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    iput p1, p0, Lorg/hmwebrtc/FrameInfoAndEvents;->frameRotation:I

    .line 146
    .line 147
    :cond_3
    return-void
.end method

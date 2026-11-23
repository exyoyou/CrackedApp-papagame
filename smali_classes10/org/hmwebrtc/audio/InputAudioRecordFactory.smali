.class public Lorg/hmwebrtc/audio/InputAudioRecordFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/audio/AudioRecordFactory;
.implements Lorg/hmwebrtc/audio/InputAudioWriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/audio/InputAudioRecordFactory$AudioInput;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InputAudioRecordFactory"


# instance fields
.field private final AUDIO_READ_DELAY_MS_MAX:J

.field private final AUDIO_READ_DELAY_MS_MIN:J

.field private mAudioBuffer:Lorg/hmwebrtc/audio/InputAudioBuffer;

.field private mAudioReadDelayMs:J

.field private mSimplePcmFile:Lorg/hmwebrtc/audio/SimplePcmFile;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x5

    .line 2
    iput-wide v0, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory;->mAudioReadDelayMs:J

    const-wide/16 v0, 0xa

    .line 3
    iput-wide v0, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory;->AUDIO_READ_DELAY_MS_MAX:J

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory;->AUDIO_READ_DELAY_MS_MIN:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x5

    .line 6
    iput-wide v0, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory;->mAudioReadDelayMs:J

    const-wide/16 v0, 0xa

    .line 7
    iput-wide v0, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory;->AUDIO_READ_DELAY_MS_MAX:J

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory;->AUDIO_READ_DELAY_MS_MIN:J

    .line 9
    new-instance v0, Lorg/hmwebrtc/audio/SimplePcmFile;

    invoke-direct {v0, p1}, Lorg/hmwebrtc/audio/SimplePcmFile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory;->mSimplePcmFile:Lorg/hmwebrtc/audio/SimplePcmFile;

    return-void
.end method


# virtual methods
.method public create(IIIII)Lorg/hmwebrtc/audio/IAudioRecord;
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory;->mAudioBuffer:Lorg/hmwebrtc/audio/InputAudioBuffer;

    .line 2
    .line 3
    const-string v1, "InputAudioRecordFactory"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/hmwebrtc/audio/InputAudioBuffer;->stop()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "stop last audiobuffer: "

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory;->mAudioBuffer:Lorg/hmwebrtc/audio/InputAudioBuffer;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-static {p3}, Lorg/hmwebrtc/audio/a;->c(I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-static {p2, p4, v0}, Lorg/hmwebrtc/audio/a;->b(III)J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    iget-wide v4, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory;->mAudioReadDelayMs:J

    .line 45
    .line 46
    mul-long v2, v2, v4

    .line 47
    .line 48
    const-wide/16 v4, 0x3e8

    .line 49
    .line 50
    div-long/2addr v2, v4

    .line 51
    new-instance v0, Lorg/hmwebrtc/audio/InputAudioBuffer;

    .line 52
    .line 53
    long-to-int v4, v2

    .line 54
    invoke-direct {v0, p5, v4}, Lorg/hmwebrtc/audio/InputAudioBuffer;-><init>(II)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory;->mAudioBuffer:Lorg/hmwebrtc/audio/InputAudioBuffer;

    .line 58
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v4, "create IAudioRecord   bufferPtr:"

    .line 65
    .line 66
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v4, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory;->mAudioBuffer:Lorg/hmwebrtc/audio/InputAudioBuffer;

    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v4, " bufferSizeInBytes:"

    .line 79
    .line 80
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v4, " readDelayMs:"

    .line 87
    .line 88
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-wide v4, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory;->mAudioReadDelayMs:J

    .line 92
    .line 93
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v4, " readDelayBytes:"

    .line 97
    .line 98
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v2, " sampleRate:"

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v2, " channelConfig:"

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v2, " audioFormat:"

    .line 121
    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    new-instance v0, Lorg/hmwebrtc/audio/InputAudioRecordFactory$AudioInput;

    .line 136
    .line 137
    iget-object v8, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory;->mAudioBuffer:Lorg/hmwebrtc/audio/InputAudioBuffer;

    .line 138
    .line 139
    move-object v2, v0

    .line 140
    move v3, p1

    .line 141
    move v4, p2

    .line 142
    move v5, p3

    .line 143
    move v6, p4

    .line 144
    move v7, p5

    .line 145
    invoke-direct/range {v2 .. v8}, Lorg/hmwebrtc/audio/InputAudioRecordFactory$AudioInput;-><init>(IIIIILorg/hmwebrtc/audio/InputAudioBuffer;)V

    .line 146
    .line 147
    .line 148
    return-object v0
.end method

.method public isAecSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAgcSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNSSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAudioReadDelayMs(J)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-gez v2, :cond_0

    .line 6
    .line 7
    iput-wide v0, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory;->mAudioReadDelayMs:J

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/16 v0, 0xa

    .line 11
    .line 12
    cmp-long v2, p1, v0

    .line 13
    .line 14
    if-lez v2, :cond_1

    .line 15
    .line 16
    iput-wide v0, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory;->mAudioReadDelayMs:J

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iput-wide p1, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory;->mAudioReadDelayMs:J

    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public write([BII)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory;->mAudioBuffer:Lorg/hmwebrtc/audio/InputAudioBuffer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/hmwebrtc/audio/InputAudioBuffer;->write([BII)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lorg/hmwebrtc/audio/InputAudioRecordFactory;->mSimplePcmFile:Lorg/hmwebrtc/audio/SimplePcmFile;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1}, Lorg/hmwebrtc/audio/SimplePcmFile;->getWriter()Lorg/hmwebrtc/audio/SimplePcmFile$Writer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1, p1, p2, p3}, Lorg/hmwebrtc/audio/SimplePcmFile$Writer;->write([BII)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return v0
.end method

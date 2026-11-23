.class public Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/sevenzipjbinding/IInStream;


# static fields
.field private static final SEVEN_ZIP_FIRST_VOLUME_POSTFIX:Ljava/lang/String; = ".7z.001"


# instance fields
.field private absoluteLength:J

.field private absoluteOffset:J

.field private final archiveOpenVolumeCallback:Lnet/sf/sevenzipjbinding/IArchiveOpenVolumeCallback;

.field private currentInStream:Lnet/sf/sevenzipjbinding/IInStream;

.field private currentIndex:I

.field private currentVolumeLength:J

.field private currentVolumeOffset:J

.field private cuttedVolumeFilename:Ljava/lang/String;

.field private volumePositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/sf/sevenzipjbinding/IArchiveOpenVolumeCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteLength:J

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentIndex:I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 6
    iput-object p2, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->archiveOpenVolumeCallback:Lnet/sf/sevenzipjbinding/IArchiveOpenVolumeCallback;

    const-wide/16 v1, 0x0

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, ".7z.001"

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->cuttedVolumeFilename:Ljava/lang/String;

    const/4 p1, 0x1

    .line 10
    invoke-direct {p0, p1, p1}, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->openVolume(IZ)V

    return-void

    .line 11
    :cond_0
    new-instance v0, Lnet/sf/sevenzipjbinding/SevenZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The first 7z volume filename \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' don\'t ends with the postfix: \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'. Can\'t proceed"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lnet/sf/sevenzipjbinding/IArchiveOpenVolumeCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    sget-object v0, Lnet/sf/sevenzipjbinding/PropID;->NAME:Lnet/sf/sevenzipjbinding/PropID;

    invoke-interface {p1, v0}, Lnet/sf/sevenzipjbinding/IArchiveOpenVolumeCallback;->getProperty(Lnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;-><init>(Ljava/lang/String;Lnet/sf/sevenzipjbinding/IArchiveOpenVolumeCallback;)V

    return-void
.end method

.method private openVolume(IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentIndex:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    const-wide/16 v1, -0x1

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-ge v0, p1, :cond_1

    .line 16
    .line 17
    iget-wide v4, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteLength:J

    .line 18
    .line 19
    cmp-long v6, v4, v1

    .line 20
    .line 21
    if-nez v6, :cond_1

    .line 22
    .line 23
    invoke-direct {p0, v0, v3}, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->openVolume(IZ)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-wide v4, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteLength:J

    .line 30
    .line 31
    cmp-long v0, v4, v1

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-gt v0, p1, :cond_2

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->cuttedVolumeFilename:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    new-array v2, v1, [Ljava/lang/Object;

    .line 56
    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    aput-object v4, v2, v3

    .line 62
    .line 63
    const-string v4, "{0,number,000}"

    .line 64
    .line 65
    invoke-static {v4, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v2, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->archiveOpenVolumeCallback:Lnet/sf/sevenzipjbinding/IArchiveOpenVolumeCallback;

    .line 77
    .line 78
    invoke-interface {v2, v0}, Lnet/sf/sevenzipjbinding/IArchiveOpenVolumeCallback;->getStream(Ljava/lang/String;)Lnet/sf/sevenzipjbinding/IInStream;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-nez v0, :cond_3

    .line 83
    .line 84
    iget-object p1, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 85
    .line 86
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    sub-int/2addr p2, v1

    .line 91
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Ljava/lang/Long;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 98
    .line 99
    .line 100
    move-result-wide p1

    .line 101
    iput-wide p1, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteLength:J

    .line 102
    .line 103
    return-void

    .line 104
    :cond_3
    iput-object v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentInStream:Lnet/sf/sevenzipjbinding/IInStream;

    .line 105
    .line 106
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 107
    .line 108
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    const-wide/16 v1, 0x0

    .line 113
    .line 114
    if-ne v0, p1, :cond_5

    .line 115
    .line 116
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentInStream:Lnet/sf/sevenzipjbinding/IInStream;

    .line 117
    .line 118
    const/4 v4, 0x2

    .line 119
    invoke-interface {v0, v1, v2, v4}, Lnet/sf/sevenzipjbinding/ISeekableStream;->seek(JI)J

    .line 120
    .line 121
    .line 122
    move-result-wide v4

    .line 123
    iput-wide v4, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentVolumeLength:J

    .line 124
    .line 125
    cmp-long v0, v4, v1

    .line 126
    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 130
    .line 131
    add-int/lit8 v4, p1, -0x1

    .line 132
    .line 133
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    check-cast v4, Ljava/lang/Long;

    .line 138
    .line 139
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 140
    .line 141
    .line 142
    move-result-wide v4

    .line 143
    iget-wide v6, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentVolumeLength:J

    .line 144
    .line 145
    add-long/2addr v4, v6

    .line 146
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    if-eqz p2, :cond_6

    .line 154
    .line 155
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentInStream:Lnet/sf/sevenzipjbinding/IInStream;

    .line 156
    .line 157
    invoke-interface {v0, v1, v2, v3}, Lnet/sf/sevenzipjbinding/ISeekableStream;->seek(JI)J

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_4
    new-instance p2, Ljava/lang/RuntimeException;

    .line 162
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string v1, "Volume "

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string p1, " is empty"

    .line 177
    .line 178
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw p2

    .line 189
    :cond_5
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 190
    .line 191
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Ljava/lang/Long;

    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 198
    .line 199
    .line 200
    move-result-wide v3

    .line 201
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 202
    .line 203
    add-int/lit8 v5, p1, -0x1

    .line 204
    .line 205
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    check-cast v0, Ljava/lang/Long;

    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 212
    .line 213
    .line 214
    move-result-wide v5

    .line 215
    sub-long/2addr v3, v5

    .line 216
    iput-wide v3, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentVolumeLength:J

    .line 217
    .line 218
    :cond_6
    :goto_1
    if-eqz p2, :cond_7

    .line 219
    .line 220
    iput-wide v1, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentVolumeOffset:J

    .line 221
    .line 222
    iget-object p2, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 223
    .line 224
    add-int/lit8 v0, p1, -0x1

    .line 225
    .line 226
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    check-cast p2, Ljava/lang/Long;

    .line 231
    .line 232
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 233
    .line 234
    .line 235
    move-result-wide v0

    .line 236
    iput-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    .line 237
    .line 238
    :cond_7
    iput p1, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentIndex:I

    .line 239
    .line 240
    return-void
.end method

.method private openVolumeToAbsoluteOffset()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    iget-wide v1, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteLength:J

    .line 10
    .line 11
    const-wide/16 v3, -0x1

    .line 12
    .line 13
    cmp-long v5, v1, v3

    .line 14
    .line 15
    if-eqz v5, :cond_0

    .line 16
    .line 17
    iget-wide v5, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    .line 18
    .line 19
    cmp-long v7, v5, v1

    .line 20
    .line 21
    if-ltz v7, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    :goto_0
    iget-object v1, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/Long;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    iget-wide v5, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    .line 37
    .line 38
    cmp-long v7, v1, v5

    .line 39
    .line 40
    if-lez v7, :cond_1

    .line 41
    .line 42
    add-int/lit8 v0, v0, -0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v1, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/lit8 v1, v1, -0x1

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    if-ge v0, v1, :cond_2

    .line 55
    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    invoke-direct {p0, v0, v2}, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->openVolume(IZ)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    invoke-direct {p0, v0, v2}, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->openVolume(IZ)V

    .line 65
    .line 66
    .line 67
    iget-wide v5, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteLength:J

    .line 68
    .line 69
    cmp-long v1, v5, v3

    .line 70
    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    iget-wide v7, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    .line 74
    .line 75
    cmp-long v1, v7, v5

    .line 76
    .line 77
    if-gez v1, :cond_4

    .line 78
    .line 79
    :cond_3
    iget-object v1, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Ljava/lang/Long;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 88
    .line 89
    .line 90
    move-result-wide v5

    .line 91
    iget-wide v7, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    .line 92
    .line 93
    cmp-long v1, v5, v7

    .line 94
    .line 95
    if-lez v1, :cond_2

    .line 96
    .line 97
    :cond_4
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    const-string v1, "close() method not supported. The user should implement its own caching and closing stratagies within the IArchiveOpenVolumeCallback.getStream() implementation."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public declared-synchronized read([B)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteLength:J

    .line 3
    .line 4
    const-wide/16 v2, -0x1

    .line 5
    .line 6
    cmp-long v4, v0, v2

    .line 7
    .line 8
    if-eqz v4, :cond_0

    .line 9
    .line 10
    iget-wide v2, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    cmp-long v4, v2, v0

    .line 13
    .line 14
    if-ltz v4, :cond_0

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_0
    :try_start_1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentInStream:Lnet/sf/sevenzipjbinding/IInStream;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Lnet/sf/sevenzipjbinding/ISequentialInStream;->read([B)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    .line 26
    .line 27
    int-to-long v2, p1

    .line 28
    add-long/2addr v0, v2

    .line 29
    iput-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    .line 30
    .line 31
    iget-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentVolumeOffset:J

    .line 32
    .line 33
    add-long/2addr v0, v2

    .line 34
    iput-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentVolumeOffset:J

    .line 35
    .line 36
    iget-wide v2, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentVolumeLength:J

    .line 37
    .line 38
    cmp-long v4, v0, v2

    .line 39
    .line 40
    if-ltz v4, :cond_1

    .line 41
    .line 42
    iget v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentIndex:I

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    add-int/2addr v0, v1

    .line 46
    invoke-direct {p0, v0, v1}, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->openVolume(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    :cond_1
    monitor-exit p0

    .line 50
    return p1

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    monitor-exit p0

    .line 53
    throw p1
.end method

.method public declared-synchronized seek(JI)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, -0x1

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz p3, :cond_3

    .line 7
    .line 8
    if-eq p3, v2, :cond_2

    .line 9
    .line 10
    const/4 v4, 0x2

    .line 11
    if-ne p3, v4, :cond_1

    .line 12
    .line 13
    :try_start_0
    iget-wide v4, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteLength:J

    .line 14
    .line 15
    cmp-long p3, v4, v0

    .line 16
    .line 17
    if-nez p3, :cond_0

    .line 18
    .line 19
    const p3, 0x7fffffff

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p3, v3}, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->openVolume(IZ)V

    .line 23
    .line 24
    .line 25
    const/4 p3, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p3, 0x0

    .line 28
    :goto_0
    iget-wide v4, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteLength:J

    .line 29
    .line 30
    add-long/2addr p1, v4

    .line 31
    goto :goto_2

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v0, "Seek: unknown origin: "

    .line 40
    .line 41
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_2
    iget-wide v4, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    .line 56
    .line 57
    add-long/2addr p1, v4

    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    :goto_1
    const/4 p3, 0x0

    .line 62
    :goto_2
    iget-wide v4, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    cmp-long v6, p1, v4

    .line 65
    .line 66
    if-nez v6, :cond_4

    .line 67
    .line 68
    if-nez p3, :cond_4

    .line 69
    .line 70
    monitor-exit p0

    .line 71
    return-wide p1

    .line 72
    :cond_4
    :try_start_1
    iput-wide p1, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    .line 73
    .line 74
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->openVolumeToAbsoluteOffset()V

    .line 75
    .line 76
    .line 77
    iget-wide v4, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteLength:J

    .line 78
    .line 79
    cmp-long p3, v4, v0

    .line 80
    .line 81
    if-eqz p3, :cond_5

    .line 82
    .line 83
    iget-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    .line 84
    .line 85
    cmp-long p3, v4, v0

    .line 86
    .line 87
    if-gtz p3, :cond_5

    .line 88
    .line 89
    iput-wide v4, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .line 91
    monitor-exit p0

    .line 92
    return-wide v4

    .line 93
    :cond_5
    :try_start_2
    iget-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    .line 94
    .line 95
    iget-object p3, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 96
    .line 97
    iget v4, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentIndex:I

    .line 98
    .line 99
    sub-int/2addr v4, v2

    .line 100
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    check-cast p3, Ljava/lang/Long;

    .line 105
    .line 106
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 107
    .line 108
    .line 109
    move-result-wide v4

    .line 110
    sub-long/2addr v0, v4

    .line 111
    iput-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentVolumeOffset:J

    .line 112
    .line 113
    iget-object p3, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentInStream:Lnet/sf/sevenzipjbinding/IInStream;

    .line 114
    .line 115
    invoke-interface {p3, v0, v1, v3}, Lnet/sf/sevenzipjbinding/ISeekableStream;->seek(JI)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    .line 117
    .line 118
    monitor-exit p0

    .line 119
    return-wide p1

    .line 120
    :goto_3
    monitor-exit p0

    .line 121
    throw p1
.end method

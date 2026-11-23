.class public Lcom/vincent/videocompressor/VideoController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vincent/videocompressor/VideoController$c;,
        Lcom/vincent/videocompressor/VideoController$b;
    }
.end annotation


# static fields
.field static final c:I = 0x1

.field static final d:I = 0x2

.field static final e:I = 0x3

.field public static f:Ljava/io/File; = null

.field public static final g:Ljava/lang/String; = "video/avc"

.field private static final h:I = 0x0

.field private static final i:I = 0x1

.field private static final j:I = 0x2

.field private static final k:I = 0x3

.field private static final l:I = 0x4

.field private static final m:I = 0x5

.field private static volatile n:Lcom/vincent/videocompressor/VideoController;


# instance fields
.field public a:Ljava/lang/String;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/vincent/videocompressor/VideoController;->b:Z

    .line 6
    .line 7
    return-void
.end method

.method public static b(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "dst"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance v0, Ljava/io/FileOutputStream;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-wide/16 v2, 0x1

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    move-object v1, p0

    .line 26
    move-object v6, p1

    .line 27
    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 31
    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 43
    .line 44
    .line 45
    :cond_1
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 48
    .line 49
    .line 50
    :cond_2
    throw v0
.end method

.method private c(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "last",
            "error"
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lcom/vincent/videocompressor/VideoController;->b:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/vincent/videocompressor/VideoController;->b:Z

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static native convertVideoFrame(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIII)I
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
            "src",
            "dest",
            "destFormat",
            "width",
            "height",
            "padding",
            "swap"
        }
    .end annotation
.end method

.method public static d()Lcom/vincent/videocompressor/VideoController;
    .locals 2

    .line 1
    sget-object v0, Lcom/vincent/videocompressor/VideoController;->n:Lcom/vincent/videocompressor/VideoController;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v1, Lcom/vincent/videocompressor/VideoController;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    sget-object v0, Lcom/vincent/videocompressor/VideoController;->n:Lcom/vincent/videocompressor/VideoController;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/vincent/videocompressor/VideoController;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/vincent/videocompressor/VideoController;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/vincent/videocompressor/VideoController;->n:Lcom/vincent/videocompressor/VideoController;

    .line 18
    .line 19
    :cond_0
    monitor-exit v1

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v0

    .line 24
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static e(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorFormat"
        }
    .end annotation

    .line 1
    const/16 v0, 0x27

    if-eq p0, v0, :cond_0

    const v0, 0x7f000100

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private f(Landroid/media/MediaExtractor;Lcom/vincent/videocompressor/b;Landroid/media/MediaCodec$BufferInfo;JJLjava/io/File;Z)J
    .locals 21
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

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
            "extractor",
            "mediaMuxer",
            "info",
            "start",
            "end",
            "file",
            "isAudio"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-wide/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v5, p0

    .line 10
    .line 11
    move/from16 v6, p9

    .line 12
    .line 13
    invoke-direct {v5, v0, v6}, Lcom/vincent/videocompressor/VideoController;->j(Landroid/media/MediaExtractor;Z)I

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    const-wide/16 v8, -0x1

    .line 18
    .line 19
    if-ltz v7, :cond_9

    .line 20
    .line 21
    invoke-virtual {v0, v7}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v7}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    .line 25
    .line 26
    .line 27
    move-result-object v10

    .line 28
    invoke-virtual {v1, v10, v6}, Lcom/vincent/videocompressor/b;->a(Landroid/media/MediaFormat;Z)I

    .line 29
    .line 30
    .line 31
    move-result v11

    .line 32
    const-string v12, "max-input-size"

    .line 33
    .line 34
    invoke-virtual {v10, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v10

    .line 38
    const-wide/16 v12, 0x0

    .line 39
    .line 40
    const/4 v14, 0x0

    .line 41
    cmp-long v15, v3, v12

    .line 42
    .line 43
    if-lez v15, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0, v3, v4, v14}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v0, v12, v13, v14}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    move-wide/from16 v16, v8

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    :goto_1
    if-nez v4, :cond_8

    .line 60
    .line 61
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    const/16 v18, 0x1

    .line 66
    .line 67
    if-ne v10, v7, :cond_4

    .line 68
    .line 69
    invoke-virtual {v0, v3, v14}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    .line 70
    .line 71
    .line 72
    move-result v10

    .line 73
    iput v10, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 74
    .line 75
    if-gez v10, :cond_1

    .line 76
    .line 77
    iput v14, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 78
    .line 79
    move-wide/from16 v19, v12

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    .line 83
    .line 84
    .line 85
    move-result-wide v12

    .line 86
    iput-wide v12, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 87
    .line 88
    if-lez v15, :cond_2

    .line 89
    .line 90
    cmp-long v10, v16, v8

    .line 91
    .line 92
    if-nez v10, :cond_2

    .line 93
    .line 94
    move-wide/from16 v16, v12

    .line 95
    .line 96
    :cond_2
    const-wide/16 v19, 0x0

    .line 97
    .line 98
    cmp-long v10, p6, v19

    .line 99
    .line 100
    if-ltz v10, :cond_3

    .line 101
    .line 102
    cmp-long v10, v12, p6

    .line 103
    .line 104
    if-gez v10, :cond_5

    .line 105
    .line 106
    :cond_3
    iput v14, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 107
    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    iput v10, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 113
    .line 114
    invoke-virtual {v1, v11, v3, v2, v6}, Lcom/vincent/videocompressor/b;->q(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)Z

    .line 115
    .line 116
    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->advance()Z

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_4
    move-wide/from16 v19, v12

    .line 122
    .line 123
    const/4 v12, -0x1

    .line 124
    if-ne v10, v12, :cond_6

    .line 125
    .line 126
    :cond_5
    :goto_2
    const/4 v10, 0x1

    .line 127
    goto :goto_4

    .line 128
    :cond_6
    :goto_3
    const/4 v10, 0x0

    .line 129
    :goto_4
    if-eqz v10, :cond_7

    .line 130
    .line 131
    const/4 v4, 0x1

    .line 132
    :cond_7
    move-wide/from16 v12, v19

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_8
    invoke-virtual {v0, v7}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    .line 136
    .line 137
    .line 138
    return-wide v16

    .line 139
    :cond_9
    return-wide v8
.end method

.method public static h(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mimeType"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_0
    if-ge v3, v0, :cond_5

    .line 9
    .line 10
    invoke-static {v3}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-nez v5, :cond_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    array-length v6, v5

    .line 26
    const/4 v7, 0x0

    .line 27
    :goto_1
    if-ge v7, v6, :cond_4

    .line 28
    .line 29
    aget-object v8, v5, v7

    .line 30
    .line 31
    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    if-eqz v8, :cond_3

    .line 36
    .line 37
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v8, "OMX.SEC.avc.enc"

    .line 42
    .line 43
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    return-object v4

    .line 50
    :cond_1
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v8, "OMX.SEC.AVC.Encoder"

    .line 55
    .line 56
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    return-object v4

    .line 63
    :cond_2
    move-object v1, v4

    .line 64
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_5
    return-object v1
.end method

.method public static i(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "codecInfo",
            "mimeType"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p1, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    .line 8
    .line 9
    array-length v3, v2

    .line 10
    if-ge v0, v3, :cond_3

    .line 11
    .line 12
    aget v2, v2, v0

    .line 13
    .line 14
    invoke-static {v2}, Lcom/vincent/videocompressor/VideoController;->e(I)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v3, "OMX.SEC.AVC.Encoder"

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const/16 v1, 0x13

    .line 33
    .line 34
    if-eq v2, v1, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    move v1, v2

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    :goto_1
    return v2

    .line 40
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    return v1
.end method

.method private j(Landroid/media/MediaExtractor;Z)I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "extractor",
            "audio"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-string v3, "mime"

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    const-string v3, "audio/"

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    return v1

    .line 29
    :cond_0
    const-string v3, "video/"

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    return v1

    .line 38
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 p1, -0x5

    .line 42
    return p1
.end method

.method private k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "dest"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/vincent/videocompressor/VideoController$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ILcom/vincent/videocompressor/VideoController$b;)Z
    .locals 38
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sourcePath",
            "destinationPath",
            "quality",
            "listener"
        }
    .end annotation

    move-object/from16 v11, p0

    move/from16 v0, p3

    move-object/from16 v1, p4

    const-string v2, "video/avc"

    const-string v12, "time = "

    move-object/from16 v3, p1

    .line 1
    iput-object v3, v11, Lcom/vincent/videocompressor/VideoController;->a:Ljava/lang/String;

    .line 2
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 3
    iget-object v4, v11, Lcom/vincent/videocompressor/VideoController;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v4, 0x12

    .line 4
    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x13

    .line 5
    invoke-virtual {v3, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x18

    .line 6
    invoke-virtual {v3, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x9

    .line 7
    invoke-virtual {v3, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v7, v7, v9

    .line 8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 10
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0xa

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-eq v0, v14, :cond_1

    if-eq v0, v13, :cond_0

    mul-int/lit8 v0, v4, 0x2

    .line 11
    div-int/2addr v0, v13

    mul-int/lit8 v15, v5, 0x2

    .line 12
    div-int/2addr v15, v13

    mul-int v16, v0, v15

    mul-int/lit8 v16, v16, 0x1e

    :goto_0
    move/from16 v9, v16

    goto :goto_2

    .line 13
    :cond_0
    div-int/lit8 v0, v4, 0x2

    .line 14
    div-int/lit8 v15, v5, 0x2

    .line 15
    div-int/lit8 v16, v0, 0x2

    div-int/lit8 v17, v15, 0x2

    mul-int v16, v16, v17

    goto :goto_1

    .line 16
    :cond_1
    div-int/lit8 v0, v4, 0x2

    .line 17
    div-int/lit8 v15, v5, 0x2

    mul-int v16, v0, v15

    :goto_1
    mul-int/lit8 v16, v16, 0xa

    goto :goto_0

    .line 18
    :goto_2
    new-instance v10, Ljava/io/File;

    move-object/from16 v6, p2

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x5a

    const/4 v14, 0x0

    if-ne v3, v6, :cond_2

    :goto_3
    move v3, v0

    :goto_4
    const/4 v0, 0x0

    goto :goto_5

    :cond_2
    const/16 v6, 0xb4

    if-ne v3, v6, :cond_3

    move v3, v15

    move v15, v0

    goto :goto_4

    :cond_3
    const/16 v6, 0x10e

    if-ne v3, v6, :cond_4

    goto :goto_3

    :cond_4
    move/from16 v37, v15

    move v15, v0

    move v0, v3

    move/from16 v3, v37

    .line 19
    :goto_5
    new-instance v6, Ljava/io/File;

    iget-object v13, v11, Lcom/vincent/videocompressor/VideoController;->a:Ljava/lang/String;

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v13

    move-wide/from16 v19, v7

    const/4 v7, 0x1

    if-nez v13, :cond_5

    .line 21
    invoke-direct {v11, v7, v7}, Lcom/vincent/videocompressor/VideoController;->c(ZZ)V

    return v14

    .line 22
    :cond_5
    iput-boolean v7, v11, Lcom/vincent/videocompressor/VideoController;->b:Z

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    if-eqz v15, :cond_35

    if-eqz v3, :cond_35

    .line 24
    :try_start_0
    new-instance v13, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v13}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 25
    new-instance v7, Lcom/vincent/videocompressor/c;

    invoke-direct {v7}, Lcom/vincent/videocompressor/c;-><init>()V

    .line 26
    invoke-virtual {v7, v10}, Lcom/vincent/videocompressor/c;->h(Ljava/io/File;)V

    .line 27
    invoke-virtual {v7, v0}, Lcom/vincent/videocompressor/c;->i(I)V

    .line 28
    invoke-virtual {v7, v15, v3}, Lcom/vincent/videocompressor/c;->j(II)V

    .line 29
    new-instance v0, Lcom/vincent/videocompressor/b;

    invoke-direct {v0}, Lcom/vincent/videocompressor/b;-><init>()V

    invoke-virtual {v0, v7}, Lcom/vincent/videocompressor/b;->c(Lcom/vincent/videocompressor/c;)Lcom/vincent/videocompressor/b;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1c
    .catchall {:try_start_0 .. :try_end_0} :catchall_10

    .line 30
    :try_start_1
    new-instance v14, Landroid/media/MediaExtractor;

    invoke-direct {v14}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1b
    .catchall {:try_start_1 .. :try_end_1} :catchall_f

    .line 31
    :try_start_2
    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1a
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    const-wide/16 v23, -0x1

    if-ne v15, v4, :cond_8

    if-eq v3, v5, :cond_6

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v10

    const/4 v4, 0x0

    const/4 v10, 0x1

    goto/16 :goto_7

    :cond_6
    const/4 v0, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v15, -0x1

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v7

    move-object v4, v13

    move-object/from16 v25, v6

    move-wide v5, v8

    move-object/from16 v26, v7

    const/4 v9, 0x1

    move-wide v7, v15

    const/4 v15, 0x1

    move-object v9, v10

    move-object/from16 v27, v10

    move v10, v0

    .line 32
    :try_start_3
    invoke-direct/range {v1 .. v10}, Lcom/vincent/videocompressor/VideoController;->f(Landroid/media/MediaExtractor;Lcom/vincent/videocompressor/b;Landroid/media/MediaCodec$BufferInfo;JJLjava/io/File;Z)J

    move-result-wide v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    cmp-long v2, v0, v23

    if-eqz v2, :cond_7

    move-wide v5, v0

    move-object/from16 v35, v12

    move-object v11, v14

    goto :goto_6

    :cond_7
    move-object/from16 v35, v12

    move-object v11, v14

    move-wide/from16 v5, v23

    :goto_6
    move-object/from16 v10, v26

    const/4 v12, 0x0

    move-object v14, v13

    goto/16 :goto_39

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v13, v11

    move-object v1, v12

    move-object v8, v14

    move-object/from16 v10, v26

    goto/16 :goto_41

    :catch_0
    move-exception v0

    move-object v13, v11

    move-object v1, v12

    move-object v8, v14

    move-object/from16 v10, v26

    goto/16 :goto_3e

    :cond_8
    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v10

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 33
    :goto_7
    :try_start_4
    invoke-direct {v11, v14, v4}, Lcom/vincent/videocompressor/VideoController;->j(Landroid/media/MediaExtractor;Z)I

    move-result v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_19
    .catchall {:try_start_4 .. :try_end_4} :catchall_d

    if-ltz v5, :cond_2d

    .line 34
    :try_start_5
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "colorFormat = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f000789

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    mul-int v0, v15, v3

    const/4 v6, 0x3

    mul-int/lit8 v0, v0, 0x3

    const/4 v6, 0x2

    .line 36
    div-int/2addr v0, v6

    .line 37
    rem-int/lit8 v0, v3, 0x10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_14
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    if-eqz v0, :cond_9

    .line 38
    :try_start_6
    rem-int/lit8 v0, v3, 0x10

    rsub-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v3

    sub-int/2addr v0, v3

    mul-int v0, v0, v15

    mul-int/lit8 v0, v0, 0x5

    .line 39
    div-int/lit8 v0, v0, 0x4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v1, v0

    move/from16 v30, v5

    move-object/from16 v35, v12

    move-object/from16 v33, v14

    move-object/from16 v10, v26

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_8
    move-object v14, v13

    goto/16 :goto_34

    .line 40
    :cond_9
    :goto_9
    :try_start_7
    invoke-virtual {v14, v5}, Landroid/media/MediaExtractor;->selectTrack(I)V

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    .line 41
    invoke-virtual {v14, v6, v7, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 42
    invoke-virtual {v14, v5}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 43
    rem-int/lit8 v6, v15, 0x2

    if-nez v6, :cond_a

    move v6, v15

    goto :goto_a

    :cond_a
    add-int/lit8 v6, v15, -0x1

    :goto_a
    rem-int/lit8 v7, v3, 0x2

    if-nez v7, :cond_b

    move v7, v3

    goto :goto_b

    :cond_b
    add-int/lit8 v7, v3, -0x1

    :goto_b
    invoke-static {v2, v6, v7}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v6

    const-string v7, "color-format"

    .line 44
    invoke-virtual {v6, v7, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "bitrate"

    .line 45
    invoke-virtual {v6, v4, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "frame-rate"

    const/16 v7, 0x19

    .line 46
    invoke-virtual {v6, v4, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "i-frame-interval"

    const/16 v7, 0xa

    .line 47
    invoke-virtual {v6, v4, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 48
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_14
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    const/4 v7, 0x0

    .line 49
    :try_start_8
    invoke-virtual {v4, v6, v7, v7, v10}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 50
    new-instance v6, Lcom/vincent/videocompressor/a;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/vincent/videocompressor/a;-><init>(Landroid/view/Surface;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_13
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    .line 51
    :try_start_9
    invoke-virtual {v6}, Lcom/vincent/videocompressor/a;->d()V

    .line 52
    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    const-string v7, "mime"

    .line 53
    invoke-virtual {v0, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v7
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_12
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 54
    :try_start_a
    new-instance v8, Lcom/vincent/videocompressor/d;

    invoke-direct {v8}, Lcom/vincent/videocompressor/d;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_11
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 55
    :try_start_b
    invoke-virtual {v8}, Lcom/vincent/videocompressor/d;->g()Landroid/view/Surface;

    move-result-object v9
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_10
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    move-object/from16 v35, v12

    const/4 v10, 0x0

    const/4 v12, 0x0

    :try_start_c
    invoke-virtual {v7, v0, v9, v10, v12}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 56
    invoke-virtual {v7}, Landroid/media/MediaCodec;->start()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_f
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    const/4 v0, 0x0

    const/4 v12, 0x0

    const/16 v36, -0x5

    :goto_c
    if-nez v0, :cond_29

    const-wide/16 v10, 0x9c4

    if-nez v12, :cond_f

    .line 57
    :try_start_d
    invoke-virtual {v14}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v9

    if-ne v9, v5, :cond_d

    .line 58
    invoke-virtual {v7, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v9

    if-ltz v9, :cond_e

    .line 59
    invoke-virtual {v7, v9}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    const/4 v11, 0x0

    .line 60
    invoke-virtual {v14, v10, v11}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v31

    if-gez v31, :cond_c

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    const/16 v34, 0x4

    move-object/from16 v28, v7

    move/from16 v29, v9

    .line 61
    invoke-virtual/range {v28 .. v34}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v12, 0x1

    goto :goto_d

    :cond_c
    const/16 v30, 0x0

    .line 62
    invoke-virtual {v14}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v32

    const/16 v34, 0x0

    move-object/from16 v28, v7

    move/from16 v29, v9

    invoke-virtual/range {v28 .. v34}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 63
    invoke-virtual {v14}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_d

    :cond_d
    const/4 v10, -0x1

    if-ne v9, v10, :cond_e

    const/4 v9, 0x1

    goto :goto_e

    :cond_e
    :goto_d
    const/4 v9, 0x0

    :goto_e
    if-eqz v9, :cond_f

    const-wide/16 v9, 0x9c4

    .line 64
    invoke-virtual {v7, v9, v10}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v29

    if-ltz v29, :cond_f

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    const/16 v34, 0x4

    move-object/from16 v28, v7

    .line 65
    invoke-virtual/range {v28 .. v34}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    const/4 v12, 0x1

    goto :goto_10

    :catchall_1
    move-exception v0

    move-object/from16 v13, p0

    move-object v2, v0

    move-object v8, v14

    move-object/from16 v10, v26

    goto/16 :goto_32

    :catch_2
    move-exception v0

    move-object v1, v0

    move/from16 v30, v5

    move-object v9, v6

    move-object v0, v8

    move-object/from16 v33, v14

    move-object/from16 v10, v26

    :goto_f
    move-object v8, v7

    goto/16 :goto_8

    :cond_f
    :goto_10
    move/from16 v11, v36

    const/4 v9, 0x1

    const/4 v10, 0x1

    :goto_11
    if-nez v9, :cond_11

    if-eqz v10, :cond_10

    goto :goto_12

    :cond_10
    const/4 v10, 0x0

    move/from16 v36, v11

    move-object/from16 v11, p0

    goto/16 :goto_c

    :cond_11
    :goto_12
    move/from16 v30, v0

    move/from16 v28, v9

    move/from16 v29, v10

    const-wide/16 v9, 0x9c4

    .line 66
    :try_start_e
    invoke-virtual {v4, v13, v9, v10}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_f
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    const/4 v10, -0x3

    const/4 v9, -0x1

    if-ne v0, v9, :cond_12

    move-object/from16 v33, v14

    move-object/from16 v10, v26

    move/from16 v1, v30

    const/16 v18, 0x2

    const/16 v29, 0x0

    :goto_13
    move/from16 v30, v5

    move/from16 v26, v12

    :goto_14
    const/4 v5, -0x1

    goto/16 :goto_22

    :cond_12
    if-ne v0, v10, :cond_13

    move-object/from16 v33, v14

    move-object/from16 v10, v26

    move/from16 v1, v30

    const/16 v18, 0x2

    goto :goto_13

    :cond_13
    const/4 v9, -0x2

    if-ne v0, v9, :cond_15

    .line 67
    :try_start_f
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v9
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    const/4 v10, -0x5

    if-ne v11, v10, :cond_14

    move-object/from16 v10, v26

    move/from16 v26, v12

    const/4 v12, 0x0

    .line 68
    :try_start_10
    invoke-virtual {v10, v9, v12}, Lcom/vincent/videocompressor/b;->a(Landroid/media/MediaFormat;Z)I

    move-result v11
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_15

    :catchall_2
    move-exception v0

    goto :goto_16

    :catch_3
    move-exception v0

    goto :goto_18

    :cond_14
    move-object/from16 v10, v26

    move/from16 v26, v12

    :goto_15
    move-object/from16 v33, v14

    move/from16 v1, v30

    const/16 v18, 0x2

    move/from16 v30, v5

    goto :goto_14

    :catchall_3
    move-exception v0

    move-object/from16 v10, v26

    :goto_16
    move-object/from16 v13, p0

    move-object v2, v0

    :goto_17
    move-object v8, v14

    goto/16 :goto_32

    :catch_4
    move-exception v0

    move-object/from16 v10, v26

    :goto_18
    move-object v1, v0

    move/from16 v30, v5

    :goto_19
    move-object v9, v6

    move-object v0, v8

    move-object/from16 v33, v14

    goto :goto_f

    :cond_15
    move-object/from16 v10, v26

    move/from16 v26, v12

    if-ltz v0, :cond_28

    .line 69
    :try_start_11
    invoke-virtual {v4, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    if-eqz v9, :cond_27

    .line 70
    iget v12, v13, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    move/from16 v30, v5

    const/4 v5, 0x1

    if-le v12, v5, :cond_1c

    .line 71
    :try_start_12
    iget v5, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    const/16 v18, 0x2

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_17

    const/4 v5, 0x0

    .line 72
    :try_start_13
    invoke-virtual {v10, v11, v9, v13, v5}, Lcom/vincent/videocompressor/b;->q(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)Z

    move-result v9
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    if-eqz v9, :cond_16

    move-object/from16 v9, p0

    .line 73
    :try_start_14
    invoke-direct {v9, v5, v5}, Lcom/vincent/videocompressor/VideoController;->c(ZZ)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    goto/16 :goto_1e

    :catchall_4
    move-exception v0

    goto :goto_1a

    :catch_5
    move-exception v0

    goto :goto_1b

    :cond_16
    move-object/from16 v9, p0

    goto/16 :goto_1e

    :catchall_5
    move-exception v0

    move-object/from16 v9, p0

    :goto_1a
    move-object v2, v0

    move-object v13, v9

    goto :goto_17

    :catch_6
    move-exception v0

    move-object/from16 v9, p0

    :goto_1b
    move-object v1, v0

    goto :goto_19

    :cond_17
    const/4 v5, -0x5

    if-ne v11, v5, :cond_1b

    .line 74
    :try_start_15
    new-array v11, v12, [B

    .line 75
    iget v5, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v5, v12

    invoke-virtual {v9, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 76
    iget v5, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v9, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 77
    invoke-virtual {v9, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 78
    iget v5, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v12, 0x1

    sub-int/2addr v5, v12

    :goto_1c
    if-ltz v5, :cond_19

    const/4 v9, 0x3

    if-le v5, v9, :cond_19

    .line 79
    aget-byte v9, v11, v5

    if-ne v9, v12, :cond_18

    add-int/lit8 v9, v5, -0x1

    aget-byte v9, v11, v9

    if-nez v9, :cond_18

    add-int/lit8 v9, v5, -0x2

    aget-byte v9, v11, v9

    if-nez v9, :cond_18

    add-int/lit8 v9, v5, -0x3

    aget-byte v33, v11, v9

    if-nez v33, :cond_18

    .line 80
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 81
    iget v12, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v12, v9

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_8
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    move-object/from16 v33, v14

    const/4 v14, 0x0

    .line 82
    :try_start_16
    invoke-virtual {v5, v11, v14, v9}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 83
    iget v1, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v1, v9

    invoke-virtual {v12, v11, v9, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1d

    :cond_18
    move-object/from16 v33, v14

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v1, p4

    move-object/from16 v14, v33

    const/4 v12, 0x1

    goto :goto_1c

    :cond_19
    move-object/from16 v33, v14

    const/4 v5, 0x0

    const/4 v12, 0x0

    .line 84
    :goto_1d
    invoke-static {v2, v15, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    if-eqz v5, :cond_1a

    if-eqz v12, :cond_1a

    const-string v9, "csd-0"

    .line 85
    invoke-virtual {v1, v9, v5}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    const-string v5, "csd-1"

    .line 86
    invoke-virtual {v1, v5, v12}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_1a
    const/4 v5, 0x0

    .line 87
    invoke-virtual {v10, v1, v5}, Lcom/vincent/videocompressor/b;->a(Landroid/media/MediaFormat;Z)I

    move-result v11
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    goto :goto_20

    :catch_7
    move-exception v0

    goto :goto_1f

    :cond_1b
    :goto_1e
    move-object/from16 v33, v14

    goto :goto_20

    :catch_8
    move-exception v0

    move-object/from16 v33, v14

    :goto_1f
    move-object v1, v0

    move-object v9, v6

    goto/16 :goto_26

    :cond_1c
    move-object/from16 v33, v14

    const/16 v18, 0x2

    .line 88
    :goto_20
    :try_start_17
    iget v1, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_21

    :cond_1d
    const/4 v1, 0x0

    :goto_21
    const/4 v5, 0x0

    .line 89
    invoke-virtual {v4, v0, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_c
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    goto/16 :goto_14

    :goto_22
    if-eq v0, v5, :cond_1e

    move v0, v1

    move/from16 v12, v26

    move/from16 v9, v28

    move/from16 v5, v30

    move-object/from16 v14, v33

    move-object/from16 v1, p4

    :goto_23
    move-object/from16 v26, v10

    move/from16 v10, v29

    goto/16 :goto_11

    :cond_1e
    move-object v9, v6

    const-wide/16 v5, 0x9c4

    .line 90
    :try_start_18
    invoke-virtual {v7, v13, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_b
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    const/4 v12, -0x1

    if-ne v0, v12, :cond_1f

    move-object/from16 v5, p4

    move v6, v1

    move-object v14, v13

    move-wide/from16 v12, v19

    const-wide/16 v16, 0x3e8

    :goto_24
    const/16 v28, 0x0

    goto/16 :goto_2b

    :cond_1f
    const/4 v14, -0x3

    if-ne v0, v14, :cond_20

    goto :goto_25

    :cond_20
    const/4 v14, -0x2

    if-ne v0, v14, :cond_21

    .line 91
    :try_start_19
    invoke-virtual {v7}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 92
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newFormat = "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_9
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    :goto_25
    move-object/from16 v5, p4

    move v6, v1

    move-object v14, v13

    move-wide/from16 v12, v19

    const-wide/16 v16, 0x3e8

    goto/16 :goto_2b

    :catch_9
    move-exception v0

    move-object v1, v0

    :goto_26
    move-object v0, v8

    move-object v14, v13

    goto/16 :goto_2f

    :cond_21
    if-ltz v0, :cond_26

    .line 93
    :try_start_1a
    iget v5, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v5, :cond_22

    const/4 v5, 0x1

    goto :goto_27

    :cond_22
    const/4 v5, 0x0

    .line 94
    :goto_27
    invoke-virtual {v7, v0, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_b
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    if-eqz v5, :cond_24

    .line 95
    :try_start_1b
    invoke-virtual {v8}, Lcom/vincent/videocompressor/d;->a()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_a
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    const/4 v0, 0x0

    goto :goto_28

    :catch_a
    move-exception v0

    move-object v5, v0

    .line 96
    :try_start_1c
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    const/4 v0, 0x1

    :goto_28
    if-nez v0, :cond_24

    const/4 v5, 0x0

    .line 97
    invoke-virtual {v8, v5}, Lcom/vincent/videocompressor/d;->d(Z)V

    .line 98
    iget-wide v5, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v16, 0x3e8

    mul-long v5, v5, v16

    invoke-virtual {v9, v5, v6}, Lcom/vincent/videocompressor/a;->f(J)V

    move-object/from16 v5, p4

    if-eqz v5, :cond_23

    move v6, v1

    .line 99
    iget-wide v0, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_b
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    long-to-float v0, v0

    move-object v14, v13

    move-wide/from16 v12, v19

    long-to-float v1, v12

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    :try_start_1d
    invoke-interface {v5, v0}, Lcom/vincent/videocompressor/VideoController$b;->onProgress(F)V

    goto :goto_29

    :cond_23
    move v6, v1

    move-object v14, v13

    move-wide/from16 v12, v19

    .line 100
    :goto_29
    invoke-virtual {v9}, Lcom/vincent/videocompressor/a;->g()Z

    goto :goto_2a

    :cond_24
    move-object/from16 v5, p4

    move v6, v1

    move-object v14, v13

    move-wide/from16 v12, v19

    const-wide/16 v16, 0x3e8

    .line 101
    :goto_2a
    iget v0, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_25

    .line 102
    invoke-virtual {v4}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    goto/16 :goto_24

    :cond_25
    :goto_2b
    move-object v1, v5

    move v0, v6

    move-object v6, v9

    move-wide/from16 v19, v12

    move-object v13, v14

    move/from16 v12, v26

    move/from16 v9, v28

    move/from16 v5, v30

    move-object/from16 v14, v33

    goto/16 :goto_23

    :cond_26
    move-object v14, v13

    .line 103
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_b
    move-exception v0

    goto/16 :goto_2d

    :catch_c
    move-exception v0

    move-object v9, v6

    goto/16 :goto_2d

    :cond_27
    move/from16 v30, v5

    move-object v9, v6

    move-object/from16 v33, v14

    move-object v14, v13

    .line 104
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoderOutputBuffer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " was null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_6
    move-exception v0

    move-object/from16 v33, v14

    goto/16 :goto_31

    :catch_d
    move-exception v0

    move/from16 v30, v5

    move-object v9, v6

    move-object/from16 v33, v14

    goto :goto_2d

    :cond_28
    move/from16 v30, v5

    move-object v9, v6

    move-object/from16 v33, v14

    move-object v14, v13

    .line 105
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_e
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    :catchall_7
    move-exception v0

    goto/16 :goto_31

    :catch_e
    move-exception v0

    goto :goto_2e

    :cond_29
    move/from16 v30, v5

    move-object v9, v6

    move-object/from16 v33, v14

    move-object/from16 v10, v26

    move-object v14, v13

    move-object v6, v9

    move/from16 v1, v30

    move-object/from16 v11, v33

    const/4 v0, 0x0

    goto/16 :goto_35

    :catchall_8
    move-exception v0

    goto :goto_30

    :catch_f
    move-exception v0

    move/from16 v30, v5

    move-object v9, v6

    goto :goto_2c

    :catch_10
    move-exception v0

    move/from16 v30, v5

    move-object v9, v6

    move-object/from16 v35, v12

    :goto_2c
    move-object/from16 v33, v14

    move-object/from16 v10, v26

    :goto_2d
    move-object v14, v13

    :goto_2e
    move-object v1, v0

    move-object v0, v8

    :goto_2f
    move-object v8, v7

    goto/16 :goto_34

    :catch_11
    move-exception v0

    move/from16 v30, v5

    move-object v9, v6

    move-object/from16 v35, v12

    move-object/from16 v33, v14

    move-object/from16 v10, v26

    move-object v14, v13

    move-object v1, v0

    move-object v8, v7

    const/4 v0, 0x0

    goto :goto_34

    :catch_12
    move-exception v0

    move/from16 v30, v5

    move-object v9, v6

    move-object/from16 v35, v12

    move-object/from16 v33, v14

    move-object/from16 v10, v26

    move-object v14, v13

    move-object v1, v0

    const/4 v0, 0x0

    const/4 v8, 0x0

    goto :goto_34

    :catch_13
    move-exception v0

    move/from16 v30, v5

    move-object/from16 v35, v12

    move-object/from16 v33, v14

    move-object/from16 v10, v26

    move-object v14, v13

    move-object v1, v0

    const/4 v0, 0x0

    goto :goto_33

    :catchall_9
    move-exception v0

    move-object/from16 v35, v12

    :goto_30
    move-object/from16 v33, v14

    move-object/from16 v10, v26

    :goto_31
    move-object/from16 v13, p0

    move-object v2, v0

    move-object/from16 v8, v33

    :goto_32
    move-object/from16 v1, v35

    goto/16 :goto_41

    :catch_14
    move-exception v0

    move/from16 v30, v5

    move-object/from16 v35, v12

    move-object/from16 v33, v14

    move-object/from16 v10, v26

    move-object v14, v13

    move-object v1, v0

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_33
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 106
    :goto_34
    :try_start_1e
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_16
    .catchall {:try_start_1e .. :try_end_1e} :catchall_b

    move-object v7, v8

    move-object v6, v9

    move/from16 v1, v30

    move-object/from16 v11, v33

    move-object v8, v0

    const/4 v0, 0x1

    .line 107
    :goto_35
    :try_start_1f
    invoke-virtual {v11, v1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    if-eqz v8, :cond_2a

    .line 108
    invoke-virtual {v8}, Lcom/vincent/videocompressor/d;->i()V

    :cond_2a
    if-eqz v6, :cond_2b

    .line 109
    invoke-virtual {v6}, Lcom/vincent/videocompressor/a;->e()V

    :cond_2b
    if-eqz v7, :cond_2c

    .line 110
    invoke-virtual {v7}, Landroid/media/MediaCodec;->stop()V

    .line 111
    invoke-virtual {v7}, Landroid/media/MediaCodec;->release()V

    :cond_2c
    if-eqz v4, :cond_2e

    .line 112
    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    .line 113
    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_15
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    goto :goto_38

    :catchall_a
    move-exception v0

    goto :goto_36

    :catch_15
    move-exception v0

    goto :goto_37

    :catchall_b
    move-exception v0

    move-object/from16 v11, v33

    :goto_36
    move-object/from16 v13, p0

    move-object v2, v0

    move-object v8, v11

    goto :goto_32

    :catch_16
    move-exception v0

    move-object/from16 v11, v33

    :goto_37
    move-object/from16 v13, p0

    move-object v8, v11

    move-object/from16 v1, v35

    const/4 v15, 0x1

    goto/16 :goto_3e

    :cond_2d
    move-object/from16 v35, v12

    move-object v11, v14

    move-object/from16 v10, v26

    move-object v14, v13

    const/4 v0, 0x0

    :cond_2e
    :goto_38
    move v12, v0

    move-wide/from16 v5, v23

    :goto_39
    if-nez v12, :cond_2f

    const/4 v0, 0x1

    const-wide/16 v7, -0x1

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v10

    move-object v4, v14

    move-object/from16 v13, p0

    move-object/from16 v9, v27

    move-object v14, v10

    const/4 v15, 0x1

    move v10, v0

    .line 114
    :try_start_20
    invoke-direct/range {v1 .. v10}, Lcom/vincent/videocompressor/VideoController;->f(Landroid/media/MediaExtractor;Lcom/vincent/videocompressor/b;Landroid/media/MediaCodec$BufferInfo;JJLjava/io/File;Z)J
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_17
    .catchall {:try_start_20 .. :try_end_20} :catchall_c

    goto :goto_3a

    :catchall_c
    move-exception v0

    move-object v2, v0

    move-object v8, v11

    move-object v10, v14

    goto :goto_32

    :catch_17
    move-exception v0

    move-object v8, v11

    move-object v10, v14

    move-object/from16 v1, v35

    goto/16 :goto_3e

    :cond_2f
    move-object/from16 v13, p0

    move-object v14, v10

    const/4 v15, 0x1

    .line 115
    :goto_3a
    invoke-virtual {v11}, Landroid/media/MediaExtractor;->release()V

    if-eqz v14, :cond_30

    const/4 v1, 0x0

    .line 116
    :try_start_21
    invoke-virtual {v14, v1}, Lcom/vincent/videocompressor/b;->m(Z)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_18

    goto :goto_3b

    :catch_18
    move-exception v0

    move-object v1, v0

    .line 117
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 118
    :cond_30
    :goto_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v7, v12

    goto/16 :goto_40

    :catchall_d
    move-exception v0

    move-object v13, v11

    move-object v1, v12

    move-object v11, v14

    move-object/from16 v14, v26

    goto :goto_3c

    :catch_19
    move-exception v0

    move-object v13, v11

    move-object v1, v12

    move-object v11, v14

    move-object/from16 v14, v26

    const/4 v15, 0x1

    goto :goto_3d

    :catchall_e
    move-exception v0

    move-object v13, v11

    move-object v1, v12

    move-object v11, v14

    move-object v14, v7

    :goto_3c
    move-object v2, v0

    move-object v8, v11

    move-object v10, v14

    goto/16 :goto_41

    :catch_1a
    move-exception v0

    move-object/from16 v25, v6

    move-object/from16 v27, v10

    move-object v13, v11

    move-object v1, v12

    move-object v11, v14

    const/4 v15, 0x1

    move-object v14, v7

    :goto_3d
    move-object v8, v11

    move-object v10, v14

    goto :goto_3e

    :catchall_f
    move-exception v0

    move-object v14, v7

    move-object v13, v11

    move-object v1, v12

    move-object v2, v0

    move-object v10, v14

    const/4 v8, 0x0

    goto/16 :goto_41

    :catch_1b
    move-exception v0

    move-object/from16 v25, v6

    move-object v14, v7

    move-object/from16 v27, v10

    move-object v13, v11

    move-object v1, v12

    const/4 v15, 0x1

    move-object v10, v14

    const/4 v8, 0x0

    goto :goto_3e

    :catchall_10
    move-exception v0

    move-object v13, v11

    move-object v1, v12

    move-object v2, v0

    const/4 v8, 0x0

    const/4 v10, 0x0

    goto :goto_41

    :catch_1c
    move-exception v0

    move-object/from16 v25, v6

    move-object/from16 v27, v10

    move-object v13, v11

    move-object v1, v12

    const/4 v15, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 119
    :goto_3e
    :try_start_22
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_11

    if-eqz v8, :cond_31

    .line 120
    invoke-virtual {v8}, Landroid/media/MediaExtractor;->release()V

    :cond_31
    if-eqz v10, :cond_32

    const/4 v2, 0x0

    .line 121
    :try_start_23
    invoke-virtual {v10, v2}, Lcom/vincent/videocompressor/b;->m(Z)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_1d

    goto :goto_3f

    :catch_1d
    move-exception v0

    move-object v2, v0

    .line 122
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 123
    :cond_32
    :goto_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    .line 124
    :goto_40
    invoke-direct {v13, v15, v7}, Lcom/vincent/videocompressor/VideoController;->c(ZZ)V

    .line 125
    sput-object v27, Lcom/vincent/videocompressor/VideoController;->f:Ljava/io/File;

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v13, Lcom/vincent/videocompressor/VideoController;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v15

    :catchall_11
    move-exception v0

    move-object v2, v0

    :goto_41
    if-eqz v8, :cond_33

    .line 129
    invoke-virtual {v8}, Landroid/media/MediaExtractor;->release()V

    :cond_33
    if-eqz v10, :cond_34

    const/4 v3, 0x0

    .line 130
    :try_start_24
    invoke-virtual {v10, v3}, Lcom/vincent/videocompressor/b;->m(Z)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_1e

    goto :goto_42

    :catch_1e
    move-exception v0

    move-object v3, v0

    .line 131
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 132
    :cond_34
    :goto_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v21

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 133
    throw v2

    :cond_35
    move-object v13, v11

    const/4 v15, 0x1

    .line 134
    invoke-direct {v13, v15, v15}, Lcom/vincent/videocompressor/VideoController;->c(ZZ)V

    const/4 v1, 0x0

    return v1
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "dest"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/vincent/videocompressor/VideoController;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

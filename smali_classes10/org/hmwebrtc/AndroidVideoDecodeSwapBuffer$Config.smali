.class public Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field private bufferSize:I

.field public enable:Z

.field private fallbackMode:I

.field private fastTimeoutUs:J

.field public mode:I

.field private stat:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VideoDecodeSwapBuffer"

    const-string v1, "load config file:HMRTC-Hw-Swapbuffer-V1.cfg"

    .line 2
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lorg/hmwebrtc/utils/FiledStringParser;

    const-string v1, "HMRTC-Hw-Swapbuffer-V1.cfg"

    .line 4
    invoke-static {v1}, Lorg/hmwebrtc/utils/PathUtils$Inject;->getConfigFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "enable:false,mode:1,bufferSize:1,stat:false"

    invoke-direct {v0, v1, v2}, Lorg/hmwebrtc/utils/FiledStringParser;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, v0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->extractValue(Lorg/hmwebrtc/utils/FiledStringParser;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable:true,bufferSize:1,stat:false,mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance v0, Lorg/hmwebrtc/utils/FiledStringParser;

    invoke-direct {v0, p1}, Lorg/hmwebrtc/utils/FiledStringParser;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->extractValue(Lorg/hmwebrtc/utils/FiledStringParser;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lorg/hmwebrtc/utils/FiledStringParser;

    invoke-direct {v0, p1}, Lorg/hmwebrtc/utils/FiledStringParser;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->extractValue(Lorg/hmwebrtc/utils/FiledStringParser;)V

    return-void
.end method

.method public static HasInjectConfgFile()Z
    .locals 1

    .line 1
    const-string v0, "HMRTC-Hw-Swapbuffer-V1.cfg"

    .line 2
    .line 3
    invoke-static {v0}, Lorg/hmwebrtc/utils/PathUtils$Inject;->isExistConfigFile(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method static synthetic access$100(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->bufferSize:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$102(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->bufferSize:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$200(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->stat:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$202(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->stat:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$700(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->fastTimeoutUs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private extractValue(Lorg/hmwebrtc/utils/FiledStringParser;)V
    .locals 3

    .line 1
    const-string v0, "enable"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/utils/FiledStringParser;->getBoolValue(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput-boolean v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->enable:Z

    .line 9
    .line 10
    const-string v0, "bufferSize"

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/utils/FiledStringParser;->getIntValue(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->bufferSize:I

    .line 17
    .line 18
    const/4 v2, 0x3

    .line 19
    if-le v0, v2, :cond_0

    .line 20
    .line 21
    iput v2, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->bufferSize:I

    .line 22
    .line 23
    :cond_0
    iget v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->bufferSize:I

    .line 24
    .line 25
    if-gez v0, :cond_1

    .line 26
    .line 27
    iput v1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->bufferSize:I

    .line 28
    .line 29
    :cond_1
    const-string v0, "mode"

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/utils/FiledStringParser;->getIntValue(Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->mode:I

    .line 36
    .line 37
    if-ge v0, v2, :cond_2

    .line 38
    .line 39
    if-gez v0, :cond_3

    .line 40
    .line 41
    :cond_2
    iput v1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->mode:I

    .line 42
    .line 43
    iput v1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->bufferSize:I

    .line 44
    .line 45
    :cond_3
    const-string v0, "fallbackMode"

    .line 46
    .line 47
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/utils/FiledStringParser;->getIntValue(Ljava/lang/String;I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iput v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->fallbackMode:I

    .line 52
    .line 53
    if-ge v0, v2, :cond_4

    .line 54
    .line 55
    iget v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->mode:I

    .line 56
    .line 57
    if-gez v0, :cond_5

    .line 58
    .line 59
    :cond_4
    iput v1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->fallbackMode:I

    .line 60
    .line 61
    iput v1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->bufferSize:I

    .line 62
    .line 63
    :cond_5
    const-string v0, "stat"

    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/utils/FiledStringParser;->getBoolValue(Ljava/lang/String;Z)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iput-boolean v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->stat:Z

    .line 71
    .line 72
    const-string v0, "fastTimeoutUs"

    .line 73
    .line 74
    const-wide/16 v1, 0x64

    .line 75
    .line 76
    invoke-virtual {p1, v0, v1, v2}, Lorg/hmwebrtc/utils/FiledStringParser;->getLongValue(Ljava/lang/String;J)J

    .line 77
    .line 78
    .line 79
    move-result-wide v0

    .line 80
    iput-wide v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->fastTimeoutUs:J

    .line 81
    .line 82
    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->mode:I

    .line 2
    .line 3
    return v0
.end method

.method public isEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$Config;->enable:Z

    .line 2
    .line 3
    return v0
.end method

.class Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/JankStatisticsTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EgljankConfig"
.end annotation


# instance fields
.field private frameTimeCorrectedMs:J

.field private mEnable:Z

.field private mStat:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;->parseConfig(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;->frameTimeCorrectedMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$002(Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;->frameTimeCorrectedMs:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$100(Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;->mStat:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$102(Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;->mStat:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$602(Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;->mEnable:Z

    .line 2
    .line 3
    return p1
.end method

.method private parseConfig(Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;->mEnable:Z

    .line 3
    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    new-instance v1, Lorg/hmwebrtc/utils/FiledStringParser;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lorg/hmwebrtc/utils/FiledStringParser;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string p1, "enable"

    .line 19
    .line 20
    invoke-virtual {v1, p1, v0}, Lorg/hmwebrtc/utils/FiledStringParser;->getIntValue(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 v2, 0x1

    .line 25
    if-ne p1, v2, :cond_1

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    :goto_0
    if-eqz p1, :cond_3

    .line 31
    .line 32
    const-string v3, "stat"

    .line 33
    .line 34
    invoke-virtual {v1, v3, v0}, Lorg/hmwebrtc/utils/FiledStringParser;->getIntValue(Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-ne v3, v2, :cond_2

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    :cond_2
    iput-boolean v0, p0, Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;->mStat:Z

    .line 42
    .line 43
    const-string v0, "frame_time_corrected_ms"

    .line 44
    .line 45
    const/16 v2, 0x8

    .line 46
    .line 47
    invoke-virtual {v1, v0, v2}, Lorg/hmwebrtc/utils/FiledStringParser;->getIntValue(Ljava/lang/String;I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    int-to-long v0, v0

    .line 52
    iput-wide v0, p0, Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;->frameTimeCorrectedMs:J

    .line 53
    .line 54
    :cond_3
    iput-boolean p1, p0, Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;->mEnable:Z

    .line 55
    .line 56
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public isEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/webrtc/haima/JankStatisticsTool$EgljankConfig;->mEnable:Z

    .line 2
    .line 3
    return v0
.end method

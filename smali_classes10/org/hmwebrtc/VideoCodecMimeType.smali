.class final enum Lorg/hmwebrtc/VideoCodecMimeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/hmwebrtc/VideoCodecMimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/hmwebrtc/VideoCodecMimeType;

.field public static final enum AV1:Lorg/hmwebrtc/VideoCodecMimeType;

.field public static final enum H264:Lorg/hmwebrtc/VideoCodecMimeType;

.field public static final enum H265:Lorg/hmwebrtc/VideoCodecMimeType;

.field public static final enum VP8:Lorg/hmwebrtc/VideoCodecMimeType;

.field public static final enum VP9:Lorg/hmwebrtc/VideoCodecMimeType;


# instance fields
.field private final mimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lorg/hmwebrtc/VideoCodecMimeType;

    .line 2
    .line 3
    const-string v1, "video/x-vnd.on2.vp8"

    .line 4
    .line 5
    const-string v2, "VP8"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lorg/hmwebrtc/VideoCodecMimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lorg/hmwebrtc/VideoCodecMimeType;->VP8:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 12
    .line 13
    new-instance v1, Lorg/hmwebrtc/VideoCodecMimeType;

    .line 14
    .line 15
    const-string v2, "video/x-vnd.on2.vp9"

    .line 16
    .line 17
    const-string v4, "VP9"

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    invoke-direct {v1, v4, v5, v2}, Lorg/hmwebrtc/VideoCodecMimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lorg/hmwebrtc/VideoCodecMimeType;->VP9:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 24
    .line 25
    new-instance v2, Lorg/hmwebrtc/VideoCodecMimeType;

    .line 26
    .line 27
    const-string v4, "video/avc"

    .line 28
    .line 29
    const-string v6, "H264"

    .line 30
    .line 31
    const/4 v7, 0x2

    .line 32
    invoke-direct {v2, v6, v7, v4}, Lorg/hmwebrtc/VideoCodecMimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lorg/hmwebrtc/VideoCodecMimeType;->H264:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 36
    .line 37
    new-instance v4, Lorg/hmwebrtc/VideoCodecMimeType;

    .line 38
    .line 39
    const-string v6, "video/hevc"

    .line 40
    .line 41
    const-string v8, "H265"

    .line 42
    .line 43
    const/4 v9, 0x3

    .line 44
    invoke-direct {v4, v8, v9, v6}, Lorg/hmwebrtc/VideoCodecMimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v4, Lorg/hmwebrtc/VideoCodecMimeType;->H265:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 48
    .line 49
    new-instance v6, Lorg/hmwebrtc/VideoCodecMimeType;

    .line 50
    .line 51
    const-string v8, "video/av01"

    .line 52
    .line 53
    const-string v10, "AV1"

    .line 54
    .line 55
    const/4 v11, 0x4

    .line 56
    invoke-direct {v6, v10, v11, v8}, Lorg/hmwebrtc/VideoCodecMimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v6, Lorg/hmwebrtc/VideoCodecMimeType;->AV1:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 60
    .line 61
    const/4 v8, 0x5

    .line 62
    new-array v8, v8, [Lorg/hmwebrtc/VideoCodecMimeType;

    .line 63
    .line 64
    aput-object v0, v8, v3

    .line 65
    .line 66
    aput-object v1, v8, v5

    .line 67
    .line 68
    aput-object v2, v8, v7

    .line 69
    .line 70
    aput-object v4, v8, v9

    .line 71
    .line 72
    aput-object v6, v8, v11

    .line 73
    .line 74
    sput-object v8, Lorg/hmwebrtc/VideoCodecMimeType;->$VALUES:[Lorg/hmwebrtc/VideoCodecMimeType;

    .line 75
    .line 76
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lorg/hmwebrtc/VideoCodecMimeType;->mimeType:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method static fromSdpCodecName(Ljava/lang/String;)Lorg/hmwebrtc/VideoCodecMimeType;
    .locals 1

    .line 1
    const-string v0, "AV1X"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lorg/hmwebrtc/VideoCodecMimeType;->AV1:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p0}, Lorg/hmwebrtc/VideoCodecMimeType;->valueOf(Ljava/lang/String;)Lorg/hmwebrtc/VideoCodecMimeType;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/hmwebrtc/VideoCodecMimeType;
    .locals 1

    .line 1
    const-class v0, Lorg/hmwebrtc/VideoCodecMimeType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/hmwebrtc/VideoCodecMimeType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/hmwebrtc/VideoCodecMimeType;
    .locals 1

    .line 1
    sget-object v0, Lorg/hmwebrtc/VideoCodecMimeType;->$VALUES:[Lorg/hmwebrtc/VideoCodecMimeType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/hmwebrtc/VideoCodecMimeType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/hmwebrtc/VideoCodecMimeType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method mimeType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/VideoCodecMimeType;->mimeType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method toSdpCodecName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/hmwebrtc/VideoCodecMimeType;->AV1:Lorg/hmwebrtc/VideoCodecMimeType;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const-string v0, "AV1X"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    return-object v0
.end method

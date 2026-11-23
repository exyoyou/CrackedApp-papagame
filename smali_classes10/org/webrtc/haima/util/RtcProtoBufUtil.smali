.class public Lorg/webrtc/haima/util/RtcProtoBufUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/haima/util/RtcProtoBufUtil$StatusType;
    }
.end annotation


# static fields
.field public static final GSPROXY_SDP:Ljava/lang/String; = "gsproxy_sdp"

.field public static final MSG_BITRATEMODIFIEDTO:Ljava/lang/String; = "BitrateModifiedTo:"

.field public static final MSG_PONG:Ljava/lang/String; = "pong:"

.field public static final PROTO_BUSINESS_CODE_6350:[B

.field public static final PROTO_BUSINESS_CODE_6480:[B

.field public static final PROTO_BUSINESS_CODE_64B0:[B

.field public static final PROTO_BUSINESS_CODE_INPUT_MI_IME:[B

.field public static final PROTO_BUSINESS_CODE_INPUT_MI_IME_NOTIFY:[B

.field public static final PROTO_BUSINESS_CODE_KEYBOARD_INPUT:[B

.field public static final PROTO_BUSINESS_CODE_KEYBOARD_KEY:[B

.field public static final PROTO_COMM_HEADER:[B

.field private static final TAG:Ljava/lang/String; = "RtcProtoBufUtil"

.field private static mProtoCallback:Lorg/webrtc/haima/listeners/HmProtoCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/webrtc/haima/util/RtcProtoBufUtil;->PROTO_COMM_HEADER:[B

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    new-array v1, v0, [B

    .line 11
    .line 12
    fill-array-data v1, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v1, Lorg/webrtc/haima/util/RtcProtoBufUtil;->PROTO_BUSINESS_CODE_KEYBOARD_KEY:[B

    .line 16
    .line 17
    new-array v1, v0, [B

    .line 18
    .line 19
    fill-array-data v1, :array_2

    .line 20
    .line 21
    .line 22
    sput-object v1, Lorg/webrtc/haima/util/RtcProtoBufUtil;->PROTO_BUSINESS_CODE_KEYBOARD_INPUT:[B

    .line 23
    .line 24
    new-array v1, v0, [B

    .line 25
    .line 26
    fill-array-data v1, :array_3

    .line 27
    .line 28
    .line 29
    sput-object v1, Lorg/webrtc/haima/util/RtcProtoBufUtil;->PROTO_BUSINESS_CODE_INPUT_MI_IME:[B

    .line 30
    .line 31
    new-array v1, v0, [B

    .line 32
    .line 33
    fill-array-data v1, :array_4

    .line 34
    .line 35
    .line 36
    sput-object v1, Lorg/webrtc/haima/util/RtcProtoBufUtil;->PROTO_BUSINESS_CODE_INPUT_MI_IME_NOTIFY:[B

    .line 37
    .line 38
    new-array v1, v0, [B

    .line 39
    .line 40
    fill-array-data v1, :array_5

    .line 41
    .line 42
    .line 43
    sput-object v1, Lorg/webrtc/haima/util/RtcProtoBufUtil;->PROTO_BUSINESS_CODE_6350:[B

    .line 44
    .line 45
    new-array v1, v0, [B

    .line 46
    .line 47
    fill-array-data v1, :array_6

    .line 48
    .line 49
    .line 50
    sput-object v1, Lorg/webrtc/haima/util/RtcProtoBufUtil;->PROTO_BUSINESS_CODE_6480:[B

    .line 51
    .line 52
    new-array v0, v0, [B

    .line 53
    .line 54
    fill-array-data v0, :array_7

    .line 55
    .line 56
    .line 57
    sput-object v0, Lorg/webrtc/haima/util/RtcProtoBufUtil;->PROTO_BUSINESS_CODE_64B0:[B

    .line 58
    .line 59
    return-void

    .line 60
    nop

    .line 61
    :array_0
    .array-data 1
        0x43t
        0x55t
        0x50t
        0x4bt
        0x1t
        0x0t
    .end array-data

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    nop

    .line 69
    :array_1
    .array-data 1
        0x6t
        0x1t
        0x0t
        0x0t
    .end array-data

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :array_2
    .array-data 1
        0x6t
        0x1t
        0x2t
        0x0t
    .end array-data

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    :array_3
    .array-data 1
        0x6t
        0x1t
        0x1t
        0x0t
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    :array_4
    .array-data 1
        0x6t
        0x1t
        0x3t
        0x0t
    .end array-data

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    :array_5
    .array-data 1
        0x6t
        0x3t
        0x5t
        0x0t
    .end array-data

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    :array_6
    .array-data 1
        0x6t
        0x4t
        0x8t
        0x0t
    .end array-data

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :array_7
    .array-data 1
        0x6t
        0x4t
        0xbt
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static getBufferSize(I)[B
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {p0, v0}, Lorg/webrtc/haima/util/RtcProtoBufUtil;->little_intToByte(II)[B

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method private static getContent([B[B)[B
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    const/16 v1, 0xe

    .line 3
    .line 4
    add-int/2addr v0, v1

    .line 5
    new-array v2, v0, [B

    .line 6
    .line 7
    invoke-static {v0}, Lorg/webrtc/haima/util/RtcProtoBufUtil;->getBufferSize(I)[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v3, Lorg/webrtc/haima/util/RtcProtoBufUtil;->PROTO_COMM_HEADER:[B

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x6

    .line 15
    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x4

    .line 19
    invoke-static {v0, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    const/16 v0, 0xa

    .line 23
    .line 24
    invoke-static {p0, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    .line 26
    .line 27
    array-length p0, p1

    .line 28
    invoke-static {p1, v4, v2, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    return-object v2
.end method

.method public static getIMStatusData(Lorg/webrtc/haima/util/RtcProtoBufUtil$StatusType;)[B
    .locals 3

    .line 1
    sget-object v0, Lorg/webrtc/haima/util/RtcProtoBufUtil;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "statusType:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v1, Lorg/webrtc/haima/util/RtcProtoBufUtil;->mProtoCallback:Lorg/webrtc/haima/listeners/HmProtoCallback;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const-string p0, "mProtoCallback is null, getIMStatusData Failed."

    .line 28
    .line 29
    invoke-static {v0, p0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return-object p0

    .line 34
    :cond_0
    invoke-interface {v1, p0}, Lorg/webrtc/haima/listeners/HmProtoCallback;->handleProtoResult(Lorg/webrtc/haima/util/RtcProtoBufUtil$StatusType;)[B

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    sget-object v0, Lorg/webrtc/haima/util/RtcProtoBufUtil;->PROTO_BUSINESS_CODE_INPUT_MI_IME_NOTIFY:[B

    .line 39
    .line 40
    invoke-static {v0, p0}, Lorg/webrtc/haima/util/RtcProtoBufUtil;->getContent([B[B)[B

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method static little_intToByte(II)[B
    .locals 5

    .line 1
    new-array v0, p1, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p1, v2, :cond_0

    .line 6
    .line 7
    and-int/lit16 p0, p0, 0xff

    .line 8
    .line 9
    int-to-byte p0, p0

    .line 10
    aput-byte p0, v0, v1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const v3, 0xff00

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x2

    .line 17
    if-ne p1, v4, :cond_1

    .line 18
    .line 19
    and-int/lit16 p1, p0, 0xff

    .line 20
    .line 21
    int-to-byte p1, p1

    .line 22
    aput-byte p1, v0, v1

    .line 23
    .line 24
    and-int/2addr p0, v3

    .line 25
    shr-int/lit8 p0, p0, 0x8

    .line 26
    .line 27
    int-to-byte p0, p0

    .line 28
    aput-byte p0, v0, v2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    and-int/lit16 p1, p0, 0xff

    .line 32
    .line 33
    int-to-byte p1, p1

    .line 34
    aput-byte p1, v0, v1

    .line 35
    .line 36
    and-int p1, p0, v3

    .line 37
    .line 38
    shr-int/lit8 p1, p1, 0x8

    .line 39
    .line 40
    int-to-byte p1, p1

    .line 41
    aput-byte p1, v0, v2

    .line 42
    .line 43
    const/high16 p1, 0xff0000

    .line 44
    .line 45
    and-int/2addr p1, p0

    .line 46
    shr-int/lit8 p1, p1, 0x10

    .line 47
    .line 48
    int-to-byte p1, p1

    .line 49
    aput-byte p1, v0, v4

    .line 50
    .line 51
    const/high16 p1, -0x1000000

    .line 52
    .line 53
    and-int/2addr p0, p1

    .line 54
    shr-int/lit8 p0, p0, 0x18

    .line 55
    .line 56
    int-to-byte p0, p0

    .line 57
    const/4 p1, 0x3

    .line 58
    aput-byte p0, v0, p1

    .line 59
    .line 60
    :goto_0
    return-object v0
.end method

.method public static registerCallback(Lorg/webrtc/haima/listeners/HmProtoCallback;)V
    .locals 0

    .line 1
    sput-object p0, Lorg/webrtc/haima/util/RtcProtoBufUtil;->mProtoCallback:Lorg/webrtc/haima/listeners/HmProtoCallback;

    .line 2
    .line 3
    return-void
.end method

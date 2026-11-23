.class public Lorg/webrtc/haima/countly/RtcCountlyUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "RtcCountlyUtil"

.field private static hmCountlyCallback:Lorg/webrtc/haima/countly/HmCountlyCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

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

.method public static init(Lorg/webrtc/haima/countly/HmCountlyCallback;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/countly/RtcCountlyUtil;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "==init==="

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object p0, Lorg/webrtc/haima/countly/RtcCountlyUtil;->hmCountlyCallback:Lorg/webrtc/haima/countly/HmCountlyCallback;

    .line 9
    .line 10
    return-void
.end method

.method public static recordErrorEvent(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/16 v0, 0x2fa8

    .line 2
    .line 3
    :try_start_0
    const-string v1, "utf-8"

    .line 4
    .line 5
    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string v1, "%22"

    .line 16
    .line 17
    const-string v2, ""

    .line 18
    .line 19
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :cond_0
    invoke-static {v0, p0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    const-string p0, "URLEncoder.encode.error"

    .line 28
    .line 29
    invoke-static {v0, p0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public static recordEvent(I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    return-void
.end method

.method public static recordEvent(II)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;J)V

    return-void
.end method

.method public static recordEvent(ILjava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;J)V

    return-void
.end method

.method public static recordEvent(ILjava/lang/String;J)V
    .locals 3

    .line 4
    sget-object v0, Lorg/webrtc/haima/countly/RtcCountlyUtil;->hmCountlyCallback:Lorg/webrtc/haima/countly/HmCountlyCallback;

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lorg/webrtc/haima/countly/RtcCountlyUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===recordEvent=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lorg/webrtc/haima/countly/RtcCountlyUtil;->hmCountlyCallback:Lorg/webrtc/haima/countly/HmCountlyCallback;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/webrtc/haima/countly/HmCountlyCallback;->callBackToSaasSDK(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public static unInit()V
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/countly/RtcCountlyUtil;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "==unInit==="

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lorg/webrtc/haima/countly/RtcCountlyUtil;->hmCountlyCallback:Lorg/webrtc/haima/countly/HmCountlyCallback;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    sput-object v0, Lorg/webrtc/haima/countly/RtcCountlyUtil;->hmCountlyCallback:Lorg/webrtc/haima/countly/HmCountlyCallback;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

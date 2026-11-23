.class Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$HmCountlyEventRecorder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/haima/HmCountlyEventRecorderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HmCountlyEventRecorder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$HmCountlyEventRecorder;-><init>()V

    return-void
.end method


# virtual methods
.method public recordCountlyEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :goto_0
    return-void
.end method

.class public Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/WeaklyNetworkReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamerWeaklyNetInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo$Bwe;
    }
.end annotation


# instance fields
.field private avgEncodeMs:J

.field private estimatedBweList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo$Bwe;",
            ">;"
        }
    .end annotation
.end field

.field private frameRateInput:J

.field private frameRateSent:J

.field private qpSum:J

.field private streamerReportTime:J


# direct methods
.method public constructor <init>(JJJJJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;->estimatedBweList:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-wide p1, p0, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;->streamerReportTime:J

    .line 12
    .line 13
    iput-wide p3, p0, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;->frameRateInput:J

    .line 14
    .line 15
    iput-wide p5, p0, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;->frameRateSent:J

    .line 16
    .line 17
    iput-wide p7, p0, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;->avgEncodeMs:J

    .line 18
    .line 19
    iput-wide p9, p0, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;->qpSum:J

    .line 20
    .line 21
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;->streamerReportTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$100(Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;->frameRateInput:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$200(Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;->frameRateSent:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$300(Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;->avgEncodeMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$400(Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;->qpSum:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$500(Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;->estimatedBweList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public addBweInfo(JJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;->estimatedBweList:Ljava/util/ArrayList;

    .line 2
    .line 3
    new-instance v1, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo$Bwe;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2, p3, p4}, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo$Bwe;-><init>(JJ)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

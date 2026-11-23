.class Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo$Bwe;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Bwe"
.end annotation


# instance fields
.field public estimatedBitrate:J

.field public estimatedTime:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p3, p0, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo$Bwe;->estimatedBitrate:J

    .line 5
    .line 6
    iput-wide p1, p0, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo$Bwe;->estimatedTime:J

    .line 7
    .line 8
    return-void
.end method

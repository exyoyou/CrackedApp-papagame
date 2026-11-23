.class Lorg/webrtc/haima/HmRtcCommandFilter$ChannelState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/HmRtcCommandFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChannelState"
.end annotation


# instance fields
.field public id:I

.field public opened:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/webrtc/haima/HmRtcCommandFilter$ChannelState;->id:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lorg/webrtc/haima/HmRtcCommandFilter$ChannelState;->opened:Z

    .line 7
    .line 8
    return-void
.end method

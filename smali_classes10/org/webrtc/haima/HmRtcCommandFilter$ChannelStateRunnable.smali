.class abstract Lorg/webrtc/haima/HmRtcCommandFilter$ChannelStateRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/HmRtcCommandFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ChannelStateRunnable"
.end annotation


# instance fields
.field public state:Lorg/webrtc/haima/HmRtcCommandFilter$ChannelState;


# direct methods
.method public constructor <init>(Lorg/webrtc/haima/HmRtcCommandFilter$ChannelState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcCommandFilter$ChannelStateRunnable;->state:Lorg/webrtc/haima/HmRtcCommandFilter$ChannelState;

    .line 5
    .line 6
    return-void
.end method

.class public Lorg/hmwebrtc/VideoEncoder$RateControlParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/VideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RateControlParameters"
.end annotation


# instance fields
.field public final bitrate:Lorg/hmwebrtc/VideoEncoder$BitrateAllocation;

.field public final framerateFps:D


# direct methods
.method public constructor <init>(Lorg/hmwebrtc/VideoEncoder$BitrateAllocation;D)V
    .locals 0
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RateControlParameters"
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/hmwebrtc/VideoEncoder$RateControlParameters;->bitrate:Lorg/hmwebrtc/VideoEncoder$BitrateAllocation;

    .line 5
    .line 6
    iput-wide p2, p0, Lorg/hmwebrtc/VideoEncoder$RateControlParameters;->framerateFps:D

    .line 7
    .line 8
    return-void
.end method

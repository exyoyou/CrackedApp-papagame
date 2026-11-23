.class public Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/HmAVDelayCloudConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVDelayTuneValue"
.end annotation


# instance fields
.field public maxThreshold:I

.field public saltValue:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;->maxThreshold:I

    .line 6
    .line 7
    iput v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;->saltValue:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;->maxThreshold:I

    .line 3
    .line 4
    iput v0, p0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;->saltValue:I

    .line 5
    .line 6
    return-void
.end method

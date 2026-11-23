.class public Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/utils/PerfdogJankCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JankInfo"
.end annotation


# instance fields
.field public bigJankCount:J

.field public bigJankDuration:J

.field public duration:J

.field public frameCount:J

.field public jankCount:J

.field public jankDuration:J

.field public jankIntervals:Ljava/lang/String;

.field public stutter:F

.field public timestampMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.class public Lorg/hmwebrtc/utils/PerfdogJankCounter$Interval;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/utils/PerfdogJankCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Interval"
.end annotation


# instance fields
.field public end:J

.field public start:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$Interval;->start:J

    .line 5
    .line 6
    iput-wide p3, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter$Interval;->end:J

    .line 7
    .line 8
    return-void
.end method

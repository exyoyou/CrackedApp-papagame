.class public Lorg/hmwebrtc/utils/HtmlLineChartWriter$ExternalInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/utils/HtmlLineChartWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExternalInfo"
.end annotation


# instance fields
.field public fLastValue:F

.field public lastValue:J

.field public sampleCount:J


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lorg/hmwebrtc/utils/HtmlLineChartWriter$ExternalInfo;->lastValue:J

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput v2, p0, Lorg/hmwebrtc/utils/HtmlLineChartWriter$ExternalInfo;->fLastValue:F

    .line 10
    .line 11
    iput-wide v0, p0, Lorg/hmwebrtc/utils/HtmlLineChartWriter$ExternalInfo;->sampleCount:J

    .line 12
    .line 13
    return-void
.end method

.class Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/utils/HtmlLineChartWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Category"
.end annotation


# instance fields
.field externalInfo:Lorg/hmwebrtc/utils/HtmlLineChartWriter$ExternalInfo;

.field jsonIndex:I

.field list:Ljava/lang/String;

.field sampleCount:J

.field selected:Z


# direct methods
.method constructor <init>(ZLorg/hmwebrtc/utils/HtmlLineChartWriter$ExternalInfo;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;->selected:Z

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;->sampleCount:J

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;->jsonIndex:I

    .line 12
    .line 13
    const-string p1, ""

    .line 14
    .line 15
    iput-object p1, p0, Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;->list:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p2, p0, Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;->externalInfo:Lorg/hmwebrtc/utils/HtmlLineChartWriter$ExternalInfo;

    .line 18
    .line 19
    return-void
.end method

.class public Lorg/hmwebrtc/utils/PerfdogJankReport;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "JankReport"


# instance fields
.field private mHtmlWriter:Lorg/hmwebrtc/utils/HtmlLineChartWriter;

.field private mStarted:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/hmwebrtc/utils/HtmlLineChartWriter;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/hmwebrtc/utils/PerfdogJankReport;->mHtmlWriter:Lorg/hmwebrtc/utils/HtmlLineChartWriter;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public addAccumulativeValue(Ljava/lang/String;JF)Z
    .locals 7

    .line 10
    iget-boolean v0, p0, Lorg/hmwebrtc/utils/PerfdogJankReport;->mStarted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/utils/PerfdogJankReport;->mHtmlWriter:Lorg/hmwebrtc/utils/HtmlLineChartWriter;

    invoke-virtual {v0, p1}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->getCategoryExtenalInfo(Ljava/lang/String;)Lorg/hmwebrtc/utils/HtmlLineChartWriter$ExternalInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 12
    :cond_1
    iget v1, v0, Lorg/hmwebrtc/utils/HtmlLineChartWriter$ExternalInfo;->fLastValue:F

    sub-float v1, p4, v1

    .line 13
    iget-wide v2, v0, Lorg/hmwebrtc/utils/HtmlLineChartWriter$ExternalInfo;->sampleCount:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    const/4 v1, 0x0

    :cond_2
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 14
    iput-wide v2, v0, Lorg/hmwebrtc/utils/HtmlLineChartWriter$ExternalInfo;->sampleCount:J

    .line 15
    iput p4, v0, Lorg/hmwebrtc/utils/HtmlLineChartWriter$ExternalInfo;->fLastValue:F

    .line 16
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 17
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 18
    iget-object p3, p0, Lorg/hmwebrtc/utils/PerfdogJankReport;->mHtmlWriter:Lorg/hmwebrtc/utils/HtmlLineChartWriter;

    invoke-virtual {p3, p1, p2}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->addSample(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public addAccumulativeValue(Ljava/lang/String;JJ)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/utils/PerfdogJankReport;->mStarted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/utils/PerfdogJankReport;->mHtmlWriter:Lorg/hmwebrtc/utils/HtmlLineChartWriter;

    invoke-virtual {v0, p1}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->getCategoryExtenalInfo(Ljava/lang/String;)Lorg/hmwebrtc/utils/HtmlLineChartWriter$ExternalInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-wide v1, v0, Lorg/hmwebrtc/utils/HtmlLineChartWriter$ExternalInfo;->lastValue:J

    sub-long v1, p4, v1

    .line 4
    iget-wide v3, v0, Lorg/hmwebrtc/utils/HtmlLineChartWriter$ExternalInfo;->sampleCount:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    move-wide v1, v5

    :cond_2
    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .line 5
    iput-wide v3, v0, Lorg/hmwebrtc/utils/HtmlLineChartWriter$ExternalInfo;->sampleCount:J

    .line 6
    iput-wide p4, v0, Lorg/hmwebrtc/utils/HtmlLineChartWriter$ExternalInfo;->lastValue:J

    .line 7
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "["

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 9
    iget-object p3, p0, Lorg/hmwebrtc/utils/PerfdogJankReport;->mHtmlWriter:Lorg/hmwebrtc/utils/HtmlLineChartWriter;

    invoke-virtual {p3, p1, p2}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->addSample(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public addCategory(Ljava/lang/String;Z)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/utils/PerfdogJankReport;->mStarted:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/utils/PerfdogJankReport;->mHtmlWriter:Lorg/hmwebrtc/utils/HtmlLineChartWriter;

    .line 8
    .line 9
    new-instance v1, Lorg/hmwebrtc/utils/HtmlLineChartWriter$ExternalInfo;

    .line 10
    .line 11
    invoke-direct {v1}, Lorg/hmwebrtc/utils/HtmlLineChartWriter$ExternalInfo;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, p2, v1}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->addCategory(Ljava/lang/String;ZLorg/hmwebrtc/utils/HtmlLineChartWriter$ExternalInfo;)Z

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1
.end method

.method public addSummary(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/utils/PerfdogJankReport;->mStarted:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/utils/PerfdogJankReport;->mHtmlWriter:Lorg/hmwebrtc/utils/HtmlLineChartWriter;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->addSummary(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public addValue(Ljava/lang/String;JF)Z
    .locals 2

    .line 5
    iget-boolean v0, p0, Lorg/hmwebrtc/utils/PerfdogJankReport;->mStarted:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 8
    iget-object p3, p0, Lorg/hmwebrtc/utils/PerfdogJankReport;->mHtmlWriter:Lorg/hmwebrtc/utils/HtmlLineChartWriter;

    invoke-virtual {p3, p1, p2}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->addSample(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public addValue(Ljava/lang/String;JI)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/utils/PerfdogJankReport;->mStarted:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    iget-object p3, p0, Lorg/hmwebrtc/utils/PerfdogJankReport;->mHtmlWriter:Lorg/hmwebrtc/utils/HtmlLineChartWriter;

    invoke-virtual {p3, p1, p2}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->addSample(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public start()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/utils/PerfdogJankReport;->mStarted:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lorg/hmwebrtc/utils/PerfdogJankReport;->mStarted:Z

    .line 9
    .line 10
    iget-object v1, p0, Lorg/hmwebrtc/utils/PerfdogJankReport;->mHtmlWriter:Lorg/hmwebrtc/utils/HtmlLineChartWriter;

    .line 11
    .line 12
    invoke-virtual {v1}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->writeHtmlHeader()Z

    .line 13
    .line 14
    .line 15
    return v0
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/utils/PerfdogJankReport;->mStarted:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lorg/hmwebrtc/utils/PerfdogJankReport;->mStarted:Z

    .line 8
    .line 9
    iget-object v0, p0, Lorg/hmwebrtc/utils/PerfdogJankReport;->mHtmlWriter:Lorg/hmwebrtc/utils/HtmlLineChartWriter;

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->writeHtmlTail()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

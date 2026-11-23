.class public Lcom/haima/hmcp/utils/SpeedGather;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/utils/SpeedGather$URLInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpeedGather"


# instance fields
.field private gather:I

.field private info:Lcom/haima/hmcp/utils/SpeedGather$URLInfo;

.field private realSpeeds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private realTime:J

.field private totalLen:J


# direct methods
.method public constructor <init>(IJLcom/haima/hmcp/utils/SpeedGather$URLInfo;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/haima/hmcp/utils/SpeedGather;->totalLen:J

    .line 7
    .line 8
    iput p1, p0, Lcom/haima/hmcp/utils/SpeedGather;->gather:I

    .line 9
    .line 10
    iput-wide p2, p0, Lcom/haima/hmcp/utils/SpeedGather;->realTime:J

    .line 11
    .line 12
    iput-object p4, p0, Lcom/haima/hmcp/utils/SpeedGather;->info:Lcom/haima/hmcp/utils/SpeedGather$URLInfo;

    .line 13
    .line 14
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/haima/hmcp/utils/SpeedGather;->realSpeeds:Ljava/util/List;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public avg()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/SpeedGather;->realSpeeds:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ljava/lang/Float;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    add-float/2addr v1, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/utils/SpeedGather;->realSpeeds:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    int-to-float v0, v0

    .line 33
    div-float/2addr v1, v0

    .line 34
    return v1
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/SpeedGather;->realSpeeds:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getListString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/haima/hmcp/utils/SpeedGather;->realSpeeds:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/Float;

    .line 23
    .line 24
    const-string v3, ","

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public getMedian()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/SpeedGather;->realSpeeds:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    div-int/lit8 v1, v1, 0x2

    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Float;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public getQuarter()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/SpeedGather;->realSpeeds:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    div-int/lit8 v1, v1, 0x4

    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Float;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public getSpeed(FF)F
    .locals 0

    return p1
.end method

.method public myStd(F)F
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/SpeedGather;->info:Lcom/haima/hmcp/utils/SpeedGather$URLInfo;

    .line 2
    .line 3
    iget v0, v0, Lcom/haima/hmcp/utils/SpeedGather$URLInfo;->skipNumber:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/haima/hmcp/utils/SpeedGather;->realSpeeds:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v0

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    iget-object v4, p0, Lcom/haima/hmcp/utils/SpeedGather;->realSpeeds:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-ge v2, v4, :cond_1

    .line 20
    .line 21
    iget-object v4, p0, Lcom/haima/hmcp/utils/SpeedGather;->realSpeeds:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Ljava/lang/Float;

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    cmpg-float v5, v4, p1

    .line 34
    .line 35
    if-gez v5, :cond_0

    .line 36
    .line 37
    sub-float v4, p1, v4

    .line 38
    .line 39
    add-float/2addr v3, v4

    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    sub-int/2addr v2, v0

    .line 44
    const/4 p1, 0x1

    .line 45
    if-lt v2, p1, :cond_1

    .line 46
    .line 47
    int-to-float p1, v2

    .line 48
    div-float v1, v3, p1

    .line 49
    .line 50
    :cond_1
    return v1
.end method

.method public speedTest(JJ)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/utils/SpeedGather;->realTime:J

    .line 2
    .line 3
    sub-long v0, p1, v0

    .line 4
    .line 5
    iget v2, p0, Lcom/haima/hmcp/utils/SpeedGather;->gather:I

    .line 6
    .line 7
    int-to-long v2, v2

    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-ltz v4, :cond_0

    .line 11
    .line 12
    iget-wide v2, p0, Lcom/haima/hmcp/utils/SpeedGather;->totalLen:J

    .line 13
    .line 14
    iput-wide p3, p0, Lcom/haima/hmcp/utils/SpeedGather;->totalLen:J

    .line 15
    .line 16
    iput-wide p1, p0, Lcom/haima/hmcp/utils/SpeedGather;->realTime:J

    .line 17
    .line 18
    sub-long/2addr p3, v2

    .line 19
    long-to-float p1, p3

    .line 20
    long-to-float p2, v0

    .line 21
    const/high16 p3, 0x447a0000    # 1000.0f

    .line 22
    .line 23
    div-float/2addr p2, p3

    .line 24
    div-float/2addr p1, p2

    .line 25
    div-float/2addr p1, p3

    .line 26
    iget-object p2, p0, Lcom/haima/hmcp/utils/SpeedGather;->realSpeeds:Ljava/util/List;

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string p3, "CloudTest>> speed_test_time("

    .line 41
    .line 42
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget p3, p0, Lcom/haima/hmcp/utils/SpeedGather;->gather:I

    .line 46
    .line 47
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p3, "): "

    .line 51
    .line 52
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    float-to-long p3, p1

    .line 56
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string p2, "SpeedGather"

    .line 64
    .line 65
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    return-void
.end method

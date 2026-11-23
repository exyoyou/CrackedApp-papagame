.class public Lcom/haima/hmcp/utils/SpeedGather$URLInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/utils/SpeedGather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "URLInfo"
.end annotation


# instance fields
.field public peakRateCoefficient:F

.field public playTime:I

.field public skipNumber:I

.field public speedCoefficient:F

.field public standardDeviationCoefficient:F

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "https://saassdk.haimawan.com/saas_test_20M.data"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/utils/SpeedGather$URLInfo;->url:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    iput v0, p0, Lcom/haima/hmcp/utils/SpeedGather$URLInfo;->playTime:I

    .line 10
    .line 11
    iput v0, p0, Lcom/haima/hmcp/utils/SpeedGather$URLInfo;->skipNumber:I

    .line 12
    .line 13
    const/high16 v0, 0x3f800000    # 1.0f

    .line 14
    .line 15
    iput v0, p0, Lcom/haima/hmcp/utils/SpeedGather$URLInfo;->peakRateCoefficient:F

    .line 16
    .line 17
    const v1, 0x3f4ccccd    # 0.8f

    .line 18
    .line 19
    .line 20
    iput v1, p0, Lcom/haima/hmcp/utils/SpeedGather$URLInfo;->standardDeviationCoefficient:F

    .line 21
    .line 22
    iput v0, p0, Lcom/haima/hmcp/utils/SpeedGather$URLInfo;->speedCoefficient:F

    .line 23
    .line 24
    return-void
.end method

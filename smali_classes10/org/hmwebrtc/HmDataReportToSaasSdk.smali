.class public Lorg/hmwebrtc/HmDataReportToSaasSdk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/SeiDataReportEvent;


# static fields
.field private static instance:Lorg/hmwebrtc/HmDataReportToSaasSdk;


# instance fields
.field private mIFrameCallbck:Lorg/hmwebrtc/listener/IFrameCallback;

.field needToReportSeiData:Z

.field sampleInterval:I

.field seiDataReportCallback:Lorg/hmwebrtc/SeiDataReportEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/hmwebrtc/HmDataReportToSaasSdk;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/hmwebrtc/HmDataReportToSaasSdk;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/hmwebrtc/HmDataReportToSaasSdk;->instance:Lorg/hmwebrtc/HmDataReportToSaasSdk;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getInstance()Lorg/hmwebrtc/HmDataReportToSaasSdk;
    .locals 1

    .line 1
    sget-object v0, Lorg/hmwebrtc/HmDataReportToSaasSdk;->instance:Lorg/hmwebrtc/HmDataReportToSaasSdk;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public getIFrameCallback()Lorg/hmwebrtc/listener/IFrameCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/HmDataReportToSaasSdk;->mIFrameCallbck:Lorg/hmwebrtc/listener/IFrameCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public initInstance(ZILorg/hmwebrtc/SeiDataReportEvent;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/hmwebrtc/HmDataReportToSaasSdk;->needToReportSeiData:Z

    .line 2
    .line 3
    iput p2, p0, Lorg/hmwebrtc/HmDataReportToSaasSdk;->sampleInterval:I

    .line 4
    .line 5
    iput-object p3, p0, Lorg/hmwebrtc/HmDataReportToSaasSdk;->seiDataReportCallback:Lorg/hmwebrtc/SeiDataReportEvent;

    .line 6
    .line 7
    return-void
.end method

.method public onFrameSeiDataReportCallback(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/SeiData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/HmDataReportToSaasSdk;->seiDataReportCallback:Lorg/hmwebrtc/SeiDataReportEvent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/hmwebrtc/SeiDataReportEvent;->onFrameSeiDataReportCallback(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setIFrameCallbck(Lorg/hmwebrtc/listener/IFrameCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/HmDataReportToSaasSdk;->mIFrameCallbck:Lorg/hmwebrtc/listener/IFrameCallback;

    .line 2
    .line 3
    return-void
.end method

.class public Lorg/hmwebrtc/SeiData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public decodedTimestamp:J

.field public encodedTimestamp:J

.field public frameId:I

.field public preDecoderTimestamp:J

.field public preEncoderTimestamp:J


# direct methods
.method constructor <init>(IJJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/hmwebrtc/SeiData;->frameId:I

    .line 5
    .line 6
    iput-wide p2, p0, Lorg/hmwebrtc/SeiData;->preEncoderTimestamp:J

    .line 7
    .line 8
    iput-wide p4, p0, Lorg/hmwebrtc/SeiData;->encodedTimestamp:J

    .line 9
    .line 10
    iput-wide p6, p0, Lorg/hmwebrtc/SeiData;->preDecoderTimestamp:J

    .line 11
    .line 12
    iput-wide p8, p0, Lorg/hmwebrtc/SeiData;->decodedTimestamp:J

    .line 13
    .line 14
    return-void
.end method

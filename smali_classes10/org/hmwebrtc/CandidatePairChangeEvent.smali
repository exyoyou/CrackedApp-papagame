.class public final Lorg/hmwebrtc/CandidatePairChangeEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final estimatedDisconnectedTimeMs:I

.field public final lastDataReceivedMs:I

.field public final local:Lorg/hmwebrtc/IceCandidate;

.field public final reason:Ljava/lang/String;

.field public final remote:Lorg/hmwebrtc/IceCandidate;


# direct methods
.method constructor <init>(Lorg/hmwebrtc/IceCandidate;Lorg/hmwebrtc/IceCandidate;ILjava/lang/String;I)V
    .locals 0
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/hmwebrtc/CandidatePairChangeEvent;->local:Lorg/hmwebrtc/IceCandidate;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/hmwebrtc/CandidatePairChangeEvent;->remote:Lorg/hmwebrtc/IceCandidate;

    .line 7
    .line 8
    iput p3, p0, Lorg/hmwebrtc/CandidatePairChangeEvent;->lastDataReceivedMs:I

    .line 9
    .line 10
    iput-object p4, p0, Lorg/hmwebrtc/CandidatePairChangeEvent;->reason:Ljava/lang/String;

    .line 11
    .line 12
    iput p5, p0, Lorg/hmwebrtc/CandidatePairChangeEvent;->estimatedDisconnectedTimeMs:I

    .line 13
    .line 14
    return-void
.end method

.class public Lorg/webrtc/haima/PeerConnectionClient$DataChannelParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/PeerConnectionClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataChannelParameters"
.end annotation


# instance fields
.field public final id:I

.field public final maxRetransmitTimeMs:I

.field public final maxRetransmits:I

.field public final negotiated:Z

.field public final ordered:Z

.field public final protocol:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZIILjava/lang/String;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lorg/webrtc/haima/PeerConnectionClient$DataChannelParameters;->ordered:Z

    .line 5
    .line 6
    iput p2, p0, Lorg/webrtc/haima/PeerConnectionClient$DataChannelParameters;->maxRetransmitTimeMs:I

    .line 7
    .line 8
    iput p3, p0, Lorg/webrtc/haima/PeerConnectionClient$DataChannelParameters;->maxRetransmits:I

    .line 9
    .line 10
    iput-object p4, p0, Lorg/webrtc/haima/PeerConnectionClient$DataChannelParameters;->protocol:Ljava/lang/String;

    .line 11
    .line 12
    iput-boolean p5, p0, Lorg/webrtc/haima/PeerConnectionClient$DataChannelParameters;->negotiated:Z

    .line 13
    .line 14
    iput p6, p0, Lorg/webrtc/haima/PeerConnectionClient$DataChannelParameters;->id:I

    .line 15
    .line 16
    return-void
.end method

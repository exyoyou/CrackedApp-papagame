.class public final Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverInit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/RtpTransceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RtpTransceiverInit"
.end annotation


# instance fields
.field private final direction:Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

.field private final sendEncodings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/hmwebrtc/RtpParameters$Encoding;",
            ">;"
        }
    .end annotation
.end field

.field private final streamIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;->SEND_RECV:Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    invoke-direct {p0, v0}, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverInit;-><init>(Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;)V

    return-void
.end method

.method public constructor <init>(Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;)V
    .locals 2

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverInit;-><init>(Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverInit;-><init>(Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/RtpParameters$Encoding;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverInit;->direction:Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverInit;->streamIds:Ljava/util/List;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverInit;->sendEncodings:Ljava/util/List;

    return-void
.end method


# virtual methods
.method getDirectionNativeIndex()I
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RtpTransceiverInit"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverInit;->direction:Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;->getNativeIndex()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method getSendEncodings()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/RtpParameters$Encoding;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RtpTransceiverInit"
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverInit;->sendEncodings:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method getStreamIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "RtpTransceiverInit"
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverInit;->streamIds:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

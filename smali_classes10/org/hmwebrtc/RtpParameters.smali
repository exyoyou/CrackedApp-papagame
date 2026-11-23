.class public Lorg/hmwebrtc/RtpParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/RtpParameters$HeaderExtension;,
        Lorg/hmwebrtc/RtpParameters$Rtcp;,
        Lorg/hmwebrtc/RtpParameters$Codec;,
        Lorg/hmwebrtc/RtpParameters$Encoding;,
        Lorg/hmwebrtc/RtpParameters$DegradationPreference;
    }
.end annotation


# instance fields
.field public final codecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/hmwebrtc/RtpParameters$Codec;",
            ">;"
        }
    .end annotation
.end field

.field public degradationPreference:Lorg/hmwebrtc/RtpParameters$DegradationPreference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final encodings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/hmwebrtc/RtpParameters$Encoding;",
            ">;"
        }
    .end annotation
.end field

.field private final headerExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/hmwebrtc/RtpParameters$HeaderExtension;",
            ">;"
        }
    .end annotation
.end field

.field private final rtcp:Lorg/hmwebrtc/RtpParameters$Rtcp;

.field public final transactionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/hmwebrtc/RtpParameters$DegradationPreference;Lorg/hmwebrtc/RtpParameters$Rtcp;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/hmwebrtc/RtpParameters$DegradationPreference;",
            "Lorg/hmwebrtc/RtpParameters$Rtcp;",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/RtpParameters$HeaderExtension;",
            ">;",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/RtpParameters$Encoding;",
            ">;",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/RtpParameters$Codec;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/hmwebrtc/RtpParameters;->transactionId:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/hmwebrtc/RtpParameters;->degradationPreference:Lorg/hmwebrtc/RtpParameters$DegradationPreference;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/hmwebrtc/RtpParameters;->rtcp:Lorg/hmwebrtc/RtpParameters$Rtcp;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/hmwebrtc/RtpParameters;->headerExtensions:Ljava/util/List;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/hmwebrtc/RtpParameters;->encodings:Ljava/util/List;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/hmwebrtc/RtpParameters;->codecs:Ljava/util/List;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method getCodecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/RtpParameters$Codec;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/RtpParameters;->codecs:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method getDegradationPreference()Lorg/hmwebrtc/RtpParameters$DegradationPreference;
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/RtpParameters;->degradationPreference:Lorg/hmwebrtc/RtpParameters$DegradationPreference;

    .line 2
    .line 3
    return-object v0
.end method

.method getEncodings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/RtpParameters$Encoding;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/RtpParameters;->encodings:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHeaderExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/RtpParameters$HeaderExtension;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/RtpParameters;->headerExtensions:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRtcp()Lorg/hmwebrtc/RtpParameters$Rtcp;
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/RtpParameters;->rtcp:Lorg/hmwebrtc/RtpParameters$Rtcp;

    .line 2
    .line 3
    return-object v0
.end method

.method getTransactionId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/RtpParameters;->transactionId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

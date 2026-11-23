.class public final Lorg/hmwebrtc/PeerConnectionDependencies;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/PeerConnectionDependencies$Builder;
    }
.end annotation


# instance fields
.field private final observer:Lorg/hmwebrtc/PeerConnection$Observer;

.field private final sslCertificateVerifier:Lorg/hmwebrtc/SSLCertificateVerifier;


# direct methods
.method private constructor <init>(Lorg/hmwebrtc/PeerConnection$Observer;Lorg/hmwebrtc/SSLCertificateVerifier;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/hmwebrtc/PeerConnectionDependencies;->observer:Lorg/hmwebrtc/PeerConnection$Observer;

    .line 4
    iput-object p2, p0, Lorg/hmwebrtc/PeerConnectionDependencies;->sslCertificateVerifier:Lorg/hmwebrtc/SSLCertificateVerifier;

    return-void
.end method

.method synthetic constructor <init>(Lorg/hmwebrtc/PeerConnection$Observer;Lorg/hmwebrtc/SSLCertificateVerifier;Lorg/hmwebrtc/PeerConnectionDependencies$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/PeerConnectionDependencies;-><init>(Lorg/hmwebrtc/PeerConnection$Observer;Lorg/hmwebrtc/SSLCertificateVerifier;)V

    return-void
.end method

.method public static builder(Lorg/hmwebrtc/PeerConnection$Observer;)Lorg/hmwebrtc/PeerConnectionDependencies$Builder;
    .locals 2

    .line 1
    new-instance v0, Lorg/hmwebrtc/PeerConnectionDependencies$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/hmwebrtc/PeerConnectionDependencies$Builder;-><init>(Lorg/hmwebrtc/PeerConnection$Observer;Lorg/hmwebrtc/PeerConnectionDependencies$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method getObserver()Lorg/hmwebrtc/PeerConnection$Observer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnectionDependencies;->observer:Lorg/hmwebrtc/PeerConnection$Observer;

    .line 2
    .line 3
    return-object v0
.end method

.method getSSLCertificateVerifier()Lorg/hmwebrtc/SSLCertificateVerifier;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/PeerConnectionDependencies;->sslCertificateVerifier:Lorg/hmwebrtc/SSLCertificateVerifier;

    .line 2
    .line 3
    return-object v0
.end method

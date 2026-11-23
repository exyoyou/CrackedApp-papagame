.class public Lorg/hmwebrtc/PeerConnectionDependencies$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/PeerConnectionDependencies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private observer:Lorg/hmwebrtc/PeerConnection$Observer;

.field private sslCertificateVerifier:Lorg/hmwebrtc/SSLCertificateVerifier;


# direct methods
.method private constructor <init>(Lorg/hmwebrtc/PeerConnection$Observer;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/hmwebrtc/PeerConnectionDependencies$Builder;->observer:Lorg/hmwebrtc/PeerConnection$Observer;

    return-void
.end method

.method synthetic constructor <init>(Lorg/hmwebrtc/PeerConnection$Observer;Lorg/hmwebrtc/PeerConnectionDependencies$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/PeerConnectionDependencies$Builder;-><init>(Lorg/hmwebrtc/PeerConnection$Observer;)V

    return-void
.end method


# virtual methods
.method public createPeerConnectionDependencies()Lorg/hmwebrtc/PeerConnectionDependencies;
    .locals 4

    .line 1
    new-instance v0, Lorg/hmwebrtc/PeerConnectionDependencies;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/hmwebrtc/PeerConnectionDependencies$Builder;->observer:Lorg/hmwebrtc/PeerConnection$Observer;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/hmwebrtc/PeerConnectionDependencies$Builder;->sslCertificateVerifier:Lorg/hmwebrtc/SSLCertificateVerifier;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lorg/hmwebrtc/PeerConnectionDependencies;-><init>(Lorg/hmwebrtc/PeerConnection$Observer;Lorg/hmwebrtc/SSLCertificateVerifier;Lorg/hmwebrtc/PeerConnectionDependencies$1;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public setSSLCertificateVerifier(Lorg/hmwebrtc/SSLCertificateVerifier;)Lorg/hmwebrtc/PeerConnectionDependencies$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/PeerConnectionDependencies$Builder;->sslCertificateVerifier:Lorg/hmwebrtc/SSLCertificateVerifier;

    .line 2
    .line 3
    return-object p0
.end method

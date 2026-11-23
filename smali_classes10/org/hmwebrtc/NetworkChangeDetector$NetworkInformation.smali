.class public Lorg/hmwebrtc/NetworkChangeDetector$NetworkInformation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/NetworkChangeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkInformation"
.end annotation


# instance fields
.field public final handle:J

.field public final ipAddresses:[Lorg/hmwebrtc/NetworkChangeDetector$IPAddress;

.field public final name:Ljava/lang/String;

.field public final type:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

.field public final underlyingTypeForVpn:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;J[Lorg/hmwebrtc/NetworkChangeDetector$IPAddress;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/hmwebrtc/NetworkChangeDetector$NetworkInformation;->name:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/hmwebrtc/NetworkChangeDetector$NetworkInformation;->type:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/hmwebrtc/NetworkChangeDetector$NetworkInformation;->underlyingTypeForVpn:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    .line 9
    .line 10
    iput-wide p4, p0, Lorg/hmwebrtc/NetworkChangeDetector$NetworkInformation;->handle:J

    .line 11
    .line 12
    iput-object p6, p0, Lorg/hmwebrtc/NetworkChangeDetector$NetworkInformation;->ipAddresses:[Lorg/hmwebrtc/NetworkChangeDetector$IPAddress;

    .line 13
    .line 14
    return-void
.end method

.method private getConnectionType()Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "NetworkInformation"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/NetworkChangeDetector$NetworkInformation;->type:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    .line 2
    .line 3
    return-object v0
.end method

.method private getHandle()J
    .locals 2
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "NetworkInformation"
    .end annotation

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/NetworkChangeDetector$NetworkInformation;->handle:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private getIpAddresses()[Lorg/hmwebrtc/NetworkChangeDetector$IPAddress;
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "NetworkInformation"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/NetworkChangeDetector$NetworkInformation;->ipAddresses:[Lorg/hmwebrtc/NetworkChangeDetector$IPAddress;

    .line 2
    .line 3
    return-object v0
.end method

.method private getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "NetworkInformation"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/NetworkChangeDetector$NetworkInformation;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private getUnderlyingConnectionTypeForVpn()Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "NetworkInformation"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/NetworkChangeDetector$NetworkInformation;->underlyingTypeForVpn:Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;

    .line 2
    .line 3
    return-object v0
.end method

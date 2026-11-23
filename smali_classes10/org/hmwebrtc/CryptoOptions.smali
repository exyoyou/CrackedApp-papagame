.class public final Lorg/hmwebrtc/CryptoOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/CryptoOptions$Builder;,
        Lorg/hmwebrtc/CryptoOptions$SFrame;,
        Lorg/hmwebrtc/CryptoOptions$Srtp;
    }
.end annotation


# instance fields
.field private final sframe:Lorg/hmwebrtc/CryptoOptions$SFrame;

.field private final srtp:Lorg/hmwebrtc/CryptoOptions$Srtp;


# direct methods
.method private constructor <init>(ZZZZ)V
    .locals 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v6, Lorg/hmwebrtc/CryptoOptions$Srtp;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/hmwebrtc/CryptoOptions$Srtp;-><init>(Lorg/hmwebrtc/CryptoOptions;ZZZLorg/hmwebrtc/CryptoOptions$1;)V

    iput-object v6, p0, Lorg/hmwebrtc/CryptoOptions;->srtp:Lorg/hmwebrtc/CryptoOptions$Srtp;

    .line 4
    new-instance p1, Lorg/hmwebrtc/CryptoOptions$SFrame;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p4, p2}, Lorg/hmwebrtc/CryptoOptions$SFrame;-><init>(Lorg/hmwebrtc/CryptoOptions;ZLorg/hmwebrtc/CryptoOptions$1;)V

    iput-object p1, p0, Lorg/hmwebrtc/CryptoOptions;->sframe:Lorg/hmwebrtc/CryptoOptions$SFrame;

    return-void
.end method

.method synthetic constructor <init>(ZZZZLorg/hmwebrtc/CryptoOptions$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/hmwebrtc/CryptoOptions;-><init>(ZZZZ)V

    return-void
.end method

.method public static builder()Lorg/hmwebrtc/CryptoOptions$Builder;
    .locals 2

    .line 1
    new-instance v0, Lorg/hmwebrtc/CryptoOptions$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/hmwebrtc/CryptoOptions$Builder;-><init>(Lorg/hmwebrtc/CryptoOptions$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public getSFrame()Lorg/hmwebrtc/CryptoOptions$SFrame;
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/CryptoOptions;->sframe:Lorg/hmwebrtc/CryptoOptions$SFrame;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSrtp()Lorg/hmwebrtc/CryptoOptions$Srtp;
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/CryptoOptions;->srtp:Lorg/hmwebrtc/CryptoOptions$Srtp;

    .line 2
    .line 3
    return-object v0
.end method

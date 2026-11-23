.class public final Lorg/hmwebrtc/CryptoOptions$SFrame;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/CryptoOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SFrame"
.end annotation


# instance fields
.field private final requireFrameEncryption:Z

.field final synthetic this$0:Lorg/hmwebrtc/CryptoOptions;


# direct methods
.method private constructor <init>(Lorg/hmwebrtc/CryptoOptions;Z)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/hmwebrtc/CryptoOptions$SFrame;->this$0:Lorg/hmwebrtc/CryptoOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p2, p0, Lorg/hmwebrtc/CryptoOptions$SFrame;->requireFrameEncryption:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/hmwebrtc/CryptoOptions;ZLorg/hmwebrtc/CryptoOptions$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/CryptoOptions$SFrame;-><init>(Lorg/hmwebrtc/CryptoOptions;Z)V

    return-void
.end method


# virtual methods
.method public getRequireFrameEncryption()Z
    .locals 1
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "SFrame"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/CryptoOptions$SFrame;->requireFrameEncryption:Z

    .line 2
    .line 3
    return v0
.end method

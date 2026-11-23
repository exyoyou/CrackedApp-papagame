.class public Lorg/hmwebrtc/CountlyObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createNativeCountlyObserver(Lorg/hmwebrtc/CountlyObserver;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/hmwebrtc/CountlyObserver;->nativeCreateCountlyObserver(Lorg/hmwebrtc/CountlyObserver;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method private static native nativeCreateCountlyObserver(Lorg/hmwebrtc/CountlyObserver;)J
.end method


# virtual methods
.method public onCountlyCallback(IJLjava/lang/String;)V
    .locals 0
    .annotation build Lorg/hmwebrtc/CalledByNative;
    .end annotation

    return-void
.end method

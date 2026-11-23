.class public Lorg/hmwebrtc/audio/DefaultAudioRecordFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/audio/AudioRecordFactory;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultAudioRecordFactory"


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


# virtual methods
.method public create(IIIII)Lorg/hmwebrtc/audio/IAudioRecord;
    .locals 7

    .line 1
    new-instance v6, Lorg/hmwebrtc/audio/WrappedAudioRecord;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    move v5, p5

    .line 9
    invoke-direct/range {v0 .. v5}, Lorg/hmwebrtc/audio/WrappedAudioRecord;-><init>(IIIII)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v6}, Lorg/hmwebrtc/audio/WrappedAudioRecord;->initRecord()Z

    .line 13
    .line 14
    .line 15
    return-object v6
.end method

.method public isAecSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAgcSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isNSSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

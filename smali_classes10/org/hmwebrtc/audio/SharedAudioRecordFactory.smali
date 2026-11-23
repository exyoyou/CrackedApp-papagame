.class public Lorg/hmwebrtc/audio/SharedAudioRecordFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/audio/AudioRecordFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/audio/SharedAudioRecordFactory$SharedAudioRecord;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SharedAudioRecordFactory"


# instance fields
.field private mInitMute:Z

.field private mSupportTimeout:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0, v0}, Lorg/hmwebrtc/audio/SharedAudioRecordFactory;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lorg/hmwebrtc/audio/SharedAudioRecordFactory;->mInitMute:Z

    .line 3
    iput-boolean p2, p0, Lorg/hmwebrtc/audio/SharedAudioRecordFactory;->mSupportTimeout:Z

    return-void
.end method


# virtual methods
.method public create(IIIII)Lorg/hmwebrtc/audio/IAudioRecord;
    .locals 9

    .line 1
    new-instance v8, Lorg/hmwebrtc/audio/SharedAudioRecordFactory$SharedAudioRecord;

    .line 2
    .line 3
    iget-boolean v6, p0, Lorg/hmwebrtc/audio/SharedAudioRecordFactory;->mInitMute:Z

    .line 4
    .line 5
    iget-boolean v7, p0, Lorg/hmwebrtc/audio/SharedAudioRecordFactory;->mSupportTimeout:Z

    .line 6
    .line 7
    move-object v0, v8

    .line 8
    move v1, p1

    .line 9
    move v2, p2

    .line 10
    move v3, p3

    .line 11
    move v4, p4

    .line 12
    move v5, p5

    .line 13
    invoke-direct/range {v0 .. v7}, Lorg/hmwebrtc/audio/SharedAudioRecordFactory$SharedAudioRecord;-><init>(IIIIIZZ)V

    .line 14
    .line 15
    .line 16
    return-object v8
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

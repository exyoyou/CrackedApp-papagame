.class public final synthetic Lorg/hmwebrtc/audio/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

.field public final synthetic c:Lorg/hmwebrtc/audio/IAudioRecord;


# direct methods
.method public synthetic constructor <init>(Lorg/hmwebrtc/audio/WebRtcAudioRecord;Lorg/hmwebrtc/audio/IAudioRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/hmwebrtc/audio/s;->b:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    iput-object p2, p0, Lorg/hmwebrtc/audio/s;->c:Lorg/hmwebrtc/audio/IAudioRecord;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/audio/s;->b:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    iget-object v1, p0, Lorg/hmwebrtc/audio/s;->c:Lorg/hmwebrtc/audio/IAudioRecord;

    invoke-static {v0, v1}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->a(Lorg/hmwebrtc/audio/WebRtcAudioRecord;Lorg/hmwebrtc/audio/IAudioRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

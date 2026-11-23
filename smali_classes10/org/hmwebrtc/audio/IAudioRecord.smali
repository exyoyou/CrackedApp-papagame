.class public interface abstract Lorg/hmwebrtc/audio/IAudioRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAudioFormat()I
.end method

.method public abstract getAudioSessionId()I
.end method

.method public abstract getAudioSource()I
.end method

.method public abstract getBufferSizeInFrames()I
.end method

.method public abstract getChannelCount()I
.end method

.method public abstract getRecordingState()I
.end method

.method public abstract getSampleRate()I
.end method

.method public abstract getState()I
.end method

.method public abstract getSystemAudioRecord()Landroid/media/AudioRecord;
.end method

.method public abstract isTimeout()Z
.end method

.method public abstract read(Ljava/nio/ByteBuffer;I)I
.end method

.method public abstract release()V
.end method

.method public abstract setMicrophoneMute(Z)Z
.end method

.method public abstract startRecording()V
.end method

.method public abstract stop()V
.end method

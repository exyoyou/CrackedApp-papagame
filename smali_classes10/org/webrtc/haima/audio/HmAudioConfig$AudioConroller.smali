.class interface abstract Lorg/webrtc/haima/audio/HmAudioConfig$AudioConroller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/audio/HmAudioConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AudioConroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/haima/audio/HmAudioConfig$AudioConroller$Config;
    }
.end annotation


# static fields
.field public static final RECORD_DISABLE:I = 0x0

.field public static final RECORD_EXCLUSIVE:I = 0x3

.field public static final RECORD_EXTERNAL:I = 0x1

.field public static final RECORD_SHARED:I = 0x2


# virtual methods
.method public abstract mute(Z)Z
.end method

.method public abstract setParameters(Lorg/webrtc/haima/audio/HmAudioConfig$AudioConroller$Config;)Z
.end method

.method public abstract writePcm([BII)I
.end method

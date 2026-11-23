.class public Lorg/hmwebrtc/DataChannel$SendOptoins;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/DataChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendOptoins"
.end annotation


# instance fields
.field maxBufferBytesSize:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lorg/hmwebrtc/DataChannel$SendOptoins;->maxBufferBytesSize:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method getMaxBufferBytesSize()J
    .locals 2
    .annotation build Lorg/hmwebrtc/CalledByNative;
        value = "SendOptoins"
    .end annotation

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/DataChannel$SendOptoins;->maxBufferBytesSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.class public abstract Lorg/webrtc/haima/HmDCBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/haima/HmDCBase$SimpleDcObserver;
    }
.end annotation


# instance fields
.field private mDataChannel:Lorg/hmwebrtc/DataChannel;

.field private mDataObserver:Lorg/webrtc/haima/HmDCBase$SimpleDcObserver;

.field private mName:Ljava/lang/String;

.field private mShared:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/hmwebrtc/DataChannel;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/webrtc/haima/HmDCBase;-><init>(Ljava/lang/String;Lorg/hmwebrtc/DataChannel;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/hmwebrtc/DataChannel;Z)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/webrtc/haima/HmDCBase;->mName:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dc_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/haima/HmDCBase;->mName:Ljava/lang/String;

    :cond_1
    if-eqz p2, :cond_2

    .line 6
    iput-object p2, p0, Lorg/webrtc/haima/HmDCBase;->mDataChannel:Lorg/hmwebrtc/DataChannel;

    .line 7
    iput-boolean p3, p0, Lorg/webrtc/haima/HmDCBase;->mShared:Z

    .line 8
    new-instance p1, Lorg/webrtc/haima/HmDCBase$SimpleDcObserver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/webrtc/haima/HmDCBase$SimpleDcObserver;-><init>(Lorg/webrtc/haima/HmDCBase;Lorg/webrtc/haima/HmDCBase$1;)V

    iput-object p1, p0, Lorg/webrtc/haima/HmDCBase;->mDataObserver:Lorg/webrtc/haima/HmDCBase$SimpleDcObserver;

    .line 9
    iget-object p2, p0, Lorg/webrtc/haima/HmDCBase;->mDataChannel:Lorg/hmwebrtc/DataChannel;

    invoke-virtual {p2, p1}, Lorg/hmwebrtc/DataChannel;->registerObserver(Lorg/hmwebrtc/DataChannel$Observer;)V

    return-void

    .line 10
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " dc is null"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static synthetic access$100(Lorg/webrtc/haima/HmDCBase;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/HmDCBase;->mName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public abstract onReceiveMessage(Ljava/lang/String;)V
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmDCBase;->mDataChannel:Lorg/hmwebrtc/DataChannel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/hmwebrtc/DataChannel;->unregisterObserver()V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lorg/webrtc/haima/HmDCBase;->mShared:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lorg/webrtc/haima/HmDCBase;->mDataChannel:Lorg/hmwebrtc/DataChannel;

    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/hmwebrtc/DataChannel;->dispose()V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lorg/webrtc/haima/HmDCBase;->mDataChannel:Lorg/hmwebrtc/DataChannel;

    .line 19
    .line 20
    iput-object v0, p0, Lorg/webrtc/haima/HmDCBase;->mDataObserver:Lorg/webrtc/haima/HmDCBase$SimpleDcObserver;

    .line 21
    .line 22
    return-void
.end method

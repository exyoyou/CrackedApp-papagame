.class public Lorg/webrtc/haima/HmDCSimple;
.super Lorg/webrtc/haima/HmDCBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/haima/HmDCSimple$Observer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HmDCSimple"


# instance fields
.field private mObserver:Lorg/webrtc/haima/HmDCSimple$Observer;

.field private mUserdata:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/hmwebrtc/DataChannel;Lorg/webrtc/haima/HmDCSimple$Observer;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/webrtc/haima/HmDCBase;-><init>(Ljava/lang/String;Lorg/hmwebrtc/DataChannel;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lorg/webrtc/haima/HmDCSimple;->mObserver:Lorg/webrtc/haima/HmDCSimple$Observer;

    .line 5
    .line 6
    iput-object p4, p0, Lorg/webrtc/haima/HmDCSimple;->mUserdata:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onReceiveMessage(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "HmDCSimple"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/webrtc/haima/HmDCSimple;->mObserver:Lorg/webrtc/haima/HmDCSimple$Observer;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lorg/webrtc/haima/HmDCSimple;->mUserdata:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-interface {v0, v1, p1}, Lorg/webrtc/haima/HmDCSimple$Observer;->onReceiveMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

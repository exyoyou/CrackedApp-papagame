.class public Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/AppRTCClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoomConnectionParameters"
.end annotation


# instance fields
.field public final coturnServer:Ljava/lang/String;

.field public final roomId:Ljava/lang/String;

.field public final signalServer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;->signalServer:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;->roomId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;->coturnServer:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

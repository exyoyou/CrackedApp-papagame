.class public Lorg/webrtc/haima/HmRtcAdapter$Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/HmRtcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation


# instance fields
.field public mCoturnServer:Ljava/lang/String;

.field public mDeviceBrand:Ljava/lang/String;

.field public mDeviceId:Ljava/lang/String;

.field public mDeviceModel:Ljava/lang/String;

.field public mDeviceOs:Ljava/lang/String;

.field public mDeviceResolution:Ljava/lang/String;

.field public mEnvVariableReader:Lorg/webrtc/haima/HmRtcAdapter$EnvVariableReader;

.field public mGameTypeIsArm:Z

.field public mRoomId:Ljava/lang/String;

.field public mSignalServer:Ljava/lang/String;

.field public mTurnIceServers:[Lorg/webrtc/haima/HmRtcAdapter$TurnIceServer;

.field public mUserId:Ljava/lang/String;


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
.method isVaild()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

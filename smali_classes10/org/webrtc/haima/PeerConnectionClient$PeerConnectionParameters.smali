.class public Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/PeerConnectionClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeerConnectionParameters"
.end annotation


# instance fields
.field public final aecDump:Z

.field public final audioCodec:Ljava/lang/String;

.field public final audioStartBitrate:I

.field private final dataChannelParameters:Lorg/webrtc/haima/PeerConnectionClient$DataChannelParameters;

.field public final disableBuiltInAEC:Z

.field public final disableBuiltInAGC:Z

.field public final disableBuiltInNS:Z

.field public final disableWebRtcAGCAndHPF:Z

.field public final enableRtcEventLog:Z

.field public final haimaCloudId:Ljava/lang/String;

.field public final isDirectSurfaceOn:Z

.field public final loopback:Z

.field public final noAudioProcessing:Z

.field private renderView:Ljava/lang/Object;

.field public final rotationDegree:I

.field public final saveInputAudioToFile:Z

.field public final tracing:Z

.field public final useOpenSLES:Z

.field public final videoCallEnabled:Z

.field public final videoCodec:Ljava/lang/String;

.field public final videoCodecHwAcceleration:Z

.field public final videoFlexfecEnabled:Z

.field public final videoFps:I

.field public final videoHeight:I

.field public final videoMaxBitrate:I

.field public final videoWidth:I


# direct methods
.method public constructor <init>(ZZZIIIILjava/lang/String;ZZILjava/lang/String;ZZZZZZZZZLorg/webrtc/haima/PeerConnectionClient$DataChannelParameters;Ljava/lang/String;Ljava/lang/Object;IZ)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 2
    iput-boolean v1, v0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->videoCallEnabled:Z

    move v1, p2

    .line 3
    iput-boolean v1, v0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->loopback:Z

    move v1, p3

    .line 4
    iput-boolean v1, v0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->tracing:Z

    move v1, p4

    .line 5
    iput v1, v0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->videoWidth:I

    move v1, p5

    .line 6
    iput v1, v0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->videoHeight:I

    move v1, p6

    .line 7
    iput v1, v0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->videoFps:I

    move v1, p7

    .line 8
    iput v1, v0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->videoMaxBitrate:I

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->videoCodec:Ljava/lang/String;

    move v1, p10

    .line 10
    iput-boolean v1, v0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->videoFlexfecEnabled:Z

    move v1, p9

    .line 11
    iput-boolean v1, v0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->videoCodecHwAcceleration:Z

    move v1, p11

    .line 12
    iput v1, v0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->audioStartBitrate:I

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->audioCodec:Ljava/lang/String;

    move v1, p13

    .line 14
    iput-boolean v1, v0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->noAudioProcessing:Z

    move/from16 v1, p14

    .line 15
    iput-boolean v1, v0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->aecDump:Z

    move/from16 v1, p15

    .line 16
    iput-boolean v1, v0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->saveInputAudioToFile:Z

    move/from16 v1, p16

    .line 17
    iput-boolean v1, v0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->useOpenSLES:Z

    move/from16 v1, p17

    .line 18
    iput-boolean v1, v0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->disableBuiltInAEC:Z

    move/from16 v1, p18

    .line 19
    iput-boolean v1, v0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->disableBuiltInAGC:Z

    move/from16 v1, p19

    .line 20
    iput-boolean v1, v0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->disableBuiltInNS:Z

    move/from16 v1, p20

    .line 21
    iput-boolean v1, v0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->disableWebRtcAGCAndHPF:Z

    move/from16 v1, p21

    .line 22
    iput-boolean v1, v0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->enableRtcEventLog:Z

    move-object/from16 v1, p22

    .line 23
    iput-object v1, v0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->dataChannelParameters:Lorg/webrtc/haima/PeerConnectionClient$DataChannelParameters;

    move-object/from16 v1, p23

    .line 24
    iput-object v1, v0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->haimaCloudId:Ljava/lang/String;

    move/from16 v1, p25

    .line 25
    iput v1, v0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->rotationDegree:I

    move-object/from16 v1, p24

    .line 26
    iput-object v1, v0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->renderView:Ljava/lang/Object;

    move/from16 v1, p26

    .line 27
    iput-boolean v1, v0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->isDirectSurfaceOn:Z

    return-void
.end method

.method static synthetic access$1100(Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->renderView:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1102(Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->renderView:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$500(Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;)Lorg/webrtc/haima/PeerConnectionClient$DataChannelParameters;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->dataChannelParameters:Lorg/webrtc/haima/PeerConnectionClient$DataChannelParameters;

    .line 2
    .line 3
    return-object p0
.end method

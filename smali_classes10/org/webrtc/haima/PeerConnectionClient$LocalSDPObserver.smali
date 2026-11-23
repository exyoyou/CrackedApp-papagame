.class Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/SdpObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/PeerConnectionClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalSDPObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/PeerConnectionClient;


# direct methods
.method private constructor <init>(Lorg/webrtc/haima/PeerConnectionClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/webrtc/haima/PeerConnectionClient;Lorg/webrtc/haima/PeerConnectionClient$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;-><init>(Lorg/webrtc/haima/PeerConnectionClient;)V

    return-void
.end method

.method public static synthetic a(Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->lambda$onSetSuccess$1()V

    return-void
.end method

.method public static synthetic b(Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;Lorg/hmwebrtc/SessionDescription;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->lambda$onCreateSuccess$0(Lorg/hmwebrtc/SessionDescription;)V

    return-void
.end method

.method private synthetic lambda$onCreateSuccess$0(Lorg/hmwebrtc/SessionDescription;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$800(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/hmwebrtc/PeerConnection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 10
    .line 11
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$2300(Lorg/webrtc/haima/PeerConnectionClient;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lorg/webrtc/haima/PeerConnectionClient;->access$900()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v2, "Set local SDP from "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v2, p1, Lorg/hmwebrtc/SessionDescription;->type:Lorg/hmwebrtc/SessionDescription$Type;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 44
    .line 45
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$800(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/hmwebrtc/PeerConnection;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 50
    .line 51
    invoke-static {v1}, Lorg/webrtc/haima/PeerConnectionClient;->access$4100(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1, p1}, Lorg/hmwebrtc/PeerConnection;->setLocalDescription(Lorg/hmwebrtc/SdpObserver;Lorg/hmwebrtc/SessionDescription;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iget-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 60
    .line 61
    invoke-static {p1}, Lorg/webrtc/haima/PeerConnectionClient;->access$2100(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v1, "PeerConnection is null when local sdp created, is error: "

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 76
    .line 77
    invoke-static {v1}, Lorg/webrtc/haima/PeerConnectionClient;->access$2300(Lorg/webrtc/haima/PeerConnectionClient;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 89
    .line 90
    invoke-static {v1}, Lorg/webrtc/haima/PeerConnectionClient;->access$2000(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-interface {p1, v0, v1}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onThrowPeerExceptionMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    return-void
.end method

.method private synthetic lambda$onSetSuccess$1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$800(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/hmwebrtc/PeerConnection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 10
    .line 11
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$2300(Lorg/webrtc/haima/PeerConnectionClient;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-static {}, Lorg/webrtc/haima/PeerConnectionClient;->access$900()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "Local SDP set successfully"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 28
    .line 29
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$2100(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 34
    .line 35
    invoke-static {v1}, Lorg/webrtc/haima/PeerConnectionClient;->access$3300(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/hmwebrtc/SessionDescription;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 40
    .line 41
    invoke-static {v2}, Lorg/webrtc/haima/PeerConnectionClient;->access$2000(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-interface {v0, v1, v2}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onLocalDescriptionSet(Lorg/hmwebrtc/SessionDescription;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 51
    .line 52
    invoke-static {v1}, Lorg/webrtc/haima/PeerConnectionClient;->access$2100(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v3, "onLocalDescription-->"

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lorg/webrtc/haima/util/ExceptionUtils;->toString(Ljava/lang/Exception;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 78
    .line 79
    invoke-static {v2}, Lorg/webrtc/haima/PeerConnectionClient;->access$2000(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-interface {v1, v0, v2}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onThrowPeerExceptionMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    return-void

    .line 87
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 88
    .line 89
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$2100(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v2, "PeerConnection is null when set SDP success, is error: "

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 104
    .line 105
    invoke-static {v2}, Lorg/webrtc/haima/PeerConnectionClient;->access$2300(Lorg/webrtc/haima/PeerConnectionClient;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 117
    .line 118
    invoke-static {v2}, Lorg/webrtc/haima/PeerConnectionClient;->access$2000(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-interface {v0, v1, v2}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onThrowPeerExceptionMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method


# virtual methods
.method public onCreateFailure(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lorg/webrtc/haima/PeerConnectionClient;->access$2302(Lorg/webrtc/haima/PeerConnectionClient;Z)Z

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lorg/webrtc/haima/PeerConnectionClient;->access$900()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "create offer failure: "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/16 v0, 0x33cd

    .line 32
    .line 33
    invoke-static {v0, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 37
    .line 38
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$2100(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, "create sdp error: "

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 60
    .line 61
    invoke-static {v1}, Lorg/webrtc/haima/PeerConnectionClient;->access$2000(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v0, p1, v1}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onSDPError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public onCreateSuccess(Lorg/hmwebrtc/SessionDescription;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$3300(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/hmwebrtc/SessionDescription;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lorg/webrtc/haima/PeerConnectionClient;->access$900()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "Multiple SDP create."

    .line 14
    .line 15
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 19
    .line 20
    invoke-static {p1}, Lorg/webrtc/haima/PeerConnectionClient;->access$2100(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 25
    .line 26
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$2000(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "onCreateOff-->Multiple SDP create."

    .line 31
    .line 32
    invoke-interface {p1, v1, v0}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onThrowPeerExceptionMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    iget-object v0, p1, Lorg/hmwebrtc/SessionDescription;->description:Ljava/lang/String;

    .line 37
    .line 38
    const-string v1, "useinbandfec=1"

    .line 39
    .line 40
    const-string v2, "useinbandfec=1;stereo=1"

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 47
    .line 48
    invoke-static {v1}, Lorg/webrtc/haima/PeerConnectionClient;->access$3400(Lorg/webrtc/haima/PeerConnectionClient;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    const-string v1, "ISAC"

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    invoke-static {v0, v1, v2}, Lorg/webrtc/haima/PeerConnectionClient;->access$3500(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :cond_1
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 62
    .line 63
    invoke-static {v1}, Lorg/webrtc/haima/PeerConnectionClient;->access$3600(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-object v1, v1, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->videoCodec:Ljava/lang/String;

    .line 68
    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 72
    .line 73
    invoke-static {v1}, Lorg/webrtc/haima/PeerConnectionClient;->access$3600(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iget-object v1, v1, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->videoCodec:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_2

    .line 84
    .line 85
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 86
    .line 87
    invoke-static {v1}, Lorg/webrtc/haima/PeerConnectionClient;->access$3600(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v1}, Lorg/webrtc/haima/PeerConnectionClient;->access$3700(Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    const/4 v2, 0x0

    .line 96
    invoke-static {v0, v1, v2}, Lorg/webrtc/haima/PeerConnectionClient;->access$3500(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :cond_2
    new-instance v1, Lorg/hmwebrtc/SessionDescription;

    .line 101
    .line 102
    iget-object p1, p1, Lorg/hmwebrtc/SessionDescription;->type:Lorg/hmwebrtc/SessionDescription$Type;

    .line 103
    .line 104
    invoke-direct {v1, p1, v0}, Lorg/hmwebrtc/SessionDescription;-><init>(Lorg/hmwebrtc/SessionDescription$Type;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 108
    .line 109
    invoke-static {p1, v1}, Lorg/webrtc/haima/PeerConnectionClient;->access$3302(Lorg/webrtc/haima/PeerConnectionClient;Lorg/hmwebrtc/SessionDescription;)Lorg/hmwebrtc/SessionDescription;

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 113
    .line 114
    invoke-static {p1}, Lorg/webrtc/haima/PeerConnectionClient;->access$2100(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 119
    .line 120
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$3300(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/hmwebrtc/SessionDescription;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 125
    .line 126
    invoke-static {v2}, Lorg/webrtc/haima/PeerConnectionClient;->access$2000(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-interface {p1, v0, v2}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onLocalDescriptionCreated(Lorg/hmwebrtc/SessionDescription;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 134
    .line 135
    invoke-static {p1}, Lorg/webrtc/haima/PeerConnectionClient;->access$700(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/util/concurrent/ExecutorService;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    new-instance v0, Lorg/webrtc/haima/j0;

    .line 140
    .line 141
    invoke-direct {v0, p0, v1}, Lorg/webrtc/haima/j0;-><init>(Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;Lorg/hmwebrtc/SessionDescription;)V

    .line 142
    .line 143
    .line 144
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public onSetFailure(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lorg/webrtc/haima/PeerConnectionClient;->access$2302(Lorg/webrtc/haima/PeerConnectionClient;Z)Z

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lorg/webrtc/haima/PeerConnectionClient;->access$900()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "set sdp failure: "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/16 v0, 0x33cd

    .line 32
    .line 33
    invoke-static {v0, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 37
    .line 38
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$2100(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, "set sdp is failure: "

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 60
    .line 61
    invoke-static {v1}, Lorg/webrtc/haima/PeerConnectionClient;->access$2000(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v0, p1, v1}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onSDPError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public onSetSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$700(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/util/concurrent/ExecutorService;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lorg/webrtc/haima/k0;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lorg/webrtc/haima/k0;-><init>(Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

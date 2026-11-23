.class Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;
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
    name = "SDPObserver"
.end annotation


# instance fields
.field private final isOffer:Z

.field final synthetic this$0:Lorg/webrtc/haima/PeerConnectionClient;


# direct methods
.method public constructor <init>(Lorg/webrtc/haima/PeerConnectionClient;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-boolean p2, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->isOffer:Z

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->lambda$onSetSuccess$1()V

    return-void
.end method

.method public static synthetic b(Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;Lorg/hmwebrtc/SessionDescription;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->lambda$onCreateSuccess$0(Lorg/hmwebrtc/SessionDescription;)V

    return-void
.end method

.method private synthetic lambda$onCreateSuccess$0(Lorg/hmwebrtc/SessionDescription;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$800(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/hmwebrtc/PeerConnection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ",this:"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 12
    .line 13
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$2300(Lorg/webrtc/haima/PeerConnectionClient;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lorg/webrtc/haima/PeerConnectionClient;->access$900()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "Set local SDP from "

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v3, p1, Lorg/hmwebrtc/SessionDescription;->type:Lorg/hmwebrtc/SessionDescription$Type;

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v2, "Set local SDP from:"

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v2, p1, Lorg/hmwebrtc/SessionDescription;->type:Lorg/hmwebrtc/SessionDescription$Type;

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const/16 v2, 0x34f8

    .line 71
    .line 72
    invoke-static {v2, v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 76
    .line 77
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$800(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/hmwebrtc/PeerConnection;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 82
    .line 83
    invoke-static {v2}, Lorg/webrtc/haima/PeerConnectionClient;->access$4000(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v0, v2, p1}, Lorg/hmwebrtc/PeerConnection;->setLocalDescription(Lorg/hmwebrtc/SdpObserver;Lorg/hmwebrtc/SessionDescription;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 92
    .line 93
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$2100(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v3, "PeerConnection is null when local sdp created, is error: "

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-object v3, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 108
    .line 109
    invoke-static {v3}, Lorg/webrtc/haima/PeerConnectionClient;->access$2300(Lorg/webrtc/haima/PeerConnectionClient;)Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    iget-object v3, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 121
    .line 122
    invoke-static {v3}, Lorg/webrtc/haima/PeerConnectionClient;->access$2000(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-interface {v0, v2, v3}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onThrowPeerExceptionMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v2, "Set local SDP finished:"

    .line 135
    .line 136
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget-object p1, p1, Lorg/hmwebrtc/SessionDescription;->type:Lorg/hmwebrtc/SessionDescription$Type;

    .line 140
    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    const/16 v0, 0x34f9

    .line 155
    .line 156
    invoke-static {v0, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method private synthetic lambda$onSetSuccess$1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$800(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/hmwebrtc/PeerConnection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

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
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_0
    iget-boolean v0, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->isOffer:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v1, "PeerConnection set remote SDP success and prepare to create answer:"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/16 v1, 0x34f1

    .line 41
    .line 42
    invoke-static {v1, v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 46
    .line 47
    invoke-virtual {v0}, Lorg/webrtc/haima/PeerConnectionClient;->createAnswer()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-static {}, Lorg/webrtc/haima/PeerConnectionClient;->access$900()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "Local SDP set succesfully"

    .line 56
    .line 57
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v1, "Local SDP set succesfully:"

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const/16 v1, 0x34f2

    .line 78
    .line 79
    invoke-static {v1, v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 83
    .line 84
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$2100(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 89
    .line 90
    invoke-static {v1}, Lorg/webrtc/haima/PeerConnectionClient;->access$3300(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/hmwebrtc/SessionDescription;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 95
    .line 96
    invoke-static {v2}, Lorg/webrtc/haima/PeerConnectionClient;->access$2000(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-interface {v0, v1, v2}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onLocalDescriptionSet(Lorg/hmwebrtc/SessionDescription;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 104
    .line 105
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$3900(Lorg/webrtc/haima/PeerConnectionClient;)V

    .line 106
    .line 107
    .line 108
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 111
    .line 112
    invoke-static {v1}, Lorg/webrtc/haima/PeerConnectionClient;->access$2100(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v3, "onLocalDescription-->"

    .line 122
    .line 123
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-static {v0}, Lorg/webrtc/haima/util/ExceptionUtils;->toString(Ljava/lang/Exception;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 138
    .line 139
    invoke-static {v2}, Lorg/webrtc/haima/PeerConnectionClient;->access$2000(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-interface {v1, v0, v2}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onThrowPeerExceptionMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 148
    .line 149
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$2100(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v2, "PeerConnection is null when set SDP success, is error: "

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 164
    .line 165
    invoke-static {v2}, Lorg/webrtc/haima/PeerConnectionClient;->access$2300(Lorg/webrtc/haima/PeerConnectionClient;)Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v2, ", is Offer: "

    .line 173
    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    iget-boolean v2, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->isOffer:Z

    .line 178
    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 187
    .line 188
    invoke-static {v2}, Lorg/webrtc/haima/PeerConnectionClient;->access$2000(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-interface {v0, v1, v2}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onThrowPeerExceptionMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    return-void
.end method


# virtual methods
.method public onCreateFailure(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

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
    const-string v2, "create answer failure: "

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
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 32
    .line 33
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$2100(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v2, "create sdp error: "

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 55
    .line 56
    invoke-static {v1}, Lorg/webrtc/haima/PeerConnectionClient;->access$2000(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onSDPError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public onCreateSuccess(Lorg/hmwebrtc/SessionDescription;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

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
    iget-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 19
    .line 20
    invoke-static {p1}, Lorg/webrtc/haima/PeerConnectionClient;->access$2100(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 25
    .line 26
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$2000(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "onCreateAnswer-->Multiple SDP create."

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
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

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
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

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
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

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
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

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
    iget-boolean p1, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->isOffer:Z

    .line 108
    .line 109
    if-nez p1, :cond_4

    .line 110
    .line 111
    invoke-virtual {v1}, Lorg/hmwebrtc/SessionDescription;->Deserialize()Lorg/hmwebrtc/SessionDescription$Attribute;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-eqz p1, :cond_4

    .line 116
    .line 117
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 118
    .line 119
    invoke-static {v0, p1}, Lorg/webrtc/haima/PeerConnectionClient;->access$3800(Lorg/webrtc/haima/PeerConnectionClient;Lorg/hmwebrtc/SessionDescription$Attribute;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_4

    .line 124
    .line 125
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 126
    .line 127
    iget-object v2, v0, Lorg/webrtc/haima/PeerConnectionClient;->mInputHelper:Lorg/webrtc/haima/HmInputHelper;

    .line 128
    .line 129
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$700(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/util/concurrent/ExecutorService;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v2, v0}, Lorg/webrtc/haima/HmInputHelper;->getInputValidVersion(Ljava/util/concurrent/ExecutorService;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    if-eqz v0, :cond_3

    .line 138
    .line 139
    const-string v2, "input"

    .line 140
    .line 141
    invoke-virtual {p1, v2, v0}, Lorg/hmwebrtc/SessionDescription$Attribute;->SetAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_3
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 145
    .line 146
    iget-object v2, v0, Lorg/webrtc/haima/PeerConnectionClient;->mInputHelper:Lorg/webrtc/haima/HmInputHelper;

    .line 147
    .line 148
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$700(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/util/concurrent/ExecutorService;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    const/4 v3, 0x0

    .line 153
    invoke-virtual {v2, v0, v3}, Lorg/webrtc/haima/HmInputHelper;->tryCreateInputChannel(Ljava/util/concurrent/ExecutorService;Lorg/hmwebrtc/DataChannel;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, p1}, Lorg/hmwebrtc/SessionDescription;->Serialize(Lorg/hmwebrtc/SessionDescription$Attribute;)V

    .line 157
    .line 158
    .line 159
    :cond_4
    iget-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 160
    .line 161
    invoke-static {p1, v1}, Lorg/webrtc/haima/PeerConnectionClient;->access$3302(Lorg/webrtc/haima/PeerConnectionClient;Lorg/hmwebrtc/SessionDescription;)Lorg/hmwebrtc/SessionDescription;

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 165
    .line 166
    invoke-static {p1}, Lorg/webrtc/haima/PeerConnectionClient;->access$2100(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 171
    .line 172
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$3300(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/hmwebrtc/SessionDescription;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 177
    .line 178
    invoke-static {v2}, Lorg/webrtc/haima/PeerConnectionClient;->access$2000(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-interface {p1, v0, v2}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onLocalDescriptionCreated(Lorg/hmwebrtc/SessionDescription;Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 186
    .line 187
    invoke-static {p1}, Lorg/webrtc/haima/PeerConnectionClient;->access$700(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/util/concurrent/ExecutorService;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    new-instance v0, Lorg/webrtc/haima/u0;

    .line 192
    .line 193
    invoke-direct {v0, p0, v1}, Lorg/webrtc/haima/u0;-><init>(Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;Lorg/hmwebrtc/SessionDescription;)V

    .line 194
    .line 195
    .line 196
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 197
    .line 198
    .line 199
    return-void
.end method

.method public onSetFailure(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

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
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 32
    .line 33
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$2100(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v2, "set sdp is failure: "

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, ", isOffer: "

    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-boolean p1, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->isOffer:Z

    .line 56
    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 65
    .line 66
    invoke-static {v1}, Lorg/webrtc/haima/PeerConnectionClient;->access$2000(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-interface {v0, p1, v1}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onSDPError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public onSetSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$700(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/util/concurrent/ExecutorService;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lorg/webrtc/haima/v0;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lorg/webrtc/haima/v0;-><init>(Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

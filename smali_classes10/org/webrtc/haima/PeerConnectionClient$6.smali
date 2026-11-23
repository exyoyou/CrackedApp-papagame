.class Lorg/webrtc/haima/PeerConnectionClient$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/StatsObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/PeerConnectionClient;->getStats()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/PeerConnectionClient;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/PeerConnectionClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient$6;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onComplete([Lorg/hmwebrtc/StatsReport;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$6;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$1700(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/StreamerStatsCollector;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$6;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 11
    .line 12
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$1700(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/StreamerStatsCollector;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lorg/webrtc/haima/StreamerStatsCollector;->getStats()[Lorg/hmwebrtc/StatsReport$Value;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v0, v1

    .line 22
    :goto_0
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient$6;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 23
    .line 24
    invoke-static {v2}, Lorg/webrtc/haima/PeerConnectionClient;->access$1800(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$StreamerInfoCollector;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient$6;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 31
    .line 32
    invoke-static {v2}, Lorg/webrtc/haima/PeerConnectionClient;->access$1800(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$StreamerInfoCollector;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lorg/webrtc/haima/PeerConnectionClient$StreamerInfoCollector;->getStats()[Lorg/hmwebrtc/StatsReport$Value;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-object v3, p0, Lorg/webrtc/haima/PeerConnectionClient$6;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 41
    .line 42
    invoke-static {v3}, Lorg/webrtc/haima/PeerConnectionClient;->access$1800(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$StreamerInfoCollector;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Lorg/webrtc/haima/PeerConnectionClient$StreamerInfoCollector;->getWeaklyNetStats()[Lorg/hmwebrtc/StatsReport$Value;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move-object v2, v1

    .line 52
    move-object v3, v2

    .line 53
    :goto_1
    iget-object v4, p0, Lorg/webrtc/haima/PeerConnectionClient$6;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 54
    .line 55
    iget-object v5, v4, Lorg/webrtc/haima/PeerConnectionClient;->streamerReportsArray:[[Lorg/hmwebrtc/StatsReport$Value;

    .line 56
    .line 57
    const/4 v6, 0x0

    .line 58
    aput-object v0, v5, v6

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    aput-object v2, v5, v0

    .line 62
    .line 63
    const/4 v0, 0x2

    .line 64
    aput-object v3, v5, v0

    .line 65
    .line 66
    invoke-static {v4}, Lorg/webrtc/haima/PeerConnectionClient;->access$1900(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/HmDCObserverVQA;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const/4 v2, 0x3

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$6;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 74
    .line 75
    iget-object v1, v0, Lorg/webrtc/haima/PeerConnectionClient;->streamerReportsArray:[[Lorg/hmwebrtc/StatsReport$Value;

    .line 76
    .line 77
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$1900(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/HmDCObserverVQA;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lorg/webrtc/haima/HmDCObserverVQA;->getStatCollector()Lorg/webrtc/haima/HmStatsCollector;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lorg/webrtc/haima/HmStatsCollector;->getStats()[Lorg/hmwebrtc/StatsReport$Value;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    aput-object v0, v1, v2

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_2
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$6;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 93
    .line 94
    iget-object v0, v0, Lorg/webrtc/haima/PeerConnectionClient;->streamerReportsArray:[[Lorg/hmwebrtc/StatsReport$Value;

    .line 95
    .line 96
    aput-object v1, v0, v2

    .line 97
    .line 98
    :goto_2
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$6;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 99
    .line 100
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient;->access$2100(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient$6;->this$0:Lorg/webrtc/haima/PeerConnectionClient;

    .line 105
    .line 106
    iget-object v2, v1, Lorg/webrtc/haima/PeerConnectionClient;->streamerReportsArray:[[Lorg/hmwebrtc/StatsReport$Value;

    .line 107
    .line 108
    invoke-static {v1}, Lorg/webrtc/haima/PeerConnectionClient;->access$2000(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-interface {v0, p1, v2, v1}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onPeerConnectionStatsReady([Lorg/hmwebrtc/StatsReport;[[Lorg/hmwebrtc/StatsReport$Value;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

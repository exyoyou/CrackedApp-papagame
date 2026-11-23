.class public Lorg/jboss/netty/channel/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jboss/netty/channel/r;


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
.method public channelBound(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public channelClosed(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public channelConnected(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public channelDisconnected(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public channelInterestChanged(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public channelOpen(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public channelUnbound(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public childChannelClosed(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public childChannelOpen(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public exceptionCaught(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/e0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/channel/m;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lorg/jboss/netty/channel/n;->getLast()Lorg/jboss/netty/channel/ChannelHandler;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v0, v0, Lorg/jboss/netty/channel/r;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    instance-of v0, p1, Lorg/jboss/netty/channel/x;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p1}, Lorg/jboss/netty/channel/m;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Lorg/jboss/netty/channel/n;->getNames()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/lit8 v1, v1, -0x1

    .line 30
    .line 31
    :goto_0
    if-ltz v1, :cond_1

    .line 32
    .line 33
    invoke-interface {p1}, Lorg/jboss/netty/channel/m;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/lang/String;

    .line 42
    .line 43
    invoke-interface {v2, v3}, Lorg/jboss/netty/channel/n;->get(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandler;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    instance-of v2, v2, Lorg/jboss/netty/channel/r;

    .line 48
    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    :goto_1
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public handleUpstream(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lorg/jboss/netty/channel/i0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p2, Lorg/jboss/netty/channel/i0;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/channel/m0;->messageReceived(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/i0;)V

    .line 8
    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :cond_0
    instance-of v0, p2, Lorg/jboss/netty/channel/q0;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    check-cast p2, Lorg/jboss/netty/channel/q0;

    .line 17
    .line 18
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/channel/m0;->writeComplete(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q0;)V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_1
    instance-of v0, p2, Lorg/jboss/netty/channel/t;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    check-cast p2, Lorg/jboss/netty/channel/t;

    .line 28
    .line 29
    invoke-interface {p2}, Lorg/jboss/netty/channel/t;->b()Lorg/jboss/netty/channel/e;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Lorg/jboss/netty/channel/e;->isOpen()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/channel/m0;->childChannelOpen(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/t;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_0

    .line 43
    .line 44
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/channel/m0;->childChannelClosed(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/t;)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_3
    instance-of v0, p2, Lorg/jboss/netty/channel/q;

    .line 50
    .line 51
    if-eqz v0, :cond_b

    .line 52
    .line 53
    move-object v0, p2

    .line 54
    check-cast v0, Lorg/jboss/netty/channel/q;

    .line 55
    .line 56
    sget-object v1, Lorg/jboss/netty/channel/m0$a;->a:[I

    .line 57
    .line 58
    invoke-interface {v0}, Lorg/jboss/netty/channel/q;->getState()Lorg/jboss/netty/channel/ChannelState;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    aget v1, v1, v2

    .line 67
    .line 68
    const/4 v2, 0x1

    .line 69
    if-eq v1, v2, :cond_9

    .line 70
    .line 71
    const/4 v2, 0x2

    .line 72
    if-eq v1, v2, :cond_7

    .line 73
    .line 74
    const/4 v2, 0x3

    .line 75
    if-eq v1, v2, :cond_5

    .line 76
    .line 77
    const/4 v2, 0x4

    .line 78
    if-eq v1, v2, :cond_4

    .line 79
    .line 80
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/m0;->channelInterestChanged(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_5
    invoke-interface {v0}, Lorg/jboss/netty/channel/q;->getValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    if-eqz p2, :cond_6

    .line 93
    .line 94
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/m0;->channelConnected(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_6
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/m0;->channelDisconnected(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_7
    invoke-interface {v0}, Lorg/jboss/netty/channel/q;->getValue()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    if-eqz p2, :cond_8

    .line 107
    .line 108
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/m0;->channelBound(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_8
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/m0;->channelUnbound(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_9
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 117
    .line 118
    invoke-interface {v0}, Lorg/jboss/netty/channel/q;->getValue()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {p2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    if-eqz p2, :cond_a

    .line 127
    .line 128
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/m0;->channelOpen(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_a
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/m0;->channelClosed(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_b
    instance-of v0, p2, Lorg/jboss/netty/channel/e0;

    .line 137
    .line 138
    if-eqz v0, :cond_c

    .line 139
    .line 140
    check-cast p2, Lorg/jboss/netty/channel/e0;

    .line 141
    .line 142
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/channel/m0;->exceptionCaught(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/e0;)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_c
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    .line 147
    .line 148
    .line 149
    :goto_0
    return-void
.end method

.method public messageReceived(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/i0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public writeComplete(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.class Lcom/cloudplay/messagesdk/MessageSDK$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloudplay/messagesdk/socket/OnWebSocketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloudplay/messagesdk/MessageSDK;->init(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloudplay/messagesdk/MessageSDK;


# direct methods
.method constructor <init>(Lcom/cloudplay/messagesdk/MessageSDK;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK$a;->a:Lcom/cloudplay/messagesdk/MessageSDK;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onConnect(Lcom/cloudplay/messagesdk/socket/SocketType;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/socket/SocketType;->a()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "channelType"

    .line 15
    .line 16
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "4011"

    .line 24
    .line 25
    invoke-virtual {v1, v2, v0}, Lcom/cloudplay/messagesdk/a/g;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v1, "socketType:"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ",mIsFirstConnect:"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/cloudplay/messagesdk/MessageSDK$a;->a:Lcom/cloudplay/messagesdk/MessageSDK;

    .line 47
    .line 48
    invoke-static {v1}, Lcom/cloudplay/messagesdk/MessageSDK;->a(Lcom/cloudplay/messagesdk/MessageSDK;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v1, "MessageSDK"

    .line 60
    .line 61
    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    sget-object v0, Lcom/cloudplay/messagesdk/socket/SocketType;->b:Lcom/cloudplay/messagesdk/socket/SocketType;

    .line 65
    .line 66
    if-ne p1, v0, :cond_0

    .line 67
    .line 68
    iget-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK$a;->a:Lcom/cloudplay/messagesdk/MessageSDK;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/cloudplay/messagesdk/MessageSDK;->a(Lcom/cloudplay/messagesdk/MessageSDK;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_0

    .line 75
    .line 76
    iget-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK$a;->a:Lcom/cloudplay/messagesdk/MessageSDK;

    .line 77
    .line 78
    const/4 v1, 0x1

    .line 79
    invoke-static {v0, v1}, Lcom/cloudplay/messagesdk/MessageSDK;->a(Lcom/cloudplay/messagesdk/MessageSDK;Z)Z

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v1, "4001"

    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/cloudplay/messagesdk/a/g;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 90
    .line 91
    .line 92
    :cond_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK$a;->a:Lcom/cloudplay/messagesdk/MessageSDK;

    .line 93
    .line 94
    invoke-static {v0}, Lcom/cloudplay/messagesdk/MessageSDK;->b(Lcom/cloudplay/messagesdk/MessageSDK;)Lcom/cloudplay/messagesdk/socket/a;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0, p1}, Lcom/cloudplay/messagesdk/socket/a;->a(Lcom/cloudplay/messagesdk/socket/SocketType;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public onDisConnect(Lcom/cloudplay/messagesdk/socket/SocketType;ILjava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/socket/SocketType;->a()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "channelType"

    .line 15
    .line 16
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "errorCode"

    .line 24
    .line 25
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    const-string v1, "errorMSG"

    .line 29
    .line 30
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    const-string v2, "event"

    .line 34
    .line 35
    const-string v3, "onClose"

    .line 36
    .line 37
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x3

    .line 41
    if-ne p2, v2, :cond_1

    .line 42
    .line 43
    sget-object p2, Lcom/cloudplay/messagesdk/socket/SocketType;->a:Lcom/cloudplay/messagesdk/socket/SocketType;

    .line 44
    .line 45
    if-ne p1, p2, :cond_0

    .line 46
    .line 47
    iget-object p2, p0, Lcom/cloudplay/messagesdk/MessageSDK$a;->a:Lcom/cloudplay/messagesdk/MessageSDK;

    .line 48
    .line 49
    invoke-static {p2}, Lcom/cloudplay/messagesdk/MessageSDK;->b(Lcom/cloudplay/messagesdk/MessageSDK;)Lcom/cloudplay/messagesdk/socket/a;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/socket/a;->c()Lcom/cloudplay/messagesdk/socket/b/d;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    if-eqz p2, :cond_2

    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/socket/b/d;->c()Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    sget-object p2, Lcom/cloudplay/messagesdk/socket/SocketType;->b:Lcom/cloudplay/messagesdk/socket/SocketType;

    .line 64
    .line 65
    if-ne p1, p2, :cond_2

    .line 66
    .line 67
    iget-object p2, p0, Lcom/cloudplay/messagesdk/MessageSDK$a;->a:Lcom/cloudplay/messagesdk/MessageSDK;

    .line 68
    .line 69
    invoke-static {p2}, Lcom/cloudplay/messagesdk/MessageSDK;->b(Lcom/cloudplay/messagesdk/MessageSDK;)Lcom/cloudplay/messagesdk/socket/a;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/socket/a;->c()Lcom/cloudplay/messagesdk/socket/b/d;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    if-eqz p2, :cond_2

    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/socket/b/d;->c()Z

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    iget-object p2, p0, Lcom/cloudplay/messagesdk/MessageSDK$a;->a:Lcom/cloudplay/messagesdk/MessageSDK;

    .line 84
    .line 85
    invoke-static {p2}, Lcom/cloudplay/messagesdk/MessageSDK;->c(Lcom/cloudplay/messagesdk/MessageSDK;)Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-eqz p2, :cond_2

    .line 90
    .line 91
    iget-object p2, p0, Lcom/cloudplay/messagesdk/MessageSDK$a;->a:Lcom/cloudplay/messagesdk/MessageSDK;

    .line 92
    .line 93
    invoke-static {p2}, Lcom/cloudplay/messagesdk/MessageSDK;->b(Lcom/cloudplay/messagesdk/MessageSDK;)Lcom/cloudplay/messagesdk/socket/a;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {p2, p1}, Lcom/cloudplay/messagesdk/socket/a;->b(Lcom/cloudplay/messagesdk/socket/SocketType;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    :goto_0
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    const-string v2, "4013"

    .line 105
    .line 106
    invoke-virtual {p2, v2, v0}, Lcom/cloudplay/messagesdk/a/g;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 107
    .line 108
    .line 109
    iget-object p2, p0, Lcom/cloudplay/messagesdk/MessageSDK$a;->a:Lcom/cloudplay/messagesdk/MessageSDK;

    .line 110
    .line 111
    invoke-static {p2}, Lcom/cloudplay/messagesdk/MessageSDK;->c(Lcom/cloudplay/messagesdk/MessageSDK;)Z

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    if-eqz p2, :cond_3

    .line 116
    .line 117
    iget-object p2, p0, Lcom/cloudplay/messagesdk/MessageSDK$a;->a:Lcom/cloudplay/messagesdk/MessageSDK;

    .line 118
    .line 119
    invoke-static {p2}, Lcom/cloudplay/messagesdk/MessageSDK;->a(Lcom/cloudplay/messagesdk/MessageSDK;)Z

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    if-nez p2, :cond_3

    .line 124
    .line 125
    sget-object p2, Lcom/cloudplay/messagesdk/socket/SocketType;->b:Lcom/cloudplay/messagesdk/socket/SocketType;

    .line 126
    .line 127
    if-ne p1, p2, :cond_3

    .line 128
    .line 129
    new-instance p1, Ljava/util/HashMap;

    .line 130
    .line 131
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-interface {p1, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    const-string p3, "4002"

    .line 142
    .line 143
    invoke-virtual {p2, p3, p1}, Lcom/cloudplay/messagesdk/a/g;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 144
    .line 145
    .line 146
    :cond_3
    return-void
.end method

.method public onMessage(Lcom/cloudplay/messagesdk/socket/SocketType;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const-string v2, "hm_sys_config"

    .line 5
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const-string v3, "ack"

    .line 6
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "type"

    .line 7
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "mid"

    .line 8
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    if-eqz v2, :cond_2

    goto :goto_3

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK$a;->a:Lcom/cloudplay/messagesdk/MessageSDK;

    invoke-static {p1}, Lcom/cloudplay/messagesdk/MessageSDK;->d(Lcom/cloudplay/messagesdk/MessageSDK;)Lcom/cloudplay/messagesdk/listener/MessageHandler;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK$a;->a:Lcom/cloudplay/messagesdk/MessageSDK;

    invoke-static {p1}, Lcom/cloudplay/messagesdk/MessageSDK;->d(Lcom/cloudplay/messagesdk/MessageSDK;)Lcom/cloudplay/messagesdk/listener/MessageHandler;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/cloudplay/messagesdk/listener/MessageHandler;->onTextMessage(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string p1, "MessageSDK"

    const-string p2, "mMessageHandler is null"

    .line 11
    invoke-static {p1, p2}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    move-result-object p1

    const-string v0, "4023"

    invoke-virtual {p1, v0, p2}, Lcom/cloudplay/messagesdk/a/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    .line 13
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK$a;->a:Lcom/cloudplay/messagesdk/MessageSDK;

    invoke-static {v0, p1, p2}, Lcom/cloudplay/messagesdk/MessageSDK;->a(Lcom/cloudplay/messagesdk/MessageSDK;Lcom/cloudplay/messagesdk/socket/SocketType;Ljava/lang/String;)V

    return-void
.end method

.method public onMessage(Lcom/cloudplay/messagesdk/socket/SocketType;[BZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK$a;->a:Lcom/cloudplay/messagesdk/MessageSDK;

    invoke-static {p1}, Lcom/cloudplay/messagesdk/MessageSDK;->d(Lcom/cloudplay/messagesdk/MessageSDK;)Lcom/cloudplay/messagesdk/listener/MessageHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK$a;->a:Lcom/cloudplay/messagesdk/MessageSDK;

    invoke-static {p1}, Lcom/cloudplay/messagesdk/MessageSDK;->d(Lcom/cloudplay/messagesdk/MessageSDK;)Lcom/cloudplay/messagesdk/listener/MessageHandler;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/cloudplay/messagesdk/listener/MessageHandler;->onBinaryMessage([B)V

    goto :goto_0

    :cond_0
    const-string p1, "MessageSDK"

    const-string p2, "mMessageHandler is null"

    .line 3
    invoke-static {p1, p2}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/cloudplay/messagesdk/a/g;->a()Lcom/cloudplay/messagesdk/a/g;

    move-result-object p1

    const-string p3, "4023"

    invoke-virtual {p1, p3, p2}, Lcom/cloudplay/messagesdk/a/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

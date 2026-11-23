.class Lcom/cloudplay/messagesdk/socket/b/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloudplay/messagesdk/socket/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloudplay/messagesdk/socket/b/d;


# direct methods
.method constructor <init>(Lcom/cloudplay/messagesdk/socket/b/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/d$c;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    const-string v0, "mPingTimeout run()"

    .line 2
    .line 3
    const-string v1, "WebSocketConnection"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$c;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->isConnected()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$c;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 18
    .line 19
    invoke-static {v0, v2}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/d;I)I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$c;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->A(Lcom/cloudplay/messagesdk/socket/b/d;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v5

    .line 33
    sub-long/2addr v3, v5

    .line 34
    long-to-double v3, v3

    .line 35
    const-wide v5, 0x408f400000000000L    # 1000.0

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    div-double/2addr v3, v5

    .line 41
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$c;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->w(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/b/h/b;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/socket/b/h/b;->a()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    int-to-long v5, v0

    .line 56
    cmp-long v0, v3, v5

    .line 57
    .line 58
    if-ltz v0, :cond_1

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, 0x0

    .line 63
    :goto_0
    if-nez v0, :cond_2

    .line 64
    .line 65
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$c;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 66
    .line 67
    invoke-static {v0, v2}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/d;I)I

    .line 68
    .line 69
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v2, "mPingTimeout run() resetTimeoutCount "

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 81
    .line 82
    .line 83
    move-result-wide v2

    .line 84
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v2, ", pongTime = "

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v2, p0, Lcom/cloudplay/messagesdk/socket/b/d$c;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 93
    .line 94
    invoke-static {v2}, Lcom/cloudplay/messagesdk/socket/b/d;->A(Lcom/cloudplay/messagesdk/socket/b/d;)J

    .line 95
    .line 96
    .line 97
    move-result-wide v2

    .line 98
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v2, ", timeoutInterval = "

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object v2, p0, Lcom/cloudplay/messagesdk/socket/b/d$c;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 107
    .line 108
    invoke-static {v2}, Lcom/cloudplay/messagesdk/socket/b/d;->w(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/b/h/b;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v2}, Lcom/cloudplay/messagesdk/socket/b/h/b;->b()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$c;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 128
    .line 129
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->B(Lcom/cloudplay/messagesdk/socket/b/d;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_3

    .line 134
    .line 135
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$c;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 136
    .line 137
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->z(Lcom/cloudplay/messagesdk/socket/b/d;)I

    .line 138
    .line 139
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    const-string v3, "mPingTimeout run() "

    .line 146
    .line 147
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/b/d$c;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 151
    .line 152
    invoke-static {v3}, Lcom/cloudplay/messagesdk/socket/b/d;->C(Lcom/cloudplay/messagesdk/socket/b/d;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v3, " pingTimeoutCount = "

    .line 160
    .line 161
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/b/d$c;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 165
    .line 166
    invoke-static {v3}, Lcom/cloudplay/messagesdk/socket/b/d;->y(Lcom/cloudplay/messagesdk/socket/b/d;)I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v3, ", countMax = "

    .line 174
    .line 175
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/b/d$c;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 179
    .line 180
    invoke-static {v3}, Lcom/cloudplay/messagesdk/socket/b/d;->w(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/b/h/b;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {v3}, Lcom/cloudplay/messagesdk/socket/b/h/b;->c()I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$c;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 199
    .line 200
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->y(Lcom/cloudplay/messagesdk/socket/b/d;)I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/d$c;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 205
    .line 206
    invoke-static {v1}, Lcom/cloudplay/messagesdk/socket/b/d;->w(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/b/h/b;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/socket/b/h/b;->c()I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-lt v0, v1, :cond_3

    .line 215
    .line 216
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$c;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 217
    .line 218
    invoke-static {v0, v2}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/d;I)I

    .line 219
    .line 220
    .line 221
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/d$c;->a:Lcom/cloudplay/messagesdk/socket/b/d;

    .line 222
    .line 223
    invoke-static {v0}, Lcom/cloudplay/messagesdk/socket/b/d;->a(Lcom/cloudplay/messagesdk/socket/b/d;)Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    new-instance v1, Lcom/cloudplay/messagesdk/socket/b/g/i;

    .line 228
    .line 229
    const-string v2, "WebSocket ping timed out."

    .line 230
    .line 231
    invoke-direct {v1, v2}, Lcom/cloudplay/messagesdk/socket/b/g/i;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-interface {v0, v1}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    :cond_3
    return-void
.end method

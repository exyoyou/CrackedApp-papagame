.class Lio/socket/client/Manager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Manager;->open(Lio/socket/client/Manager$OpenCallback;)Lio/socket/client/Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/client/Manager;

.field final synthetic val$fn:Lio/socket/client/Manager$OpenCallback;


# direct methods
.method constructor <init>(Lio/socket/client/Manager;Lio/socket/client/Manager$OpenCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    .line 2
    .line 3
    iput-object p2, p0, Lio/socket/client/Manager$1;->val$fn:Lio/socket/client/Manager$OpenCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    invoke-static {}, Lio/socket/client/Manager;->access$000()Ljava/util/logging/Logger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lio/socket/client/Manager;->access$000()Ljava/util/logging/Logger;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-array v4, v2, [Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v5, p0, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    .line 22
    .line 23
    iget-object v5, v5, Lio/socket/client/Manager;->readyState:Lio/socket/client/Manager$ReadyState;

    .line 24
    .line 25
    aput-object v5, v4, v3

    .line 26
    .line 27
    const-string v5, "readyState %s"

    .line 28
    .line 29
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    .line 37
    .line 38
    iget-object v0, v0, Lio/socket/client/Manager;->readyState:Lio/socket/client/Manager$ReadyState;

    .line 39
    .line 40
    sget-object v4, Lio/socket/client/Manager$ReadyState;->OPEN:Lio/socket/client/Manager$ReadyState;

    .line 41
    .line 42
    if-eq v0, v4, :cond_4

    .line 43
    .line 44
    sget-object v4, Lio/socket/client/Manager$ReadyState;->OPENING:Lio/socket/client/Manager$ReadyState;

    .line 45
    .line 46
    if-ne v0, v4, :cond_1

    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :cond_1
    invoke-static {}, Lio/socket/client/Manager;->access$000()Ljava/util/logging/Logger;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-static {}, Lio/socket/client/Manager;->access$000()Ljava/util/logging/Logger;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-array v1, v2, [Ljava/lang/Object;

    .line 65
    .line 66
    iget-object v5, p0, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    .line 67
    .line 68
    invoke-static {v5}, Lio/socket/client/Manager;->access$100(Lio/socket/client/Manager;)Ljava/net/URI;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    aput-object v5, v1, v3

    .line 73
    .line 74
    const-string v5, "opening %s"

    .line 75
    .line 76
    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    iget-object v0, p0, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    .line 84
    .line 85
    new-instance v1, Lio/socket/client/Manager$Engine;

    .line 86
    .line 87
    iget-object v5, p0, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    .line 88
    .line 89
    invoke-static {v5}, Lio/socket/client/Manager;->access$100(Lio/socket/client/Manager;)Ljava/net/URI;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    iget-object v6, p0, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    .line 94
    .line 95
    invoke-static {v6}, Lio/socket/client/Manager;->access$200(Lio/socket/client/Manager;)Lio/socket/client/Manager$Options;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-direct {v1, v5, v6}, Lio/socket/client/Manager$Engine;-><init>(Ljava/net/URI;Lio/socket/engineio/client/Socket$Options;)V

    .line 100
    .line 101
    .line 102
    iput-object v1, v0, Lio/socket/client/Manager;->engine:Lio/socket/engineio/client/Socket;

    .line 103
    .line 104
    iget-object v13, p0, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    .line 105
    .line 106
    iget-object v12, v13, Lio/socket/client/Manager;->engine:Lio/socket/engineio/client/Socket;

    .line 107
    .line 108
    iput-object v4, v13, Lio/socket/client/Manager;->readyState:Lio/socket/client/Manager$ReadyState;

    .line 109
    .line 110
    invoke-static {v13, v3}, Lio/socket/client/Manager;->access$302(Lio/socket/client/Manager;Z)Z

    .line 111
    .line 112
    .line 113
    new-instance v0, Lio/socket/client/Manager$1$1;

    .line 114
    .line 115
    invoke-direct {v0, p0, v13}, Lio/socket/client/Manager$1$1;-><init>(Lio/socket/client/Manager$1;Lio/socket/client/Manager;)V

    .line 116
    .line 117
    .line 118
    const-string v1, "transport"

    .line 119
    .line 120
    invoke-virtual {v12, v1, v0}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 121
    .line 122
    .line 123
    new-instance v0, Lio/socket/client/Manager$1$2;

    .line 124
    .line 125
    invoke-direct {v0, p0, v13}, Lio/socket/client/Manager$1$2;-><init>(Lio/socket/client/Manager$1;Lio/socket/client/Manager;)V

    .line 126
    .line 127
    .line 128
    const-string v1, "open"

    .line 129
    .line 130
    invoke-static {v12, v1, v0}, Lio/socket/client/On;->on(Lio/socket/emitter/Emitter;Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/client/On$Handle;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    new-instance v1, Lio/socket/client/Manager$1$3;

    .line 135
    .line 136
    invoke-direct {v1, p0, v13}, Lio/socket/client/Manager$1$3;-><init>(Lio/socket/client/Manager$1;Lio/socket/client/Manager;)V

    .line 137
    .line 138
    .line 139
    const-string v4, "error"

    .line 140
    .line 141
    invoke-static {v12, v4, v1}, Lio/socket/client/On;->on(Lio/socket/emitter/Emitter;Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/client/On$Handle;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    iget-object v4, p0, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    .line 146
    .line 147
    invoke-static {v4}, Lio/socket/client/Manager;->access$800(Lio/socket/client/Manager;)J

    .line 148
    .line 149
    .line 150
    move-result-wide v4

    .line 151
    const-wide/16 v6, 0x0

    .line 152
    .line 153
    cmp-long v8, v4, v6

    .line 154
    .line 155
    if-ltz v8, :cond_3

    .line 156
    .line 157
    iget-object v4, p0, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    .line 158
    .line 159
    invoke-static {v4}, Lio/socket/client/Manager;->access$800(Lio/socket/client/Manager;)J

    .line 160
    .line 161
    .line 162
    move-result-wide v4

    .line 163
    invoke-static {}, Lio/socket/client/Manager;->access$000()Ljava/util/logging/Logger;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    new-array v2, v2, [Ljava/lang/Object;

    .line 168
    .line 169
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    aput-object v7, v2, v3

    .line 174
    .line 175
    const-string v3, "connection attempt will timeout after %d"

    .line 176
    .line 177
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v6, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    new-instance v2, Ljava/util/Timer;

    .line 185
    .line 186
    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 187
    .line 188
    .line 189
    new-instance v3, Lio/socket/client/Manager$1$4;

    .line 190
    .line 191
    move-object v7, v3

    .line 192
    move-object v8, p0

    .line 193
    move-wide v9, v4

    .line 194
    move-object v11, v0

    .line 195
    invoke-direct/range {v7 .. v13}, Lio/socket/client/Manager$1$4;-><init>(Lio/socket/client/Manager$1;JLio/socket/client/On$Handle;Lio/socket/engineio/client/Socket;Lio/socket/client/Manager;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 199
    .line 200
    .line 201
    iget-object v3, p0, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    .line 202
    .line 203
    invoke-static {v3}, Lio/socket/client/Manager;->access$900(Lio/socket/client/Manager;)Ljava/util/Queue;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    new-instance v4, Lio/socket/client/Manager$1$5;

    .line 208
    .line 209
    invoke-direct {v4, p0, v2}, Lio/socket/client/Manager$1$5;-><init>(Lio/socket/client/Manager$1;Ljava/util/Timer;)V

    .line 210
    .line 211
    .line 212
    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    :cond_3
    iget-object v2, p0, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    .line 216
    .line 217
    invoke-static {v2}, Lio/socket/client/Manager;->access$900(Lio/socket/client/Manager;)Ljava/util/Queue;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    iget-object v0, p0, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    .line 225
    .line 226
    invoke-static {v0}, Lio/socket/client/Manager;->access$900(Lio/socket/client/Manager;)Ljava/util/Queue;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    iget-object v0, p0, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    .line 234
    .line 235
    iget-object v0, v0, Lio/socket/client/Manager;->engine:Lio/socket/engineio/client/Socket;

    .line 236
    .line 237
    invoke-virtual {v0}, Lio/socket/engineio/client/Socket;->open()Lio/socket/engineio/client/Socket;

    .line 238
    .line 239
    .line 240
    :cond_4
    :goto_0
    return-void
.end method

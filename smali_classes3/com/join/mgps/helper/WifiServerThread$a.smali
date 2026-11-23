.class Lcom/join/mgps/helper/WifiServerThread$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/helper/WifiServerThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/helper/WifiServerThread;


# direct methods
.method constructor <init>(Lcom/join/mgps/helper/WifiServerThread;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/helper/WifiServerThread$a;->b:Lcom/join/mgps/helper/WifiServerThread;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$a;->b:Lcom/join/mgps/helper/WifiServerThread;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread;->access$000(Lcom/join/mgps/helper/WifiServerThread;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$a;->b:Lcom/join/mgps/helper/WifiServerThread;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread;->access$100(Lcom/join/mgps/helper/WifiServerThread;)Ljava/net/ServerSocket;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$a;->b:Lcom/join/mgps/helper/WifiServerThread;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread;->access$100(Lcom/join/mgps/helper/WifiServerThread;)Ljava/net/ServerSocket;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$a;->b:Lcom/join/mgps/helper/WifiServerThread;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-static {v0, v1}, Lcom/join/mgps/helper/WifiServerThread;->access$102(Lcom/join/mgps/helper/WifiServerThread;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$a;->b:Lcom/join/mgps/helper/WifiServerThread;

    .line 37
    .line 38
    new-instance v1, Ljava/net/ServerSocket;

    .line 39
    .line 40
    const/16 v2, 0x2001

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/join/mgps/helper/WifiServerThread;->access$102(Lcom/join/mgps/helper/WifiServerThread;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$a;->b:Lcom/join/mgps/helper/WifiServerThread;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread;->access$200(Lcom/join/mgps/helper/WifiServerThread;)Landroid/os/Handler;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/16 v1, 0x232f

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 57
    .line 58
    .line 59
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$a;->b:Lcom/join/mgps/helper/WifiServerThread;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread;->access$300(Lcom/join/mgps/helper/WifiServerThread;)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$a;->b:Lcom/join/mgps/helper/WifiServerThread;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread;->access$100(Lcom/join/mgps/helper/WifiServerThread;)Ljava/net/ServerSocket;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$a;->b:Lcom/join/mgps/helper/WifiServerThread;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread;->access$400(Lcom/join/mgps/helper/WifiServerThread;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$a;->b:Lcom/join/mgps/helper/WifiServerThread;

    .line 90
    .line 91
    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread;->access$100(Lcom/join/mgps/helper/WifiServerThread;)Ljava/net/ServerSocket;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    new-instance v1, Lcom/join/mgps/helper/WifiServerThread$c;

    .line 100
    .line 101
    iget-object v2, p0, Lcom/join/mgps/helper/WifiServerThread$a;->b:Lcom/join/mgps/helper/WifiServerThread;

    .line 102
    .line 103
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/helper/WifiServerThread$c;-><init>(Lcom/join/mgps/helper/WifiServerThread;Ljava/net/Socket;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$a;->b:Lcom/join/mgps/helper/WifiServerThread;

    .line 107
    .line 108
    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread;->access$000(Lcom/join/mgps/helper/WifiServerThread;)Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$a;->b:Lcom/join/mgps/helper/WifiServerThread;

    .line 116
    .line 117
    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread;->access$000(Lcom/join/mgps/helper/WifiServerThread;)Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    new-instance v0, Ljava/lang/Thread;

    .line 125
    .line 126
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$a;->b:Lcom/join/mgps/helper/WifiServerThread;

    .line 134
    .line 135
    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread;->access$400(Lcom/join/mgps/helper/WifiServerThread;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$a;->b:Lcom/join/mgps/helper/WifiServerThread;

    .line 139
    .line 140
    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread;->access$100(Lcom/join/mgps/helper/WifiServerThread;)Ljava/net/ServerSocket;

    .line 141
    .line 142
    .line 143
    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 144
    if-eqz v0, :cond_3

    .line 145
    .line 146
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$a;->b:Lcom/join/mgps/helper/WifiServerThread;

    .line 147
    .line 148
    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread;->access$100(Lcom/join/mgps/helper/WifiServerThread;)Ljava/net/ServerSocket;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :catch_0
    move-exception v0

    .line 157
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :catch_1
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$a;->b:Lcom/join/mgps/helper/WifiServerThread;

    .line 166
    .line 167
    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread;->access$400(Lcom/join/mgps/helper/WifiServerThread;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$a;->b:Lcom/join/mgps/helper/WifiServerThread;

    .line 171
    .line 172
    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread;->access$500(Lcom/join/mgps/helper/WifiServerThread;)Ljava/lang/Boolean;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-nez v0, :cond_3

    .line 181
    .line 182
    iget-object v0, p0, Lcom/join/mgps/helper/WifiServerThread$a;->b:Lcom/join/mgps/helper/WifiServerThread;

    .line 183
    .line 184
    invoke-static {v0}, Lcom/join/mgps/helper/WifiServerThread;->access$200(Lcom/join/mgps/helper/WifiServerThread;)Landroid/os/Handler;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    const/16 v1, 0x2330

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :catch_2
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 196
    .line 197
    .line 198
    :cond_3
    :goto_2
    return-void
.end method

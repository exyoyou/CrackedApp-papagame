.class Lcom/join/mgps/service/UpdateService$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/service/UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field final synthetic b:Lcom/join/mgps/service/UpdateService;


# direct methods
.method public constructor <init>(Lcom/join/mgps/service/UpdateService;Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "looper",
            "c"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lcom/join/mgps/service/UpdateService$b;->a:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_6

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    .line 7
    .line 8
    iget-boolean v1, v0, Lcom/join/mgps/service/UpdateService;->i:Z

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget v0, p1, Landroid/os/Message;->what:I

    .line 14
    .line 15
    if-eq v0, v2, :cond_0

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 20
    .line 21
    const-string v1, "com.papa.broadcast.showUpdateDialog"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Ljava/io/File;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/join/mgps/service/UpdateService;->i(Lcom/join/mgps/service/UpdateService;)Lcom/join/mgps/dto/VersionDto;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/VersionDto;->setFilepath(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/join/mgps/service/UpdateService;->i(Lcom/join/mgps/service/UpdateService;)Lcom/join/mgps/dto/VersionDto;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string v1, "papaUpdateinfo"

    .line 50
    .line 51
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_1

    .line 65
    .line 66
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    if-eqz v1, :cond_5

    .line 70
    .line 71
    if-eq v1, v2, :cond_4

    .line 72
    .line 73
    const/4 p1, 0x3

    .line 74
    if-eq v1, p1, :cond_3

    .line 75
    .line 76
    const/4 p1, 0x4

    .line 77
    if-eq v1, p1, :cond_2

    .line 78
    .line 79
    goto/16 :goto_1

    .line 80
    .line 81
    :cond_2
    :try_start_0
    invoke-static {v0}, Lcom/join/mgps/service/UpdateService;->k(Lcom/join/mgps/service/UpdateService;)Landroid/app/NotificationManager;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object v0, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    .line 86
    .line 87
    invoke-static {v0}, Lcom/join/mgps/service/UpdateService;->j(Lcom/join/mgps/service/UpdateService;)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    goto/16 :goto_1

    .line 95
    .line 96
    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_1

    .line 101
    .line 102
    :cond_3
    :try_start_1
    invoke-static {v0}, Lcom/join/mgps/service/UpdateService;->m(Lcom/join/mgps/service/UpdateService;)Landroidx/core/app/NotificationCompat$Builder;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v1, "\u5df2\u4e0b\u8f7d"

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    .line 117
    .line 118
    invoke-static {v1}, Lcom/join/mgps/service/UpdateService;->f(Lcom/join/mgps/service/UpdateService;)I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v1, "%"

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    .line 138
    .line 139
    invoke-static {p1}, Lcom/join/mgps/service/UpdateService;->m(Lcom/join/mgps/service/UpdateService;)Landroidx/core/app/NotificationCompat$Builder;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    iget-object v0, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    .line 144
    .line 145
    invoke-static {v0}, Lcom/join/mgps/service/UpdateService;->f(Lcom/join/mgps/service/UpdateService;)I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    const/16 v1, 0x64

    .line 150
    .line 151
    invoke-virtual {p1, v1, v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    .line 155
    .line 156
    invoke-static {p1}, Lcom/join/mgps/service/UpdateService;->k(Lcom/join/mgps/service/UpdateService;)Landroid/app/NotificationManager;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    iget-object v0, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    .line 161
    .line 162
    invoke-static {v0}, Lcom/join/mgps/service/UpdateService;->j(Lcom/join/mgps/service/UpdateService;)I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    iget-object v1, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    .line 167
    .line 168
    invoke-static {v1}, Lcom/join/mgps/service/UpdateService;->m(Lcom/join/mgps/service/UpdateService;)Landroidx/core/app/NotificationCompat$Builder;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :catch_1
    move-exception p1

    .line 181
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_4
    invoke-static {v0, v3}, Lcom/join/mgps/service/UpdateService;->g(Lcom/join/mgps/service/UpdateService;I)I

    .line 186
    .line 187
    .line 188
    :try_start_2
    iget-object v0, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    .line 189
    .line 190
    invoke-static {v0}, Lcom/join/mgps/service/UpdateService;->k(Lcom/join/mgps/service/UpdateService;)Landroid/app/NotificationManager;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    .line 195
    .line 196
    invoke-static {v1}, Lcom/join/mgps/service/UpdateService;->j(Lcom/join/mgps/service/UpdateService;)I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 201
    .line 202
    .line 203
    goto :goto_0

    .line 204
    :catch_2
    move-exception v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 206
    .line 207
    .line 208
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    .line 209
    .line 210
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast p1, Ljava/io/File;

    .line 213
    .line 214
    iget-object v1, p0, Lcom/join/mgps/service/UpdateService$b;->a:Landroid/content/Context;

    .line 215
    .line 216
    invoke-static {v0, p1, v1}, Lcom/join/mgps/service/UpdateService;->l(Lcom/join/mgps/service/UpdateService;Ljava/io/File;Landroid/content/Context;)V

    .line 217
    .line 218
    .line 219
    iget-object p1, p0, Lcom/join/mgps/service/UpdateService$b;->b:Lcom/join/mgps/service/UpdateService;

    .line 220
    .line 221
    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    .line 222
    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/service/UpdateService$b;->a:Landroid/content/Context;

    .line 226
    .line 227
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 228
    .line 229
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 238
    .line 239
    .line 240
    :cond_6
    :goto_1
    return-void
.end method

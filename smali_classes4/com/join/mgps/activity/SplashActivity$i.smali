.class Lcom/join/mgps/activity/SplashActivity$i;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SplashActivity;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "looper"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SplashActivity$i;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_5

    .line 5
    .line 6
    const-wide/16 v1, 0x3e8

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    if-eq p1, v3, :cond_4

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    if-eq p1, v3, :cond_1

    .line 13
    .line 14
    const/4 v3, 0x4

    .line 15
    if-eq p1, v3, :cond_0

    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$i;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->g(Lcom/join/mgps/activity/SplashActivity;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_6

    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$i;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/join/mgps/activity/SplashActivity;->h:Landroid/widget/TextView;

    .line 30
    .line 31
    const-string v4, "\u8df3\u8fc7"

    .line 32
    .line 33
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$i;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/join/mgps/activity/SplashActivity;->i:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$i;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 44
    .line 45
    iget v4, p1, Lcom/join/mgps/activity/SplashActivity;->D:I

    .line 46
    .line 47
    if-le v4, v0, :cond_6

    .line 48
    .line 49
    sub-int/2addr v4, v0

    .line 50
    iput v4, p1, Lcom/join/mgps/activity/SplashActivity;->D:I

    .line 51
    .line 52
    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->h(Lcom/join/mgps/activity/SplashActivity;)Landroid/os/Handler;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_6

    .line 57
    .line 58
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$i;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->h(Lcom/join/mgps/activity/SplashActivity;)Landroid/os/Handler;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 65
    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$i;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 70
    .line 71
    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->k(Lcom/join/mgps/activity/SplashActivity;)Lcom/join/mgps/dto/FirstIntentData;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$i;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 78
    .line 79
    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->k(Lcom/join/mgps/activity/SplashActivity;)Lcom/join/mgps/dto/FirstIntentData;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lcom/join/mgps/dto/FirstIntentData;->isCustomApk()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$i;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->k(Lcom/join/mgps/activity/SplashActivity;)Lcom/join/mgps/dto/FirstIntentData;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lcom/join/mgps/dto/FirstIntentData;->isIntent()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_3

    .line 100
    .line 101
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$i;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 102
    .line 103
    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->k(Lcom/join/mgps/activity/SplashActivity;)Lcom/join/mgps/dto/FirstIntentData;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Lcom/join/mgps/dto/FirstIntentData;->getIntentDateBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string v0, "splash"

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setFrom(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity$i;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 117
    .line 118
    invoke-static {v0}, Lcom/join/mgps/activity/SplashActivity;->k(Lcom/join/mgps/activity/SplashActivity;)Lcom/join/mgps/dto/FirstIntentData;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/join/mgps/dto/FirstIntentData;->isAutoDownload()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_2

    .line 127
    .line 128
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$i;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 134
    .line 135
    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->k(Lcom/join/mgps/activity/SplashActivity;)Lcom/join/mgps/dto/FirstIntentData;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/join/mgps/dto/FirstIntentData;->getIntentDateBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/SplashActivity;->d0(Lcom/join/mgps/Util/IntentDateBean;)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$i;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/join/mgps/activity/SplashActivity;->c0()V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$i;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 154
    .line 155
    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->g(Lcom/join/mgps/activity/SplashActivity;)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-nez p1, :cond_6

    .line 160
    .line 161
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$i;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 162
    .line 163
    iget-object p1, p1, Lcom/join/mgps/activity/SplashActivity;->h:Landroid/widget/TextView;

    .line 164
    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    const-string v5, "\u8df3\u8fc7("

    .line 171
    .line 172
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    iget-object v6, p0, Lcom/join/mgps/activity/SplashActivity$i;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 176
    .line 177
    iget v6, v6, Lcom/join/mgps/activity/SplashActivity;->D:I

    .line 178
    .line 179
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v6, "S)"

    .line 183
    .line 184
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$i;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 195
    .line 196
    iget-object p1, p1, Lcom/join/mgps/activity/SplashActivity;->i:Landroid/widget/TextView;

    .line 197
    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget-object v5, p0, Lcom/join/mgps/activity/SplashActivity$i;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 207
    .line 208
    iget v5, v5, Lcom/join/mgps/activity/SplashActivity;->D:I

    .line 209
    .line 210
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    .line 222
    .line 223
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$i;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 224
    .line 225
    iget v4, p1, Lcom/join/mgps/activity/SplashActivity;->D:I

    .line 226
    .line 227
    if-le v4, v0, :cond_6

    .line 228
    .line 229
    sub-int/2addr v4, v0

    .line 230
    iput v4, p1, Lcom/join/mgps/activity/SplashActivity;->D:I

    .line 231
    .line 232
    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->h(Lcom/join/mgps/activity/SplashActivity;)Landroid/os/Handler;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    if-eqz p1, :cond_6

    .line 237
    .line 238
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$i;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 239
    .line 240
    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->h(Lcom/join/mgps/activity/SplashActivity;)Landroid/os/Handler;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 245
    .line 246
    .line 247
    goto :goto_0

    .line 248
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$i;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 249
    .line 250
    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->g(Lcom/join/mgps/activity/SplashActivity;)Z

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    if-nez p1, :cond_6

    .line 255
    .line 256
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$i;->a:Lcom/join/mgps/activity/SplashActivity;

    .line 257
    .line 258
    invoke-virtual {p1}, Lcom/join/mgps/activity/SplashActivity;->c0()V

    .line 259
    .line 260
    .line 261
    :cond_6
    :goto_0
    return-void
.end method

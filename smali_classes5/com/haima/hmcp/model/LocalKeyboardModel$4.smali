.class Lcom/haima/hmcp/model/LocalKeyboardModel$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/model/LocalKeyboardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/model/LocalKeyboardModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$4;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/haima/hmcp/model/LocalKeyboardModel$4;C)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/LocalKeyboardModel$4;->lambda$onTextChanged$0(C)V

    return-void
.end method

.method private synthetic lambda$onTextChanged$0(C)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$4;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "textIM:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {v0, p1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$900(Lcom/haima/hmcp/model/LocalKeyboardModel;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$4;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$802(Lcom/haima/hmcp/model/LocalKeyboardModel;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$300()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "\u952e\u76d8 EditText\u76d1\u542c beforeTextChanged:"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, "; start:"

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, "; count:"

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, "; after:"

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$300()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "\u952e\u76d8 EditText\u76d1\u542c onTextChanged:"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, "; start:"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, "; before:"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, "; count:"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$4;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$800(Lcom/haima/hmcp/model/LocalKeyboardModel;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    invoke-static {}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$300()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string p2, "\u8f93\u5165\u6cd5\u7279\u6b8a\u884c\u4e3a\uff0c\u5185\u5bb9\u65e0\u53d8\u5316\uff0c\u8fc7\u6ee4\u884c\u4e3a\u907f\u514d\u8bef\u5224"

    .line 70
    .line 71
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_0
    sub-int v0, p4, p3

    .line 76
    .line 77
    const-string v1, "keyUp"

    .line 78
    .line 79
    const-string v2, "keyDown"

    .line 80
    .line 81
    if-lez v0, :cond_2

    .line 82
    .line 83
    add-int/2addr p3, p2

    .line 84
    add-int/2addr p2, p4

    .line 85
    :try_start_0
    invoke-interface {p1, p3, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-static {}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$300()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v4, "\u952e\u76d8 \u65b0\u589e\u6587\u5b57\uff1a"

    .line 99
    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-static {p3, v3}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string p3, "\n"

    .line 114
    .line 115
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result p3

    .line 119
    if-eqz p3, :cond_1

    .line 120
    .line 121
    invoke-static {}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$300()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    const-string p2, "\u952e\u76d8 \u65b0\u589e\u56de\u8f66"

    .line 126
    .line 127
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$4;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 131
    .line 132
    const/16 p2, 0xd

    .line 133
    .line 134
    invoke-static {p1, v2, p2}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$500(Lcom/haima/hmcp/model/LocalKeyboardModel;Ljava/lang/String;I)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$4;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 138
    .line 139
    invoke-static {p1, v1, p2}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$500(Lcom/haima/hmcp/model/LocalKeyboardModel;Ljava/lang/String;I)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_1
    iget-object p3, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$4;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 144
    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v4, "textIM:"

    .line 151
    .line 152
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-static {p3, p2}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$900(Lcom/haima/hmcp/model/LocalKeyboardModel;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :catch_0
    move-exception p1

    .line 167
    goto :goto_1

    .line 168
    :cond_2
    :goto_0
    const/16 p2, 0x8

    .line 169
    .line 170
    if-gez v0, :cond_3

    .line 171
    .line 172
    iget-object p3, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$4;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 173
    .line 174
    invoke-static {p3}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$400(Lcom/haima/hmcp/model/LocalKeyboardModel;)Z

    .line 175
    .line 176
    .line 177
    move-result p3

    .line 178
    if-eqz p3, :cond_3

    .line 179
    .line 180
    iget-object p3, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$4;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 181
    .line 182
    invoke-static {p3}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$1000(Lcom/haima/hmcp/model/LocalKeyboardModel;)Lcom/haima/hmcp/utils/HmIMEManager;

    .line 183
    .line 184
    .line 185
    move-result-object p3

    .line 186
    invoke-virtual {p3}, Lcom/haima/hmcp/utils/HmIMEManager;->isShowInput()Z

    .line 187
    .line 188
    .line 189
    move-result p3

    .line 190
    if-eqz p3, :cond_3

    .line 191
    .line 192
    invoke-static {}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$300()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p3

    .line 196
    const-string v3, "\u952e\u76d8\u76d1\u542c\u6587\u5b57\u51cf\u5c11\uff0c\u53d1\u9001\u5220\u9664\u952e"

    .line 197
    .line 198
    invoke-static {p3, v3}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object p3, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$4;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 202
    .line 203
    invoke-static {p3, v2, p2}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$500(Lcom/haima/hmcp/model/LocalKeyboardModel;Ljava/lang/String;I)V

    .line 204
    .line 205
    .line 206
    iget-object p3, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$4;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 207
    .line 208
    invoke-static {p3, v1, p2}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$500(Lcom/haima/hmcp/model/LocalKeyboardModel;Ljava/lang/String;I)V

    .line 209
    .line 210
    .line 211
    :cond_3
    if-nez v0, :cond_4

    .line 212
    .line 213
    if-lez p4, :cond_4

    .line 214
    .line 215
    iget-object p3, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$4;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 216
    .line 217
    invoke-static {p3, v2, p2}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$500(Lcom/haima/hmcp/model/LocalKeyboardModel;Ljava/lang/String;I)V

    .line 218
    .line 219
    .line 220
    iget-object p3, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$4;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 221
    .line 222
    invoke-static {p3, v1, p2}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$500(Lcom/haima/hmcp/model/LocalKeyboardModel;Ljava/lang/String;I)V

    .line 223
    .line 224
    .line 225
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    add-int/lit8 p1, p1, -0x1

    .line 234
    .line 235
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    invoke-static {}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$300()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    new-instance p3, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .line 247
    .line 248
    const-string p4, "\u952e\u76d8 EditText\u76d1\u542c ; sadd:"

    .line 249
    .line 250
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p3

    .line 260
    invoke-static {p2, p3}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iget-object p2, p0, Lcom/haima/hmcp/model/LocalKeyboardModel$4;->this$0:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 264
    .line 265
    invoke-static {p2}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$1100(Lcom/haima/hmcp/model/LocalKeyboardModel;)Landroid/os/Handler;

    .line 266
    .line 267
    .line 268
    move-result-object p2

    .line 269
    new-instance p3, Lcom/haima/hmcp/model/c;

    .line 270
    .line 271
    invoke-direct {p3, p0, p1}, Lcom/haima/hmcp/model/c;-><init>(Lcom/haima/hmcp/model/LocalKeyboardModel$4;C)V

    .line 272
    .line 273
    .line 274
    const-wide/16 v0, 0x32

    .line 275
    .line 276
    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .line 278
    .line 279
    goto :goto_2

    .line 280
    :goto_1
    invoke-static {}, Lcom/haima/hmcp/model/LocalKeyboardModel;->access$300()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p2

    .line 284
    const-string p3, "\u952e\u76d8\u6587\u672c\u76d1\u542c\u9519\u8bef \u6570\u7ec4\u53ef\u80fd\u8d8a\u754c"

    .line 285
    .line 286
    invoke-static {p2, p3}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 290
    .line 291
    .line 292
    :cond_4
    :goto_2
    return-void
.end method

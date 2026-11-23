.class Lcom/haima/hmcp/business/HmcpHttpManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/business/IHttp$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpHttpManager;->retryPostRequest(Ljava/io/Serializable;Ljava/lang/Class;Lcom/haima/hmcp/listeners/OnVolleyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/haima/hmcp/business/IHttp$OnResponseListener<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

.field final synthetic val$clazz:Ljava/lang/Class;

.field final synthetic val$listener:Lcom/haima/hmcp/listeners/OnVolleyListener;

.field final synthetic val$maxErrorRetryCount:I

.field final synthetic val$postJson:Ljava/io/Serializable;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpHttpManager;Ljava/lang/Class;Ljava/io/Serializable;Lcom/haima/hmcp/listeners/OnVolleyListener;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->val$clazz:Ljava/lang/Class;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->val$postJson:Ljava/io/Serializable;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->val$listener:Lcom/haima/hmcp/listeners/OnVolleyListener;

    .line 8
    .line 9
    iput p5, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->val$maxErrorRetryCount:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onError(IILjava/lang/String;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->val$clazz:Ljava/lang/Class;

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$000(Lcom/haima/hmcp/business/HmcpHttpManager;Ljava/lang/Class;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$400()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "onErrorResponse==>"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->val$listener:Lcom/haima/hmcp/listeners/OnVolleyListener;

    .line 37
    .line 38
    if-eqz p1, :cond_6

    .line 39
    .line 40
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$100(Lcom/haima/hmcp/business/HmcpHttpManager;)Landroid/os/Handler;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_6

    .line 47
    .line 48
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->val$clazz:Ljava/lang/Class;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/business/HmcpHttpManager;->isNeedRetry(Ljava/lang/Class;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_5

    .line 57
    .line 58
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$700(Lcom/haima/hmcp/business/HmcpHttpManager;)Ljava/util/HashMap;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-nez p1, :cond_1

    .line 65
    .line 66
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 67
    .line 68
    new-instance v0, Ljava/util/HashMap;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-static {p1, v0}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$702(Lcom/haima/hmcp/business/HmcpHttpManager;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 74
    .line 75
    .line 76
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$700(Lcom/haima/hmcp/business/HmcpHttpManager;)Ljava/util/HashMap;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->val$postJson:Ljava/io/Serializable;

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    const/4 v0, 0x1

    .line 89
    if-eqz p1, :cond_2

    .line 90
    .line 91
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 92
    .line 93
    invoke-static {p1}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$700(Lcom/haima/hmcp/business/HmcpHttpManager;)Ljava/util/HashMap;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->val$postJson:Ljava/io/Serializable;

    .line 98
    .line 99
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    add-int/2addr p1, v0

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 115
    .line 116
    invoke-static {v1}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$700(Lcom/haima/hmcp/business/HmcpHttpManager;)Ljava/util/HashMap;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->val$postJson:Ljava/io/Serializable;

    .line 121
    .line 122
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 131
    .line 132
    invoke-static {v1}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$700(Lcom/haima/hmcp/business/HmcpHttpManager;)Ljava/util/HashMap;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->val$postJson:Ljava/io/Serializable;

    .line 137
    .line 138
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    iget v2, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->val$maxErrorRetryCount:I

    .line 150
    .line 151
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 152
    .line 153
    invoke-static {v3}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$900(Lcom/haima/hmcp/business/HmcpHttpManager;)Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    mul-int v2, v2, v3

    .line 162
    .line 163
    if-gt v1, v2, :cond_4

    .line 164
    .line 165
    new-instance v1, Lcom/haima/hmcp/business/HmcpHttpManager$3$2;

    .line 166
    .line 167
    invoke-direct {v1, p0, p1}, Lcom/haima/hmcp/business/HmcpHttpManager$3$2;-><init>(Lcom/haima/hmcp/business/HmcpHttpManager$3;Ljava/lang/Integer;)V

    .line 168
    .line 169
    .line 170
    new-instance v2, Ljava/util/Timer;

    .line 171
    .line 172
    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 173
    .line 174
    .line 175
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 176
    .line 177
    invoke-static {v3}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$1000(Lcom/haima/hmcp/business/HmcpHttpManager;)[Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    if-eqz v3, :cond_3

    .line 182
    .line 183
    :try_start_0
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 184
    .line 185
    invoke-static {v3}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$1000(Lcom/haima/hmcp/business/HmcpHttpManager;)[Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    sub-int/2addr p1, v0

    .line 194
    iget-object v4, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 195
    .line 196
    invoke-static {v4}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$1000(Lcom/haima/hmcp/business/HmcpHttpManager;)[Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    array-length v4, v4

    .line 201
    rem-int/2addr p1, v4

    .line 202
    aget-object p1, v3, p1

    .line 203
    .line 204
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    goto :goto_1

    .line 209
    :catch_0
    move-exception p1

    .line 210
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 211
    .line 212
    .line 213
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 214
    .line 215
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->val$clazz:Ljava/lang/Class;

    .line 216
    .line 217
    iget-object v4, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->val$postJson:Ljava/io/Serializable;

    .line 218
    .line 219
    invoke-static {p1, v3, v4}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$800(Lcom/haima/hmcp/business/HmcpHttpManager;Ljava/lang/Class;Ljava/io/Serializable;)V

    .line 220
    .line 221
    .line 222
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 223
    .line 224
    invoke-static {p1}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$100(Lcom/haima/hmcp/business/HmcpHttpManager;)Landroid/os/Handler;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    new-instance v3, Lcom/haima/hmcp/business/HmcpHttpManager$3$3;

    .line 229
    .line 230
    invoke-direct {v3, p0, p2, p3}, Lcom/haima/hmcp/business/HmcpHttpManager$3$3;-><init>(Lcom/haima/hmcp/business/HmcpHttpManager$3;ILjava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 234
    .line 235
    .line 236
    :cond_3
    :goto_1
    mul-int/lit16 v0, v0, 0x3e8

    .line 237
    .line 238
    int-to-long p1, v0

    .line 239
    invoke-virtual {v2, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 240
    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_4
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 244
    .line 245
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->val$clazz:Ljava/lang/Class;

    .line 246
    .line 247
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->val$postJson:Ljava/io/Serializable;

    .line 248
    .line 249
    invoke-static {p1, v0, v1}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$800(Lcom/haima/hmcp/business/HmcpHttpManager;Ljava/lang/Class;Ljava/io/Serializable;)V

    .line 250
    .line 251
    .line 252
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 253
    .line 254
    invoke-static {p1}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$100(Lcom/haima/hmcp/business/HmcpHttpManager;)Landroid/os/Handler;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    new-instance v0, Lcom/haima/hmcp/business/HmcpHttpManager$3$4;

    .line 259
    .line 260
    invoke-direct {v0, p0, p2, p3}, Lcom/haima/hmcp/business/HmcpHttpManager$3$4;-><init>(Lcom/haima/hmcp/business/HmcpHttpManager$3;ILjava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 264
    .line 265
    .line 266
    goto :goto_2

    .line 267
    :cond_5
    iget-object p1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    .line 268
    .line 269
    invoke-static {p1}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$100(Lcom/haima/hmcp/business/HmcpHttpManager;)Landroid/os/Handler;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    new-instance v0, Lcom/haima/hmcp/business/HmcpHttpManager$3$5;

    .line 274
    .line 275
    invoke-direct {v0, p0, p2, p3}, Lcom/haima/hmcp/business/HmcpHttpManager$3$5;-><init>(Lcom/haima/hmcp/business/HmcpHttpManager$3;ILjava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 279
    .line 280
    .line 281
    :cond_6
    :goto_2
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/HmcpHttpManager$3;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->val$clazz:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$000(Lcom/haima/hmcp/business/HmcpHttpManager;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    invoke-static {v1}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$700(Lcom/haima/hmcp/business/HmcpHttpManager;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    invoke-static {v1}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$700(Lcom/haima/hmcp/business/HmcpHttpManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->val$postJson:Ljava/io/Serializable;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    invoke-static {v0}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$700(Lcom/haima/hmcp/business/HmcpHttpManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->val$postJson:Ljava/io/Serializable;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->val$clazz:Ljava/lang/Class;

    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->val$postJson:Ljava/io/Serializable;

    invoke-static {v1, v2, v3}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$800(Lcom/haima/hmcp/business/HmcpHttpManager;Ljava/lang/Class;Ljava/io/Serializable;)V

    .line 7
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->val$listener:Lcom/haima/hmcp/listeners/OnVolleyListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    invoke-static {v1}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$100(Lcom/haima/hmcp/business/HmcpHttpManager;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 8
    iget-object v1, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->val$clazz:Ljava/lang/Class;

    invoke-static {v1, p1, v2}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$200(Lcom/haima/hmcp/business/HmcpHttpManager;Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/haima/hmcp/beans/BaseResult;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/haima/hmcp/beans/BaseResult;->retryRequestCount:I

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpHttpManager$3;->this$0:Lcom/haima/hmcp/business/HmcpHttpManager;

    invoke-static {v0}, Lcom/haima/hmcp/business/HmcpHttpManager;->access$100(Lcom/haima/hmcp/business/HmcpHttpManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/haima/hmcp/business/HmcpHttpManager$3$1;

    invoke-direct {v1, p0, p1}, Lcom/haima/hmcp/business/HmcpHttpManager$3$1;-><init>(Lcom/haima/hmcp/business/HmcpHttpManager$3;Lcom/haima/hmcp/beans/BaseResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

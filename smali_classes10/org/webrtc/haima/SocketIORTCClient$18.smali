.class Lorg/webrtc/haima/SocketIORTCClient$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/socket/emitter/Emitter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/SocketIORTCClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/SocketIORTCClient;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/SocketIORTCClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient$18;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 9

    .line 1
    const-string v0, "socketio message JSON parsing error: "

    .line 2
    .line 3
    const-string v1, "SocketIORTCClient"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    aget-object p1, p1, v2

    .line 7
    .line 8
    check-cast p1, Lorg/json/JSONObject;

    .line 9
    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v4, "socket io received   "

    .line 16
    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v1, v3}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v3, "type"

    .line 35
    .line 36
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    const/4 v5, 0x3

    .line 45
    const/4 v6, 0x2

    .line 46
    const/4 v7, 0x1

    .line 47
    sparse-switch v4, :sswitch_data_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :sswitch_0
    const-string v4, "candidate"

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_0

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    goto :goto_1

    .line 61
    :sswitch_1
    const-string v4, "offer"

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_0

    .line 68
    .line 69
    const/4 v4, 0x2

    .line 70
    goto :goto_1

    .line 71
    :sswitch_2
    const-string v4, "join"

    .line 72
    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_0

    .line 78
    .line 79
    const/4 v4, 0x3

    .line 80
    goto :goto_1

    .line 81
    :sswitch_3
    const-string v4, "remove-candidates"

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 87
    if-eqz v4, :cond_0

    .line 88
    .line 89
    const/4 v4, 0x1

    .line 90
    goto :goto_1

    .line 91
    :cond_0
    :goto_0
    const/4 v4, -0x1

    .line 92
    :goto_1
    const-string v8, "payload"

    .line 93
    .line 94
    if-eqz v4, :cond_7

    .line 95
    .line 96
    if-eq v4, v7, :cond_5

    .line 97
    .line 98
    if-eq v4, v6, :cond_3

    .line 99
    .line 100
    if-eq v4, v5, :cond_1

    .line 101
    .line 102
    :try_start_1
    iget-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient$18;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 103
    .line 104
    invoke-static {p1}, Lorg/webrtc/haima/SocketIORTCClient;->access$600(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/AppRTCClient$SignalingEvents;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-interface {p1, v1}, Lorg/webrtc/haima/AppRTCClient$SignalingEvents;->onThrowSignalExceptionMsg(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_3

    .line 127
    .line 128
    :cond_1
    iget-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient$18;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 129
    .line 130
    invoke-static {p1}, Lorg/webrtc/haima/SocketIORTCClient;->access$500(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    sget-object v1, Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;->JOINED:Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;

    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-lt p1, v2, :cond_2

    .line 145
    .line 146
    iget-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient$18;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 147
    .line 148
    invoke-static {p1}, Lorg/webrtc/haima/SocketIORTCClient;->access$600(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/AppRTCClient$SignalingEvents;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    const-string v1, "onRecvRemoteJoin-->recved duplicate join msg, just ignore it."

    .line 153
    .line 154
    invoke-interface {p1, v1}, Lorg/webrtc/haima/AppRTCClient$SignalingEvents;->onThrowSignalExceptionMsg(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_2
    iget-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient$18;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 159
    .line 160
    invoke-static {p1}, Lorg/webrtc/haima/SocketIORTCClient;->access$600(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/AppRTCClient$SignalingEvents;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    const-string v2, "onRecvRemoteJoin-->recved remote joined msg."

    .line 165
    .line 166
    invoke-interface {p1, v2}, Lorg/webrtc/haima/AppRTCClient$SignalingEvents;->onThrowSignalExceptionMsg(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient$18;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 170
    .line 171
    invoke-static {p1, v1}, Lorg/webrtc/haima/SocketIORTCClient;->access$700(Lorg/webrtc/haima/SocketIORTCClient;Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient$18;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 175
    .line 176
    invoke-static {p1}, Lorg/webrtc/haima/SocketIORTCClient;->access$1200(Lorg/webrtc/haima/SocketIORTCClient;)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_3

    .line 180
    .line 181
    :cond_3
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    new-instance v2, Lorg/hmwebrtc/SessionDescription;

    .line 186
    .line 187
    invoke-static {v3}, Lorg/hmwebrtc/SessionDescription$Type;->fromCanonicalForm(Ljava/lang/String;)Lorg/hmwebrtc/SessionDescription$Type;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    const-string v4, "sdp"

    .line 192
    .line 193
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-direct {v2, v3, p1}, Lorg/hmwebrtc/SessionDescription;-><init>(Lorg/hmwebrtc/SessionDescription$Type;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient$18;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 201
    .line 202
    invoke-static {p1}, Lorg/webrtc/haima/SocketIORTCClient;->access$500(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    sget-object v3, Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;->OFFER_RECVED:Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;

    .line 211
    .line 212
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    if-lt p1, v4, :cond_4

    .line 217
    .line 218
    const-string p1, "recved duplicate OFFER msg, rtc in ROM is crash? what should we do?"

    .line 219
    .line 220
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient$18;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 224
    .line 225
    invoke-static {p1}, Lorg/webrtc/haima/SocketIORTCClient;->access$600(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/AppRTCClient$SignalingEvents;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    const-string v1, ""

    .line 230
    .line 231
    const/16 v2, 0x348c

    .line 232
    .line 233
    invoke-interface {p1, v2, v1}, Lorg/webrtc/haima/AppRTCClient$SignalingEvents;->onReportEvent(ILjava/lang/String;)V

    .line 234
    .line 235
    .line 236
    iget-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient$18;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 237
    .line 238
    invoke-static {p1}, Lorg/webrtc/haima/SocketIORTCClient;->access$600(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/AppRTCClient$SignalingEvents;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    const-string v1, "recved duplicate OFFER msg"

    .line 243
    .line 244
    invoke-interface {p1, v1}, Lorg/webrtc/haima/AppRTCClient$SignalingEvents;->forceDisconnectRTC(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    return-void

    .line 248
    :cond_4
    iget-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient$18;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 249
    .line 250
    invoke-static {p1, v3}, Lorg/webrtc/haima/SocketIORTCClient;->access$700(Lorg/webrtc/haima/SocketIORTCClient;Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 251
    .line 252
    .line 253
    :try_start_2
    iget-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient$18;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 254
    .line 255
    invoke-static {p1}, Lorg/webrtc/haima/SocketIORTCClient;->access$600(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/AppRTCClient$SignalingEvents;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-interface {p1, v2}, Lorg/webrtc/haima/AppRTCClient$SignalingEvents;->onRemoteDescription(Lorg/hmwebrtc/SessionDescription;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 260
    .line 261
    .line 262
    goto/16 :goto_3

    .line 263
    .line 264
    :catch_0
    move-exception p1

    .line 265
    :try_start_3
    iget-object v1, p0, Lorg/webrtc/haima/SocketIORTCClient$18;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 266
    .line 267
    invoke-static {v1}, Lorg/webrtc/haima/SocketIORTCClient;->access$600(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/AppRTCClient$SignalingEvents;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    const-string v3, "onRemoteDescription-->"

    .line 277
    .line 278
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-static {p1}, Lorg/webrtc/haima/util/ExceptionUtils;->toString(Ljava/lang/Exception;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    invoke-interface {v1, p1}, Lorg/webrtc/haima/AppRTCClient$SignalingEvents;->onThrowSignalExceptionMsg(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_3

    .line 296
    .line 297
    :cond_5
    const-string v1, "candidates"

    .line 298
    .line 299
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    new-array v1, v1, [Lorg/hmwebrtc/IceCandidate;

    .line 308
    .line 309
    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 310
    .line 311
    .line 312
    move-result v3

    .line 313
    if-ge v2, v3, :cond_6

    .line 314
    .line 315
    iget-object v3, p0, Lorg/webrtc/haima/SocketIORTCClient$18;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 316
    .line 317
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    invoke-virtual {v3, v4}, Lorg/webrtc/haima/SocketIORTCClient;->toJavaCandidate(Lorg/json/JSONObject;)Lorg/hmwebrtc/IceCandidate;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    aput-object v3, v1, v2
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 326
    .line 327
    add-int/lit8 v2, v2, 0x1

    .line 328
    .line 329
    goto :goto_2

    .line 330
    :cond_6
    :try_start_4
    iget-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient$18;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 331
    .line 332
    invoke-static {p1}, Lorg/webrtc/haima/SocketIORTCClient;->access$600(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/AppRTCClient$SignalingEvents;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    invoke-interface {p1, v1}, Lorg/webrtc/haima/AppRTCClient$SignalingEvents;->onRemoteIceCandidatesRemoved([Lorg/hmwebrtc/IceCandidate;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 337
    .line 338
    .line 339
    goto/16 :goto_3

    .line 340
    .line 341
    :catch_1
    move-exception p1

    .line 342
    :try_start_5
    iget-object v1, p0, Lorg/webrtc/haima/SocketIORTCClient$18;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 343
    .line 344
    invoke-static {v1}, Lorg/webrtc/haima/SocketIORTCClient;->access$600(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/AppRTCClient$SignalingEvents;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .line 352
    .line 353
    const-string v3, "onRemoteIceCandidatesRemoved-->"

    .line 354
    .line 355
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-static {p1}, Lorg/webrtc/haima/util/ExceptionUtils;->toString(Ljava/lang/Exception;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    invoke-interface {v1, p1}, Lorg/webrtc/haima/AppRTCClient$SignalingEvents;->onThrowSignalExceptionMsg(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    goto :goto_3

    .line 373
    :cond_7
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    iget-object v2, p0, Lorg/webrtc/haima/SocketIORTCClient$18;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 378
    .line 379
    invoke-static {v2}, Lorg/webrtc/haima/SocketIORTCClient;->access$500(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 384
    .line 385
    .line 386
    move-result v2

    .line 387
    sget-object v3, Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;->OFFER_RECVED:Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;

    .line 388
    .line 389
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 390
    .line 391
    .line 392
    move-result v3

    .line 393
    if-ge v2, v3, :cond_8

    .line 394
    .line 395
    const-string p1, "recved candidate before offered, drop it."

    .line 396
    .line 397
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    iget-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient$18;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 401
    .line 402
    invoke-static {p1}, Lorg/webrtc/haima/SocketIORTCClient;->access$600(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/AppRTCClient$SignalingEvents;

    .line 403
    .line 404
    .line 405
    move-result-object p1

    .line 406
    const-string v1, "onRemoteRestart-->recved Candidate before OFFER msg"

    .line 407
    .line 408
    invoke-interface {p1, v1}, Lorg/webrtc/haima/AppRTCClient$SignalingEvents;->onThrowSignalExceptionMsg(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    return-void

    .line 412
    :cond_8
    iget-object v1, p0, Lorg/webrtc/haima/SocketIORTCClient$18;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 413
    .line 414
    sget-object v2, Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;->CANDIDATE_RECVED:Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;

    .line 415
    .line 416
    invoke-static {v1, v2}, Lorg/webrtc/haima/SocketIORTCClient;->access$700(Lorg/webrtc/haima/SocketIORTCClient;Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    .line 417
    .line 418
    .line 419
    :try_start_6
    iget-object v1, p0, Lorg/webrtc/haima/SocketIORTCClient$18;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 420
    .line 421
    invoke-static {v1}, Lorg/webrtc/haima/SocketIORTCClient;->access$600(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/AppRTCClient$SignalingEvents;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    iget-object v2, p0, Lorg/webrtc/haima/SocketIORTCClient$18;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 426
    .line 427
    invoke-virtual {v2, p1}, Lorg/webrtc/haima/SocketIORTCClient;->toJavaCandidate(Lorg/json/JSONObject;)Lorg/hmwebrtc/IceCandidate;

    .line 428
    .line 429
    .line 430
    move-result-object p1

    .line 431
    invoke-interface {v1, p1}, Lorg/webrtc/haima/AppRTCClient$SignalingEvents;->onRemoteIceCandidate(Lorg/hmwebrtc/IceCandidate;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 432
    .line 433
    .line 434
    goto :goto_3

    .line 435
    :catch_2
    move-exception p1

    .line 436
    :try_start_7
    iget-object v1, p0, Lorg/webrtc/haima/SocketIORTCClient$18;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 437
    .line 438
    invoke-static {v1}, Lorg/webrtc/haima/SocketIORTCClient;->access$600(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/AppRTCClient$SignalingEvents;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    .line 443
    .line 444
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    .line 446
    .line 447
    const-string v3, "onRemoteIceCandidate-->"

    .line 448
    .line 449
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-static {p1}, Lorg/webrtc/haima/util/ExceptionUtils;->toString(Ljava/lang/Exception;)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object p1

    .line 456
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object p1

    .line 463
    invoke-interface {v1, p1}, Lorg/webrtc/haima/AppRTCClient$SignalingEvents;->onThrowSignalExceptionMsg(Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3

    .line 464
    .line 465
    .line 466
    goto :goto_3

    .line 467
    :catch_3
    move-exception p1

    .line 468
    iget-object v1, p0, Lorg/webrtc/haima/SocketIORTCClient$18;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 469
    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    .line 471
    .line 472
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object p1

    .line 482
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object p1

    .line 489
    invoke-static {v1, p1}, Lorg/webrtc/haima/SocketIORTCClient;->access$1000(Lorg/webrtc/haima/SocketIORTCClient;Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    :goto_3
    return-void

    .line 493
    :sswitch_data_0
    .sparse-switch
        -0x12a82bc7 -> :sswitch_3
        0x31dd2a -> :sswitch_2
        0x64c1a5c -> :sswitch_1
        0x1e519583 -> :sswitch_0
    .end sparse-switch
.end method

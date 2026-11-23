.class public Lcom/xinzhu/overmind/client/hook/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String; = "HookManager"

.field private static c:Lcom/xinzhu/overmind/client/hook/c;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/xinzhu/overmind/client/hook/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/client/hook/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xinzhu/overmind/client/hook/c;->c:Lcom/xinzhu/overmind/client/hook/c;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/xinzhu/overmind/client/hook/c;->a:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method

.method public static c()Lcom/xinzhu/overmind/client/hook/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/hook/c;->c:Lcom/xinzhu/overmind/client/hook/c;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method a(Lcom/xinzhu/overmind/client/hook/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/c;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public b(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/c;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/xinzhu/overmind/client/hook/d;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/xinzhu/overmind/client/hook/d;->b()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "checkEnv: "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, " is bad env"

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Lcom/xinzhu/overmind/client/hook/d;->injectHook()V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/c;->f()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->isVirtualProcess()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_11

    .line 13
    .line 14
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/display/a;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/display/a;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/libcore/a;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 36
    .line 37
    .line 38
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/b;

    .line 39
    .line 40
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/b;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/d;

    .line 47
    .line 48
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/d;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 52
    .line 53
    .line 54
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/telephony/d;

    .line 55
    .line 56
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/telephony/d;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/app/b;

    .line 63
    .line 64
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/app/b;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 68
    .line 69
    .line 70
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/appos/b;

    .line 71
    .line 72
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/appos/b;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 76
    .line 77
    .line 78
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/app/d;

    .line 79
    .line 80
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/app/d;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 84
    .line 85
    .line 86
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/app/a;

    .line 87
    .line 88
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/app/a;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 92
    .line 93
    .line 94
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/appwidget/a;

    .line 95
    .line 96
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/appwidget/a;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 100
    .line 101
    .line 102
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/context/a;

    .line 103
    .line 104
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/context/a;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 108
    .line 109
    .line 110
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/vm/a;

    .line 111
    .line 112
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/vm/a;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 116
    .line 117
    .line 118
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/k;

    .line 119
    .line 120
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/os/k;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 124
    .line 125
    .line 126
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/context/b;

    .line 127
    .line 128
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/context/b;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 132
    .line 133
    .line 134
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/session/a;

    .line 135
    .line 136
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/session/a;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 140
    .line 141
    .line 142
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/location/b;

    .line 143
    .line 144
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/location/b;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 148
    .line 149
    .line 150
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/storage/a;

    .line 151
    .line 152
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/os/storage/a;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 156
    .line 157
    .line 158
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/c;

    .line 159
    .line 160
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/c;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 164
    .line 165
    .line 166
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/app/c;

    .line 167
    .line 168
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/app/c;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 172
    .line 173
    .line 174
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/accessibility/a;

    .line 175
    .line 176
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/accessibility/a;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 180
    .line 181
    .line 182
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/audio/a;

    .line 183
    .line 184
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/audio/a;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 188
    .line 189
    .line 190
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/backup/a;

    .line 191
    .line 192
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/backup/a;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 196
    .line 197
    .line 198
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/clipboard/a;

    .line 199
    .line 200
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/clipboard/a;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 204
    .line 205
    .line 206
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/sms/a;

    .line 207
    .line 208
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/sms/a;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 212
    .line 213
    .line 214
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/subscription/a;

    .line 215
    .line 216
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/subscription/a;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 220
    .line 221
    .line 222
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/g;

    .line 223
    .line 224
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/os/g;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 228
    .line 229
    .line 230
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/telephony/e;

    .line 231
    .line 232
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/telephony/e;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 236
    .line 237
    .line 238
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/telecom/a;

    .line 239
    .line 240
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/telecom/a;-><init>()V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 244
    .line 245
    .line 246
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/app/g;

    .line 247
    .line 248
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/app/g;-><init>()V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 252
    .line 253
    .line 254
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/d;

    .line 255
    .line 256
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/os/d;-><init>()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 260
    .line 261
    .line 262
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/input/a;

    .line 263
    .line 264
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/input/a;-><init>()V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 268
    .line 269
    .line 270
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/f;

    .line 271
    .line 272
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/os/f;-><init>()V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 276
    .line 277
    .line 278
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/media/a;

    .line 279
    .line 280
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/media/a;-><init>()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 284
    .line 285
    .line 286
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/l;

    .line 287
    .line 288
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/os/l;-><init>()V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 292
    .line 293
    .line 294
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/net/wifi/a;

    .line 295
    .line 296
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/net/wifi/a;-><init>()V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 300
    .line 301
    .line 302
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/net/a;

    .line 303
    .line 304
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/net/a;-><init>()V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 308
    .line 309
    .line 310
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/telephony/c;

    .line 311
    .line 312
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/telephony/c;-><init>()V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 316
    .line 317
    .line 318
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/textservice/a;

    .line 319
    .line 320
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/textservice/a;-><init>()V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 324
    .line 325
    .line 326
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/net/c;

    .line 327
    .line 328
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/net/c;-><init>()V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 332
    .line 333
    .line 334
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/location/a;

    .line 335
    .line 336
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/location/a;-><init>()V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 340
    .line 341
    .line 342
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;->h()Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 347
    .line 348
    .line 349
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->h()Z

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    if-eqz v0, :cond_0

    .line 354
    .line 355
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/a;

    .line 356
    .line 357
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/a;-><init>()V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 361
    .line 362
    .line 363
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/b;

    .line 364
    .line 365
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/b;-><init>()V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 369
    .line 370
    .line 371
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/bluetooth/a;

    .line 372
    .line 373
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/bluetooth/a;-><init>()V

    .line 374
    .line 375
    .line 376
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 377
    .line 378
    .line 379
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->g()Z

    .line 380
    .line 381
    .line 382
    move-result v0

    .line 383
    if-eqz v0, :cond_1

    .line 384
    .line 385
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/permission/b;

    .line 386
    .line 387
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/permission/b;-><init>()V

    .line 388
    .line 389
    .line 390
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 391
    .line 392
    .line 393
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/h;

    .line 394
    .line 395
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/os/h;-><init>()V

    .line 396
    .line 397
    .line 398
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 399
    .line 400
    .line 401
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/net/d;

    .line 402
    .line 403
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/net/d;-><init>()V

    .line 404
    .line 405
    .line 406
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 407
    .line 408
    .line 409
    :cond_1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->f()Z

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    if-eqz v0, :cond_2

    .line 414
    .line 415
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/c;

    .line 416
    .line 417
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/c;-><init>()V

    .line 418
    .line 419
    .line 420
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 421
    .line 422
    .line 423
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/app/f;

    .line 424
    .line 425
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/app/f;-><init>()V

    .line 426
    .line 427
    .line 428
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 429
    .line 430
    .line 431
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/role/a;

    .line 432
    .line 433
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/role/a;-><init>()V

    .line 434
    .line 435
    .line 436
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 437
    .line 438
    .line 439
    :cond_2
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->z()Z

    .line 440
    .line 441
    .line 442
    move-result v0

    .line 443
    if-eqz v0, :cond_3

    .line 444
    .line 445
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/a;

    .line 446
    .line 447
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/a;-><init>()V

    .line 448
    .line 449
    .line 450
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 451
    .line 452
    .line 453
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/i;

    .line 454
    .line 455
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/os/i;-><init>()V

    .line 456
    .line 457
    .line 458
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 459
    .line 460
    .line 461
    :cond_3
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->x()Z

    .line 462
    .line 463
    .line 464
    move-result v0

    .line 465
    if-eqz v0, :cond_4

    .line 466
    .line 467
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/view/a;

    .line 468
    .line 469
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/view/a;-><init>()V

    .line 470
    .line 471
    .line 472
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 473
    .line 474
    .line 475
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/c;

    .line 476
    .line 477
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/os/c;-><init>()V

    .line 478
    .line 479
    .line 480
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 481
    .line 482
    .line 483
    :cond_4
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->e()Z

    .line 484
    .line 485
    .line 486
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->d()Z

    .line 487
    .line 488
    .line 489
    move-result v0

    .line 490
    if-eqz v0, :cond_5

    .line 491
    .line 492
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/pm/e;

    .line 493
    .line 494
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/pm/e;-><init>()V

    .line 495
    .line 496
    .line 497
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 498
    .line 499
    .line 500
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/b;

    .line 501
    .line 502
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/os/b;-><init>()V

    .line 503
    .line 504
    .line 505
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 506
    .line 507
    .line 508
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/e;

    .line 509
    .line 510
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/os/e;-><init>()V

    .line 511
    .line 512
    .line 513
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 514
    .line 515
    .line 516
    :cond_5
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->c()Z

    .line 517
    .line 518
    .line 519
    move-result v0

    .line 520
    if-eqz v0, :cond_6

    .line 521
    .line 522
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/net/b;

    .line 523
    .line 524
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/net/b;-><init>()V

    .line 525
    .line 526
    .line 527
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 528
    .line 529
    .line 530
    :cond_6
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->b()Z

    .line 531
    .line 532
    .line 533
    move-result v0

    .line 534
    if-eqz v0, :cond_7

    .line 535
    .line 536
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/view/b;

    .line 537
    .line 538
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/view/b;-><init>()V

    .line 539
    .line 540
    .line 541
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 542
    .line 543
    .line 544
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/os/j;

    .line 545
    .line 546
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/os/j;-><init>()V

    .line 547
    .line 548
    .line 549
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 550
    .line 551
    .line 552
    :cond_7
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->a()Z

    .line 553
    .line 554
    .line 555
    move-result v0

    .line 556
    if-eqz v0, :cond_8

    .line 557
    .line 558
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/app/c;

    .line 559
    .line 560
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/app/c;-><init>()V

    .line 561
    .line 562
    .line 563
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 564
    .line 565
    .line 566
    :cond_8
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->q()Z

    .line 567
    .line 568
    .line 569
    move-result v0

    .line 570
    if-eqz v0, :cond_9

    .line 571
    .line 572
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/permission/a;

    .line 573
    .line 574
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/permission/a;-><init>()V

    .line 575
    .line 576
    .line 577
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 578
    .line 579
    .line 580
    :cond_9
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->w()Z

    .line 581
    .line 582
    .line 583
    move-result v0

    .line 584
    if-eqz v0, :cond_e

    .line 585
    .line 586
    sget-object v0, Lia/a;->b:Ljava/lang/Class;

    .line 587
    .line 588
    if-eqz v0, :cond_a

    .line 589
    .line 590
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/permission/c;

    .line 591
    .line 592
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/permission/c;-><init>()V

    .line 593
    .line 594
    .line 595
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 596
    .line 597
    .line 598
    :cond_a
    sget-object v0, Lga/a;->b:Ljava/lang/Class;

    .line 599
    .line 600
    if-eqz v0, :cond_b

    .line 601
    .line 602
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/rom/vivo/a;

    .line 603
    .line 604
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/rom/vivo/a;-><init>()V

    .line 605
    .line 606
    .line 607
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 608
    .line 609
    .line 610
    :cond_b
    sget-object v0, Lha/a;->b:Ljava/lang/Class;

    .line 611
    .line 612
    if-eqz v0, :cond_c

    .line 613
    .line 614
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/rom/vivo/b;

    .line 615
    .line 616
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/rom/vivo/b;-><init>()V

    .line 617
    .line 618
    .line 619
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 620
    .line 621
    .line 622
    :cond_c
    sget-object v0, Lja/a;->b:Ljava/lang/Class;

    .line 623
    .line 624
    if-eqz v0, :cond_d

    .line 625
    .line 626
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/rom/vivo/c;

    .line 627
    .line 628
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/rom/vivo/c;-><init>()V

    .line 629
    .line 630
    .line 631
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 632
    .line 633
    .line 634
    :cond_d
    sget-object v0, Lka/a;->b:Ljava/lang/Class;

    .line 635
    .line 636
    if-eqz v0, :cond_e

    .line 637
    .line 638
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/rom/vivo/d;

    .line 639
    .line 640
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/rom/vivo/d;-><init>()V

    .line 641
    .line 642
    .line 643
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 644
    .line 645
    .line 646
    :cond_e
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->u()Z

    .line 647
    .line 648
    .line 649
    move-result v0

    .line 650
    if-eqz v0, :cond_f

    .line 651
    .line 652
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/clipboard/b;

    .line 653
    .line 654
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/clipboard/b;-><init>()V

    .line 655
    .line 656
    .line 657
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 658
    .line 659
    .line 660
    :cond_f
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->x()Z

    .line 661
    .line 662
    .line 663
    move-result v0

    .line 664
    if-eqz v0, :cond_11

    .line 665
    .line 666
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->p()Z

    .line 667
    .line 668
    .line 669
    move-result v0

    .line 670
    if-nez v0, :cond_10

    .line 671
    .line 672
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->r()Z

    .line 673
    .line 674
    .line 675
    move-result v0

    .line 676
    if-eqz v0, :cond_11

    .line 677
    .line 678
    :cond_10
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/telephony/b;

    .line 679
    .line 680
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/telephony/b;-><init>()V

    .line 681
    .line 682
    .line 683
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->a(Lcom/xinzhu/overmind/client/hook/d;)V

    .line 684
    .line 685
    .line 686
    :cond_11
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/c;->e()V

    .line 687
    .line 688
    .line 689
    return-void
.end method

.method e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/c;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/xinzhu/overmind/client/hook/d;

    .line 22
    .line 23
    invoke-interface {v1}, Lcom/xinzhu/overmind/client/hook/d;->injectHook()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method f()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xinzhu/haunted/android/app/z;->d()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/WeakHashMap;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Lcom/xinzhu/haunted/android/app/z;

    .line 26
    .line 27
    invoke-direct {v2, v1}, Lcom/xinzhu/haunted/android/app/z;-><init>(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/xinzhu/haunted/android/app/z;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

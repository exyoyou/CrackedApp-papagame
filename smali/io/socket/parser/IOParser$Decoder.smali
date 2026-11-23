.class public final Lio/socket/parser/IOParser$Decoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/socket/parser/Parser$Decoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/socket/parser/IOParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Decoder"
.end annotation


# instance fields
.field private onDecodedCallback:Lio/socket/parser/Parser$Decoder$Callback;

.field reconstructor:Lio/socket/parser/IOParser$BinaryReconstructor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/socket/parser/IOParser$Decoder;->reconstructor:Lio/socket/parser/IOParser$BinaryReconstructor;

    .line 6
    .line 7
    return-void
.end method

.method private static decodeString(Ljava/lang/String;)Lio/socket/parser/Packet;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Lio/socket/parser/Packet;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    invoke-static {v3}, Ljava/lang/Character;->getNumericValue(C)I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-direct {v1, v3}, Lio/socket/parser/Packet;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iget v3, v1, Lio/socket/parser/Packet;->type:I

    .line 20
    .line 21
    if-ltz v3, :cond_e

    .line 22
    .line 23
    sget-object v4, Lio/socket/parser/Parser;->types:[Ljava/lang/String;

    .line 24
    .line 25
    array-length v4, v4

    .line 26
    const/4 v5, 0x1

    .line 27
    sub-int/2addr v4, v5

    .line 28
    if-le v3, v4, :cond_0

    .line 29
    .line 30
    goto/16 :goto_9

    .line 31
    .line 32
    :cond_0
    const/4 v4, 0x5

    .line 33
    if-eq v4, v3, :cond_2

    .line 34
    .line 35
    const/4 v4, 0x6

    .line 36
    if-ne v4, v3, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v4, 0x0

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    :goto_0
    const-string v3, "-"

    .line 42
    .line 43
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_d

    .line 48
    .line 49
    if-gt v0, v5, :cond_3

    .line 50
    .line 51
    goto/16 :goto_8

    .line 52
    .line 53
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    :goto_1
    add-int/2addr v4, v5

    .line 60
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    const/16 v7, 0x2d

    .line 65
    .line 66
    if-eq v6, v7, :cond_4

    .line 67
    .line 68
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    iput v3, v1, Lio/socket/parser/Packet;->attachments:I

    .line 85
    .line 86
    :goto_2
    add-int/lit8 v3, v4, 0x1

    .line 87
    .line 88
    if-le v0, v3, :cond_7

    .line 89
    .line 90
    const/16 v6, 0x2f

    .line 91
    .line 92
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-ne v6, v3, :cond_7

    .line 97
    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    :cond_5
    add-int/2addr v4, v5

    .line 104
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    const/16 v7, 0x2c

    .line 109
    .line 110
    if-ne v7, v6, :cond_6

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_6
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    add-int/lit8 v6, v4, 0x1

    .line 117
    .line 118
    if-ne v6, v0, :cond_5

    .line 119
    .line 120
    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    iput-object v3, v1, Lio/socket/parser/Packet;->nsp:Ljava/lang/String;

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_7
    const-string v3, "/"

    .line 128
    .line 129
    iput-object v3, v1, Lio/socket/parser/Packet;->nsp:Ljava/lang/String;

    .line 130
    .line 131
    :goto_4
    add-int/lit8 v3, v4, 0x1

    .line 132
    .line 133
    if-le v0, v3, :cond_a

    .line 134
    .line 135
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    invoke-static {v3}, Ljava/lang/Character;->getNumericValue(C)I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    const/4 v6, -0x1

    .line 152
    if-le v3, v6, :cond_a

    .line 153
    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    :cond_8
    add-int/2addr v4, v5

    .line 160
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    if-gez v7, :cond_9

    .line 169
    .line 170
    add-int/lit8 v4, v4, -0x1

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_9
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    add-int/lit8 v6, v4, 0x1

    .line 177
    .line 178
    if-ne v6, v0, :cond_8

    .line 179
    .line 180
    :goto_5
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    iput v3, v1, Lio/socket/parser/Packet;->id:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .line 190
    goto :goto_6

    .line 191
    :catch_0
    invoke-static {}, Lio/socket/parser/IOParser;->access$100()Lio/socket/parser/Packet;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    return-object p0

    .line 196
    :cond_a
    :goto_6
    add-int/2addr v4, v5

    .line 197
    if-le v0, v4, :cond_b

    .line 198
    .line 199
    :try_start_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 200
    .line 201
    .line 202
    new-instance v0, Lorg/json/JSONTokener;

    .line 203
    .line 204
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-direct {v0, v3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    iput-object v0, v1, Lio/socket/parser/Packet;->data:Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    .line 217
    goto :goto_7

    .line 218
    :catch_1
    move-exception p0

    .line 219
    invoke-static {}, Lio/socket/parser/IOParser;->access$000()Ljava/util/logging/Logger;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 224
    .line 225
    const-string v2, "An error occured while retrieving data from JSONTokener"

    .line 226
    .line 227
    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    .line 229
    .line 230
    invoke-static {}, Lio/socket/parser/IOParser;->access$100()Lio/socket/parser/Packet;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    return-object p0

    .line 235
    :cond_b
    :goto_7
    invoke-static {}, Lio/socket/parser/IOParser;->access$000()Ljava/util/logging/Logger;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 240
    .line 241
    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-eqz v0, :cond_c

    .line 246
    .line 247
    invoke-static {}, Lio/socket/parser/IOParser;->access$000()Ljava/util/logging/Logger;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    const/4 v3, 0x2

    .line 252
    new-array v3, v3, [Ljava/lang/Object;

    .line 253
    .line 254
    aput-object p0, v3, v2

    .line 255
    .line 256
    aput-object v1, v3, v5

    .line 257
    .line 258
    const-string p0, "decoded %s as %s"

    .line 259
    .line 260
    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    :cond_c
    return-object v1

    .line 268
    :cond_d
    :goto_8
    invoke-static {}, Lio/socket/parser/IOParser;->access$100()Lio/socket/parser/Packet;

    .line 269
    .line 270
    .line 271
    move-result-object p0

    .line 272
    return-object p0

    .line 273
    :cond_e
    :goto_9
    invoke-static {}, Lio/socket/parser/IOParser;->access$100()Lio/socket/parser/Packet;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lio/socket/parser/IOParser$Decoder;->decodeString(Ljava/lang/String;)Lio/socket/parser/Packet;

    move-result-object p1

    .line 2
    iget v0, p1, Lio/socket/parser/Packet;->type:I

    const/4 v1, 0x5

    if-eq v1, v0, :cond_1

    const/4 v1, 0x6

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/socket/parser/IOParser$Decoder;->onDecodedCallback:Lio/socket/parser/Parser$Decoder$Callback;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0, p1}, Lio/socket/parser/Parser$Decoder$Callback;->call(Lio/socket/parser/Packet;)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    new-instance v0, Lio/socket/parser/IOParser$BinaryReconstructor;

    invoke-direct {v0, p1}, Lio/socket/parser/IOParser$BinaryReconstructor;-><init>(Lio/socket/parser/Packet;)V

    iput-object v0, p0, Lio/socket/parser/IOParser$Decoder;->reconstructor:Lio/socket/parser/IOParser$BinaryReconstructor;

    .line 6
    iget-object v0, v0, Lio/socket/parser/IOParser$BinaryReconstructor;->reconPack:Lio/socket/parser/Packet;

    iget v0, v0, Lio/socket/parser/Packet;->attachments:I

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lio/socket/parser/IOParser$Decoder;->onDecodedCallback:Lio/socket/parser/Parser$Decoder$Callback;

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0, p1}, Lio/socket/parser/Parser$Decoder$Callback;->call(Lio/socket/parser/Packet;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public add([B)V
    .locals 1

    .line 9
    iget-object v0, p0, Lio/socket/parser/IOParser$Decoder;->reconstructor:Lio/socket/parser/IOParser$BinaryReconstructor;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0, p1}, Lio/socket/parser/IOParser$BinaryReconstructor;->takeBinaryData([B)Lio/socket/parser/Packet;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lio/socket/parser/IOParser$Decoder;->reconstructor:Lio/socket/parser/IOParser$BinaryReconstructor;

    .line 12
    iget-object v0, p0, Lio/socket/parser/IOParser$Decoder;->onDecodedCallback:Lio/socket/parser/Parser$Decoder$Callback;

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0, p1}, Lio/socket/parser/Parser$Decoder$Callback;->call(Lio/socket/parser/Packet;)V

    :cond_0
    return-void

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "got binary data when not reconstructing a packet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/socket/parser/IOParser$Decoder;->reconstructor:Lio/socket/parser/IOParser$BinaryReconstructor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/socket/parser/IOParser$BinaryReconstructor;->finishReconstruction()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/socket/parser/IOParser$Decoder;->onDecodedCallback:Lio/socket/parser/Parser$Decoder$Callback;

    .line 10
    .line 11
    return-void
.end method

.method public onDecoded(Lio/socket/parser/Parser$Decoder$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/socket/parser/IOParser$Decoder;->onDecodedCallback:Lio/socket/parser/Parser$Decoder$Callback;

    .line 2
    .line 3
    return-void
.end method

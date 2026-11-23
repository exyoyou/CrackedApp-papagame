.class Lcom/alibaba/fastjson/JSONPath$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:C

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$h;->a:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->f()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method static d(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x2d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method a(C)V
    .locals 3

    .line 1
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$h;->c:C

    .line 2
    .line 3
    if-ne v0, p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->e()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->f()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void

    .line 15
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "expect \'"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, ", but \'"

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-char p1, p0, Lcom/alibaba/fastjson/JSONPath$h;->c:C

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, "\'"

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0
.end method

.method b(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath$q;
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x1

    .line 11
    sub-int/2addr v0, v3

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/16 v5, 0x2c

    .line 17
    .line 18
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    const-string v7, ","

    .line 27
    .line 28
    const/4 v8, -0x1

    .line 29
    const/4 v9, 0x2

    .line 30
    if-le v6, v9, :cond_2

    .line 31
    .line 32
    const/16 v6, 0x27

    .line 33
    .line 34
    if-ne v2, v6, :cond_2

    .line 35
    .line 36
    if-ne v4, v6, :cond_2

    .line 37
    .line 38
    if-ne v5, v8, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$n;

    .line 45
    .line 46
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONPath$n;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    array-length v0, p1

    .line 55
    new-array v0, v0, [Ljava/lang/String;

    .line 56
    .line 57
    :goto_0
    array-length v2, p1

    .line 58
    if-ge v1, v2, :cond_1

    .line 59
    .line 60
    aget-object v2, p1, v1

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    sub-int/2addr v4, v3

    .line 67
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    aput-object v2, v0, v1

    .line 72
    .line 73
    add-int/lit8 v1, v1, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/JSONPath$k;

    .line 77
    .line 78
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONPath$k;-><init>([Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-object p1

    .line 82
    :cond_2
    const/16 v0, 0x3a

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-ne v5, v8, :cond_3

    .line 89
    .line 90
    if-ne v0, v8, :cond_3

    .line 91
    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$a;

    .line 97
    .line 98
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONPath$a;-><init>(I)V

    .line 99
    .line 100
    .line 101
    return-object v0

    .line 102
    :cond_3
    if-eq v5, v8, :cond_5

    .line 103
    .line 104
    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    array-length v0, p1

    .line 109
    new-array v0, v0, [I

    .line 110
    .line 111
    :goto_1
    array-length v2, p1

    .line 112
    if-ge v1, v2, :cond_4

    .line 113
    .line 114
    aget-object v2, p1, v1

    .line 115
    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    aput v2, v0, v1

    .line 121
    .line 122
    add-int/lit8 v1, v1, 0x1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson/JSONPath$j;

    .line 126
    .line 127
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONPath$j;-><init>([I)V

    .line 128
    .line 129
    .line 130
    return-object p1

    .line 131
    :cond_5
    if-eq v0, v8, :cond_e

    .line 132
    .line 133
    const-string v0, ":"

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    array-length v0, p1

    .line 140
    new-array v2, v0, [I

    .line 141
    .line 142
    const/4 v4, 0x0

    .line 143
    :goto_2
    array-length v5, p1

    .line 144
    if-ge v4, v5, :cond_8

    .line 145
    .line 146
    aget-object v5, p1, v4

    .line 147
    .line 148
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    if-eqz v6, :cond_7

    .line 153
    .line 154
    if-nez v4, :cond_6

    .line 155
    .line 156
    aput v1, v2, v4

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 160
    .line 161
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 162
    .line 163
    .line 164
    throw p1

    .line 165
    :cond_7
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    aput v5, v2, v4

    .line 170
    .line 171
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_8
    aget p1, v2, v1

    .line 175
    .line 176
    if-le v0, v3, :cond_9

    .line 177
    .line 178
    aget v8, v2, v3

    .line 179
    .line 180
    :cond_9
    const/4 v1, 0x3

    .line 181
    if-ne v0, v1, :cond_a

    .line 182
    .line 183
    aget v3, v2, v9

    .line 184
    .line 185
    :cond_a
    if-ltz v8, :cond_c

    .line 186
    .line 187
    if-lt v8, p1, :cond_b

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 191
    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    const-string v2, "end must greater than or equals start. start "

    .line 198
    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string p1, ",  end "

    .line 206
    .line 207
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw v0

    .line 221
    :cond_c
    :goto_4
    if-lez v3, :cond_d

    .line 222
    .line 223
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$o;

    .line 224
    .line 225
    invoke-direct {v0, p1, v8, v3}, Lcom/alibaba/fastjson/JSONPath$o;-><init>(III)V

    .line 226
    .line 227
    .line 228
    return-object v0

    .line 229
    :cond_d
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 230
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .line 235
    .line 236
    const-string v1, "step must greater than zero : "

    .line 237
    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    throw p1

    .line 252
    :cond_e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 253
    .line 254
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 255
    .line 256
    .line 257
    throw p1
.end method

.method public c()[Lcom/alibaba/fastjson/JSONPath$q;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$h;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    const/16 v0, 0x8

    .line 12
    .line 13
    new-array v1, v0, [Lcom/alibaba/fastjson/JSONPath$q;

    .line 14
    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->k()Lcom/alibaba/fastjson/JSONPath$q;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    iget v2, p0, Lcom/alibaba/fastjson/JSONPath$h;->d:I

    .line 22
    .line 23
    if-ne v2, v0, :cond_0

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_0
    new-array v0, v2, [Lcom/alibaba/fastjson/JSONPath$q;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_1
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$h;->d:I

    .line 34
    .line 35
    add-int/lit8 v4, v3, 0x1

    .line 36
    .line 37
    iput v4, p0, Lcom/alibaba/fastjson/JSONPath$h;->d:I

    .line 38
    .line 39
    aput-object v2, v1, v3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method e()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$h;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$h;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$h;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$h;->b:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/alibaba/fastjson/JSONPath$h;->b:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput-char v0, p0, Lcom/alibaba/fastjson/JSONPath$h;->c:C

    .line 14
    .line 15
    return-void
.end method

.method g()Lcom/alibaba/fastjson/JSONPath$q;
    .locals 11

    .line 1
    const/16 v0, 0x5b

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$h;->a(C)V

    .line 4
    .line 5
    .line 6
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$h;->c:C

    .line 7
    .line 8
    const/16 v1, 0x3f

    .line 9
    .line 10
    const/16 v2, 0x28

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->f()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONPath$h;->a(C)V

    .line 20
    .line 21
    .line 22
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$h;->c:C

    .line 23
    .line 24
    const/16 v1, 0x40

    .line 25
    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->f()V

    .line 29
    .line 30
    .line 31
    const/16 v0, 0x2e

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$h;->a(C)V

    .line 34
    .line 35
    .line 36
    :cond_0
    const/4 v0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    :goto_0
    const/16 v1, 0x5d

    .line 40
    .line 41
    if-nez v0, :cond_5

    .line 42
    .line 43
    iget-char v5, p0, Lcom/alibaba/fastjson/JSONPath$h;->c:C

    .line 44
    .line 45
    invoke-static {v5}, Lcom/alibaba/fastjson/util/f;->c(C)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_2

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$h;->b:I

    .line 53
    .line 54
    sub-int/2addr v0, v3

    .line 55
    :goto_1
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$h;->c:C

    .line 56
    .line 57
    if-eq v2, v1, :cond_3

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->e()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_3

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->f()V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$h;->a:Ljava/lang/String;

    .line 70
    .line 71
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$h;->b:I

    .line 72
    .line 73
    sub-int/2addr v4, v3

    .line 74
    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->e()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-nez v2, :cond_4

    .line 83
    .line 84
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$h;->a(C)V

    .line 85
    .line 86
    .line 87
    :cond_4
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$h;->b(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath$q;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    return-object v0

    .line 92
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->i()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->n()V

    .line 97
    .line 98
    .line 99
    const/16 v6, 0x29

    .line 100
    .line 101
    if-eqz v0, :cond_6

    .line 102
    .line 103
    iget-char v7, p0, Lcom/alibaba/fastjson/JSONPath$h;->c:C

    .line 104
    .line 105
    if-ne v7, v6, :cond_6

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->f()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$h;->a(C)V

    .line 111
    .line 112
    .line 113
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$c;

    .line 114
    .line 115
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$l;

    .line 116
    .line 117
    invoke-direct {v1, v5}, Lcom/alibaba/fastjson/JSONPath$l;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$c;-><init>(Lcom/alibaba/fastjson/JSONPath$b;)V

    .line 121
    .line 122
    .line 123
    return-object v0

    .line 124
    :cond_6
    iget-char v7, p0, Lcom/alibaba/fastjson/JSONPath$h;->c:C

    .line 125
    .line 126
    if-ne v7, v1, :cond_7

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->f()V

    .line 129
    .line 130
    .line 131
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$c;

    .line 132
    .line 133
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$l;

    .line 134
    .line 135
    invoke-direct {v1, v5}, Lcom/alibaba/fastjson/JSONPath$l;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$c;-><init>(Lcom/alibaba/fastjson/JSONPath$b;)V

    .line 139
    .line 140
    .line 141
    return-object v0

    .line 142
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->j()Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->n()V

    .line 147
    .line 148
    .line 149
    sget-object v8, Lcom/alibaba/fastjson/JSONPath$Operator;->BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 150
    .line 151
    if-eq v7, v8, :cond_35

    .line 152
    .line 153
    sget-object v8, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 154
    .line 155
    if-ne v7, v8, :cond_8

    .line 156
    .line 157
    goto/16 :goto_11

    .line 158
    .line 159
    :cond_8
    sget-object v8, Lcom/alibaba/fastjson/JSONPath$Operator;->IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 160
    .line 161
    if-eq v7, v8, :cond_21

    .line 162
    .line 163
    sget-object v8, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 164
    .line 165
    if-ne v7, v8, :cond_9

    .line 166
    .line 167
    goto/16 :goto_9

    .line 168
    .line 169
    :cond_9
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$h;->c:C

    .line 170
    .line 171
    const/16 v8, 0x27

    .line 172
    .line 173
    if-eq v2, v8, :cond_11

    .line 174
    .line 175
    const/16 v8, 0x22

    .line 176
    .line 177
    if-ne v2, v8, :cond_a

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_a
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONPath$h;->d(C)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-eqz v2, :cond_c

    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->h()J

    .line 187
    .line 188
    .line 189
    move-result-wide v2

    .line 190
    if-eqz v0, :cond_b

    .line 191
    .line 192
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/JSONPath$h;->a(C)V

    .line 193
    .line 194
    .line 195
    :cond_b
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$h;->a(C)V

    .line 196
    .line 197
    .line 198
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$c;

    .line 199
    .line 200
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$g;

    .line 201
    .line 202
    invoke-direct {v1, v5, v2, v3, v7}, Lcom/alibaba/fastjson/JSONPath$g;-><init>(Ljava/lang/String;JLcom/alibaba/fastjson/JSONPath$Operator;)V

    .line 203
    .line 204
    .line 205
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$c;-><init>(Lcom/alibaba/fastjson/JSONPath$b;)V

    .line 206
    .line 207
    .line 208
    return-object v0

    .line 209
    :cond_c
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$h;->c:C

    .line 210
    .line 211
    const/16 v3, 0x6e

    .line 212
    .line 213
    if-ne v2, v3, :cond_10

    .line 214
    .line 215
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->i()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    const-string v3, "null"

    .line 220
    .line 221
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-eqz v2, :cond_10

    .line 226
    .line 227
    if-eqz v0, :cond_d

    .line 228
    .line 229
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/JSONPath$h;->a(C)V

    .line 230
    .line 231
    .line 232
    :cond_d
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$h;->a(C)V

    .line 233
    .line 234
    .line 235
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 236
    .line 237
    if-ne v7, v0, :cond_e

    .line 238
    .line 239
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$c;

    .line 240
    .line 241
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$m;

    .line 242
    .line 243
    invoke-direct {v1, v5}, Lcom/alibaba/fastjson/JSONPath$m;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$c;-><init>(Lcom/alibaba/fastjson/JSONPath$b;)V

    .line 247
    .line 248
    .line 249
    return-object v0

    .line 250
    :cond_e
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 251
    .line 252
    if-ne v7, v0, :cond_f

    .line 253
    .line 254
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$c;

    .line 255
    .line 256
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$l;

    .line 257
    .line 258
    invoke-direct {v1, v5}, Lcom/alibaba/fastjson/JSONPath$l;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$c;-><init>(Lcom/alibaba/fastjson/JSONPath$b;)V

    .line 262
    .line 263
    .line 264
    return-object v0

    .line 265
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 266
    .line 267
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 268
    .line 269
    .line 270
    throw v0

    .line 271
    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 272
    .line 273
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 274
    .line 275
    .line 276
    throw v0

    .line 277
    :cond_11
    :goto_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->l()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    if-eqz v0, :cond_12

    .line 282
    .line 283
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/JSONPath$h;->a(C)V

    .line 284
    .line 285
    .line 286
    :cond_12
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$h;->a(C)V

    .line 287
    .line 288
    .line 289
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 290
    .line 291
    if-ne v7, v0, :cond_13

    .line 292
    .line 293
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$c;

    .line 294
    .line 295
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$p;

    .line 296
    .line 297
    invoke-direct {v1, v5, v2, v4}, Lcom/alibaba/fastjson/JSONPath$p;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 298
    .line 299
    .line 300
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$c;-><init>(Lcom/alibaba/fastjson/JSONPath$b;)V

    .line 301
    .line 302
    .line 303
    return-object v0

    .line 304
    :cond_13
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 305
    .line 306
    if-ne v7, v0, :cond_14

    .line 307
    .line 308
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$c;

    .line 309
    .line 310
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$p;

    .line 311
    .line 312
    invoke-direct {v1, v5, v2, v3}, Lcom/alibaba/fastjson/JSONPath$p;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 313
    .line 314
    .line 315
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$c;-><init>(Lcom/alibaba/fastjson/JSONPath$b;)V

    .line 316
    .line 317
    .line 318
    return-object v0

    .line 319
    :cond_14
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 320
    .line 321
    if-eq v7, v0, :cond_15

    .line 322
    .line 323
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 324
    .line 325
    if-ne v7, v0, :cond_19

    .line 326
    .line 327
    :cond_15
    :goto_4
    const-string v0, "%%"

    .line 328
    .line 329
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    const-string v6, "%"

    .line 334
    .line 335
    const/4 v8, -0x1

    .line 336
    if-eq v1, v8, :cond_16

    .line 337
    .line 338
    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    goto :goto_4

    .line 343
    :cond_16
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 344
    .line 345
    if-ne v7, v0, :cond_17

    .line 346
    .line 347
    const/4 v0, 0x1

    .line 348
    goto :goto_5

    .line 349
    :cond_17
    const/4 v0, 0x0

    .line 350
    :goto_5
    const/16 v1, 0x25

    .line 351
    .line 352
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    .line 353
    .line 354
    .line 355
    move-result v9

    .line 356
    if-ne v9, v8, :cond_1a

    .line 357
    .line 358
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 359
    .line 360
    if-ne v7, v0, :cond_18

    .line 361
    .line 362
    sget-object v7, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 363
    .line 364
    goto :goto_6

    .line 365
    :cond_18
    sget-object v7, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 366
    .line 367
    :cond_19
    :goto_6
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$c;

    .line 368
    .line 369
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$u;

    .line 370
    .line 371
    invoke-direct {v1, v5, v2, v7}, Lcom/alibaba/fastjson/JSONPath$u;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    .line 372
    .line 373
    .line 374
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$c;-><init>(Lcom/alibaba/fastjson/JSONPath$b;)V

    .line 375
    .line 376
    .line 377
    return-object v0

    .line 378
    :cond_1a
    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v6

    .line 382
    const/4 v7, 0x0

    .line 383
    const/4 v8, 0x2

    .line 384
    if-nez v9, :cond_1d

    .line 385
    .line 386
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 387
    .line 388
    .line 389
    move-result v9

    .line 390
    sub-int/2addr v9, v3

    .line 391
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    .line 392
    .line 393
    .line 394
    move-result v2

    .line 395
    if-ne v2, v1, :cond_1b

    .line 396
    .line 397
    array-length v1, v6

    .line 398
    sub-int/2addr v1, v3

    .line 399
    new-array v2, v1, [Ljava/lang/String;

    .line 400
    .line 401
    invoke-static {v6, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    .line 403
    .line 404
    move-object v3, v7

    .line 405
    move-object v4, v3

    .line 406
    move-object v7, v2

    .line 407
    goto :goto_8

    .line 408
    :cond_1b
    array-length v1, v6

    .line 409
    sub-int/2addr v1, v3

    .line 410
    aget-object v1, v6, v1

    .line 411
    .line 412
    array-length v2, v6

    .line 413
    if-le v2, v8, :cond_1c

    .line 414
    .line 415
    array-length v2, v6

    .line 416
    sub-int/2addr v2, v8

    .line 417
    new-array v8, v2, [Ljava/lang/String;

    .line 418
    .line 419
    invoke-static {v6, v3, v8, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    .line 421
    .line 422
    move-object v4, v1

    .line 423
    move-object v3, v7

    .line 424
    :goto_7
    move-object v7, v8

    .line 425
    goto :goto_8

    .line 426
    :cond_1c
    move-object v4, v1

    .line 427
    move-object v3, v7

    .line 428
    goto :goto_8

    .line 429
    :cond_1d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 430
    .line 431
    .line 432
    move-result v9

    .line 433
    sub-int/2addr v9, v3

    .line 434
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    .line 435
    .line 436
    .line 437
    move-result v2

    .line 438
    if-ne v2, v1, :cond_1e

    .line 439
    .line 440
    move-object v3, v7

    .line 441
    move-object v4, v3

    .line 442
    move-object v7, v6

    .line 443
    goto :goto_8

    .line 444
    :cond_1e
    array-length v1, v6

    .line 445
    if-ne v1, v3, :cond_1f

    .line 446
    .line 447
    aget-object v1, v6, v4

    .line 448
    .line 449
    move-object v3, v1

    .line 450
    move-object v4, v7

    .line 451
    goto :goto_8

    .line 452
    :cond_1f
    array-length v1, v6

    .line 453
    if-ne v1, v8, :cond_20

    .line 454
    .line 455
    aget-object v1, v6, v4

    .line 456
    .line 457
    aget-object v2, v6, v3

    .line 458
    .line 459
    move-object v3, v1

    .line 460
    move-object v4, v2

    .line 461
    goto :goto_8

    .line 462
    :cond_20
    aget-object v1, v6, v4

    .line 463
    .line 464
    array-length v2, v6

    .line 465
    sub-int/2addr v2, v3

    .line 466
    aget-object v2, v6, v2

    .line 467
    .line 468
    array-length v7, v6

    .line 469
    sub-int/2addr v7, v8

    .line 470
    new-array v8, v7, [Ljava/lang/String;

    .line 471
    .line 472
    invoke-static {v6, v3, v8, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 473
    .line 474
    .line 475
    move-object v3, v1

    .line 476
    move-object v4, v2

    .line 477
    goto :goto_7

    .line 478
    :goto_8
    new-instance v8, Lcom/alibaba/fastjson/JSONPath$c;

    .line 479
    .line 480
    new-instance v9, Lcom/alibaba/fastjson/JSONPath$i;

    .line 481
    .line 482
    move-object v1, v9

    .line 483
    move-object v2, v5

    .line 484
    move-object v5, v7

    .line 485
    move v6, v0

    .line 486
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson/JSONPath$i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 487
    .line 488
    .line 489
    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONPath$c;-><init>(Lcom/alibaba/fastjson/JSONPath$b;)V

    .line 490
    .line 491
    .line 492
    return-object v8

    .line 493
    :cond_21
    :goto_9
    sget-object v8, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 494
    .line 495
    if-ne v7, v8, :cond_22

    .line 496
    .line 497
    const/4 v8, 0x1

    .line 498
    goto :goto_a

    .line 499
    :cond_22
    const/4 v8, 0x0

    .line 500
    :goto_a
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONPath$h;->a(C)V

    .line 501
    .line 502
    .line 503
    new-instance v2, Ljava/util/ArrayList;

    .line 504
    .line 505
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .line 507
    .line 508
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->m()Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v7

    .line 512
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    :goto_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->n()V

    .line 516
    .line 517
    .line 518
    iget-char v7, p0, Lcom/alibaba/fastjson/JSONPath$h;->c:C

    .line 519
    .line 520
    const/16 v9, 0x2c

    .line 521
    .line 522
    if-eq v7, v9, :cond_34

    .line 523
    .line 524
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/JSONPath$h;->a(C)V

    .line 525
    .line 526
    .line 527
    if-eqz v0, :cond_23

    .line 528
    .line 529
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/JSONPath$h;->a(C)V

    .line 530
    .line 531
    .line 532
    :cond_23
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$h;->a(C)V

    .line 533
    .line 534
    .line 535
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    const/4 v1, 0x1

    .line 540
    const/4 v6, 0x1

    .line 541
    const/4 v7, 0x1

    .line 542
    :cond_24
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 543
    .line 544
    .line 545
    move-result v9

    .line 546
    if-eqz v9, :cond_27

    .line 547
    .line 548
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v9

    .line 552
    if-nez v9, :cond_25

    .line 553
    .line 554
    if-eqz v1, :cond_24

    .line 555
    .line 556
    const/4 v1, 0x0

    .line 557
    goto :goto_c

    .line 558
    :cond_25
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 559
    .line 560
    .line 561
    move-result-object v9

    .line 562
    if-eqz v1, :cond_26

    .line 563
    .line 564
    const-class v10, Ljava/lang/Byte;

    .line 565
    .line 566
    if-eq v9, v10, :cond_26

    .line 567
    .line 568
    const-class v10, Ljava/lang/Short;

    .line 569
    .line 570
    if-eq v9, v10, :cond_26

    .line 571
    .line 572
    const-class v10, Ljava/lang/Integer;

    .line 573
    .line 574
    if-eq v9, v10, :cond_26

    .line 575
    .line 576
    const-class v10, Ljava/lang/Long;

    .line 577
    .line 578
    if-eq v9, v10, :cond_26

    .line 579
    .line 580
    const/4 v1, 0x0

    .line 581
    const/4 v7, 0x0

    .line 582
    :cond_26
    if-eqz v6, :cond_24

    .line 583
    .line 584
    const-class v10, Ljava/lang/String;

    .line 585
    .line 586
    if-eq v9, v10, :cond_24

    .line 587
    .line 588
    const/4 v6, 0x0

    .line 589
    goto :goto_c

    .line 590
    :cond_27
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 591
    .line 592
    .line 593
    move-result v0

    .line 594
    if-ne v0, v3, :cond_29

    .line 595
    .line 596
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    if-nez v0, :cond_29

    .line 601
    .line 602
    if-eqz v8, :cond_28

    .line 603
    .line 604
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$c;

    .line 605
    .line 606
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$l;

    .line 607
    .line 608
    invoke-direct {v1, v5}, Lcom/alibaba/fastjson/JSONPath$l;-><init>(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$c;-><init>(Lcom/alibaba/fastjson/JSONPath$b;)V

    .line 612
    .line 613
    .line 614
    return-object v0

    .line 615
    :cond_28
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$c;

    .line 616
    .line 617
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$m;

    .line 618
    .line 619
    invoke-direct {v1, v5}, Lcom/alibaba/fastjson/JSONPath$m;-><init>(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$c;-><init>(Lcom/alibaba/fastjson/JSONPath$b;)V

    .line 623
    .line 624
    .line 625
    return-object v0

    .line 626
    :cond_29
    if-eqz v1, :cond_2d

    .line 627
    .line 628
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 629
    .line 630
    .line 631
    move-result v0

    .line 632
    if-ne v0, v3, :cond_2b

    .line 633
    .line 634
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    check-cast v0, Ljava/lang/Number;

    .line 639
    .line 640
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 641
    .line 642
    .line 643
    move-result-wide v0

    .line 644
    if-eqz v8, :cond_2a

    .line 645
    .line 646
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 647
    .line 648
    goto :goto_d

    .line 649
    :cond_2a
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 650
    .line 651
    :goto_d
    new-instance v3, Lcom/alibaba/fastjson/JSONPath$c;

    .line 652
    .line 653
    new-instance v4, Lcom/alibaba/fastjson/JSONPath$g;

    .line 654
    .line 655
    invoke-direct {v4, v5, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath$g;-><init>(Ljava/lang/String;JLcom/alibaba/fastjson/JSONPath$Operator;)V

    .line 656
    .line 657
    .line 658
    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONPath$c;-><init>(Lcom/alibaba/fastjson/JSONPath$b;)V

    .line 659
    .line 660
    .line 661
    return-object v3

    .line 662
    :cond_2b
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 663
    .line 664
    .line 665
    move-result v0

    .line 666
    new-array v1, v0, [J

    .line 667
    .line 668
    :goto_e
    if-ge v4, v0, :cond_2c

    .line 669
    .line 670
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-result-object v3

    .line 674
    check-cast v3, Ljava/lang/Number;

    .line 675
    .line 676
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 677
    .line 678
    .line 679
    move-result-wide v6

    .line 680
    aput-wide v6, v1, v4

    .line 681
    .line 682
    add-int/lit8 v4, v4, 0x1

    .line 683
    .line 684
    goto :goto_e

    .line 685
    :cond_2c
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$c;

    .line 686
    .line 687
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$e;

    .line 688
    .line 689
    invoke-direct {v2, v5, v1, v8}, Lcom/alibaba/fastjson/JSONPath$e;-><init>(Ljava/lang/String;[JZ)V

    .line 690
    .line 691
    .line 692
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONPath$c;-><init>(Lcom/alibaba/fastjson/JSONPath$b;)V

    .line 693
    .line 694
    .line 695
    return-object v0

    .line 696
    :cond_2d
    if-eqz v6, :cond_30

    .line 697
    .line 698
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 699
    .line 700
    .line 701
    move-result v0

    .line 702
    if-ne v0, v3, :cond_2f

    .line 703
    .line 704
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object v0

    .line 708
    check-cast v0, Ljava/lang/String;

    .line 709
    .line 710
    if-eqz v8, :cond_2e

    .line 711
    .line 712
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 713
    .line 714
    goto :goto_f

    .line 715
    :cond_2e
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 716
    .line 717
    :goto_f
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$c;

    .line 718
    .line 719
    new-instance v3, Lcom/alibaba/fastjson/JSONPath$u;

    .line 720
    .line 721
    invoke-direct {v3, v5, v0, v1}, Lcom/alibaba/fastjson/JSONPath$u;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    .line 722
    .line 723
    .line 724
    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONPath$c;-><init>(Lcom/alibaba/fastjson/JSONPath$b;)V

    .line 725
    .line 726
    .line 727
    return-object v2

    .line 728
    :cond_2f
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 729
    .line 730
    .line 731
    move-result v0

    .line 732
    new-array v0, v0, [Ljava/lang/String;

    .line 733
    .line 734
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 735
    .line 736
    .line 737
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$c;

    .line 738
    .line 739
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$t;

    .line 740
    .line 741
    invoke-direct {v2, v5, v0, v8}, Lcom/alibaba/fastjson/JSONPath$t;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 742
    .line 743
    .line 744
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPath$c;-><init>(Lcom/alibaba/fastjson/JSONPath$b;)V

    .line 745
    .line 746
    .line 747
    return-object v1

    .line 748
    :cond_30
    if-eqz v7, :cond_33

    .line 749
    .line 750
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 751
    .line 752
    .line 753
    move-result v0

    .line 754
    new-array v1, v0, [Ljava/lang/Long;

    .line 755
    .line 756
    :goto_10
    if-ge v4, v0, :cond_32

    .line 757
    .line 758
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    move-result-object v3

    .line 762
    check-cast v3, Ljava/lang/Number;

    .line 763
    .line 764
    if-eqz v3, :cond_31

    .line 765
    .line 766
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 767
    .line 768
    .line 769
    move-result-wide v6

    .line 770
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 771
    .line 772
    .line 773
    move-result-object v3

    .line 774
    aput-object v3, v1, v4

    .line 775
    .line 776
    :cond_31
    add-int/lit8 v4, v4, 0x1

    .line 777
    .line 778
    goto :goto_10

    .line 779
    :cond_32
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$c;

    .line 780
    .line 781
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$f;

    .line 782
    .line 783
    invoke-direct {v2, v5, v1, v8}, Lcom/alibaba/fastjson/JSONPath$f;-><init>(Ljava/lang/String;[Ljava/lang/Long;Z)V

    .line 784
    .line 785
    .line 786
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONPath$c;-><init>(Lcom/alibaba/fastjson/JSONPath$b;)V

    .line 787
    .line 788
    .line 789
    return-object v0

    .line 790
    :cond_33
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 791
    .line 792
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 793
    .line 794
    .line 795
    throw v0

    .line 796
    :cond_34
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->f()V

    .line 797
    .line 798
    .line 799
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->m()Ljava/lang/Object;

    .line 800
    .line 801
    .line 802
    move-result-object v7

    .line 803
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 804
    .line 805
    .line 806
    goto/16 :goto_b

    .line 807
    .line 808
    :cond_35
    :goto_11
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 809
    .line 810
    if-ne v7, v0, :cond_36

    .line 811
    .line 812
    const/4 v7, 0x1

    .line 813
    goto :goto_12

    .line 814
    :cond_36
    const/4 v7, 0x0

    .line 815
    :goto_12
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->m()Ljava/lang/Object;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->i()Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v1

    .line 823
    const-string v2, "and"

    .line 824
    .line 825
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 826
    .line 827
    .line 828
    move-result v1

    .line 829
    if-eqz v1, :cond_39

    .line 830
    .line 831
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->m()Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    move-result-object v1

    .line 835
    if-eqz v0, :cond_38

    .line 836
    .line 837
    if-eqz v1, :cond_38

    .line 838
    .line 839
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 840
    .line 841
    .line 842
    move-result-object v2

    .line 843
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONPath;->v(Ljava/lang/Class;)Z

    .line 844
    .line 845
    .line 846
    move-result v2

    .line 847
    if-eqz v2, :cond_37

    .line 848
    .line 849
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 850
    .line 851
    .line 852
    move-result-object v2

    .line 853
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONPath;->v(Ljava/lang/Class;)Z

    .line 854
    .line 855
    .line 856
    move-result v2

    .line 857
    if-eqz v2, :cond_37

    .line 858
    .line 859
    new-instance v8, Lcom/alibaba/fastjson/JSONPath$d;

    .line 860
    .line 861
    check-cast v0, Ljava/lang/Number;

    .line 862
    .line 863
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 864
    .line 865
    .line 866
    move-result-wide v3

    .line 867
    check-cast v1, Ljava/lang/Number;

    .line 868
    .line 869
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 870
    .line 871
    .line 872
    move-result-wide v9

    .line 873
    move-object v1, v8

    .line 874
    move-object v2, v5

    .line 875
    move-wide v5, v9

    .line 876
    invoke-direct/range {v1 .. v7}, Lcom/alibaba/fastjson/JSONPath$d;-><init>(Ljava/lang/String;JJZ)V

    .line 877
    .line 878
    .line 879
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$c;

    .line 880
    .line 881
    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/JSONPath$c;-><init>(Lcom/alibaba/fastjson/JSONPath$b;)V

    .line 882
    .line 883
    .line 884
    return-object v0

    .line 885
    :cond_37
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    .line 886
    .line 887
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$h;->a:Ljava/lang/String;

    .line 888
    .line 889
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    .line 890
    .line 891
    .line 892
    throw v0

    .line 893
    :cond_38
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    .line 894
    .line 895
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$h;->a:Ljava/lang/String;

    .line 896
    .line 897
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    .line 898
    .line 899
    .line 900
    throw v0

    .line 901
    :cond_39
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    .line 902
    .line 903
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$h;->a:Ljava/lang/String;

    .line 904
    .line 905
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    .line 906
    .line 907
    .line 908
    throw v0
.end method

.method protected h()J
    .locals 3

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$h;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$h;->c:C

    .line 6
    .line 7
    const/16 v2, 0x2b

    .line 8
    .line 9
    if-eq v1, v2, :cond_0

    .line 10
    .line 11
    const/16 v2, 0x2d

    .line 12
    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->f()V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$h;->c:C

    .line 19
    .line 20
    const/16 v2, 0x30

    .line 21
    .line 22
    if-lt v1, v2, :cond_2

    .line 23
    .line 24
    const/16 v2, 0x39

    .line 25
    .line 26
    if-gt v1, v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->f()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$h;->b:I

    .line 33
    .line 34
    add-int/lit8 v1, v1, -0x1

    .line 35
    .line 36
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$h;->a:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    return-wide v0
.end method

.method i()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->n()V

    .line 2
    .line 3
    .line 4
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$h;->c:C

    .line 5
    .line 6
    invoke-static {v0}, Lcom/alibaba/fastjson/util/f;->c(C)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$h;->b:I

    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->e()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$h;->c:C

    .line 23
    .line 24
    invoke-static {v1}, Lcom/alibaba/fastjson/util/f;->g(C)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->f()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$h;->b:I

    .line 36
    .line 37
    add-int/lit8 v1, v1, -0x1

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->e()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$h;->c:C

    .line 46
    .line 47
    invoke-static {v2}, Lcom/alibaba/fastjson/util/f;->g(C)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$h;->b:I

    .line 54
    .line 55
    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$h;->a:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    return-object v0

    .line 62
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    .line 63
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v2, "illeal jsonpath syntax. "

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$h;->a:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0
.end method

.method protected j()Lcom/alibaba/fastjson/JSONPath$Operator;
    .locals 6

    .line 1
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$h;->c:C

    .line 2
    .line 3
    const/16 v1, 0x3d

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->f()V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 v2, 0x21

    .line 14
    .line 15
    if-ne v0, v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->f()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$h;->a(C)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/16 v2, 0x3c

    .line 27
    .line 28
    if-ne v0, v2, :cond_3

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->f()V

    .line 31
    .line 32
    .line 33
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$h;->c:C

    .line 34
    .line 35
    if-ne v0, v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->f()V

    .line 38
    .line 39
    .line 40
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LT:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    const/16 v2, 0x3e

    .line 47
    .line 48
    if-ne v0, v2, :cond_5

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->f()V

    .line 51
    .line 52
    .line 53
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$h;->c:C

    .line 54
    .line 55
    if-ne v0, v1, :cond_4

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->f()V

    .line 58
    .line 59
    .line 60
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->GE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->GT:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_5
    const/4 v0, 0x0

    .line 67
    :goto_0
    if-nez v0, :cond_f

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->i()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v1, "not"

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    const-string v2, "between"

    .line 80
    .line 81
    const-string v3, "in"

    .line 82
    .line 83
    const-string v4, "rlike"

    .line 84
    .line 85
    const-string v5, "like"

    .line 86
    .line 87
    if-eqz v1, :cond_a

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->n()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->i()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_6

    .line 101
    .line 102
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_6
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_7

    .line 110
    .line 111
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_7
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_8

    .line 119
    .line 120
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_8
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_9

    .line 128
    .line 129
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 133
    .line 134
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 135
    .line 136
    .line 137
    throw v0

    .line 138
    :cond_a
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_b

    .line 143
    .line 144
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_b
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_c

    .line 152
    .line 153
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_c
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_d

    .line 161
    .line 162
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_d
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_e

    .line 170
    .line 171
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 175
    .line 176
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 177
    .line 178
    .line 179
    throw v0

    .line 180
    :cond_f
    :goto_1
    return-object v0
.end method

.method k()Lcom/alibaba/fastjson/JSONPath$q;
    .locals 3

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_b

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->n()V

    .line 8
    .line 9
    .line 10
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$h;->c:C

    .line 11
    .line 12
    const/16 v1, 0x40

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->f()V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$r;->a:Lcom/alibaba/fastjson/JSONPath$r;

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    const/16 v1, 0x24

    .line 23
    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->f()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/16 v1, 0x2e

    .line 31
    .line 32
    if-ne v0, v1, :cond_8

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->f()V

    .line 35
    .line 36
    .line 37
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$h;->c:C

    .line 38
    .line 39
    const/16 v1, 0x2a

    .line 40
    .line 41
    if-ne v0, v1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->e()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->f()V

    .line 50
    .line 51
    .line 52
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$v;->a:Lcom/alibaba/fastjson/JSONPath$v;

    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->i()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$h;->c:C

    .line 60
    .line 61
    const/16 v2, 0x28

    .line 62
    .line 63
    if-ne v1, v2, :cond_7

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->f()V

    .line 66
    .line 67
    .line 68
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$h;->c:C

    .line 69
    .line 70
    const/16 v2, 0x29

    .line 71
    .line 72
    if-ne v1, v2, :cond_6

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->e()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_4

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->f()V

    .line 81
    .line 82
    .line 83
    :cond_4
    const-string v1, "size"

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$s;->a:Lcom/alibaba/fastjson/JSONPath$s;

    .line 92
    .line 93
    return-object v0

    .line 94
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 95
    .line 96
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 97
    .line 98
    .line 99
    throw v0

    .line 100
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 101
    .line 102
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 103
    .line 104
    .line 105
    throw v0

    .line 106
    :cond_7
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$n;

    .line 107
    .line 108
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONPath$n;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-object v1

    .line 112
    :cond_8
    const/16 v1, 0x5b

    .line 113
    .line 114
    if-ne v0, v1, :cond_9

    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->g()Lcom/alibaba/fastjson/JSONPath$q;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    return-object v0

    .line 121
    :cond_9
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$h;->d:I

    .line 122
    .line 123
    if-nez v0, :cond_a

    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->i()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$n;

    .line 130
    .line 131
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONPath$n;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-object v1

    .line 135
    :cond_a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 136
    .line 137
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 138
    .line 139
    .line 140
    throw v0

    .line 141
    :cond_b
    const/4 v0, 0x0

    .line 142
    return-object v0
.end method

.method l()Ljava/lang/String;
    .locals 4

    .line 1
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$h;->c:C

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->f()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$h;->b:I

    .line 7
    .line 8
    add-int/lit8 v1, v1, -0x1

    .line 9
    .line 10
    :goto_0
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$h;->c:C

    .line 11
    .line 12
    if-eq v2, v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->e()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->f()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$h;->a:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->e()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$h;->b:I

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$h;->b:I

    .line 36
    .line 37
    add-int/lit8 v3, v3, -0x1

    .line 38
    .line 39
    :goto_1
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$h;->a(C)V

    .line 44
    .line 45
    .line 46
    return-object v1
.end method

.method protected m()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->n()V

    .line 2
    .line 3
    .line 4
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$h;->c:C

    .line 5
    .line 6
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath$h;->d(C)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->h()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$h;->c:C

    .line 22
    .line 23
    const/16 v1, 0x22

    .line 24
    .line 25
    if-eq v0, v1, :cond_4

    .line 26
    .line 27
    const/16 v1, 0x27

    .line 28
    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/16 v1, 0x6e

    .line 33
    .line 34
    if-ne v0, v1, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->i()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "null"

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    return-object v0

    .line 50
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$h;->a:Ljava/lang/String;

    .line 53
    .line 54
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->l()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    return-object v0
.end method

.method public final n()V
    .locals 3

    .line 1
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$h;->c:C

    .line 2
    .line 3
    sget-object v1, Lcom/alibaba/fastjson/util/f;->l:[Z

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-ge v0, v2, :cond_0

    .line 7
    .line 8
    aget-boolean v0, v1, v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$h;->f()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void
.end method

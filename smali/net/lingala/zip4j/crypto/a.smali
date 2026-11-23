.class public Lnet/lingala/zip4j/crypto/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/lingala/zip4j/crypto/c;


# instance fields
.field private a:Lpc/i;

.field private b:Lnc/a;

.field private c:Lnet/lingala/zip4j/crypto/PBKDF2/b;

.field private final d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:[B

.field private i:[B

.field private j:[B

.field private k:[B

.field private l:I

.field private m:[B

.field private n:[B

.field private o:I


# direct methods
.method public constructor <init>(Lpc/i;[B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lnet/lingala/zip4j/crypto/a;->d:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lnet/lingala/zip4j/crypto/a;->l:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lnet/lingala/zip4j/crypto/a;->o:I

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/a;->a:Lpc/i;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/a;->k:[B

    .line 19
    .line 20
    const/16 p1, 0x10

    .line 21
    .line 22
    new-array v0, p1, [B

    .line 23
    .line 24
    iput-object v0, p0, Lnet/lingala/zip4j/crypto/a;->m:[B

    .line 25
    .line 26
    new-array p1, p1, [B

    .line 27
    .line 28
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/a;->n:[B

    .line 29
    .line 30
    invoke-direct {p0, p2, p3}, Lnet/lingala/zip4j/crypto/a;->h([B[B)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 35
    .line 36
    const-string p2, "one of the input parameters is null in AESDecryptor Constructor"

    .line 37
    .line 38
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method private c([B[C)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lnet/lingala/zip4j/crypto/PBKDF2/e;

    .line 2
    .line 3
    const-string v1, "HmacSHA1"

    .line 4
    .line 5
    const-string v2, "ISO-8859-1"

    .line 6
    .line 7
    const/16 v3, 0x3e8

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, p1, v3}, Lnet/lingala/zip4j/crypto/PBKDF2/e;-><init>(Ljava/lang/String;Ljava/lang/String;[BI)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Lnet/lingala/zip4j/crypto/PBKDF2/c;

    .line 13
    .line 14
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/crypto/PBKDF2/c;-><init>(Lnet/lingala/zip4j/crypto/PBKDF2/e;)V

    .line 15
    .line 16
    .line 17
    iget v0, p0, Lnet/lingala/zip4j/crypto/a;->e:I

    .line 18
    .line 19
    iget v1, p0, Lnet/lingala/zip4j/crypto/a;->f:I

    .line 20
    .line 21
    add-int/2addr v0, v1

    .line 22
    add-int/lit8 v0, v0, 0x2

    .line 23
    .line 24
    invoke-virtual {p1, p2, v0}, Lnet/lingala/zip4j/crypto/PBKDF2/c;->g([CI)[B

    .line 25
    .line 26
    .line 27
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return-object p1

    .line 29
    :catch_0
    move-exception p1

    .line 30
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 31
    .line 32
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    throw p2
.end method

.method private h([B[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/a;->a:Lpc/i;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    invoke-virtual {v0}, Lpc/i;->a()Lpc/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_7

    .line 10
    .line 11
    invoke-virtual {v0}, Lpc/a;->a()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    const/16 v2, 0x10

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    if-eq v0, v3, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    const/16 v0, 0x20

    .line 27
    .line 28
    iput v0, p0, Lnet/lingala/zip4j/crypto/a;->e:I

    .line 29
    .line 30
    iput v0, p0, Lnet/lingala/zip4j/crypto/a;->f:I

    .line 31
    .line 32
    iput v2, p0, Lnet/lingala/zip4j/crypto/a;->g:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 36
    .line 37
    new-instance p2, Ljava/lang/StringBuffer;

    .line 38
    .line 39
    const-string v0, "invalid aes key strength for file: "

    .line 40
    .line 41
    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/a;->a:Lpc/i;

    .line 45
    .line 46
    invoke-virtual {v0}, Lpc/i;->j()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_1
    const/16 v0, 0x18

    .line 62
    .line 63
    iput v0, p0, Lnet/lingala/zip4j/crypto/a;->e:I

    .line 64
    .line 65
    iput v0, p0, Lnet/lingala/zip4j/crypto/a;->f:I

    .line 66
    .line 67
    const/16 v0, 0xc

    .line 68
    .line 69
    iput v0, p0, Lnet/lingala/zip4j/crypto/a;->g:I

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iput v2, p0, Lnet/lingala/zip4j/crypto/a;->e:I

    .line 73
    .line 74
    iput v2, p0, Lnet/lingala/zip4j/crypto/a;->f:I

    .line 75
    .line 76
    const/16 v0, 0x8

    .line 77
    .line 78
    iput v0, p0, Lnet/lingala/zip4j/crypto/a;->g:I

    .line 79
    .line 80
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/a;->a:Lpc/i;

    .line 81
    .line 82
    invoke-virtual {v0}, Lpc/i;->o()[C

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-eqz v0, :cond_6

    .line 87
    .line 88
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/a;->a:Lpc/i;

    .line 89
    .line 90
    invoke-virtual {v0}, Lpc/i;->o()[C

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    array-length v0, v0

    .line 95
    if-lez v0, :cond_6

    .line 96
    .line 97
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/a;->a:Lpc/i;

    .line 98
    .line 99
    invoke-virtual {v0}, Lpc/i;->o()[C

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-direct {p0, p1, v0}, Lnet/lingala/zip4j/crypto/a;->c([B[C)[B

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    if-eqz p1, :cond_5

    .line 108
    .line 109
    array-length v0, p1

    .line 110
    iget v1, p0, Lnet/lingala/zip4j/crypto/a;->e:I

    .line 111
    .line 112
    iget v2, p0, Lnet/lingala/zip4j/crypto/a;->f:I

    .line 113
    .line 114
    add-int v4, v1, v2

    .line 115
    .line 116
    add-int/2addr v4, v3

    .line 117
    if-ne v0, v4, :cond_5

    .line 118
    .line 119
    new-array v0, v1, [B

    .line 120
    .line 121
    iput-object v0, p0, Lnet/lingala/zip4j/crypto/a;->h:[B

    .line 122
    .line 123
    new-array v2, v2, [B

    .line 124
    .line 125
    iput-object v2, p0, Lnet/lingala/zip4j/crypto/a;->i:[B

    .line 126
    .line 127
    new-array v2, v3, [B

    .line 128
    .line 129
    iput-object v2, p0, Lnet/lingala/zip4j/crypto/a;->j:[B

    .line 130
    .line 131
    const/4 v2, 0x0

    .line 132
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    .line 134
    .line 135
    iget v0, p0, Lnet/lingala/zip4j/crypto/a;->e:I

    .line 136
    .line 137
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/a;->i:[B

    .line 138
    .line 139
    iget v4, p0, Lnet/lingala/zip4j/crypto/a;->f:I

    .line 140
    .line 141
    invoke-static {p1, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    .line 143
    .line 144
    iget v0, p0, Lnet/lingala/zip4j/crypto/a;->e:I

    .line 145
    .line 146
    iget v1, p0, Lnet/lingala/zip4j/crypto/a;->f:I

    .line 147
    .line 148
    add-int/2addr v0, v1

    .line 149
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/a;->j:[B

    .line 150
    .line 151
    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lnet/lingala/zip4j/crypto/a;->j:[B

    .line 155
    .line 156
    if-eqz p1, :cond_4

    .line 157
    .line 158
    invoke-static {p2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-eqz p1, :cond_3

    .line 163
    .line 164
    new-instance p1, Lnc/a;

    .line 165
    .line 166
    iget-object p2, p0, Lnet/lingala/zip4j/crypto/a;->h:[B

    .line 167
    .line 168
    invoke-direct {p1, p2}, Lnc/a;-><init>([B)V

    .line 169
    .line 170
    .line 171
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/a;->b:Lnc/a;

    .line 172
    .line 173
    new-instance p1, Lnet/lingala/zip4j/crypto/PBKDF2/b;

    .line 174
    .line 175
    const-string p2, "HmacSHA1"

    .line 176
    .line 177
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/crypto/PBKDF2/b;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/a;->c:Lnet/lingala/zip4j/crypto/PBKDF2/b;

    .line 181
    .line 182
    iget-object p2, p0, Lnet/lingala/zip4j/crypto/a;->i:[B

    .line 183
    .line 184
    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/crypto/PBKDF2/b;->b([B)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 189
    .line 190
    new-instance p2, Ljava/lang/StringBuffer;

    .line 191
    .line 192
    const-string v0, "Wrong Password for file: "

    .line 193
    .line 194
    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/a;->a:Lpc/i;

    .line 198
    .line 199
    invoke-virtual {v0}, Lpc/i;->j()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    const/4 v0, 0x5

    .line 211
    invoke-direct {p1, p2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    .line 212
    .line 213
    .line 214
    throw p1

    .line 215
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 216
    .line 217
    const-string p2, "invalid derived password verifier for AES"

    .line 218
    .line 219
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw p1

    .line 223
    :cond_5
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 224
    .line 225
    const-string p2, "invalid derived key"

    .line 226
    .line 227
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw p1

    .line 231
    :cond_6
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 232
    .line 233
    const-string p2, "empty or null password provided for AES Decryptor"

    .line 234
    .line 235
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw p1

    .line 239
    :cond_7
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 240
    .line 241
    const-string p2, "invalid aes extra data record - in init method of AESDecryptor"

    .line 242
    .line 243
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    throw p1

    .line 247
    :cond_8
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 248
    .line 249
    const-string p2, "invalid file header in init method of AESDecryptor"

    .line 250
    .line 251
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw p1
.end method


# virtual methods
.method public a([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/crypto/a;->b([BII)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public b([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/a;->b:Lnc/a;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    move v0, p2

    .line 6
    :goto_0
    add-int v1, p2, p3

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    return p3

    .line 11
    :cond_0
    add-int/lit8 v2, v0, 0x10

    .line 12
    .line 13
    const/16 v3, 0x10

    .line 14
    .line 15
    if-gt v2, v1, :cond_1

    .line 16
    .line 17
    const/16 v1, 0x10

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    sub-int/2addr v1, v0

    .line 21
    :goto_1
    :try_start_0
    iput v1, p0, Lnet/lingala/zip4j/crypto/a;->o:I

    .line 22
    .line 23
    iget-object v4, p0, Lnet/lingala/zip4j/crypto/a;->c:Lnet/lingala/zip4j/crypto/PBKDF2/b;

    .line 24
    .line 25
    invoke-virtual {v4, p1, v0, v1}, Lnet/lingala/zip4j/crypto/PBKDF2/b;->update([BII)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/a;->m:[B

    .line 29
    .line 30
    iget v4, p0, Lnet/lingala/zip4j/crypto/a;->l:I

    .line 31
    .line 32
    invoke-static {v1, v4, v3}, Lnet/lingala/zip4j/util/f;->d([BII)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/a;->b:Lnc/a;

    .line 36
    .line 37
    iget-object v3, p0, Lnet/lingala/zip4j/crypto/a;->m:[B

    .line 38
    .line 39
    iget-object v4, p0, Lnet/lingala/zip4j/crypto/a;->n:[B

    .line 40
    .line 41
    invoke-virtual {v1, v3, v4}, Lnc/a;->e([B[B)I

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    :goto_2
    iget v3, p0, Lnet/lingala/zip4j/crypto/a;->o:I

    .line 46
    .line 47
    if-lt v1, v3, :cond_2

    .line 48
    .line 49
    iget v0, p0, Lnet/lingala/zip4j/crypto/a;->l:I

    .line 50
    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    iput v0, p0, Lnet/lingala/zip4j/crypto/a;->l:I

    .line 54
    .line 55
    move v0, v2

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    add-int v3, v0, v1

    .line 58
    .line 59
    aget-byte v4, p1, v3

    .line 60
    .line 61
    iget-object v5, p0, Lnet/lingala/zip4j/crypto/a;->n:[B

    .line 62
    .line 63
    aget-byte v5, v5, v1

    .line 64
    .line 65
    xor-int/2addr v4, v5

    .line 66
    int-to-byte v4, v4

    .line 67
    aput-byte v4, p1, v3
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :catch_0
    move-exception p1

    .line 73
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 74
    .line 75
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    throw p2

    .line 79
    :catch_1
    move-exception p1

    .line 80
    throw p1

    .line 81
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 82
    .line 83
    const-string p2, "AES not initialized properly"

    .line 84
    .line 85
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1
.end method

.method public d()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/a;->c:Lnet/lingala/zip4j/crypto/PBKDF2/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/PBKDF2/b;->d()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/crypto/a;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public g()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/a;->k:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public i([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/a;->k:[B

    .line 2
    .line 3
    return-void
.end method

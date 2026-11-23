.class public Lcom/googlecode/mp4parser/boxes/cenc/a;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lcom/googlecode/mp4parser/authoring/f;",
        ">;"
    }
.end annotation


# instance fields
.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mp4parser/iso23001/part7/a;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/googlecode/mp4parser/util/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/googlecode/mp4parser/util/n<",
            "Ljava/lang/Integer;",
            "Ljavax/crypto/SecretKey;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/util/n;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/mp4parser/util/n<",
            "Ljava/lang/Integer;",
            "Ljavax/crypto/SecretKey;",
            ">;",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mp4parser/iso23001/part7/a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 3
    new-instance v0, Lcom/googlecode/mp4parser/util/n;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/util/n;-><init>()V

    .line 4
    iput-object p3, p0, Lcom/googlecode/mp4parser/boxes/cenc/a;->b:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/cenc/a;->c:Lcom/googlecode/mp4parser/util/n;

    .line 6
    iput-object p2, p0, Lcom/googlecode/mp4parser/boxes/cenc/a;->d:Ljava/util/List;

    .line 7
    iput-object p4, p0, Lcom/googlecode/mp4parser/boxes/cenc/a;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/crypto/SecretKey;",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mp4parser/iso23001/part7/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/googlecode/mp4parser/util/n;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/googlecode/mp4parser/util/n;-><init>(Ljava/lang/Comparable;Ljava/lang/Object;)V

    const-string p1, "cenc"

    invoke-direct {p0, v0, p2, p3, p1}, Lcom/googlecode/mp4parser/boxes/cenc/a;-><init>(Lcom/googlecode/mp4parser/util/n;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/googlecode/mp4parser/authoring/f;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/cenc/a;->c:Lcom/googlecode/mp4parser/util/n;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/util/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_6

    .line 12
    .line 13
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/cenc/a;->d:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/googlecode/mp4parser/authoring/f;

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/f;->a()Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/cenc/a;->b:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcom/mp4parser/iso23001/part7/a;

    .line 43
    .line 44
    iget-object v4, p0, Lcom/googlecode/mp4parser/boxes/cenc/a;->c:Lcom/googlecode/mp4parser/util/n;

    .line 45
    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v4, p1}, Lcom/googlecode/mp4parser/util/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Ljavax/crypto/SecretKey;

    .line 55
    .line 56
    iget-object v4, v3, Lcom/mp4parser/iso23001/part7/a;->a:[B

    .line 57
    .line 58
    invoke-virtual {p0, p1, v4}, Lcom/googlecode/mp4parser/boxes/cenc/a;->b(Ljavax/crypto/SecretKey;[B)Ljavax/crypto/Cipher;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    :try_start_0
    iget-object v3, v3, Lcom/mp4parser/iso23001/part7/a;->b:[Lcom/mp4parser/iso23001/part7/a$k;

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    array-length v5, v3

    .line 68
    if-lez v5, :cond_3

    .line 69
    .line 70
    array-length v5, v3

    .line 71
    :goto_0
    if-lt v4, v5, :cond_1

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-lez v3, :cond_0

    .line 78
    .line 79
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 80
    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v5, "Decrypted sample but still data remaining: "

    .line 84
    .line 85
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/f;->getSize()J

    .line 89
    .line 90
    .line 91
    move-result-wide v5

    .line 92
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_0
    invoke-virtual {p1}, Ljavax/crypto/Cipher;->doFinal()[B

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_1
    aget-object v6, v3, v4

    .line 111
    .line 112
    invoke-interface {v6}, Lcom/mp4parser/iso23001/part7/a$k;->clear()I

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    invoke-interface {v6}, Lcom/mp4parser/iso23001/part7/a$k;->a()J

    .line 117
    .line 118
    .line 119
    move-result-wide v8

    .line 120
    invoke-static {v8, v9}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    new-array v7, v7, [B

    .line 125
    .line 126
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 130
    .line 131
    .line 132
    if-lez v6, :cond_2

    .line 133
    .line 134
    new-array v6, v6, [B

    .line 135
    .line 136
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v6}, Ljavax/crypto/Cipher;->update([B)[B

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 144
    .line 145
    .line 146
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    new-array v3, v0, [B

    .line 154
    .line 155
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 156
    .line 157
    .line 158
    const-string v5, "cbc1"

    .line 159
    .line 160
    iget-object v6, p0, Lcom/googlecode/mp4parser/boxes/cenc/a;->e:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    if-eqz v5, :cond_4

    .line 167
    .line 168
    div-int/lit8 v5, v0, 0x10

    .line 169
    .line 170
    mul-int/lit8 v5, v5, 0x10

    .line 171
    .line 172
    invoke-virtual {p1, v3, v4, v5}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 177
    .line 178
    .line 179
    sub-int/2addr v0, v5

    .line 180
    invoke-virtual {v2, v3, v5, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_4
    const-string v0, "cenc"

    .line 185
    .line 186
    iget-object v4, p0, Lcom/googlecode/mp4parser/boxes/cenc/a;->e:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_5

    .line 193
    .line 194
    invoke-virtual {p1, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 199
    .line 200
    .line 201
    :cond_5
    :goto_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 205
    .line 206
    .line 207
    new-instance p1, Lcom/googlecode/mp4parser/authoring/g;

    .line 208
    .line 209
    invoke-direct {p1, v2}, Lcom/googlecode/mp4parser/authoring/g;-><init>(Ljava/nio/ByteBuffer;)V

    .line 210
    .line 211
    .line 212
    return-object p1

    .line 213
    :catch_0
    move-exception p1

    .line 214
    new-instance v0, Ljava/lang/RuntimeException;

    .line 215
    .line 216
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 217
    .line 218
    .line 219
    throw v0

    .line 220
    :catch_1
    move-exception p1

    .line 221
    new-instance v0, Ljava/lang/RuntimeException;

    .line 222
    .line 223
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 224
    .line 225
    .line 226
    throw v0

    .line 227
    :cond_6
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/cenc/a;->d:Ljava/util/List;

    .line 228
    .line 229
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    check-cast p1, Lcom/googlecode/mp4parser/authoring/f;

    .line 234
    .line 235
    return-object p1
.end method

.method b(Ljavax/crypto/SecretKey;[B)Ljavax/crypto/Cipher;
    .locals 3

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    array-length v1, p2

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    const-string p2, "cenc"

    .line 11
    .line 12
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/cenc/a;->e:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    const/4 v1, 0x2

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    const-string p2, "AES/CTR/NoPadding"

    .line 22
    .line 23
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    .line 28
    .line 29
    invoke-direct {v2, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v1, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 33
    .line 34
    .line 35
    return-object p2

    .line 36
    :cond_0
    const-string p2, "cbc1"

    .line 37
    .line 38
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/cenc/a;->e:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    const-string p2, "AES/CBC/NoPadding"

    .line 47
    .line 48
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    .line 53
    .line 54
    invoke-direct {v2, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v1, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 58
    .line 59
    .line 60
    return-object p2

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 62
    .line 63
    const-string p2, "Only cenc & cbc1 is supported as encryptionAlgo"

    .line 64
    .line 65
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :catch_0
    move-exception p1

    .line 70
    new-instance p2, Ljava/lang/RuntimeException;

    .line 71
    .line 72
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    throw p2

    .line 76
    :catch_1
    move-exception p1

    .line 77
    new-instance p2, Ljava/lang/RuntimeException;

    .line 78
    .line 79
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    throw p2

    .line 83
    :catch_2
    move-exception p1

    .line 84
    new-instance p2, Ljava/lang/RuntimeException;

    .line 85
    .line 86
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    throw p2

    .line 90
    :catch_3
    move-exception p1

    .line 91
    new-instance p2, Ljava/lang/RuntimeException;

    .line 92
    .line 93
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    throw p2
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/cenc/a;->a(I)Lcom/googlecode/mp4parser/authoring/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/cenc/a;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

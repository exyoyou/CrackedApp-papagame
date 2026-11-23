.class public Lcom/byazt/vnu/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2bb,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/vnu/c$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/logging/Logger;


# instance fields
.field public final c:[B

.field public n:Lcom/byazt/vnu/c$c;

.field public final tt:Lcom/byazt/vnu/x;

.field public final uj:Lcom/byazt/vnu/n;

.field public final ve:Lcom/byazt/vnu/sp;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/byazt/vnu/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/byazt/vnu/c;->a:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>([BLcom/byazt/vnu/x;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/vnu/n;

    .line 5
    .line 6
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/byazt/vnu/n;-><init>(Ljava/io/InputStream;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/byazt/vnu/c;->uj:Lcom/byazt/vnu/n;

    .line 15
    .line 16
    new-instance v1, Lcom/byazt/vnu/sp;

    .line 17
    .line 18
    new-instance v2, Lcom/byazt/vnu/i;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Lcom/byazt/vnu/i;-><init>(Lcom/byazt/vnu/n;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v2}, Lcom/byazt/vnu/sp;-><init>(Lcom/byazt/vnu/i;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/byazt/vnu/c;->c:[B

    .line 29
    .line 30
    iput-object p2, p0, Lcom/byazt/vnu/c;->tt:Lcom/byazt/vnu/x;

    .line 31
    .line 32
    return-void
.end method

.method private a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x201

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/byazt/vnu/c;->tt(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/vnu/a;->readUnsignedByte()I

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/vnu/a;->readByte()B

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    invoke-virtual {v0, v1}, Lcom/byazt/vnu/sp;->skipBytes(I)I

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/byazt/vnu/a;->readInt()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v1, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/byazt/vnu/a;->readInt()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-direct {p0}, Lcom/byazt/vnu/c;->da()V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/byazt/vnu/c;->n:Lcom/byazt/vnu/c$c;

    .line 38
    .line 39
    iget v2, v2, Lcom/byazt/vnu/c$c;->uj:I

    .line 40
    .line 41
    add-int/2addr v2, v1

    .line 42
    mul-int/lit8 v1, v0, 0x4

    .line 43
    .line 44
    sub-int/2addr v2, v1

    .line 45
    iget-object v1, p0, Lcom/byazt/vnu/c;->uj:Lcom/byazt/vnu/n;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/byazt/vnu/n;->c()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eq v2, v1, :cond_0

    .line 52
    .line 53
    sget-object v1, Lcom/byazt/vnu/c;->a:Ljava/util/logging/Logger;

    .line 54
    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v4, "Invalid data detected. Skipping: "

    .line 58
    .line 59
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v4, p0, Lcom/byazt/vnu/c;->uj:Lcom/byazt/vnu/n;

    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/byazt/vnu/n;->c()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    sub-int v4, v2, v4

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v4, " byte(s)"

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 86
    .line 87
    iget-object v3, p0, Lcom/byazt/vnu/c;->uj:Lcom/byazt/vnu/n;

    .line 88
    .line 89
    invoke-virtual {v3}, Lcom/byazt/vnu/n;->c()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    sub-int/2addr v2, v3

    .line 94
    invoke-virtual {v1, v2}, Lcom/byazt/vnu/sp;->skipBytes(I)I

    .line 95
    .line 96
    .line 97
    :cond_0
    iget-object v1, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 98
    .line 99
    invoke-virtual {v1, v0}, Lcom/byazt/vnu/sp;->c(I)[I

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    new-instance v1, Ljava/util/HashSet;

    .line 104
    .line 105
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 106
    .line 107
    .line 108
    array-length v2, v0

    .line 109
    const/4 v3, 0x0

    .line 110
    :goto_0
    if-ge v3, v2, :cond_2

    .line 111
    .line 112
    aget v4, v0, v3

    .line 113
    .line 114
    const/4 v5, -0x1

    .line 115
    if-eq v4, v5, :cond_1

    .line 116
    .line 117
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-nez v5, :cond_1

    .line 126
    .line 127
    invoke-direct {p0}, Lcom/byazt/vnu/c;->sp()V

    .line 128
    .line 129
    .line 130
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_2
    return-void
.end method

.method private c(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    add-int/lit8 v1, p1, -0x1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    invoke-virtual {p1}, Lcom/byazt/vnu/a;->readByte()B

    move-result p1

    int-to-short p1, p1

    if-eqz p1, :cond_0

    int-to-char p1, p1

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v1

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    invoke-virtual {p1, v1}, Lcom/byazt/vnu/sp;->skipBytes(I)I

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private da()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/vnu/a;->readInt()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1c

    .line 8
    .line 9
    if-lt v0, v1, :cond_8

    .line 10
    .line 11
    iget-object v2, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/byazt/vnu/a;->readShort()S

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/byazt/vnu/a;->readShort()S

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/byazt/vnu/a;->readByte()B

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/byazt/vnu/a;->readByte()B

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/byazt/vnu/a;->readByte()B

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/byazt/vnu/a;->readByte()B

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/byazt/vnu/a;->readByte()B

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/byazt/vnu/a;->readByte()B

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/byazt/vnu/a;->readUnsignedShort()I

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/byazt/vnu/a;->readByte()B

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/byazt/vnu/a;->readByte()B

    .line 64
    .line 65
    .line 66
    iget-object v2, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/byazt/vnu/a;->readByte()B

    .line 69
    .line 70
    .line 71
    iget-object v2, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 72
    .line 73
    const/4 v3, 0x1

    .line 74
    invoke-virtual {v2, v3}, Lcom/byazt/vnu/sp;->skipBytes(I)I

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/byazt/vnu/a;->readShort()S

    .line 80
    .line 81
    .line 82
    iget-object v2, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/byazt/vnu/a;->readShort()S

    .line 85
    .line 86
    .line 87
    iget-object v2, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/byazt/vnu/a;->readShort()S

    .line 90
    .line 91
    .line 92
    iget-object v2, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 93
    .line 94
    const/4 v4, 0x2

    .line 95
    invoke-virtual {v2, v4}, Lcom/byazt/vnu/sp;->skipBytes(I)I

    .line 96
    .line 97
    .line 98
    const/16 v2, 0x20

    .line 99
    .line 100
    if-lt v0, v2, :cond_0

    .line 101
    .line 102
    iget-object v1, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/byazt/vnu/a;->readByte()B

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/byazt/vnu/a;->readByte()B

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/byazt/vnu/a;->readShort()S

    .line 115
    .line 116
    .line 117
    const/16 v1, 0x20

    .line 118
    .line 119
    :cond_0
    const/16 v2, 0x24

    .line 120
    .line 121
    if-lt v0, v2, :cond_1

    .line 122
    .line 123
    iget-object v1, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/byazt/vnu/a;->readShort()S

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/byazt/vnu/a;->readShort()S

    .line 131
    .line 132
    .line 133
    const/16 v1, 0x24

    .line 134
    .line 135
    :cond_1
    const/4 v2, 0x4

    .line 136
    const/16 v5, 0x30

    .line 137
    .line 138
    if-lt v0, v5, :cond_2

    .line 139
    .line 140
    invoke-direct {p0, v2}, Lcom/byazt/vnu/c;->c(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    .line 145
    .line 146
    .line 147
    const/16 v1, 0x8

    .line 148
    .line 149
    invoke-direct {p0, v1}, Lcom/byazt/vnu/c;->c(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    .line 154
    .line 155
    .line 156
    const/16 v1, 0x30

    .line 157
    .line 158
    :cond_2
    const/16 v5, 0x34

    .line 159
    .line 160
    if-lt v0, v5, :cond_3

    .line 161
    .line 162
    iget-object v1, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 163
    .line 164
    invoke-virtual {v1}, Lcom/byazt/vnu/a;->readByte()B

    .line 165
    .line 166
    .line 167
    iget-object v1, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 168
    .line 169
    invoke-virtual {v1}, Lcom/byazt/vnu/a;->readByte()B

    .line 170
    .line 171
    .line 172
    iget-object v1, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 173
    .line 174
    invoke-virtual {v1, v4}, Lcom/byazt/vnu/sp;->skipBytes(I)I

    .line 175
    .line 176
    .line 177
    const/16 v1, 0x34

    .line 178
    .line 179
    :cond_3
    const/16 v5, 0x38

    .line 180
    .line 181
    if-lt v0, v5, :cond_4

    .line 182
    .line 183
    iget-object v1, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 184
    .line 185
    invoke-virtual {v1, v2}, Lcom/byazt/vnu/sp;->skipBytes(I)I

    .line 186
    .line 187
    .line 188
    const/16 v1, 0x38

    .line 189
    .line 190
    :cond_4
    add-int/lit8 v2, v0, -0x38

    .line 191
    .line 192
    if-lez v2, :cond_6

    .line 193
    .line 194
    new-array v6, v2, [B

    .line 195
    .line 196
    add-int/2addr v1, v2

    .line 197
    iget-object v2, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 198
    .line 199
    invoke-virtual {v2, v6}, Lcom/byazt/vnu/a;->readFully([B)V

    .line 200
    .line 201
    .line 202
    new-instance v2, Ljava/math/BigInteger;

    .line 203
    .line 204
    invoke-direct {v2, v3, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 205
    .line 206
    .line 207
    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 208
    .line 209
    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    const/4 v7, 0x0

    .line 214
    if-eqz v6, :cond_5

    .line 215
    .line 216
    sget-object v2, Lcom/byazt/vnu/c;->a:Ljava/util/logging/Logger;

    .line 217
    .line 218
    new-array v3, v3, [Ljava/lang/Object;

    .line 219
    .line 220
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    aput-object v4, v3, v7

    .line 225
    .line 226
    const-string v4, "Config flags size > %d, but exceeding bytes are all zero, so it should be ok."

    .line 227
    .line 228
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    goto :goto_0

    .line 236
    :cond_5
    sget-object v6, Lcom/byazt/vnu/c;->a:Ljava/util/logging/Logger;

    .line 237
    .line 238
    const/4 v8, 0x3

    .line 239
    new-array v8, v8, [Ljava/lang/Object;

    .line 240
    .line 241
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    aput-object v5, v8, v7

    .line 246
    .line 247
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    aput-object v5, v8, v3

    .line 252
    .line 253
    aput-object v2, v8, v4

    .line 254
    .line 255
    const-string v2, "Config flags size > %d. Size = %d. Exceeding bytes: 0x%X."

    .line 256
    .line 257
    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    invoke-virtual {v6, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    :cond_6
    :goto_0
    sub-int/2addr v0, v1

    .line 265
    if-lez v0, :cond_7

    .line 266
    .line 267
    iget-object v1, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 268
    .line 269
    invoke-virtual {v1, v0}, Lcom/byazt/vnu/sp;->skipBytes(I)I

    .line 270
    .line 271
    .line 272
    :cond_7
    return-void

    .line 273
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    .line 274
    .line 275
    const-string v1, "Config size < 28"

    .line 276
    .line 277
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw v0
.end method

.method private i()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/byazt/vnu/sp;->c(S)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/byazt/vnu/sp;->c(B)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/byazt/vnu/a;->readByte()B

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/byazt/vnu/sl;->c(Lcom/byazt/vnu/sp;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget-object v2, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/byazt/vnu/a;->readInt()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x1

    .line 33
    if-ne v0, v3, :cond_0

    .line 34
    .line 35
    iget-object v3, p0, Lcom/byazt/vnu/c;->c:[B

    .line 36
    .line 37
    iget-object v4, p0, Lcom/byazt/vnu/c;->tt:Lcom/byazt/vnu/x;

    .line 38
    .line 39
    invoke-static {v3, v2, v1, v4}, Lcom/byazt/vnu/sl;->c([BIILcom/byazt/vnu/x;)I

    .line 40
    .line 41
    .line 42
    :cond_0
    const/4 v3, 0x2

    .line 43
    if-ne v0, v3, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/byazt/vnu/c;->c:[B

    .line 46
    .line 47
    iget-object v3, p0, Lcom/byazt/vnu/c;->tt:Lcom/byazt/vnu/x;

    .line 48
    .line 49
    invoke-static {v0, v2, v1, v3}, Lcom/byazt/vnu/sl;->c([BIILcom/byazt/vnu/x;)I

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method private n()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x202

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/byazt/vnu/c;->tt(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/vnu/a;->readUnsignedByte()I

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    invoke-virtual {v0, v1}, Lcom/byazt/vnu/sp;->skipBytes(I)I

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/byazt/vnu/a;->readInt()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 24
    .line 25
    mul-int/lit8 v0, v0, 0x4

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/byazt/vnu/sp;->skipBytes(I)I

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private sl()Lcom/byazt/vnu/c$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/vnu/c;->uj:Lcom/byazt/vnu/n;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/vnu/c$c;->c(Lcom/byazt/vnu/sp;Lcom/byazt/vnu/n;)Lcom/byazt/vnu/c$c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/byazt/vnu/c;->n:Lcom/byazt/vnu/c$c;

    .line 10
    .line 11
    return-object v0
.end method

.method private sp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/vnu/a;->readShort()S

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/vnu/a;->readShort()S

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/byazt/vnu/a;->readInt()I

    .line 18
    .line 19
    .line 20
    and-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/byazt/vnu/c;->i()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-direct {p0}, Lcom/byazt/vnu/c;->x()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 33
    .line 34
    const-string v1, "Entry size is under 0 bytes."

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method

.method private tt()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x200

    .line 1
    invoke-direct {p0, v0}, Lcom/byazt/vnu/c;->tt(I)V

    .line 2
    iget-object v0, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    invoke-virtual {v0}, Lcom/byazt/vnu/a;->readInt()I

    .line 3
    iget-object v0, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/byazt/vnu/sp;->skipBytes(I)I

    .line 4
    iget-object v0, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    invoke-virtual {v0}, Lcom/byazt/vnu/sp;->c()V

    .line 5
    iget-object v0, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    invoke-virtual {v0}, Lcom/byazt/vnu/sp;->c()V

    .line 6
    iget-object v0, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    invoke-virtual {v0}, Lcom/byazt/vnu/sp;->c()V

    .line 7
    iget-object v0, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    invoke-virtual {v0}, Lcom/byazt/vnu/sp;->c()V

    .line 8
    iget-object v0, p0, Lcom/byazt/vnu/c;->n:Lcom/byazt/vnu/c$c;

    iget v0, v0, Lcom/byazt/vnu/c$c;->tt:I

    const/16 v1, 0x120

    if-ne v0, v1, :cond_1

    .line 9
    iget-object v0, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    invoke-virtual {v0}, Lcom/byazt/vnu/a;->readInt()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "don\'t support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    invoke-static {v0}, Lcom/byazt/vnu/t;->c(Lcom/byazt/vnu/sp;)V

    .line 12
    iget-object v0, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    invoke-static {v0}, Lcom/byazt/vnu/t;->c(Lcom/byazt/vnu/sp;)V

    .line 13
    invoke-direct {p0}, Lcom/byazt/vnu/c;->sl()Lcom/byazt/vnu/c$c;

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    .line 14
    iget-object v1, p0, Lcom/byazt/vnu/c;->n:Lcom/byazt/vnu/c$c;

    iget-short v1, v1, Lcom/byazt/vnu/c$c;->c:S

    const/16 v2, 0x202

    if-eq v1, v2, :cond_3

    const/16 v2, 0x203

    if-eq v1, v2, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 15
    :cond_2
    invoke-direct {p0}, Lcom/byazt/vnu/c;->ve()V

    goto :goto_1

    .line 16
    :cond_3
    invoke-direct {p0}, Lcom/byazt/vnu/c;->uj()V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private tt(I)V
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/byazt/vnu/c;->n:Lcom/byazt/vnu/c$c;

    iget-short v0, v0, Lcom/byazt/vnu/c$c;->c:S

    if-ne v0, p1, :cond_0

    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    iget-object p1, p0, Lcom/byazt/vnu/c;->n:Lcom/byazt/vnu/c$c;

    iget-short p1, p1, Lcom/byazt/vnu/c$c;->c:S

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "Invalid chunk type: expected=0x%08x, got=0x%08x"

    .line 20
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private uj()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/byazt/vnu/c;->n()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/byazt/vnu/c;->sl()Lcom/byazt/vnu/c$c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-short v0, v0, Lcom/byazt/vnu/c$c;->c:S

    .line 9
    .line 10
    :goto_0
    const/16 v1, 0x202

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/byazt/vnu/c;->n()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/byazt/vnu/c;->sl()Lcom/byazt/vnu/c$c;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-short v0, v0, Lcom/byazt/vnu/c$c;->c:S

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    :goto_1
    const/16 v1, 0x201

    .line 25
    .line 26
    if-ne v0, v1, :cond_2

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/byazt/vnu/c;->a()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/byazt/vnu/c;->uj:Lcom/byazt/vnu/n;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/byazt/vnu/n;->c()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v1, p0, Lcom/byazt/vnu/c;->n:Lcom/byazt/vnu/c$c;

    .line 38
    .line 39
    iget v1, v1, Lcom/byazt/vnu/c$c;->n:I

    .line 40
    .line 41
    if-ge v0, v1, :cond_1

    .line 42
    .line 43
    sget-object v0, Lcom/byazt/vnu/c;->a:Ljava/util/logging/Logger;

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v2, "Unknown data detected. Skipping: "

    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/byazt/vnu/c;->n:Lcom/byazt/vnu/c$c;

    .line 53
    .line 54
    iget v2, v2, Lcom/byazt/vnu/c$c;->n:I

    .line 55
    .line 56
    iget-object v3, p0, Lcom/byazt/vnu/c;->uj:Lcom/byazt/vnu/n;

    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/byazt/vnu/n;->c()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    sub-int/2addr v2, v3

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, " byte(s)"

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/byazt/vnu/c;->uj:Lcom/byazt/vnu/n;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/byazt/vnu/c;->n:Lcom/byazt/vnu/c$c;

    .line 81
    .line 82
    iget v1, v1, Lcom/byazt/vnu/c$c;->n:I

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/byazt/vnu/n;->c()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    sub-int/2addr v1, v2

    .line 89
    int-to-long v1, v1

    .line 90
    invoke-virtual {v0, v1, v2}, Lcom/byazt/vnu/n;->skip(J)J

    .line 91
    .line 92
    .line 93
    :cond_1
    invoke-direct {p0}, Lcom/byazt/vnu/c;->sl()Lcom/byazt/vnu/c$c;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-short v0, v0, Lcom/byazt/vnu/c$c;->c:S

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    return-void
.end method

.method private ve()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x203

    .line 1
    invoke-direct {p0, v0}, Lcom/byazt/vnu/c;->tt(I)V

    .line 2
    iget-object v0, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    invoke-virtual {v0}, Lcom/byazt/vnu/a;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    invoke-virtual {v2}, Lcom/byazt/vnu/a;->readInt()I

    .line 4
    iget-object v2, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Lcom/byazt/vnu/sp;->skipBytes(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/byazt/vnu/c;->sl()Lcom/byazt/vnu/c$c;

    move-result-object v0

    iget-short v0, v0, Lcom/byazt/vnu/c$c;->c:S

    const/16 v1, 0x201

    if-ne v0, v1, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/byazt/vnu/c;->uj()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private ve(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lcom/byazt/vnu/c;->sl()Lcom/byazt/vnu/c$c;

    .line 8
    invoke-direct {p0, p1}, Lcom/byazt/vnu/c;->tt(I)V

    return-void
.end method

.method private x()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/vnu/sl;->c(Lcom/byazt/vnu/sp;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/byazt/vnu/a;->readInt()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/byazt/vnu/c;->c:[B

    .line 14
    .line 15
    iget-object v3, p0, Lcom/byazt/vnu/c;->tt:Lcom/byazt/vnu/x;

    .line 16
    .line 17
    invoke-static {v2, v1, v0, v3}, Lcom/byazt/vnu/sl;->c([BIILcom/byazt/vnu/x;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/byazt/vnu/a;->readInt()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 27
    :goto_0
    if-ge v1, v0, :cond_0

    .line 28
    .line 29
    iget-object v2, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 30
    .line 31
    invoke-static {v2}, Lcom/byazt/vnu/sl;->c(Lcom/byazt/vnu/sp;)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iget-object v3, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/byazt/vnu/a;->readInt()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    iget-object v4, p0, Lcom/byazt/vnu/c;->c:[B

    .line 42
    .line 43
    iget-object v5, p0, Lcom/byazt/vnu/c;->tt:Lcom/byazt/vnu/x;

    .line 44
    .line 45
    invoke-static {v4, v3, v2, v5}, Lcom/byazt/vnu/sl;->c([BIILcom/byazt/vnu/x;)I

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/byazt/vnu/c;->i()V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/byazt/vnu/c;->ve(I)V

    .line 2
    iget-object v0, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    invoke-virtual {v0}, Lcom/byazt/vnu/a;->readInt()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/byazt/vnu/c;->ve:Lcom/byazt/vnu/sp;

    invoke-static {v1}, Lcom/byazt/vnu/t;->c(Lcom/byazt/vnu/sp;)V

    .line 4
    invoke-direct {p0}, Lcom/byazt/vnu/c;->sl()Lcom/byazt/vnu/c$c;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/byazt/vnu/c;->tt()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

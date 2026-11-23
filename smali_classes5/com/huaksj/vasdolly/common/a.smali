.class public Lcom/huaksj/vasdolly/common/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static g:I = 0x20000000


# instance fields
.field private a:Z

.field public b:J

.field public c:Lcom/huaksj/vasdolly/common/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huaksj/vasdolly/common/c<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/huaksj/vasdolly/common/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huaksj/vasdolly/common/c<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/huaksj/vasdolly/common/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huaksj/vasdolly/common/c<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/huaksj/vasdolly/common/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huaksj/vasdolly/common/c<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/huaksj/vasdolly/common/a;->a:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huaksj/vasdolly/common/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huaksj/vasdolly/common/a;->f:Lcom/huaksj/vasdolly/common/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/huaksj/vasdolly/common/c;->b()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/huaksj/vasdolly/common/a;->f:Lcom/huaksj/vasdolly/common/c;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/huaksj/vasdolly/common/c;->c()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/Long;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-static {v0, v1, v2}, Lcom/huaksj/vasdolly/common/apk/a;->f(Ljava/nio/ByteBuffer;J)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    iget-object v2, p0, Lcom/huaksj/vasdolly/common/a;->e:Lcom/huaksj/vasdolly/common/c;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/huaksj/vasdolly/common/c;->c()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/Long;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    cmp-long v4, v0, v2

    .line 38
    .line 39
    if-nez v4, :cond_0

    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    .line 43
    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v4, "CentralDirOffset mismatch , EocdCentralDirOffset : "

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, ", centralDirOffset : "

    .line 58
    .line 59
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/huaksj/vasdolly/common/a;->e:Lcom/huaksj/vasdolly/common/c;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/huaksj/vasdolly/common/c;->c()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v2
.end method

.method public b()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huaksj/vasdolly/common/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/huaksj/vasdolly/common/a;->a:Z

    .line 2
    .line 3
    const-string v1, "ApkSectionInfo paramters is not valid : "

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/huaksj/vasdolly/common/a;->c:Lcom/huaksj/vasdolly/common/c;

    .line 8
    .line 9
    if-eqz v2, :cond_4

    .line 10
    .line 11
    :cond_0
    iget-object v2, p0, Lcom/huaksj/vasdolly/common/a;->d:Lcom/huaksj/vasdolly/common/c;

    .line 12
    .line 13
    if-eqz v2, :cond_4

    .line 14
    .line 15
    iget-object v2, p0, Lcom/huaksj/vasdolly/common/a;->e:Lcom/huaksj/vasdolly/common/c;

    .line 16
    .line 17
    if-eqz v2, :cond_4

    .line 18
    .line 19
    iget-object v2, p0, Lcom/huaksj/vasdolly/common/a;->f:Lcom/huaksj/vasdolly/common/c;

    .line 20
    .line 21
    if-eqz v2, :cond_4

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/huaksj/vasdolly/common/a;->c:Lcom/huaksj/vasdolly/common/c;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/huaksj/vasdolly/common/c;->c()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Long;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    const-wide/16 v4, 0x0

    .line 38
    .line 39
    cmp-long v0, v2, v4

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Lcom/huaksj/vasdolly/common/a;->c:Lcom/huaksj/vasdolly/common/c;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/huaksj/vasdolly/common/c;->b()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    int-to-long v2, v0

    .line 56
    iget-object v0, p0, Lcom/huaksj/vasdolly/common/a;->d:Lcom/huaksj/vasdolly/common/c;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/huaksj/vasdolly/common/c;->c()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljava/lang/Long;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 65
    .line 66
    .line 67
    move-result-wide v4

    .line 68
    cmp-long v0, v2, v4

    .line 69
    .line 70
    if-nez v0, :cond_2

    .line 71
    .line 72
    :cond_1
    iget-object v0, p0, Lcom/huaksj/vasdolly/common/a;->d:Lcom/huaksj/vasdolly/common/c;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/huaksj/vasdolly/common/c;->b()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    int-to-long v2, v0

    .line 85
    iget-object v0, p0, Lcom/huaksj/vasdolly/common/a;->d:Lcom/huaksj/vasdolly/common/c;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/huaksj/vasdolly/common/c;->c()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Ljava/lang/Long;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 94
    .line 95
    .line 96
    move-result-wide v4

    .line 97
    add-long/2addr v2, v4

    .line 98
    iget-object v0, p0, Lcom/huaksj/vasdolly/common/a;->e:Lcom/huaksj/vasdolly/common/c;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/huaksj/vasdolly/common/c;->c()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Ljava/lang/Long;

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 107
    .line 108
    .line 109
    move-result-wide v4

    .line 110
    cmp-long v0, v2, v4

    .line 111
    .line 112
    if-nez v0, :cond_2

    .line 113
    .line 114
    iget-object v0, p0, Lcom/huaksj/vasdolly/common/a;->e:Lcom/huaksj/vasdolly/common/c;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/huaksj/vasdolly/common/c;->b()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    int-to-long v2, v0

    .line 127
    iget-object v0, p0, Lcom/huaksj/vasdolly/common/a;->e:Lcom/huaksj/vasdolly/common/c;

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/huaksj/vasdolly/common/c;->c()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Ljava/lang/Long;

    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 136
    .line 137
    .line 138
    move-result-wide v4

    .line 139
    add-long/2addr v2, v4

    .line 140
    iget-object v0, p0, Lcom/huaksj/vasdolly/common/a;->f:Lcom/huaksj/vasdolly/common/c;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/huaksj/vasdolly/common/c;->c()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Ljava/lang/Long;

    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 149
    .line 150
    .line 151
    move-result-wide v4

    .line 152
    cmp-long v0, v2, v4

    .line 153
    .line 154
    if-nez v0, :cond_2

    .line 155
    .line 156
    iget-object v0, p0, Lcom/huaksj/vasdolly/common/a;->f:Lcom/huaksj/vasdolly/common/c;

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/huaksj/vasdolly/common/c;->b()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    int-to-long v2, v0

    .line 169
    iget-object v0, p0, Lcom/huaksj/vasdolly/common/a;->f:Lcom/huaksj/vasdolly/common/c;

    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/huaksj/vasdolly/common/c;->c()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    check-cast v0, Ljava/lang/Long;

    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 178
    .line 179
    .line 180
    move-result-wide v4

    .line 181
    add-long/2addr v2, v4

    .line 182
    iget-wide v4, p0, Lcom/huaksj/vasdolly/common/a;->b:J

    .line 183
    .line 184
    cmp-long v0, v2, v4

    .line 185
    .line 186
    if-nez v0, :cond_2

    .line 187
    .line 188
    const/4 v0, 0x1

    .line 189
    goto :goto_0

    .line 190
    :cond_2
    const/4 v0, 0x0

    .line 191
    :goto_0
    if-eqz v0, :cond_3

    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/huaksj/vasdolly/common/a;->a()V

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 198
    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Lcom/huaksj/vasdolly/common/a;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw v0

    .line 222
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    .line 223
    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0}, Lcom/huaksj/vasdolly/common/a;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    throw v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/huaksj/vasdolly/common/a;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huaksj/vasdolly/common/a;->c:Lcom/huaksj/vasdolly/common/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/huaksj/vasdolly/common/c;->b()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/huaksj/vasdolly/common/a;->d:Lcom/huaksj/vasdolly/common/c;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/huaksj/vasdolly/common/c;->b()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/huaksj/vasdolly/common/a;->e:Lcom/huaksj/vasdolly/common/c;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/huaksj/vasdolly/common/c;->b()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object v0, p0, Lcom/huaksj/vasdolly/common/a;->f:Lcom/huaksj/vasdolly/common/c;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/huaksj/vasdolly/common/c;->b()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 51
    .line 52
    .line 53
    :cond_3
    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "lowMemory : "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/huaksj/vasdolly/common/a;->a:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "\n apkSize : "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Lcom/huaksj/vasdolly/common/a;->b:J

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, "\n contentEntry : "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/huaksj/vasdolly/common/a;->c:Lcom/huaksj/vasdolly/common/c;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, "\n schemeV2Block : "

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/huaksj/vasdolly/common/a;->d:Lcom/huaksj/vasdolly/common/c;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, "\n centralDir : "

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/huaksj/vasdolly/common/a;->e:Lcom/huaksj/vasdolly/common/c;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, "\n eocd : "

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/huaksj/vasdolly/common/a;->f:Lcom/huaksj/vasdolly/common/c;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method

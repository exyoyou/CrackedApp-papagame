.class Lcom/join/mgps/Util/x1$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/common/http/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/x1$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/Util/x1$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/x1$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/x1$a$a;->a:Lcom/join/mgps/Util/x1$a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "checkPayGamePay::onFailed"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "xxxxx"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/Util/x1$a$a;->a:Lcom/join/mgps/Util/x1$a;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/join/mgps/Util/x1$a;->d:Lcom/join/mgps/Util/x1$c;

    .line 26
    .line 27
    const/4 v0, -0x1

    .line 28
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/x1$c;->d(I)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/Util/x1$a$a;->a:Lcom/join/mgps/Util/x1$a;

    .line 32
    .line 33
    iget-object v0, p1, Lcom/join/mgps/Util/x1$a;->e:Lcom/join/mgps/Util/x1$b;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/join/mgps/Util/x1$a;->d:Lcom/join/mgps/Util/x1$c;

    .line 36
    .line 37
    invoke-interface {v0, p1}, Lcom/join/mgps/Util/x1$b;->a(Lcom/join/mgps/Util/x1$c;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "checkPayGamePay::onSuccess"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "xxxxx"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    check-cast p1, Lcom/join/mgps/dto/CommentResponse;

    .line 24
    .line 25
    const/4 v0, -0x1

    .line 26
    if-eqz p1, :cond_5

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_3

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcom/join/mgps/dto/PayGameCheckResult;

    .line 39
    .line 40
    const/4 v0, 0x2

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGameCheckResult;->isState()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/Util/x1$a$a;->a:Lcom/join/mgps/Util/x1$a;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/join/mgps/Util/x1$a;->d:Lcom/join/mgps/Util/x1$c;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/x1$c;->d(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/Util/x1$a$a;->a:Lcom/join/mgps/Util/x1$a;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/join/mgps/Util/x1$a;->d:Lcom/join/mgps/Util/x1$c;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGameCheckResult;->getExpireTime()J

    .line 62
    .line 63
    .line 64
    move-result-wide v2

    .line 65
    invoke-virtual {v0, v2, v3}, Lcom/join/mgps/Util/x1$c;->f(J)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/mgps/Util/x1$a$a;->a:Lcom/join/mgps/Util/x1$a;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/join/mgps/Util/x1$a;->d:Lcom/join/mgps/Util/x1$c;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/join/mgps/Util/x1$c;->c()J

    .line 73
    .line 74
    .line 75
    move-result-wide v2

    .line 76
    const-wide/16 v4, 0x0

    .line 77
    .line 78
    cmp-long v0, v2, v4

    .line 79
    .line 80
    if-nez v0, :cond_0

    .line 81
    .line 82
    iget-object v0, p0, Lcom/join/mgps/Util/x1$a$a;->a:Lcom/join/mgps/Util/x1$a;

    .line 83
    .line 84
    iget-object v2, v0, Lcom/join/mgps/Util/x1$a;->d:Lcom/join/mgps/Util/x1$c;

    .line 85
    .line 86
    iget-object v0, v0, Lcom/join/mgps/Util/x1$a;->f:Lcom/join/mgps/Util/x1;

    .line 87
    .line 88
    invoke-static {v0}, Lcom/join/mgps/Util/x1;->a(Lcom/join/mgps/Util/x1;)J

    .line 89
    .line 90
    .line 91
    move-result-wide v3

    .line 92
    invoke-virtual {v2, v3, v4}, Lcom/join/mgps/Util/x1$c;->f(J)V

    .line 93
    .line 94
    .line 95
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/Util/x1$a$a;->a:Lcom/join/mgps/Util/x1$a;

    .line 96
    .line 97
    iget-object v0, v0, Lcom/join/mgps/Util/x1$a;->d:Lcom/join/mgps/Util/x1$c;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGameCheckResult;->getAppGameId()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/x1$c;->e(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/Util/x1$a$a;->a:Lcom/join/mgps/Util/x1$a;

    .line 108
    .line 109
    iget-object v2, v2, Lcom/join/mgps/Util/x1$a;->d:Lcom/join/mgps/Util/x1$c;

    .line 110
    .line 111
    invoke-virtual {v2, v0}, Lcom/join/mgps/Util/x1$c;->d(I)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/join/mgps/Util/x1$a$a;->a:Lcom/join/mgps/Util/x1$a;

    .line 115
    .line 116
    iget-object v0, v0, Lcom/join/mgps/Util/x1$a;->d:Lcom/join/mgps/Util/x1$c;

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGameCheckResult;->getAppGameId()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/x1$c;->e(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/Util/x1$a$a;->a:Lcom/join/mgps/Util/x1$a;

    .line 127
    .line 128
    iget-object v2, v2, Lcom/join/mgps/Util/x1$a;->d:Lcom/join/mgps/Util/x1$c;

    .line 129
    .line 130
    invoke-virtual {v2, v0}, Lcom/join/mgps/Util/x1$c;->d(I)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/join/mgps/Util/x1$a$a;->a:Lcom/join/mgps/Util/x1$a;

    .line 134
    .line 135
    iget-object v0, v0, Lcom/join/mgps/Util/x1$a;->d:Lcom/join/mgps/Util/x1$c;

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGameCheckResult;->getAppGameId()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/x1$c;->e(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    const v2, 0x186a6

    .line 150
    .line 151
    .line 152
    if-ne p1, v2, :cond_4

    .line 153
    .line 154
    iget-object p1, p0, Lcom/join/mgps/Util/x1$a$a;->a:Lcom/join/mgps/Util/x1$a;

    .line 155
    .line 156
    iget-object p1, p1, Lcom/join/mgps/Util/x1$a;->d:Lcom/join/mgps/Util/x1$c;

    .line 157
    .line 158
    const/4 v0, 0x3

    .line 159
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/x1$c;->d(I)V

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/Util/x1$a$a;->a:Lcom/join/mgps/Util/x1$a;

    .line 164
    .line 165
    iget-object p1, p1, Lcom/join/mgps/Util/x1$a;->d:Lcom/join/mgps/Util/x1$c;

    .line 166
    .line 167
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/x1$c;->d(I)V

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/Util/x1$a$a;->a:Lcom/join/mgps/Util/x1$a;

    .line 172
    .line 173
    iget-object p1, p1, Lcom/join/mgps/Util/x1$a;->d:Lcom/join/mgps/Util/x1$c;

    .line 174
    .line 175
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/x1$c;->d(I)V

    .line 176
    .line 177
    .line 178
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    const-string v0, "checkPayGamePay::original result="

    .line 184
    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/join/mgps/Util/x1$a$a;->a:Lcom/join/mgps/Util/x1$a;

    .line 189
    .line 190
    iget-object v0, v0, Lcom/join/mgps/Util/x1$a;->d:Lcom/join/mgps/Util/x1$c;

    .line 191
    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-static {v1, p1}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->defaultAll()Lcom/join/android/app/common/utils/JsonMapper;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    iget-object v0, p0, Lcom/join/mgps/Util/x1$a$a;->a:Lcom/join/mgps/Util/x1$a;

    .line 207
    .line 208
    iget-object v0, v0, Lcom/join/mgps/Util/x1$a;->d:Lcom/join/mgps/Util/x1$c;

    .line 209
    .line 210
    invoke-virtual {p1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    const-string v2, "rs="

    .line 220
    .line 221
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-static {v1, p1}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    iget-object p1, p0, Lcom/join/mgps/Util/x1$a$a;->a:Lcom/join/mgps/Util/x1$a;

    .line 235
    .line 236
    iget-object v0, p1, Lcom/join/mgps/Util/x1$a;->e:Lcom/join/mgps/Util/x1$b;

    .line 237
    .line 238
    iget-object p1, p1, Lcom/join/mgps/Util/x1$a;->d:Lcom/join/mgps/Util/x1$c;

    .line 239
    .line 240
    invoke-interface {v0, p1}, Lcom/join/mgps/Util/x1$b;->a(Lcom/join/mgps/Util/x1$c;)V

    .line 241
    .line 242
    .line 243
    return-void
.end method

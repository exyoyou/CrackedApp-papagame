.class public Lcom/alibaba/fastjson/serializer/i1;
.super Lcom/alibaba/fastjson/serializer/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/serializer/i1$a;
    }
.end annotation


# instance fields
.field private f:Ljava/lang/String;

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field private l:Lcom/alibaba/fastjson/serializer/i1$a;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/util/e;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/h0;-><init>(Lcom/alibaba/fastjson/util/e;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/i1;->g:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/i1;->h:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/i1;->i:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/i1;->j:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/i1;->k:Z

    .line 14
    .line 15
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/util/e;->g(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 22
    .line 23
    if-eqz p1, :cond_6

    .line 24
    .line 25
    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/i1;->f:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/i1;->f:Ljava/lang/String;

    .line 43
    .line 44
    :cond_0
    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    array-length v1, p1

    .line 49
    :goto_0
    if-ge v0, v1, :cond_6

    .line 50
    .line 51
    aget-object v2, p1, v0

    .line 52
    .line 53
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 54
    .line 55
    const/4 v4, 0x1

    .line 56
    if-ne v2, v3, :cond_1

    .line 57
    .line 58
    iput-boolean v4, p0, Lcom/alibaba/fastjson/serializer/i1;->g:Z

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 62
    .line 63
    if-ne v2, v3, :cond_2

    .line 64
    .line 65
    iput-boolean v4, p0, Lcom/alibaba/fastjson/serializer/i1;->h:Z

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 69
    .line 70
    if-ne v2, v3, :cond_3

    .line 71
    .line 72
    iput-boolean v4, p0, Lcom/alibaba/fastjson/serializer/i1;->i:Z

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 76
    .line 77
    if-ne v2, v3, :cond_4

    .line 78
    .line 79
    iput-boolean v4, p0, Lcom/alibaba/fastjson/serializer/i1;->j:Z

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 83
    .line 84
    if-ne v2, v3, :cond_5

    .line 85
    .line 86
    iput-boolean v4, p0, Lcom/alibaba/fastjson/serializer/i1;->k:Z

    .line 87
    .line 88
    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_6
    return-void
.end method


# virtual methods
.method public g(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/h0;->f(Lcom/alibaba/fastjson/serializer/v0;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/i1;->h(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public h(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/i1;->f:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson/serializer/v0;->R(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/i1;->l:Lcom/alibaba/fastjson/serializer/i1$a;

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/h0;->a:Lcom/alibaba/fastjson/util/e;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/v0;->o(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/j1;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Lcom/alibaba/fastjson/serializer/i1$a;

    .line 31
    .line 32
    invoke-direct {v2, v1, v0}, Lcom/alibaba/fastjson/serializer/i1$a;-><init>(Lcom/alibaba/fastjson/serializer/j1;Ljava/lang/Class;)V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, Lcom/alibaba/fastjson/serializer/i1;->l:Lcom/alibaba/fastjson/serializer/i1$a;

    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/i1;->l:Lcom/alibaba/fastjson/serializer/i1$a;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/h0;->a:Lcom/alibaba/fastjson/util/e;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/e;->q()I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-nez p2, :cond_7

    .line 46
    .line 47
    iget-boolean p2, p0, Lcom/alibaba/fastjson/serializer/i1;->g:Z

    .line 48
    .line 49
    if-eqz p2, :cond_3

    .line 50
    .line 51
    const-class p2, Ljava/lang/Number;

    .line 52
    .line 53
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/i1$a;->b:Ljava/lang/Class;

    .line 54
    .line 55
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_3

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/v0;->w()Lcom/alibaba/fastjson/serializer/v1;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const/16 p2, 0x30

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_3
    iget-boolean p2, p0, Lcom/alibaba/fastjson/serializer/i1;->h:Z

    .line 72
    .line 73
    if-eqz p2, :cond_4

    .line 74
    .line 75
    const-class p2, Ljava/lang/String;

    .line 76
    .line 77
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/i1$a;->b:Ljava/lang/Class;

    .line 78
    .line 79
    if-ne p2, v1, :cond_4

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/v0;->w()Lcom/alibaba/fastjson/serializer/v1;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const-string p2, "\"\""

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_4
    iget-boolean p2, p0, Lcom/alibaba/fastjson/serializer/i1;->i:Z

    .line 92
    .line 93
    if-eqz p2, :cond_5

    .line 94
    .line 95
    const-class p2, Ljava/lang/Boolean;

    .line 96
    .line 97
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/i1$a;->b:Ljava/lang/Class;

    .line 98
    .line 99
    if-ne p2, v1, :cond_5

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/v0;->w()Lcom/alibaba/fastjson/serializer/v1;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    const-string p2, "false"

    .line 106
    .line 107
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_5
    iget-boolean p2, p0, Lcom/alibaba/fastjson/serializer/i1;->j:Z

    .line 112
    .line 113
    if-eqz p2, :cond_6

    .line 114
    .line 115
    const-class p2, Ljava/util/Collection;

    .line 116
    .line 117
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/i1$a;->b:Ljava/lang/Class;

    .line 118
    .line 119
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    if-eqz p2, :cond_6

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/v0;->w()Lcom/alibaba/fastjson/serializer/v1;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    const-string p2, "[]"

    .line 130
    .line 131
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_6
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/i1$a;->a:Lcom/alibaba/fastjson/serializer/j1;

    .line 136
    .line 137
    const/4 v4, 0x0

    .line 138
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/h0;->a:Lcom/alibaba/fastjson/util/e;

    .line 139
    .line 140
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    const/4 v6, 0x0

    .line 145
    move-object v3, p1

    .line 146
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson/serializer/j1;->d(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_7
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/i1;->k:Z

    .line 151
    .line 152
    const/4 v2, 0x1

    .line 153
    if-ne v1, v2, :cond_8

    .line 154
    .line 155
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/i1$a;->b:Ljava/lang/Class;

    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_8

    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/v0;->w()Lcom/alibaba/fastjson/serializer/v1;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p2, Ljava/lang/Enum;

    .line 168
    .line 169
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/v1;->q0(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/i1$a;->b:Ljava/lang/Class;

    .line 182
    .line 183
    if-ne v1, v2, :cond_9

    .line 184
    .line 185
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/i1$a;->a:Lcom/alibaba/fastjson/serializer/j1;

    .line 186
    .line 187
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/h0;->a:Lcom/alibaba/fastjson/util/e;

    .line 188
    .line 189
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/h0;->a:Lcom/alibaba/fastjson/util/e;

    .line 194
    .line 195
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/e;->k()Ljava/lang/reflect/Type;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    move-object v3, p1

    .line 200
    move-object v4, p2

    .line 201
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson/serializer/j1;->d(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :cond_9
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/v0;->o(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/j1;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/h0;->a:Lcom/alibaba/fastjson/util/e;

    .line 210
    .line 211
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/h0;->a:Lcom/alibaba/fastjson/util/e;

    .line 216
    .line 217
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/e;->k()Ljava/lang/reflect/Type;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    move-object v3, p1

    .line 222
    move-object v4, p2

    .line 223
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson/serializer/j1;->d(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 224
    .line 225
    .line 226
    return-void
.end method

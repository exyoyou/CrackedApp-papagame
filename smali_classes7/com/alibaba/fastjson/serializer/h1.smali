.class public Lcom/alibaba/fastjson/serializer/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/j1;


# static fields
.field public static final a:Lcom/alibaba/fastjson/serializer/h1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/serializer/h1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/h1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/alibaba/fastjson/serializer/h1;->a:Lcom/alibaba/fastjson/serializer/h1;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final d(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v7, p1

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->w()Lcom/alibaba/fastjson/serializer/v1;

    .line 6
    .line 7
    .line 8
    move-result-object v8

    .line 9
    move-object v9, v0

    .line 10
    check-cast v9, [Ljava/lang/Object;

    .line 11
    .line 12
    const-string v1, "[]"

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 17
    .line 18
    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v8}, Lcom/alibaba/fastjson/serializer/v1;->p0()V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void

    .line 32
    :cond_1
    array-length v2, v9

    .line 33
    add-int/lit8 v10, v2, -0x1

    .line 34
    .line 35
    const/4 v3, -0x1

    .line 36
    if-ne v10, v3, :cond_2

    .line 37
    .line 38
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson/serializer/v1;->b(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/v1;

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->getContext()Lcom/alibaba/fastjson/serializer/r1;

    .line 43
    .line 44
    .line 45
    move-result-object v11

    .line 46
    const/4 v1, 0x0

    .line 47
    move-object/from16 v3, p3

    .line 48
    .line 49
    invoke-virtual {v7, v11, v0, v3, v1}, Lcom/alibaba/fastjson/serializer/v0;->D(Lcom/alibaba/fastjson/serializer/r1;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 50
    .line 51
    .line 52
    const/16 v0, 0x5b

    .line 53
    .line 54
    :try_start_0
    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/v1;->a(C)Lcom/alibaba/fastjson/serializer/v1;

    .line 55
    .line 56
    .line 57
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 58
    .line 59
    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const/16 v12, 0x5d

    .line 64
    .line 65
    const/16 v13, 0x2c

    .line 66
    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->x()V

    .line 70
    .line 71
    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->B()V

    .line 73
    .line 74
    .line 75
    :goto_1
    if-ge v1, v2, :cond_4

    .line 76
    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 80
    .line 81
    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->B()V

    .line 83
    .line 84
    .line 85
    :cond_3
    aget-object v0, v9, v1

    .line 86
    .line 87
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/serializer/v0;->K(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    add-int/lit8 v1, v1, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->d()V

    .line 94
    .line 95
    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->B()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v8, v12}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7, v11}, Lcom/alibaba/fastjson/serializer/v0;->C(Lcom/alibaba/fastjson/serializer/r1;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_5
    const/4 v0, 0x0

    .line 107
    move-object v14, v0

    .line 108
    const/4 v15, 0x0

    .line 109
    :goto_2
    if-ge v15, v10, :cond_9

    .line 110
    .line 111
    :try_start_1
    aget-object v3, v9, v15

    .line 112
    .line 113
    if-nez v3, :cond_6

    .line 114
    .line 115
    const-string v1, "null,"

    .line 116
    .line 117
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson/serializer/v1;->b(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/v1;

    .line 118
    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_6
    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/serializer/v0;->c(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_7

    .line 126
    .line 127
    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/serializer/v0;->O(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    if-ne v6, v0, :cond_8

    .line 136
    .line 137
    const/4 v4, 0x0

    .line 138
    const/4 v5, 0x0

    .line 139
    const/4 v6, 0x0

    .line 140
    move-object v1, v14

    .line 141
    move-object/from16 v2, p1

    .line 142
    .line 143
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/j1;->d(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_8
    invoke-virtual {v7, v6}, Lcom/alibaba/fastjson/serializer/v0;->o(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/j1;

    .line 148
    .line 149
    .line 150
    move-result-object v14

    .line 151
    const/4 v4, 0x0

    .line 152
    const/4 v5, 0x0

    .line 153
    const/4 v0, 0x0

    .line 154
    move-object v1, v14

    .line 155
    move-object/from16 v2, p1

    .line 156
    .line 157
    move-object/from16 v16, v6

    .line 158
    .line 159
    move v6, v0

    .line 160
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/j1;->d(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 161
    .line 162
    .line 163
    move-object/from16 v0, v16

    .line 164
    .line 165
    :goto_3
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/serializer/v1;->a(C)Lcom/alibaba/fastjson/serializer/v1;

    .line 166
    .line 167
    .line 168
    :goto_4
    add-int/lit8 v15, v15, 0x1

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_9
    aget-object v0, v9, v10

    .line 172
    .line 173
    if-nez v0, :cond_a

    .line 174
    .line 175
    const-string v0, "null]"

    .line 176
    .line 177
    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/v1;->b(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/v1;

    .line 178
    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_a
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/serializer/v0;->c(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_b

    .line 186
    .line 187
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/serializer/v0;->O(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_b
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson/serializer/v0;->P(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    :goto_5
    invoke-virtual {v8, v12}, Lcom/alibaba/fastjson/serializer/v1;->a(C)Lcom/alibaba/fastjson/serializer/v1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    .line 200
    .line 201
    :goto_6
    invoke-virtual {v7, v11}, Lcom/alibaba/fastjson/serializer/v0;->C(Lcom/alibaba/fastjson/serializer/r1;)V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :catchall_0
    move-exception v0

    .line 206
    invoke-virtual {v7, v11}, Lcom/alibaba/fastjson/serializer/v0;->C(Lcom/alibaba/fastjson/serializer/r1;)V

    .line 207
    .line 208
    .line 209
    throw v0
.end method

.class Lcom/xinzhu/overmind/client/hook/proxies/context/a$a;
.super Lcom/xinzhu/overmind/client/hook/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/context/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/e;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "notifyChange"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v4, 0x18

    .line 10
    .line 11
    if-lt v3, v4, :cond_0

    .line 12
    .line 13
    array-length v3, v2

    .line 14
    const/4 v4, 0x6

    .line 15
    if-lt v3, v4, :cond_0

    .line 16
    .line 17
    const/16 v3, 0x16

    .line 18
    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/4 v4, 0x5

    .line 24
    aput-object v3, v2, v4

    .line 25
    .line 26
    :cond_0
    const/4 v3, 0x1

    .line 27
    aget-object v4, v2, v3

    .line 28
    .line 29
    check-cast v4, Landroid/database/IContentObserver;

    .line 30
    .line 31
    const/4 v5, 0x2

    .line 32
    aget-object v5, v2, v5

    .line 33
    .line 34
    check-cast v5, Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result v12

    .line 40
    const/4 v5, 0x3

    .line 41
    aget-object v5, v2, v5

    .line 42
    .line 43
    instance-of v6, v5, Ljava/lang/Integer;

    .line 44
    .line 45
    const/4 v13, 0x0

    .line 46
    if-eqz v6, :cond_2

    .line 47
    .line 48
    check-cast v5, Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    and-int/2addr v5, v3

    .line 55
    if-eqz v5, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 v3, 0x0

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    check-cast v5, Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    :goto_0
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->g()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    const/4 v14, 0x4

    .line 71
    if-eqz v5, :cond_5

    .line 72
    .line 73
    aget-object v5, v2, v13

    .line 74
    .line 75
    move-object v15, v5

    .line 76
    check-cast v15, [Landroid/net/Uri;

    .line 77
    .line 78
    array-length v11, v15

    .line 79
    const/4 v10, 0x0

    .line 80
    :goto_1
    if-ge v10, v11, :cond_4

    .line 81
    .line 82
    aget-object v6, v15, v10

    .line 83
    .line 84
    invoke-static {v6}, Lcom/xinzhu/overmind/client/hook/proxies/context/a;->d(Landroid/net/Uri;)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_3

    .line 89
    .line 90
    invoke-static {}, Lma/b;->a()Lma/b;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-static {}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->E()I

    .line 95
    .line 96
    .line 97
    move-result v16

    .line 98
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getVUid()I

    .line 99
    .line 100
    .line 101
    move-result v17

    .line 102
    move-object v7, v4

    .line 103
    move v8, v12

    .line 104
    move v9, v3

    .line 105
    move/from16 v18, v10

    .line 106
    .line 107
    move/from16 v10, v16

    .line 108
    .line 109
    move/from16 v16, v11

    .line 110
    .line 111
    move/from16 v11, v17

    .line 112
    .line 113
    invoke-virtual/range {v5 .. v11}, Lma/b;->c(Landroid/net/Uri;Landroid/database/IContentObserver;ZZII)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    move/from16 v18, v10

    .line 118
    .line 119
    move/from16 v16, v11

    .line 120
    .line 121
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostUserId()I

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    aput-object v5, v2, v14

    .line 130
    .line 131
    invoke-static/range {p3 .. p3}, Lsa/r;->e([Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    :goto_2
    add-int/lit8 v10, v18, 0x1

    .line 138
    .line 139
    move/from16 v11, v16

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_4
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    return-object v0

    .line 147
    :cond_5
    aget-object v5, v2, v13

    .line 148
    .line 149
    move-object v6, v5

    .line 150
    check-cast v6, Landroid/net/Uri;

    .line 151
    .line 152
    invoke-static {v6}, Lcom/xinzhu/overmind/client/hook/proxies/context/a;->d(Landroid/net/Uri;)Z

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    if-eqz v5, :cond_6

    .line 157
    .line 158
    invoke-static {}, Lma/b;->a()Lma/b;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-static {}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->E()I

    .line 163
    .line 164
    .line 165
    move-result v10

    .line 166
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getVUid()I

    .line 167
    .line 168
    .line 169
    move-result v11

    .line 170
    move-object v7, v4

    .line 171
    move v8, v12

    .line 172
    move v9, v3

    .line 173
    invoke-virtual/range {v5 .. v11}, Lma/b;->c(Landroid/net/Uri;Landroid/database/IContentObserver;ZZII)V

    .line 174
    .line 175
    .line 176
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    return-object v0

    .line 181
    :cond_6
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostUserId()I

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    aput-object v3, v2, v14

    .line 190
    .line 191
    invoke-static/range {p3 .. p3}, Lsa/r;->e([Ljava/lang/Object;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    return-object v0
.end method

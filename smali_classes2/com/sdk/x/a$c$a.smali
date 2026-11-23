.class public Lcom/sdk/x/a$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sdk/e/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdk/x/a$c;->onAvailable(Landroid/net/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sdk/e/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/sdk/x/a$c;


# direct methods
.method public constructor <init>(Lcom/sdk/x/a$c;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/x/a$c$a;->a:Lcom/sdk/x/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/sdk/x/a;->h:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "public void getAuthoriseCode onFailure"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/sdk/x/a$c$a;->a:Lcom/sdk/x/a$c;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/sdk/x/a$c;->b:Lcom/sdk/x/a;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2, p3}, Lcom/sdk/x/a;->a(IILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string p3, "onFailure: "

    .line 22
    .line 23
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onSuccess(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "ITT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    const-string v1, "SDK\u89e3\u5bc6\u5f02\u5e38"

    .line 3
    .line 4
    sget-object v2, Lcom/sdk/x/a;->h:Ljava/lang/String;

    .line 5
    .line 6
    const-string v3, "public void getAuthoriseCode onSuccess"

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    invoke-static {v2, v3, v4}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    iget-object v3, v0, Lcom/sdk/x/a$c$a;->a:Lcom/sdk/x/a$c;

    .line 13
    .line 14
    iget-object v3, v3, Lcom/sdk/x/a$c;->b:Lcom/sdk/x/a;

    .line 15
    .line 16
    iget-object v3, v3, Lcom/sdk/x/a;->b:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v3}, Lcom/sdk/p/b;->b(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    if-nez p1, :cond_6

    .line 22
    .line 23
    const v3, 0x49bb1

    .line 24
    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    iget-object v7, v0, Lcom/sdk/x/a$c$a;->a:Lcom/sdk/x/a$c;

    .line 32
    .line 33
    iget-object v7, v7, Lcom/sdk/x/a$c;->b:Lcom/sdk/x/a;

    .line 34
    .line 35
    iget-object v7, v7, Lcom/sdk/x/a;->b:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    invoke-static {v7}, Lcom/sdk/s/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    const-string v8, "public void getAuthoriseCode ToolsUtils.decryptResponse \u540e"

    .line 46
    .line 47
    invoke-static {v2, v8, v4}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    .line 48
    .line 49
    .line 50
    if-nez v7, :cond_0

    .line 51
    .line 52
    iget-object v2, v0, Lcom/sdk/x/a$c$a;->a:Lcom/sdk/x/a$c;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/sdk/x/a$c;->b:Lcom/sdk/x/a;

    .line 55
    .line 56
    invoke-virtual {v2, v5, v3, v1}, Lcom/sdk/x/a;->a(IILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_0
    invoke-static {}, Lcom/sdk/base/module/manager/SDKManager;->useCache()Z

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    if-eqz v8, :cond_1

    .line 65
    .line 66
    iget-object v8, v0, Lcom/sdk/x/a$c$a;->a:Lcom/sdk/x/a$c;

    .line 67
    .line 68
    iget-object v9, v8, Lcom/sdk/x/a$c;->b:Lcom/sdk/x/a;

    .line 69
    .line 70
    iget-object v9, v9, Lcom/sdk/x/a;->b:Landroid/content/Context;

    .line 71
    .line 72
    iget v8, v8, Lcom/sdk/x/a$c;->a:I

    .line 73
    .line 74
    sget-object v10, Lcom/sdk/t/a;->g:Ljava/lang/String;

    .line 75
    .line 76
    move-object/from16 v11, p2

    .line 77
    .line 78
    move-object/from16 v12, p5

    .line 79
    .line 80
    invoke-static {v11, v6, v12, v10}, Lcom/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    const-string v10, "CUCC"

    .line 85
    .line 86
    :try_start_1
    invoke-static {v6}, Lcom/sdk/r/a;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 87
    .line 88
    .line 89
    move-result-object v13

    .line 90
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 91
    .line 92
    .line 93
    move-result v13

    .line 94
    if-eqz v13, :cond_2

    .line 95
    .line 96
    invoke-static {v8, v10}, Lcom/sdk/b/a;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    invoke-static {v8}, Lcom/sdk/r/a;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 105
    .line 106
    .line 107
    move-result v10

    .line 108
    if-eqz v10, :cond_2

    .line 109
    .line 110
    invoke-static {v9, v8, v6}, Lcom/sdk/j/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    move-object/from16 v11, p2

    .line 115
    .line 116
    move-object/from16 v12, p5

    .line 117
    .line 118
    :cond_2
    :goto_0
    new-instance v6, Lorg/json/JSONObject;

    .line 119
    .line 120
    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const-string v8, "accessCode"

    .line 124
    .line 125
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    invoke-static {v8}, Lcom/sdk/r/a;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    if-eqz v8, :cond_3

    .line 142
    .line 143
    iget-object v8, v0, Lcom/sdk/x/a$c$a;->a:Lcom/sdk/x/a$c;

    .line 144
    .line 145
    iget-object v8, v8, Lcom/sdk/x/a$c;->b:Lcom/sdk/x/a;

    .line 146
    .line 147
    invoke-virtual {v8, v5, v3, v1}, Lcom/sdk/x/a;->a(IILjava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :cond_3
    iget-object v8, v0, Lcom/sdk/x/a$c$a;->a:Lcom/sdk/x/a$c;

    .line 151
    .line 152
    iget v8, v8, Lcom/sdk/x/a$c;->a:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    .line 154
    const-string v9, "fakeMobile"

    .line 155
    .line 156
    if-ne v8, v5, :cond_4

    .line 157
    .line 158
    :try_start_2
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    move-object v9, v1

    .line 166
    goto :goto_1

    .line 167
    :cond_4
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    invoke-static {v6}, Lcom/sdk/r/a;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    if-eqz v6, :cond_5

    .line 184
    .line 185
    iget-object v6, v0, Lcom/sdk/x/a$c$a;->a:Lcom/sdk/x/a$c;

    .line 186
    .line 187
    iget-object v6, v6, Lcom/sdk/x/a$c;->b:Lcom/sdk/x/a;

    .line 188
    .line 189
    invoke-virtual {v6, v5, v3, v1}, Lcom/sdk/x/a;->a(IILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 190
    .line 191
    .line 192
    :cond_5
    move-object v9, v7

    .line 193
    goto :goto_1

    .line 194
    :catch_0
    iget-object v2, v0, Lcom/sdk/x/a$c$a;->a:Lcom/sdk/x/a$c;

    .line 195
    .line 196
    iget-object v2, v2, Lcom/sdk/x/a$c;->b:Lcom/sdk/x/a;

    .line 197
    .line 198
    invoke-virtual {v2, v5, v3, v1}, Lcom/sdk/x/a;->a(IILjava/lang/String;)V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :cond_6
    move-object/from16 v11, p2

    .line 203
    .line 204
    move-object/from16 v12, p5

    .line 205
    .line 206
    move-object/from16 v9, p4

    .line 207
    .line 208
    :goto_1
    const-string v1, "public void getAuthoriseCode toSucceed \u524d"

    .line 209
    .line 210
    invoke-static {v2, v1, v4}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    .line 211
    .line 212
    .line 213
    iget-object v1, v0, Lcom/sdk/x/a$c$a;->a:Lcom/sdk/x/a$c;

    .line 214
    .line 215
    iget-object v5, v1, Lcom/sdk/x/a$c;->b:Lcom/sdk/x/a;

    .line 216
    .line 217
    move v6, p1

    .line 218
    move-object/from16 v7, p2

    .line 219
    .line 220
    move/from16 v8, p3

    .line 221
    .line 222
    move-object/from16 v10, p5

    .line 223
    .line 224
    invoke-virtual/range {v5 .. v10}, Lcom/sdk/x/a;->a(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    return-void
.end method

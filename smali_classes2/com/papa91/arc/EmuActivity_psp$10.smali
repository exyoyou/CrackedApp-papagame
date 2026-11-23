.class Lcom/papa91/arc/EmuActivity_psp$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/arc/http/HttpUtils$OnResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/EmuActivity_psp;->restoreVipData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/EmuActivity_psp;


# direct methods
.method constructor <init>(Lcom/papa91/arc/EmuActivity_psp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$10;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method onPostExecute(Ljava/lang/String;)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp$10;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 13
    .line 14
    .line 15
    :cond_0
    new-instance v1, Lcom/papa91/arc/MyJson;

    .line 16
    .line 17
    invoke-direct {v1, p1}, Lcom/papa91/arc/MyJson;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string p1, "messages"

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v1, "data"

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v1, 0x0

    .line 33
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-ge v1, v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lorg/json/JSONObject;

    .line 44
    .line 45
    new-instance v3, Lcom/papa91/arc/bean/VipBean;

    .line 46
    .line 47
    invoke-direct {v3}, Lcom/papa91/arc/bean/VipBean;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v4, "main"

    .line 51
    .line 52
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Lorg/json/JSONObject;

    .line 57
    .line 58
    const-string v5, "title"

    .line 59
    .line 60
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    const-string v5, "label"

    .line 65
    .line 66
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    const-string v5, "pic_remote"

    .line 71
    .line 72
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    const-string v5, "title_type"

    .line 77
    .line 78
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    const-string v5, "sub_title"

    .line 83
    .line 84
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v11

    .line 88
    const-string v5, "ad_switch"

    .line 89
    .line 90
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v12

    .line 94
    new-instance v4, Lcom/papa91/arc/bean/MainBean;

    .line 95
    .line 96
    move-object v6, v4

    .line 97
    invoke-direct/range {v6 .. v12}, Lcom/papa91/arc/bean/MainBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v4}, Lcom/papa91/arc/bean/VipBean;->setMain(Lcom/papa91/arc/bean/MainBean;)V

    .line 101
    .line 102
    .line 103
    const-string v4, "sub"

    .line 104
    .line 105
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Lorg/json/JSONArray;

    .line 110
    .line 111
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Lorg/json/JSONObject;

    .line 116
    .line 117
    const-string v4, "link_type"

    .line 118
    .line 119
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    const-string v4, "link_type_val"

    .line 124
    .line 125
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    const-string v4, "crc_link_type_val"

    .line 130
    .line 131
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    const-string v4, "jump_type"

    .line 136
    .line 137
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    const-string v4, "is_more"

    .line 142
    .line 143
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    const-string v4, "tpl_type"

    .line 148
    .line 149
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    new-instance v2, Lcom/papa91/arc/bean/SubBean;

    .line 154
    .line 155
    move-object v5, v2

    .line 156
    invoke-direct/range {v5 .. v11}, Lcom/papa91/arc/bean/SubBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3, v2}, Lcom/papa91/arc/bean/VipBean;->setSub(Lcom/papa91/arc/bean/SubBean;)V

    .line 160
    .line 161
    .line 162
    iget-object v2, p0, Lcom/papa91/arc/EmuActivity_psp$10;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 163
    .line 164
    iget-object v2, v2, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    .line 165
    .line 166
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .line 168
    .line 169
    add-int/lit8 v1, v1, 0x1

    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :catch_0
    move-exception p1

    .line 174
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 175
    .line 176
    .line 177
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$10;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 178
    .line 179
    invoke-static {p1}, Lcom/papa91/arc/EmuActivity_psp;->access$000(Lcom/papa91/arc/EmuActivity_psp;)Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-eqz p1, :cond_2

    .line 184
    .line 185
    return-void

    .line 186
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$10;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 187
    .line 188
    iget-object p1, p1, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    .line 189
    .line 190
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    if-ge v0, p1, :cond_3

    .line 195
    .line 196
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$10;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 197
    .line 198
    iget-object v1, p1, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    .line 199
    .line 200
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    check-cast v1, Lcom/papa91/arc/bean/VipBean;

    .line 205
    .line 206
    invoke-virtual {v1}, Lcom/papa91/arc/bean/VipBean;->getMain()Lcom/papa91/arc/bean/MainBean;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {v1}, Lcom/papa91/arc/bean/MainBean;->getPic_remote()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-static {p1, v1}, Lcom/papa91/arc/EmuActivity_psp;->access$2300(Landroid/content/Context;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    add-int/lit8 v0, v0, 0x1

    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_3
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$10;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 221
    .line 222
    iget-object v0, p1, Lcom/papa91/arc/EmuActivity_psp;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    .line 223
    .line 224
    if-eqz v0, :cond_4

    .line 225
    .line 226
    iget-object p1, p1, Lcom/papa91/arc/EmuActivity_psp;->vipBeans:Ljava/util/List;

    .line 227
    .line 228
    invoke-virtual {v0, p1}, Lcom/papa91/arc/dialog/SettingVipDialog;->updateVipDatas(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 229
    .line 230
    .line 231
    goto :goto_2

    .line 232
    :catch_1
    move-exception p1

    .line 233
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 234
    .line 235
    .line 236
    :cond_4
    :goto_2
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$10;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/papa91/arc/EmuActivity_psp;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    new-instance v1, Lcom/papa91/arc/EmuActivity_psp$10$1;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1}, Lcom/papa91/arc/EmuActivity_psp$10$1;-><init>(Lcom/papa91/arc/EmuActivity_psp$10;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

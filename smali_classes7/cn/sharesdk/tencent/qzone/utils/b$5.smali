.class Lcn/sharesdk/tencent/qzone/utils/b$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qzone/utils/b;->a([Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/StringBuilder;

.field final synthetic b:Ljava/lang/StringBuilder;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Lcn/sharesdk/framework/PlatformActionListener;

.field final synthetic e:Lcn/sharesdk/tencent/qzone/utils/b;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qzone/utils/b;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Landroid/os/Bundle;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/b$5;->e:Lcn/sharesdk/tencent/qzone/utils/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/sharesdk/tencent/qzone/utils/b$5;->a:Ljava/lang/StringBuilder;

    .line 4
    .line 5
    iput-object p3, p0, Lcn/sharesdk/tencent/qzone/utils/b$5;->b:Ljava/lang/StringBuilder;

    .line 6
    .line 7
    iput-object p4, p0, Lcn/sharesdk/tencent/qzone/utils/b$5;->c:Landroid/os/Bundle;

    .line 8
    .line 9
    iput-object p5, p0, Lcn/sharesdk/tencent/qzone/utils/b$5;->d:Lcn/sharesdk/framework/PlatformActionListener;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "mqqapi://qzone/publish?src_type=app&version=1&file_type=news"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "&image_url="

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/b$5;->a:Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Lcn/sharesdk/tencent/qzone/utils/b;->f(Ljava/lang/String;)[B

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x2

    .line 24
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/b$5;->b:Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    const-string v1, "&image_uri="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/b$5;->b:Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1}, Lcn/sharesdk/tencent/qzone/utils/b;->f(Ljava/lang/String;)[B

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    :cond_0
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/b$5;->e:Lcn/sharesdk/tencent/qzone/utils/b;

    .line 66
    .line 67
    invoke-static {v1}, Lcn/sharesdk/tencent/qzone/utils/b;->h(Lcn/sharesdk/tencent/qzone/utils/b;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_1

    .line 76
    .line 77
    const-string v1, "&share_id="

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/b$5;->e:Lcn/sharesdk/tencent/qzone/utils/b;

    .line 83
    .line 84
    invoke-static {v1}, Lcn/sharesdk/tencent/qzone/utils/b;->h(Lcn/sharesdk/tencent/qzone/utils/b;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    :cond_1
    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->getAppName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_2

    .line 100
    .line 101
    const-string v1, "&app_name="

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-static {p1}, Lcn/sharesdk/tencent/qzone/utils/b;->f(Ljava/lang/String;)[B

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    :cond_2
    const-string p1, "&req_type="

    .line 118
    .line 119
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const/4 p1, 0x3

    .line 123
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {p1}, Lcn/sharesdk/tencent/qzone/utils/b;->f(Ljava/lang/String;)[B

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    new-instance p1, Landroid/content/Intent;

    .line 139
    .line 140
    const-string v1, "android.intent.action.VIEW"

    .line 141
    .line 142
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const-string v1, "com.tencent.mobileqq"

    .line 146
    .line 147
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 159
    .line 160
    .line 161
    const-string v0, "pkg_name"

    .line 162
    .line 163
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getPackageName()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    .line 169
    .line 170
    const-string v0, "key_pass"

    .line 171
    .line 172
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/b$5;->c:Landroid/os/Bundle;

    .line 173
    .line 174
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/b$5;->e:Lcn/sharesdk/tencent/qzone/utils/b;

    .line 178
    .line 179
    invoke-static {v0, p1}, Lcn/sharesdk/tencent/qzone/utils/b;->a(Lcn/sharesdk/tencent/qzone/utils/b;Landroid/content/Intent;)V

    .line 180
    .line 181
    .line 182
    new-instance v0, Landroid/content/Intent;

    .line 183
    .line 184
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 185
    .line 186
    .line 187
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/b$5;->e:Lcn/sharesdk/tencent/qzone/utils/b;

    .line 188
    .line 189
    invoke-static {v1, p1}, Lcn/sharesdk/tencent/qzone/utils/b;->b(Lcn/sharesdk/tencent/qzone/utils/b;Landroid/content/Intent;)Landroid/app/PendingIntent;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    const-string v1, "key_extra_pending_intent"

    .line 194
    .line 195
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 196
    .line 197
    .line 198
    new-instance p1, Lcn/sharesdk/tencent/qzone/utils/QzoneShareImgArrayActivity;

    .line 199
    .line 200
    invoke-direct {p1}, Lcn/sharesdk/tencent/qzone/utils/QzoneShareImgArrayActivity;-><init>()V

    .line 201
    .line 202
    .line 203
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/b$5;->e:Lcn/sharesdk/tencent/qzone/utils/b;

    .line 204
    .line 205
    invoke-static {v1}, Lcn/sharesdk/tencent/qzone/utils/b;->h(Lcn/sharesdk/tencent/qzone/utils/b;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {p1, v1}, Lcn/sharesdk/tencent/qzone/utils/QzoneShareImgArrayActivity;->setAppid(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/b$5;->d:Lcn/sharesdk/framework/PlatformActionListener;

    .line 213
    .line 214
    invoke-virtual {p1, v1}, Lcn/sharesdk/tencent/qzone/utils/QzoneShareImgArrayActivity;->setSharedCallback(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 215
    .line 216
    .line 217
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {p1, v1, v0}, Lcom/mob/tools/FakeActivity;->show(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    .line 223
    .line 224
    goto :goto_0

    .line 225
    :catchall_0
    move-exception p1

    .line 226
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    const-string v2, "QZONE imgs share"

    .line 236
    .line 237
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    const/4 v1, 0x0

    .line 248
    new-array v1, v1, [Ljava/lang/Object;

    .line 249
    .line 250
    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 251
    .line 252
    .line 253
    :goto_0
    return-void
.end method

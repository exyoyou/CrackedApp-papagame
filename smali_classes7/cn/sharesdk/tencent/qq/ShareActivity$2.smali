.class Lcn/sharesdk/tencent/qq/ShareActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qq/ShareActivity;->openMiniProgram(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcn/sharesdk/tencent/qq/ShareActivity;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qq/ShareActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/ShareActivity$2;->d:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/sharesdk/tencent/qq/ShareActivity$2;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcn/sharesdk/tencent/qq/ShareActivity$2;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcn/sharesdk/tencent/qq/ShareActivity$2;->c:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 7

    .line 1
    const-string v0, "ShareSDK"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    new-array v3, v2, [I

    .line 6
    .line 7
    invoke-virtual {p1, v3}, Lcom/mob/tools/utils/DH$DHResponse;->getAInfoForPkg([I)Landroid/content/pm/ApplicationInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v3, "ainfo null"

    .line 18
    .line 19
    new-array v4, v2, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {p1, v3, v4}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance v3, Landroid/content/Intent;

    .line 26
    .line 27
    const-string v4, "android.intent.action.VIEW"

    .line 28
    .line 29
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v4, "mqqapi://connect_miniapp/launch?app_type=%1$s&mini_app_id=%2$s&version=1&src_type=app&app_name=%3$s&app_id=%4$s&src_id=%5$s&mini_app_path=%6$s&mini_app_type=%7$s&open_id=%8$s"

    .line 33
    .line 34
    const/16 v5, 0x8

    .line 35
    .line 36
    new-array v5, v5, [Ljava/lang/Object;

    .line 37
    .line 38
    const-string v6, "mini_program_or_game"

    .line 39
    .line 40
    aput-object v6, v5, v2

    .line 41
    .line 42
    iget-object v6, p0, Lcn/sharesdk/tencent/qq/ShareActivity$2;->a:Ljava/lang/String;

    .line 43
    .line 44
    aput-object v6, v5, v1

    .line 45
    .line 46
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {p1}, Lcn/sharesdk/tencent/qq/ShareActivity;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const/4 v6, 0x2

    .line 53
    aput-object p1, v5, v6

    .line 54
    .line 55
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/ShareActivity$2;->d:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 56
    .line 57
    invoke-static {p1}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$700(Lcn/sharesdk/tencent/qq/ShareActivity;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1}, Lcn/sharesdk/tencent/qq/ShareActivity;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const/4 v6, 0x3

    .line 66
    aput-object p1, v5, v6

    .line 67
    .line 68
    const-string p1, "21"

    .line 69
    .line 70
    const/4 v6, 0x4

    .line 71
    aput-object p1, v5, v6

    .line 72
    .line 73
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/ShareActivity$2;->b:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {p1}, Lcn/sharesdk/tencent/qq/ShareActivity;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const/4 v6, 0x5

    .line 80
    aput-object p1, v5, v6

    .line 81
    .line 82
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/ShareActivity$2;->c:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {p1}, Lcn/sharesdk/tencent/qq/ShareActivity;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const/4 v6, 0x6

    .line 89
    aput-object p1, v5, v6

    .line 90
    .line 91
    const-string p1, ""

    .line 92
    .line 93
    invoke-static {p1}, Lcn/sharesdk/tencent/qq/ShareActivity;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const/4 v6, 0x7

    .line 98
    aput-object p1, v5, v6

    .line 99
    .line 100
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    const-string p1, "pkg_name"

    .line 112
    .line 113
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getPackageName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/ShareActivity$2;->d:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 121
    .line 122
    invoke-static {p1}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$800(Lcn/sharesdk/tencent/qq/ShareActivity;)Landroid/app/Activity;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 127
    .line 128
    .line 129
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 130
    .line 131
    const/16 v3, 0x1c

    .line 132
    .line 133
    if-lt p1, v3, :cond_2

    .line 134
    .line 135
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    new-array v3, v1, [Ljava/lang/Object;

    .line 140
    .line 141
    const-string v4, " QQ ShareActivity Build.VERSION.SDK_INT >= 28 activity.finish "

    .line 142
    .line 143
    aput-object v4, v3, v2

    .line 144
    .line 145
    invoke-virtual {p1, v0, v3}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/ShareActivity$2;->d:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 149
    .line 150
    invoke-static {p1}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$900(Lcn/sharesdk/tencent/qq/ShareActivity;)Landroid/app/Activity;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :catchall_0
    move-exception p1

    .line 159
    iget-object v3, p0, Lcn/sharesdk/tencent/qq/ShareActivity$2;->d:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 160
    .line 161
    invoke-static {v3}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$000(Lcn/sharesdk/tencent/qq/ShareActivity;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    if-eqz v3, :cond_1

    .line 166
    .line 167
    iget-object v3, p0, Lcn/sharesdk/tencent/qq/ShareActivity$2;->d:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 168
    .line 169
    invoke-static {v3}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$000(Lcn/sharesdk/tencent/qq/ShareActivity;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    iget-object v4, p0, Lcn/sharesdk/tencent/qq/ShareActivity$2;->d:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 174
    .line 175
    invoke-static {v4}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$100(Lcn/sharesdk/tencent/qq/ShareActivity;)Lcn/sharesdk/framework/Platform;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    const/16 v5, 0x9

    .line 180
    .line 181
    invoke-interface {v3, v4, v5, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 182
    .line 183
    .line 184
    :cond_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    new-array v1, v1, [Ljava/lang/Object;

    .line 189
    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    const-string v5, " QQ openMiniProgram catch "

    .line 196
    .line 197
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    aput-object p1, v1, v2

    .line 208
    .line 209
    invoke-virtual {v3, v0, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 210
    .line 211
    .line 212
    iget-object p1, p0, Lcn/sharesdk/tencent/qq/ShareActivity$2;->d:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 213
    .line 214
    invoke-static {p1}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$1000(Lcn/sharesdk/tencent/qq/ShareActivity;)Landroid/app/Activity;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 219
    .line 220
    .line 221
    :cond_2
    :goto_0
    return-void
.end method

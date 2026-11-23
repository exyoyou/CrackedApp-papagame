.class Lcn/sharesdk/tencent/qzone/utils/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qzone/utils/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcn/sharesdk/tencent/qzone/utils/c;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qzone/utils/c;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/c$1;->b:Lcn/sharesdk/tencent/qzone/utils/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/sharesdk/tencent/qzone/utils/c$1;->a:Landroid/content/Intent;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-array v1, v0, [I

    .line 3
    .line 4
    invoke-virtual {p1, v1}, Lcom/mob/tools/utils/DH$DHResponse;->getPInfoForce([I)Landroid/content/pm/PackageInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/c$1;->b:Lcn/sharesdk/tencent/qzone/utils/c;

    .line 11
    .line 12
    invoke-static {p1}, Lcn/sharesdk/tencent/qzone/utils/c;->a(Lcn/sharesdk/tencent/qzone/utils/c;)Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/c$1;->b:Lcn/sharesdk/tencent/qzone/utils/c;

    .line 20
    .line 21
    invoke-static {p1}, Lcn/sharesdk/tencent/qzone/utils/c;->b(Lcn/sharesdk/tencent/qzone/utils/c;)Lcn/sharesdk/framework/authorize/SSOListener;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/c$1;->b:Lcn/sharesdk/tencent/qzone/utils/c;

    .line 28
    .line 29
    invoke-static {p1}, Lcn/sharesdk/tencent/qzone/utils/c;->c(Lcn/sharesdk/tencent/qzone/utils/c;)Lcn/sharesdk/framework/authorize/SSOListener;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v0, Lcn/sharesdk/tencent/qzone/utils/TencentSSOClientNotInstalledException;

    .line 34
    .line 35
    invoke-direct {v0}, Lcn/sharesdk/tencent/qzone/utils/TencentSSOClientNotInstalledException;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v0}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void

    .line 42
    :cond_1
    new-array v0, v0, [I

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/DH$DHResponse;->resolveActivity([I)Landroid/content/pm/ResolveInfo;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-nez p1, :cond_3

    .line 49
    .line 50
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/c$1;->b:Lcn/sharesdk/tencent/qzone/utils/c;

    .line 51
    .line 52
    invoke-static {p1}, Lcn/sharesdk/tencent/qzone/utils/c;->d(Lcn/sharesdk/tencent/qzone/utils/c;)Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/c$1;->b:Lcn/sharesdk/tencent/qzone/utils/c;

    .line 60
    .line 61
    invoke-static {p1}, Lcn/sharesdk/tencent/qzone/utils/c;->e(Lcn/sharesdk/tencent/qzone/utils/c;)Lcn/sharesdk/framework/authorize/SSOListener;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/c$1;->b:Lcn/sharesdk/tencent/qzone/utils/c;

    .line 68
    .line 69
    invoke-static {p1}, Lcn/sharesdk/tencent/qzone/utils/c;->f(Lcn/sharesdk/tencent/qzone/utils/c;)Lcn/sharesdk/framework/authorize/SSOListener;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance v0, Lcn/sharesdk/tencent/qzone/utils/TencentSSOClientNotInstalledException;

    .line 74
    .line 75
    invoke-direct {v0}, Lcn/sharesdk/tencent/qzone/utils/TencentSSOClientNotInstalledException;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, v0}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    return-void

    .line 82
    :cond_3
    new-instance p1, Landroid/os/Bundle;

    .line 83
    .line 84
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v0, "scope"

    .line 88
    .line 89
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/c$1;->b:Lcn/sharesdk/tencent/qzone/utils/c;

    .line 90
    .line 91
    invoke-static {v1}, Lcn/sharesdk/tencent/qzone/utils/c;->g(Lcn/sharesdk/tencent/qzone/utils/c;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string v0, "client_id"

    .line 99
    .line 100
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/c$1;->b:Lcn/sharesdk/tencent/qzone/utils/c;

    .line 101
    .line 102
    invoke-static {v1}, Lcn/sharesdk/tencent/qzone/utils/c;->h(Lcn/sharesdk/tencent/qzone/utils/c;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v0, "pf"

    .line 110
    .line 111
    const-string v1, "openmobile_android"

    .line 112
    .line 113
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const-string v0, "need_pay"

    .line 117
    .line 118
    const-string v1, "1"

    .line 119
    .line 120
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/c$1;->a:Landroid/content/Intent;

    .line 124
    .line 125
    const-string v1, "key_params"

    .line 126
    .line 127
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/c$1;->a:Landroid/content/Intent;

    .line 131
    .line 132
    const-string v0, "key_request_code"

    .line 133
    .line 134
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/c$1;->b:Lcn/sharesdk/tencent/qzone/utils/c;

    .line 135
    .line 136
    invoke-static {v1}, Lcn/sharesdk/tencent/qzone/utils/c;->i(Lcn/sharesdk/tencent/qzone/utils/c;)I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/c$1;->a:Landroid/content/Intent;

    .line 144
    .line 145
    const-string v0, "key_action"

    .line 146
    .line 147
    const-string v1, "action_login"

    .line 148
    .line 149
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 150
    .line 151
    .line 152
    :try_start_1
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/c$1;->b:Lcn/sharesdk/tencent/qzone/utils/c;

    .line 153
    .line 154
    invoke-static {p1}, Lcn/sharesdk/tencent/qzone/utils/c;->k(Lcn/sharesdk/tencent/qzone/utils/c;)Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/c$1;->a:Landroid/content/Intent;

    .line 159
    .line 160
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/c$1;->b:Lcn/sharesdk/tencent/qzone/utils/c;

    .line 161
    .line 162
    invoke-static {v1}, Lcn/sharesdk/tencent/qzone/utils/c;->j(Lcn/sharesdk/tencent/qzone/utils/c;)I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    invoke-virtual {p1, v0, v1}, Lcom/mob/tools/FakeActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    .line 168
    .line 169
    goto :goto_0

    .line 170
    :catchall_0
    move-exception p1

    .line 171
    :try_start_2
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/c$1;->b:Lcn/sharesdk/tencent/qzone/utils/c;

    .line 172
    .line 173
    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/utils/c;->l(Lcn/sharesdk/tencent/qzone/utils/c;)Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/c$1;->b:Lcn/sharesdk/tencent/qzone/utils/c;

    .line 181
    .line 182
    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/utils/c;->m(Lcn/sharesdk/tencent/qzone/utils/c;)Lcn/sharesdk/framework/authorize/SSOListener;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    if-eqz v0, :cond_4

    .line 187
    .line 188
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/c$1;->b:Lcn/sharesdk/tencent/qzone/utils/c;

    .line 189
    .line 190
    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/utils/c;->n(Lcn/sharesdk/tencent/qzone/utils/c;)Lcn/sharesdk/framework/authorize/SSOListener;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 195
    .line 196
    .line 197
    goto :goto_0

    .line 198
    :catchall_1
    move-exception p1

    .line 199
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/c$1;->b:Lcn/sharesdk/tencent/qzone/utils/c;

    .line 200
    .line 201
    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/utils/c;->o(Lcn/sharesdk/tencent/qzone/utils/c;)Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 206
    .line 207
    .line 208
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/c$1;->b:Lcn/sharesdk/tencent/qzone/utils/c;

    .line 209
    .line 210
    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/utils/c;->p(Lcn/sharesdk/tencent/qzone/utils/c;)Lcn/sharesdk/framework/authorize/SSOListener;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    if-eqz v0, :cond_4

    .line 215
    .line 216
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/utils/c$1;->b:Lcn/sharesdk/tencent/qzone/utils/c;

    .line 217
    .line 218
    invoke-static {v0}, Lcn/sharesdk/tencent/qzone/utils/c;->q(Lcn/sharesdk/tencent/qzone/utils/c;)Lcn/sharesdk/framework/authorize/SSOListener;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    .line 223
    .line 224
    .line 225
    :cond_4
    :goto_0
    return-void
.end method

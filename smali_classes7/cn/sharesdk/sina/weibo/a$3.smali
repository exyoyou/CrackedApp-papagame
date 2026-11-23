.class Lcn/sharesdk/sina/weibo/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/a;->b(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/Platform$ShareParams;

.field final synthetic b:Lcn/sharesdk/framework/PlatformActionListener;

.field final synthetic c:Lcn/sharesdk/sina/weibo/a;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/a;Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/a$3;->c:Lcn/sharesdk/sina/weibo/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/sharesdk/sina/weibo/a$3;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 4
    .line 5
    iput-object p3, p0, Lcn/sharesdk/sina/weibo/a$3;->b:Lcn/sharesdk/framework/PlatformActionListener;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "dk"

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->getDeviceKey()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const-string v1, "nt"

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->getNetworkType()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    const-string v1, "dnwktfs"

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    const-string v1, "srs"

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->getScreenSize()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    const-string v1, "car"

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->getCarrier()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/a$3;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getUrl()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a$3;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getText()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a$3;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 76
    .line 77
    invoke-virtual {v2}, Lcn/sharesdk/framework/InnerShareParams;->getText()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v2, " "

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a$3;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 90
    .line 91
    invoke-virtual {v2}, Lcn/sharesdk/framework/InnerShareParams;->getUrl()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-nez v2, :cond_1

    .line 107
    .line 108
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a$3;->c:Lcn/sharesdk/sina/weibo/a;

    .line 109
    .line 110
    invoke-static {v2}, Lcn/sharesdk/sina/weibo/a;->d(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    const/4 v3, 0x0

    .line 115
    invoke-virtual {v2, v1, v3, v0}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;ZLjava/util/HashMap;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a$3;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 120
    .line 121
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const-string v1, "ssdk_weibo_upload_content"

    .line 130
    .line 131
    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-lez v0, :cond_2

    .line 136
    .line 137
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a$3;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 138
    .line 139
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :cond_2
    :goto_1
    new-instance v0, Lcn/sharesdk/sina/weibo/a$3$1;

    .line 155
    .line 156
    invoke-direct {v0, p0, p1}, Lcn/sharesdk/sina/weibo/a$3$1;-><init>(Lcn/sharesdk/sina/weibo/a$3;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 157
    .line 158
    .line 159
    new-instance p1, Lcn/sharesdk/sina/weibo/utils/WebSharePage;

    .line 160
    .line 161
    invoke-direct {p1}, Lcn/sharesdk/sina/weibo/utils/WebSharePage;-><init>()V

    .line 162
    .line 163
    .line 164
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a$3;->c:Lcn/sharesdk/sina/weibo/a;

    .line 165
    .line 166
    invoke-static {v1}, Lcn/sharesdk/sina/weibo/a;->l(Lcn/sharesdk/sina/weibo/a;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a$3;->c:Lcn/sharesdk/sina/weibo/a;

    .line 171
    .line 172
    invoke-static {v2}, Lcn/sharesdk/sina/weibo/a;->g(Lcn/sharesdk/sina/weibo/a;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {p1, v1, v2}, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->setAppKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a$3;->a:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 180
    .line 181
    invoke-virtual {p1, v1}, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->setShareParams(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v0}, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->setListener(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    .line 185
    .line 186
    .line 187
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    const/4 v1, 0x0

    .line 192
    invoke-virtual {p1, v0, v1}, Lcom/mob/tools/FakeActivity;->show(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    .line 194
    .line 195
    goto :goto_2

    .line 196
    :catchall_0
    move-exception p1

    .line 197
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a$3;->b:Lcn/sharesdk/framework/PlatformActionListener;

    .line 198
    .line 199
    if-eqz v0, :cond_3

    .line 200
    .line 201
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a$3;->c:Lcn/sharesdk/sina/weibo/a;

    .line 202
    .line 203
    invoke-static {v1}, Lcn/sharesdk/sina/weibo/a;->m(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    const/16 v2, 0x9

    .line 208
    .line 209
    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 210
    .line 211
    .line 212
    :cond_3
    :goto_2
    return-void
.end method

.class public Lcn/sharesdk/sina/weibo/utils/WebSharePage;
.super Lcom/mob/tools/FakeActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final SHARE_URL:Ljava/lang/String; = "http://service.weibo.com/share/mobilesdk.php"

.field private static final UPLOAD_PIC_URL:Ljava/lang/String; = "http://service.weibo.com/share/mobilesdk_uppic.php"


# instance fields
.field private actionListener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

.field private appKey:Ljava/lang/String;

.field private btnRetry:Landroid/widget/Button;

.field private layout:Lcn/sharesdk/sina/weibo/sdk/a/a;

.field private llRetry:Landroid/widget/LinearLayout;

.field private pageStatus:I

.field private params:Lcn/sharesdk/framework/Platform$ShareParams;

.field private token:Ljava/lang/String;

.field private tvBack:Landroid/widget/TextView;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000(Lcn/sharesdk/sina/weibo/utils/WebSharePage;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->pageStatus:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$002(Lcn/sharesdk/sina/weibo/utils/WebSharePage;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->pageStatus:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$100(Lcn/sharesdk/sina/weibo/utils/WebSharePage;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->llRetry:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lcn/sharesdk/sina/weibo/utils/WebSharePage;Ljava/lang/String;Lcn/sharesdk/framework/ShareSDKCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->getReqUrl(Ljava/lang/String;Lcn/sharesdk/framework/ShareSDKCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcn/sharesdk/sina/weibo/utils/WebSharePage;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->webView:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcn/sharesdk/sina/weibo/utils/WebSharePage;)Lcn/sharesdk/framework/authorize/AuthorizeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->actionListener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcn/sharesdk/sina/weibo/utils/WebSharePage;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->reCode(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcn/sharesdk/sina/weibo/utils/WebSharePage;)Lcn/sharesdk/framework/Platform$ShareParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcn/sharesdk/sina/weibo/utils/WebSharePage;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->appKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcn/sharesdk/sina/weibo/utils/WebSharePage;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->token:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcn/sharesdk/sina/weibo/utils/WebSharePage;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lcn/sharesdk/sina/weibo/utils/WebSharePage;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->getPicId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private getPicId()Ljava/lang/String;
    .locals 11

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    const-string v1, "code"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object v3, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 7
    .line 8
    invoke-virtual {v3}, Lcn/sharesdk/framework/InnerShareParams;->getImageData()Landroid/graphics/Bitmap;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 15
    .line 16
    invoke-virtual {v4}, Lcn/sharesdk/framework/InnerShareParams;->getImagePath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-nez v4, :cond_0

    .line 25
    .line 26
    iget-object v3, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 27
    .line 28
    invoke-virtual {v3}, Lcn/sharesdk/framework/InnerShareParams;->getImagePath()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {v3}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    if-nez v3, :cond_1

    .line 38
    .line 39
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 40
    .line 41
    invoke-virtual {v4}, Lcn/sharesdk/framework/InnerShareParams;->getImageUrl()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-nez v4, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iget-object v4, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 56
    .line 57
    invoke-virtual {v4}, Lcn/sharesdk/framework/InnerShareParams;->getImageUrl()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-static {v3, v4}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 66
    .line 67
    new-instance v4, Lcom/sina/weibo/sdk/api/ImageObject;

    .line 68
    .line 69
    invoke-direct {v4}, Lcom/sina/weibo/sdk/api/ImageObject;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v3}, Lcom/sina/weibo/sdk/api/ImageObject;->setImageData(Landroid/graphics/Bitmap;)V

    .line 73
    .line 74
    .line 75
    iget-object v3, v4, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    .line 76
    .line 77
    if-eqz v3, :cond_2

    .line 78
    .line 79
    array-length v4, v3

    .line 80
    if-lez v4, :cond_2

    .line 81
    .line 82
    new-instance v4, Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v3}, Lcn/sharesdk/sina/weibo/sdk/a;->a([B)[B

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    move-object v4, v2

    .line 93
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_3

    .line 98
    .line 99
    return-object v2

    .line 100
    :cond_3
    new-instance v5, Lcom/mob/tools/network/NetworkHelper;

    .line 101
    .line 102
    invoke-direct {v5}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 103
    .line 104
    .line 105
    new-instance v7, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .line 109
    .line 110
    new-instance v3, Lcom/mob/tools/network/KVPair;

    .line 111
    .line 112
    const-string v6, "img"

    .line 113
    .line 114
    invoke-direct {v3, v6, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 121
    .line 122
    .line 123
    move-result-wide v3

    .line 124
    const-wide/16 v8, 0x3e8

    .line 125
    .line 126
    div-long/2addr v3, v8

    .line 127
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    new-instance v4, Lcom/mob/tools/network/KVPair;

    .line 132
    .line 133
    const-string v6, "oauth_timestamp"

    .line 134
    .line 135
    invoke-direct {v4, v6, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    iget-object v3, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->token:Ljava/lang/String;

    .line 142
    .line 143
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    iget-object v3, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->appKey:Ljava/lang/String;

    .line 148
    .line 149
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    const-string v6, "http://service.weibo.com/share/mobilesdk_uppic.php"

    .line 154
    .line 155
    const/4 v8, 0x0

    .line 156
    const/4 v9, 0x0

    .line 157
    const/4 v10, 0x0

    .line 158
    invoke-virtual/range {v5 .. v10}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-eqz v4, :cond_4

    .line 167
    .line 168
    return-object v2

    .line 169
    :cond_4
    new-instance v4, Lcom/mob/tools/utils/Hashon;

    .line 170
    .line 171
    invoke-direct {v4}, Lcom/mob/tools/utils/Hashon;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4, v3}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    if-eqz v3, :cond_6

    .line 179
    .line 180
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    if-eqz v4, :cond_6

    .line 185
    .line 186
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-nez v4, :cond_5

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_5
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    const-string v3, "1"

    .line 210
    .line 211
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_6

    .line 216
    .line 217
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 218
    .line 219
    .line 220
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    if-nez v1, :cond_6

    .line 222
    .line 223
    return-object v0

    .line 224
    :cond_6
    :goto_2
    return-object v2

    .line 225
    :catchall_0
    move-exception v0

    .line 226
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 231
    .line 232
    .line 233
    return-object v2
.end method

.method private getReqUrl(Ljava/lang/String;Lcn/sharesdk/framework/ShareSDKCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/sharesdk/framework/ShareSDKCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lcn/sharesdk/sina/weibo/utils/WebSharePage$2;

    .line 12
    .line 13
    invoke-direct {v2, p0, p1, p2}, Lcn/sharesdk/sina/weibo/utils/WebSharePage$2;-><init>(Lcn/sharesdk/sina/weibo/utils/WebSharePage;Ljava/lang/String;Lcn/sharesdk/framework/ShareSDKCallback;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Lcn/sharesdk/sina/weibo/sdk/a;->a(Landroid/content/Context;Ljava/lang/String;Lcn/sharesdk/framework/ShareSDKCallback;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private initView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->layout:Lcn/sharesdk/sina/weibo/sdk/a/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->b()Landroid/widget/TextView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->tvBack:Landroid/widget/TextView;

    .line 8
    .line 9
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->layout:Lcn/sharesdk/sina/weibo/sdk/a/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->c()Landroid/webkit/WebView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->webView:Landroid/webkit/WebView;

    .line 16
    .line 17
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->layout:Lcn/sharesdk/sina/weibo/sdk/a/a;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->d()Landroid/widget/LinearLayout;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->llRetry:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->layout:Lcn/sharesdk/sina/weibo/sdk/a/a;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->a()Landroid/widget/Button;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->btnRetry:Landroid/widget/Button;

    .line 32
    .line 33
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->tvBack:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->btnRetry:Landroid/widget/Button;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->isRemoveCookieOnAuthorize()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    .line 50
    .line 51
    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 52
    .line 53
    .line 54
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->webView:Landroid/webkit/WebView;

    .line 62
    .line 63
    new-instance v1, Lcn/sharesdk/sina/weibo/utils/WebSharePage$1;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Lcn/sharesdk/sina/weibo/utils/WebSharePage$1;-><init>(Lcn/sharesdk/sina/weibo/utils/WebSharePage;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->loadWebView()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method private loadWebView()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcn/sharesdk/sina/weibo/utils/WebSharePage$3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcn/sharesdk/sina/weibo/utils/WebSharePage$3;-><init>(Lcn/sharesdk/sina/weibo/utils/WebSharePage;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/mob/tools/RxMob;->create(Lcom/mob/tools/RxMob$OnSubscribe;)Lcom/mob/tools/RxMob$Subscribable;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->subscribeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->observeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcn/sharesdk/sina/weibo/utils/WebSharePage$4;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcn/sharesdk/sina/weibo/utils/WebSharePage$4;-><init>(Lcn/sharesdk/sina/weibo/utils/WebSharePage;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;->subscribe(Lcom/mob/tools/RxMob$Subscriber;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    return-object v0
.end method

.method private reCode(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "code"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "msg"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->actionListener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 18
    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->actionListener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 28
    .line 29
    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string v2, "0"

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->actionListener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 42
    .line 43
    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->actionListener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 48
    .line 49
    new-instance v0, Ljava/lang/Throwable;

    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 58
    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->tvBack:Landroid/widget/TextView;

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->actionListener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->btnRetry:Landroid/widget/Button;

    .line 17
    .line 18
    if-ne p1, v0, :cond_2

    .line 19
    .line 20
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->llRetry:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    const/16 v0, 0x8

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->webView:Landroid/webkit/WebView;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->loadWebView()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 1
    new-instance v0, Lcn/sharesdk/sina/weibo/sdk/a/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcn/sharesdk/sina/weibo/sdk/a/a;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->layout:Lcn/sharesdk/sina/weibo/sdk/a/a;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "ssdk_sina_web_title"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->layout:Lcn/sharesdk/sina/weibo/sdk/a/a;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->a(I)Landroid/widget/RelativeLayout;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcn/sharesdk/framework/utils/i;->a(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->initView()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->webView:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public onFinish()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->actionListener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->actionListener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onFinish()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_1

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->actionListener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method public setAppKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->appKey:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->token:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public setListener(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->actionListener:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    .line 2
    .line 3
    return-void
.end method

.method public setShareParams(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->params:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 2
    .line 3
    return-void
.end method
